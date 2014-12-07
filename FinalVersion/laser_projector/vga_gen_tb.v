`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:25:01 12/03/2014
// Design Name:   vga_drive
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/vga_gen_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_drive
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vga_gen_tb;

	// Inputs
	reg vclock;

	// Outputs
	wire [9:0] hcount;
	wire [9:0] vcount;
	wire vsync;
	wire hsync;
	wire blank;

	// Instantiate the Unit Under Test (UUT)
	vga_drive uut (
		.vclock(vclock), 
		.hcount(hcount), 
		.vcount(vcount), 
		.vsync(vsync), 
		.hsync(hsync), 
		.blank(blank)
	);
	always #5 vclock = ~vclock;
	initial begin
		// Initialize Inputs
		vclock = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

