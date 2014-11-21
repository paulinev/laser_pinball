`timescale 1ns / 1ps
//`default_nettype none;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:14 11/18/2014 
// Design Name: 
// Module Name:    camera_read 
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

// Output two pixels in YCbCr422 once every four clock cycles
// Pixel done is asserted once a pixel pair is latched
// Asserts frame_done once a full frame has been captured
module camera_read(
    input reset,
    input clk,
    input vsync,
    input href,
    input pclk,
    input [7:0] data_in,
    output reg [31:0] data_out,
	 output reg pixel_done,
	 output reg frame_done
    );
	
	reg [1:0] count = 3;
	reg running = 0;
	initial frame_done = 0;
	
	always @(posedge pclk) begin // run off the pclk signal; RUN OTHER MODULES ON ~PCLK, OTHERWISE THEY WON'T CATCH THE RIGHT DATA
		
		if (reset) begin // use start signal as reset
			data_out <= 32'b0;
			frame_done <= 0;
			running <= 0;
			pixel_done <= 0;
		end
		
		else begin
			if (href & ~vsync & running & ~frame_done) begin // look for data while href is high
				if (count == 3) begin
					data_out[31:24] <= data_in; // using camera defaults and capturing in YCbCr; Y0
					pixel_done <= 0;
				end
				else if (count == 2) begin
					data_out[23:16] <= data_in; // Cb0/Cb1
					pixel_done <= 0;
				end
				else if (count == 1) begin
					data_out[15:8] <= data_in; // Cr0/Cr1
					pixel_done <= 0;
				end
				else begin
					data_out[7:0] <= data_in; // Y1
					pixel_done <= 1;
				end
				count <= count - 1;		
			end
			
			else if (~running & vsync) running <= 1; // start capturing data when vsync goes high so we don't capture the middle of a frame
			else if (vsync) begin
				frame_done <= 1; // end on second pulse of vsync
				running <= 0;
				pixel_done <= 0;
			end
		end
	end
endmodule
