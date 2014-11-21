`timescale 1ns / 1ps
`default_nettype none
//module to drive the MCP4922 DAC
module DAC_drive
	#(parameter SPI_CLK_DIV = 2, LATCH_DELAY = 4)
	(input wire clk,
	input wire [11:0] x_in,
	input wire [11:0] y_in,
	input wire start,
	input wire [2:0] laser_rgb,
	output wire dac_mosi,
	output wire dac_CSN,
	output wire dac_sclk,
	output reg dac_latch = 1,
	output reg done = 0,
	output reg [2:0] laser_rgb_latched = 3'b000
	);

	reg [3:0] FSM_state = 0;
	
	reg [11:0] x_stored = 0;
	reg [11:0] y_stored = 0;
	reg [15:0] SPI_din=16'b0;
	reg SPI_start=0;
	wire SPI_done; 
	reg [4:0] clk_counter = LATCH_DELAY;
	wire [15:0] dout;
	

	spi_master #(.DATA_WIDTH(16), .CLK_DIV( 2 ))
		DAC_SPI(.clk(clk), .data_in(SPI_din), .miso(1'b0), .start(SPI_start), .done(SPI_done), .mosi(dac_mosi),
		.sclk(dac_sclk), .CSN(dac_CSN), .data_out(dout));
		
	always@(posedge clk)
	
	case(FSM_state) 
	
	0: begin //idle state
	
		FSM_state <= start ? 1 : 0;
		x_stored <= x_in;
		y_stored <= y_in;
		done <= 0;
		
	end
	
	1: begin //send X
		FSM_state <= 2;
		SPI_din <= {4'b0011,x_stored}; //DAC A, null, vref, dac active
		SPI_start <=1; 
	end
	
	2: begin //wait for X to finish 
		FSM_state <= SPI_done ? 3 : 2;
		SPI_start <= 0;	
	end
	
	3: begin //send Y
		FSM_state <= 4;
		SPI_din <= {4'b1011,y_stored}; //DAC B, null, vref, dac active
		SPI_start <= 1;
	end
	
	4: begin //wait for y to finish 
		FSM_state <= SPI_done ? 5 : 4;
		SPI_start <= 0;
	end
	
	5: begin //delay for latch
		FSM_state <= (clk_counter == 0) ? 6 : 5;
		clk_counter <= (clk_counter == 0) ? LATCH_DELAY : clk_counter-1;
		dac_latch <= 0;
	end

	6: begin //finished state
		FSM_state <= 0;
		dac_latch <= 1;
		done <= 1; 
		laser_rgb_latched <= laser_rgb;
	end

	endcase
endmodule 





		

