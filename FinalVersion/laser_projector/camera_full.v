`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:19 12/06/2014 
// Design Name: 
// Module Name:    camera_full 
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
module camera_full(
	input wire clk_50,
	input wire camera_pclk,
	input wire reset,
	input wire system_start,
	input wire capture_frame,
	input wire camera_href,
	input wire camera_vsync,
	input wire [7:0] camera_data,
	inout wire camera_scl,
	inout wire camera_sda,
	inout wire vga_scl,
	inout wire vga_sda,
	output wire camera_xclk,
	output wire [11:0] vga_drive,
	output wire vga_hsync,
	output wire vga_vsync,
	output wire vga_blank,
	output wire beta_mwe,
	output wire [31:0] beta_addr,
	output wire [31:0] beta_din	
    );
	 
	 wire [9:0] vga_hcount; //pixels counted from top left
	 wire [9:0] vga_vcount; 
	 
	 wire [9:0] camera_hcount;
	 wire [9:0] camera_vcount;
	 
	 wire local_vsync; //local signals for VGA, need to be delayed
	 wire local_hsync; 
	 wire local_blank; 	
	 
	 assign vga_vsync = local_vsync;
	 assign vga_hsync = local_hsync;
	 assign vga_blank = local_blank;
	  
	 wire [23:0] vga_data;
	 wire [15:0] vga_pixel;
	 wire [15:0] camera_pixel; //processed camera pixel
	 wire mwe_camera;
	 
	 assign vga_data = {vga_pixel[15:11],{3{vga_pixel[11]}}, 
								vga_pixel[10:5], {2{vga_pixel[5]}},
								vga_pixel[4:0], {3{vga_pixel[0]}}};
	 
	 
	 
	 
	 
	 //generate clock for camera
	 camera_clk clk12_5_gen ( 
    .CLKIN_IN(clk_50), 
    .RST_IN(0), 
    .CLKDV_OUT(camera_xclk),  
    .CLK0_OUT(), 
    .LOCKED_OUT()
    );
	 
	 //create signals for VGA IC
	 vga_pixel_drive drive_vga (
    .hsync(local_hsync), 
    .pixel_clk_2x(clk_50), 
    .pixel_data(vga_data), 
    .vga_out(vga_drive)
    );
	 
	 //generate pixel count for VGA
	 vga_drive vga_signal_gen (
    .vclock(clk_50), 
    .hcount(vga_hcount), 
    .vcount(vga_vcount), 
    .vsync(local_vsync), 
    .hsync(local_hsync), 
    .blank(local_blank)
    );
	 
	 
	 //i2c setup for vga
	 vga_setup vga_monitor (
    .clk(clk_50), 
    .reset(reset), 
    .start(system_start), 
    .scl(vga_scl), 
    .sda(vga_sda)
    );
	 
	 //i2c setup for camera
	 camera_configure camera_setup(
    .clk(clk_50), 
    .reset(reset), 
    .start(system_start), 
    .scl(camera_scl), 
    .sda(camera_sda)
    );

	//capture a frame from camera and dump to memory 
	camera_capture get_a_frame (
    .camera_clk(camera_pclk), 
    .start(capture_frame), 
    .camera_vsync(camera_vsync), //input from camera
    .camera_href(camera_href), //input from camera
    .camera_dout(camera_data), //input data from camera
    .mem_we(mwe_camera), //mwe for frame buffer
    .mem_din(camera_pixel), //data to memory for frame buffer
    .vcount(camera_vcount), // used to generate memory address
    .hcount(camera_hcount), //used to generate camera memory address
    .done() // done signal
    );
	 
	 
	 shared_video_mem image_buffer (
    .clk_vga(clk_50), 
    .clk_camera(camera_pclk), 
    .camera_hcount(camera_hcount), 
    .camera_vcount(camera_vcount), 
    .vga_hcount(vga_hcount), 
    .vga_vcount(vga_vcount), 
    .dout_camera(camera_pixel), 
    .mwe_camera(mwe_camera), 
    .dout_vga(vga_pixel)
    );





endmodule
