`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:19 11/20/2014 
// Design Name: 
// Module Name:    camera_test 
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

module camera_test(
    input reset,
    input clk,
    input vsync_in,
    input href_in,
    input pclk,
    input [7:0] camera_data,
    inout siod,
    output sioc,
    input vsync_out,
    input hsync_out,
    output [23:0] rgb
    );
	 
	// Grab a frame of data and store it in BRAM
	wire [31:0] pixel_out;
	wire pixel_done;
	camera_read reader (
		 .reset(reset), 
		 .clk(clk), 
		 .vsync(vsync_in), 
		 .href(href_in), 
		 .pclk(pclk), 
		 .data_in(camera_data), 
		 .xclk(clk), 
		 .data_out(pixel_out), 
		 .pixel_done(pixel_done)
		 );


endmodule
