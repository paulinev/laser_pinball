`timescale 1ns / 1ps
`default_nettype none

//basic SPI module to support a single device. I guess I could MUX the outputs if  I wanted to...

//mode 0,0 data propagated on falling clock edge, captured on rising clock edge

module spi_master 
#(parameter DATA_WIDTH = 16, CLK_DIV=2, CS_DELAY=4) 
	(
	input wire clk,
	input wire [(DATA_WIDTH-1):0] data_in,
	input wire miso,
	input wire start,
	output reg done = 0,
	output reg mosi = 0, 
	output reg sclk = 0, //spi clk
	output reg CSN = 1, //chip select not
	output reg [(DATA_WIDTH-1):0] data_out
	);

	reg [3:0] FSM_state  = 0;
	reg [7:0] delay_counter = 0;
	reg [7:0] clk_counter = 0; 
	reg [(DATA_WIDTH-1):0] tx_data = 0;
	reg [4:0] data_index = 0;
	
	always@(posedge clk)
	begin
	
	case(FSM_state)
	
	0: begin //idle state
		done <= 0;
		FSM_state <= start ? 1 : 0;
	end

	1: begin //latch state, init counter 
		tx_data <= data_in;
		CSN <= 0; //select chip.
		FSM_state <= 2; //move to next state
	end
	
	2: begin //delay for CS
		FSM_state <= (delay_counter == CS_DELAY) ? 3 : 2;
		delay_counter <= (delay_counter == CS_DELAY) ? 0 : delay_counter + 1;
	end

	3: begin //send data clock low, load new data, latch receive data
		data_out[DATA_WIDTH-1-data_index] <= miso;
		mosi <= tx_data[DATA_WIDTH-1-data_index]; 
		sclk <= 0;
		clk_counter <= (clk_counter == CLK_DIV) ? 0 : clk_counter + 1;
		FSM_state <= (clk_counter == CLK_DIV) ? 4 : 3; //go no next state if clock counter done
		data_index <= (clk_counter == CLK_DIV) ? data_index+1 : data_index; //incriment data index for next state
	end
	
	4: begin //send data on the rising edge
		sclk <= 1;
		if (DATA_WIDTH == data_index) 
		begin
			clk_counter <= (clk_counter == CLK_DIV) ? 0 : clk_counter + 1;
			FSM_state <= (clk_counter == CLK_DIV) ? 5 : 4; //exit send data mode
		end
		else
		begin
			clk_counter <= (clk_counter == CLK_DIV) ? 0 : clk_counter + 1;
			FSM_state <= (clk_counter == CLK_DIV) ? 3 : 4; //return to previous state 
		end
	end

	5: begin //time to deassert CSN 
		sclk <= 0;
		FSM_state <= (delay_counter==CS_DELAY) ? 6 : 5;
		delay_counter <= (delay_counter == CS_DELAY) ? 0 : delay_counter + 1;
	end

	6: begin //end of FSM
		data_index <= 0; 
		delay_counter <= 0;
		mosi<=0;
		CSN<=1;
		done <= 1;
		FSM_state <= 0;
	end
	endcase
	end
	

endmodule

