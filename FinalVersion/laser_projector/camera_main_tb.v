`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:47:57 12/07/2014
// Design Name:   camera_full
// Module Name:   /home/wbraun/laser_pinball/FinalVersion/laser_projector/camera_main_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: camera_full
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module camera_main_tb;

	// Inputs
	reg clk_50;
	reg camera_pclk;
	reg reset;
	reg system_start;
	reg capture_frame;
	reg process_frame;
	reg camera_href;
	reg camera_vsync;
	reg [7:0] camera_data;

	// Outputs
	wire camera_xclk;
	wire [11:0] vga_drive;
	wire vga_hsync;
	wire vga_vsync;
	wire vga_blank;
	wire beta_mwe;
	wire [31:0] beta_addr;
	wire [31:0] beta_din;

	// Bidirs
	wire camera_scl;
	wire camera_sda;
	wire vga_scl;
	wire vga_sda;

	// Instantiate the Unit Under Test (UUT)
	camera_full uut (
		.clk_50(clk_50), 
		.camera_pclk(camera_pclk), 
		.reset(reset), 
		.system_start(system_start), 
		.capture_frame(capture_frame), 
		.process_frame(process_frame), 
		.camera_href(camera_href), 
		.camera_vsync(camera_vsync), 
		.camera_data(camera_data), 
		.camera_scl(camera_scl), 
		.camera_sda(camera_sda), 
		.vga_scl(vga_scl), 
		.vga_sda(vga_sda), 
		.camera_xclk(camera_xclk), 
		.vga_drive(vga_drive), 
		.vga_hsync(vga_hsync), 
		.vga_vsync(vga_vsync), 
		.vga_blank(vga_blank), 
		.beta_mwe(beta_mwe), 
		.beta_addr(beta_addr), 
		.beta_din(beta_din)
	);
	always #5 clk_50 = ~clk_50;
	initial begin
		// Initialize Inputs
		clk_50 = 0;
		camera_pclk = 0;
		reset = 0;
		system_start = 0;
		capture_frame = 0;
		process_frame = 0;
		camera_href = 0;
		camera_vsync = 0;
		camera_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

