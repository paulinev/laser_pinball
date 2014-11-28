`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:33 11/27/2014 
// Design Name: 
// Module Name:    spi_io 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

//memory mapped IO SPI interface for the beta
module spi_io(
	clk,
	start,
	ctrl_reg,
	din,
	dout,
	status_reg,
	sclk,
	miso,
	mosi	
    );
	
	input wire clk;
	input wire start;
	input wire [31:0] ctrl_reg; //interface for data width and speed
	input wire [31:0] din; //input data, left justified
	input wire miso;
	
	output reg [31:0] dout = 0; //output data
	output reg [31:0] status_reg =0; //done status 
	output reg sclk = 0;
	output reg mosi = 0;
	
	//ctrl_reg[7:0]
	reg [4:0] data_width; //sets number of bits to send
	//ctrl_reg[15:8]
	reg [7:0] clk_div; //sets SPI frequency
	//ctrl_reg[16]
	reg spi_polarity; //sets spi clk polarity, not implimented
	//ctrl_reg[17]
	reg spi_phase; //sets spi clk phase, not implimented
	
	reg [3:0] FSM_state =0;
	reg [7:0] clk_counter =0;
	reg [4:0] data_index = 0;
	
	always@(*) 
	begin
		//protect aganst stupid settings
		data_width<= (ctrl_reg[4:0]==0) ? 1 : ctrl_reg[4:0]; 
		clk_div <= (ctrl_reg[15:8]==0) ? 1: ctrl_reg[15:8];
		spi_phase <= 0;
		spi_polarity <=0;
	
	end
	
	always@(posedge clk)
	begin
	
	case(FSM_state)
	
	0: begin //idle state 
		FSM_state <= start ? 1 : 0;
	end
	
	1: begin //setup 
		FSM_state <= 2;
		status_reg <= 0; //spi is in progress
		data_index <= data_width==0 ? 0 : data_width-1; //set data_index
		dout <= 0; //clear old dout
		clk_counter <= 0; //clear old clk_counter
	end
	
	2: begin //start send
		sclk <= 0;
		FSM_state <= (clk_counter>=clk_div) ? 3 : 2;
		dout[data_index] <= miso;
		mosi <= din[data_index];
		//incriment data index on transistion 
		clk_counter <= (clk_counter>=clk_div) ? 0 : clk_counter+1;
	end
	
	3: begin //clk phase#2 
		sclk <= 1;
		clk_counter <= (clk_counter>=clk_div) ? 0 : clk_counter+1; //timer countdown
		if (data_index==0)
		begin
			FSM_state <= (clk_counter>=clk_div) ? 4 : 3; //exit loop
		end
		else 
		begin
			FSM_state <= (clk_counter>=clk_div) ? 2 : 3;
			data_index <= (clk_counter>=clk_div) ? data_index-1 : data_index;
		end
	end
	
	4: begin //clean up 
		FSM_state <= 0;
		sclk <= 0; 
		status_reg <= 1; //spi is done!
	end
	endcase	
	end
	

endmodule
