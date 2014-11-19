`timescale 1ns / 1ps
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
// Pixel done is asserted once a pixel is latched
module camera_read(
    input reset,
    input clk,
    input vsync,
    input href,
    input pclk,
    input [7:0] data_in,
    output wire xclk,
    output reg [31:0] data_out,
    output reg we,
	 output reg pixel_done
    );
	
	reg [1:0] count = 3;
	reg running = 0;
	reg frame_done = 0;

	assign xclk = clk; // Send the clock signal directly to the camera
	
	always @(posedge pclk) begin // run off the pclk signal; should be the same as xclk
		
		if (reset) begin
			we <= 0;
			data_out <= 32'b0;
			frame_done <= 0;
			running <= 0;
			pixel_done <= 0;
		end
		
		else begin
			if (href & ~vsync & ~frame_done & running) begin // look for data while href is high
				if (count == 3) data_out[31:24] <= data_in;
				else if (count == 2) data_out[23:16] <= data_in;
				else if (count == 1) data_out[15:8] <= data_in;
				else begin
					data_out[7:0] <= data_in;
					pixel_done <= 1;
				end
				count <= count - 1;
				pixel_done <= 0				
			end
			
			else if (~running & vsync) running <= 1;
			else if (vsync) frame_done <= 1; // end on second pulse of vsync
		end
	end
endmodule
