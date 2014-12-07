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
	input wire process_frame,
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
	 wire [15:0] vga_addr;
	 
	 wire [9:0] camera_hcount;
	 wire [9:0] camera_vcount;
	 wire [15:0] camera_addr;
	 
	 wire [9:0] proc_hcount;
	 wire [9:0] proc_vcount;
	 wire [15:0] proc_addr;
	 
	 wire [15:0] buffer_read_addr;
	 
	 wire local_vsync; //local signals for VGA, need to be delayed
	 wire local_hsync; 
	 wire local_blank; 	
	 
	 wire image_process; //controlls mux for frame buffer
	 
	 assign vga_vsync = local_vsync;
	 assign vga_hsync = local_hsync;
	 assign vga_blank = local_blank;
	 
	  
	 wire [23:0] vga_data;
	 wire [8:0] vga_pixel;
	 wire [15:0] camera_pixel; //processed camera pixel
	 wire mwe_camera;
	 
	 wire [8:0] frame_data; 
	 wire image_hunt_mem_request; 
	 
	 //locations of detected objects
	 wire [9:0] red_x, red_y;
	 wire [9:0] green_x, green_y;
	 wire [9:0] blue_x, blue_y;
	 //detected object pixels
	 wire [8:0] red_blob_pixel;
	 wire [8:0] green_blob_pixel;
	 wire [8:0] blue_blob_pixel; 
	 wire [8:0] output_pixel;
	 
	
	 assign output_pixel = vga_pixel | red_blob_pixel | green_blob_pixel | blue_blob_pixel;
	 
	 assign vga_data = {output_pixel[8:6], {5{output_pixel[6]}},
								output_pixel[5:3], {5{output_pixel[3]}},
								output_pixel[2:0], {5{output_pixel[0]}}};
								
	//mux for frame buffer
	 assign vga_pixel = image_hunt_mem_request ?  9'b000_000_000: frame_data;
	 assign buffer_read_addr = image_hunt_mem_request ? proc_addr : vga_addr ;
	 
	 image_hunt process_a_frame (
    .clk(clk_50), 
    .mem_pixel_data(frame_data), 
    .start(process_frame), 
    .mem_request(image_hunt_mem_request), 
    .done(), 
    .mem_hcount(proc_hcount), 
    .mem_vcount(proc_vcount), 
    .red_x(red_x), 
    .red_y(red_y), 
    .green_x(green_x), 
    .green_y(green_y), 
    .blue_x(blue_x), 
    .blue_y(blue_y)
    );

	 
	 
	 
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
	 
	 image_addr_gen camera_addr_gen (
    .hcount(camera_hcount), 
    .vcount(camera_vcount), 
    .addr(camera_addr)
    );
	 
	 image_addr_gen buffer_read_addr_gen (
    .hcount(vga_hcount), 
    .vcount(vga_vcount), 
    .addr(vga_addr)
    );

	image_addr_gen image_proc_gen(
    .hcount(proc_hcount), 
    .vcount(proc_hcount), 
    .addr(proc_addr)
    );
	 
	 
	//240x240 9 bit color
	//image is half resolution 
	shared_video_mem frame_buff (
    .clk_read(clk_50), 
    .clk_write(camera_pclk), 
    .write_addr(camera_addr), 
    .read_addr(buffer_read_addr), 
    .dout_camera(camera_pixel), 
    .mwe_camera(mwe_camera), 
    .dout_pixel(frame_data)
    );


	color_blob red_blob (
    .clk(clk_50), 
    .hcount(vga_hcount), 
    .vcount(vga_vcount), 
    .x_loc(red_x), 
    .y_loc(red_y), 
    .enable(1'b1), 
    .color(9'b111_000_000), //red
    .pixel(red_blob_pixel)
    );


color_blob green_blob (
    .clk(clk_50), 
    .hcount(vga_hcount), 
    .vcount(vga_vcount), 
    .x_loc(green_x), 
    .y_loc(green_y), 
    .enable(1'b1), 
    .color(9'b000_111_000), //green
    .pixel(green_blob_pixel)
    );
	 
color_blob blue_blob (
    .clk(clk_50), 
    .hcount(vga_hcount), 
    .vcount(vga_vcount), 
    .x_loc(blue_x), 
    .y_loc(blue_y), 
    .enable(1'b1), 
    .color(9'b000_000_111), //blue
    .pixel(blue_blob_pixel)
    );



endmodule
