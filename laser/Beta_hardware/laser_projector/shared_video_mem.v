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

	wire memory_clk;
	wire [15:0] memory_din;
	wire [18:0] memory_addr;
	wire memory_mwe;
	wire [15:0] memory_dout;
	wire [17:0] addr_vga;
	wire [17:0] addr_camera;

	
	assign memory_din = camera_request ? dout_camera : 16'h00;
	assign memory_clk = camera_request ? clk_camera : clk_vga;
	assign memory_mwe = camera_request ? mwe_camera : 1'b0;
	assign memory_addr = camera_request ? addr_camera : addr_vga;
	
	assign dout_vga = camera_request ? 16'hFF : memory_dout;
	
	
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

	camera_memory image_memory(
	.clka(memory_clk),
	.dina(memory_din),
	.addra(memory_addr[17:0]),
	.wea(memory_mwe),
	.douta(memory_dout))
	;


endmodule
