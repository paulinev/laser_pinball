`timescale 1ns / 1ps
`default_nettype none 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:03:52 12/04/2014 
// Design Name: 
// Module Name:    shared_video_mem 
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
module shared_video_mem(
	input wire clk_read,
	input wire clk_write,
	input wire [15:0] write_addr,
	input wire [15:0] read_addr,
	input wire [15:0] dout_camera,
	input wire mwe_camera,
	output wire [8:0] dout_pixel
    );
	 
	 
	wire [8:0] read_data;
	
	assign read_data = {dout_camera[15:13],dout_camera[10:8], dout_camera[4:2]};


	image_memory framebuffer(
	.clka(clk_camera),
	.dina(write_data),
	.addra(write_addr),
	.wea(mwe_camera),
	.clkb(clk_read),
	.addrb(read_addr),
	.doutb(dout_pixel)
	);


endmodule
