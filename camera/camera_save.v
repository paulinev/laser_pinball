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
    input vsync,
    output reg frame_done
    );
	 
	 localparam LOGSIZE = 19;
	 localparam WIDTH = 24;
	 
	 localparam WAIT_PIXEL = 0;
	 localparam SAVE_PIXEL_1 = 1;
	 localparam SAVEL_PIXEL_2 = 2;
	 reg [1:0] state = 0;
	 
	 reg [31:0] saved_data;
	 reg [WIDTH-1:0] pixel_in_1;
	 reg [WIDTH-1:0] pixel_in_2;
	 reg [WIDTH-1:0] pixel_in;
	 reg [LOGSIZE-1] addr = 0;
	 reg got_pixel <= 0;
	 reg we <= 1;
	 
	 reg enable = 1;
	 
	 
	 // Instantiate BRAM
	 wire [WIDTH-1:0] pixel_out;
	 mybram frame_buf #(parameter LOGSIZE=19, WIDTH=24)
              (.addr(addr),
               .clock(clk),
               .din(pixel_in),
               .dout(pixel_out),
               .we(we)
					);
					
	always @(posedge clk) begin
		if (reset) begin
			we <= 1;
			frame_done <= 0;
			addr <= 0;
		end
		
		else begin
			case(state)
				WAIT_PIXEL: begin
					if (pixel_done == 1 && addr < 'd307200) begin
						pixel_in_1 <= {data_in[23:16], data_in[31:24], data_in[15:8]}; // YCbCr
						pixel_in_2 <= {data_in[7:0], data_in[31:24], data_in[15:8]};
						we <= 0;
						state <= SAVE_PIXEL_1;
					end
					else state <= WAIT_PIXEL;
				end

				SAVE_PIXEL_1: begin
					pixel_in <= pixel_in_1;
					addr <= addr + 1;
					state <= SAVE_PIXEL_2;
				end
				
				SAVE_PIXEL_2: begin
					pixel_in <= pixel_in_2;
					addr <= addr + 1;
					we <= 0;
					state <= WAIT_PIXEL;
				end
			endcase
		end
	end


endmodule
