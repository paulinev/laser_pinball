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
module camera_read(
    input reset,
    input clk,
    input vsync,
    input href,
    input pclk,
    input [7:0] data_in,
    output wire xclk,
    output reg [7:0] data_out,
    output reg we
    );
	
	reg [1:0] count = 0;
	reg [7:0] pixel_y;
	reg [7:0] pixel_cr;
	reg [7:0] pixel_cb;
	reg running = 0;
	reg frame_done = 0;
	
	// Instantiate frame buffer
	reg [18:0] write_address = 0;
	wire [23:0] buf_data;
	mybram frame_buf(.addr(write_address),
						  .clk(pclk),
						  .din(data_out),
						  .dout(buf_data),
						  .we(we)
						 );

	assign xclk = clk; // Send the clock signal directly to the camera
	

	always @(posedge pclk) begin // run off the pclk signal; should be the same as xclk
		if (~vsync) running <= 1;
		
		if (running & vysnc) frame_done <= 1;
		
		if (reset) begin
			we <= 0;
			data_out <= 24'b0;
			frame_done <= 0;
			running <= 0;
		end
		
		else begin
			if (href & ~vsync & ~frame_done) begin // look for data while href is high
				if (count == 0) pixel_cb <= data_in;
				else if (count == 1) pixel_y <= data_in;
				else if (count == 2) pixel_cr <= data_in;
				
				
			end
		end
	end
endmodule
