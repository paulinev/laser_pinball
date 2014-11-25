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
    input vsync,
    input vsync_vga,
    input blank_vga,
    input href,
    input pclk,
    input [7:0] data_in,
    output reg [31:0] data_out,
	 output reg pixel_done,
	 output reg frame_done,
	 output reg [18:0] addr_write,
	 output reg [18:0] addr_read,
	 output reg [1:0] count,
	 output reg running
    );
	
	initial running = 0;
	reg prev_vsync = 0;
	reg [31:0] data_out_tmp;
	reg even = 0;
	
	always @(posedge pclk) begin // run off the pclk signal; RUN OTHER MODULES ON ~PCLK, OTHERWISE THEY WON'T CATCH THE RIGHT DATA
		
		if (reset) begin // use start signal as reset
			data_out <= 0;
			frame_done <= 0;
			running <= 0;
			pixel_done <= 0;
			addr_write <= 0;
			addr_read <= 0;
			count <= 3;
		end
		
		else begin
			if (~running & vsync & ~frame_done) begin
				running <= 1; // start capturing data when vsync goes high so we don't capture the middle of a frame
				prev_vsync <= 1;
			end
			
			else if (href & ~vsync & running & ~frame_done) begin // look for data while href is high
				if (count == 3) begin
					data_out_tmp[31:24] <= data_in; // using camera defaults and capturing in YCbCr; Y0
					pixel_done <= 0;
					count <= 2;
				end
				else if (count == 2) begin
					data_out_tmp[23:16] <= data_in; // Cb0/Cb1
					pixel_done <= 0;
					count <= 1;
				end
				else if (count == 1) begin
					data_out_tmp[15:8] <= data_in; // Cr0/Cr1
					pixel_done <= 0;
					count <= 0;
				end
				else begin
					data_out_tmp[7:0] <= data_in; // Y1
					data_out <= data_out_tmp;
					pixel_done <= 1;
					addr_write <= addr_write + 1;
					count <= 3;
				end
				prev_vsync <= 0;
			end
			
			else if (running & vsync & ~prev_vsync & ~frame_done) begin
				frame_done <= 1; // end on second pulse of vsync
				running <= 0;
				pixel_done <= 0;
			end
			
			else if (frame_done) begin
			// don't increment addr during blank
				if (~vsync_vga) begin
					addr_read <= 0;
				end
				else if (~blank_vga) begin
					even <= ~even;
					if (addr_read < 153600 & even) addr_read <= addr_read + 1;
					else if (addr_read < 153600 & ~even) addr_read <= addr_read;
					else addr_read <= 0;
				end
				pixel_done <= 0;
			end
			
			else pixel_done <= 0;
			
		end
	end
endmodule
