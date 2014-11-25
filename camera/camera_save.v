`timescale 1ns / 1ps
//`default_nettype none;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:51 11/18/2014 
// Design Name: 
// Module Name:    camera_save 
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

// TO BE CLOCKED ON ~PCLK
// Note that BRAM must be clocked on PCLK (not its inversion)
module camera_save(
    input clk,
    input reset,
    input pixel_done,
    input [31:0] data_in,
    input frame_done,
	 output reg [18:0] addr,
	 output reg we,
	 output reg [7:0] pixel_out
    );
	 
	 // Size of BRAM block
	 parameter LOGSIZE = 19;
	 parameter WIDTH = 8;
	 
	 // States for stm
	 localparam WAIT_PIXEL = 0;
	 localparam SAVE_PIXEL_1 = 1;
	 localparam SAVE_PIXEL_2 = 2;
	 localparam VGA_DRIVE = 3;
	 reg [1:0] state = 0;
	 

	 reg [WIDTH-1:0] pixel_out_2;
	 
	 initial begin
		we = 1;
		addr = 0;
		pixel_out = 0;
	 end
	
	always @(posedge clk) begin
		if (reset) begin
			we <= 1;
			addr <= 0;
			state <= WAIT_PIXEL;
		end
		
		else begin
			case(state)
				WAIT_PIXEL: begin
					if (pixel_done & ~frame_done) begin
						pixel_out <= data_in[23:16];
						we <= 0;
						if (addr < 307200) addr <= addr + 1;
						else addr <= 0;
						state <= SAVE_PIXEL_2;
					end
						
					else if (frame_done) begin
						state <= VGA_DRIVE;
						addr <= 0;
						we <= 1;
					end
					else begin
						state <= WAIT_PIXEL;
						we <= 1;
					end
				end

				SAVE_PIXEL_1: begin
					we <= 0;
					state <= SAVE_PIXEL_2;
				end
				
				SAVE_PIXEL_2: begin
					we <= 1;
					state <= WAIT_PIXEL;
				end
				
				VGA_DRIVE: begin
					if (addr < 307200) begin // loop through pixels
						addr <= addr + 1;
					end
					else addr <= 0;
					state <= VGA_DRIVE;
				end
			endcase
		end
	end


endmodule
