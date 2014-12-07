`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:22:56 12/03/2014
// Design Name:   vga_setup
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/vga_setup_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_setup
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vga_setup_tb;

	// Inputs
	reg clk;
	reg reset;
	reg start;

	// Bidirs
	wire scl;
	wire sda;
	
	pullup(scl);
	pullup(sda);
	// Instantiate the Unit Under Test (UUT)
	vga_setup uut (
		.clk(clk), 
		.reset(reset), 
		.start(start), 
		.scl(scl), 
		.sda(sda)
	);
	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#20;
		reset = 0;
		#20
		start=1;
		#10;
		start = 0;
        
		// Add stimulus here

	end
      
endmodule

