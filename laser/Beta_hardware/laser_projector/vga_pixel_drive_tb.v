`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:50:37 12/03/2014
// Design Name:   vga_pixel_drive
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/vga_pixel_drive_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_pixel_drive
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vga_pixel_drive_tb;

	// Inputs
	reg hsync;
	reg pixel_clk_2x;
	reg [23:0] pixel_data;

	// Outputs
	wire [11:0] vga_out;

	// Instantiate the Unit Under Test (UUT)
	vga_pixel_drive uut (
		.hsync(hsync), 
		.pixel_clk_2x(pixel_clk_2x), 
		.pixel_data(pixel_data), 
		.vga_out(vga_out)
	);
	always #5 pixel_clk_2x = ~pixel_clk_2x;
	initial begin
		// Initialize Inputs
		hsync = 0;
		pixel_clk_2x = 0;
		pixel_data = 24'hFF_00_AA;

		// Wait 100 ns for global reset to finish
		#100;
		
		hsync = 1;
		
		#50;
	
		
        
		// Add stimulus here

	end
      
endmodule

