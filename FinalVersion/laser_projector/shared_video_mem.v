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
	input wire clk_vga,
	input wire clk_camera,
	input wire camera_request,
	input wire [9:0] camera_hcount,
	input wire [9:0] camera_vcount,
	input wire [9:0] vga_hcount,
	input wire [9:0] vga_vcount,
	input wire [15:0] dout_camera,
	input wire mwe_camera,
	
	output wire [15:0] dout_vga
    );


	wire [17:0] addr_vga;
	wire [17:0] addr_camera;

	
	
	
	image_addr_gen vga_addr_gen (
    .hcount(vga_hcount), 
    .vcount(vga_vcount), 
    .addr(addr_vga)
    );

	image_addr_gen camera_addr_gen (
    .hcount(camera_hcount), 
    .vcount(camera_vcount), 
    .addr(addr_camera)
    );

	image_memory framebuffer(
	.clka(clk_camera),
	.dina(dout_camera),
	.addra(addr_camera),
	.wea(mwe_camera),
	.clkb(clk_vga),
	.addrb(addr_vga),
	.doutb(dout_vga))
	;


endmodule
