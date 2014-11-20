`timescale 1ns / 1ps
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
	 reg [3:0] col_count = 0; //16
	 reg [3:0] row_count = 0; //10
	 reg [7:0] pixel_count = 0;

	 reg [WIDTH-1:0] pixel_out_2;
	 reg got_pixel = 0;
	 initial begin
		we = 1;
		addr = 0;
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
					if (pixel_done) begin
						pixel_out <= data_in[23:16];
						we <= 0;
						state <= SAVE_PIXEL_2;
					end
					else state <= WAIT_PIXEL;
						
					/*if (pixel_done==1 && frame_done==0 && col_count==15 && row_count==9) begin
						pixel_out <= data_in[23:16];//, data_in[31:24], data_in[15:8]}; // YCbCr
						//pixel_out_2 <= data_in[7:0];//, data_in[31:24], data_in[15:8]};
						col_count <= 0;
						we <= 0;
						state <= SAVE_PIXEL_2;
					end
					else if (frame_done) begin
						state <= VGA_DRIVE;
						addr <= 0;
						we <= 1;
					end
					else state <= WAIT_PIXEL;*/
				end

				SAVE_PIXEL_1: begin
					pixel_out <= pixel_out_2;
					addr <= addr + 1;
					state <= SAVE_PIXEL_2;
				end
				
				SAVE_PIXEL_2: begin
					we <= 1;
					if (addr < 307200) addr <= addr + 1;
					else addr <= 0;
					state <= WAIT_PIXEL;
				end
				
				VGA_DRIVE: begin
					if (addr < 512) begin // loop through pixels
						addr <= addr + 1;
					end
					else addr <= 0;
					state <= VGA_DRIVE;
				end
			endcase
		end
	end


endmodule
