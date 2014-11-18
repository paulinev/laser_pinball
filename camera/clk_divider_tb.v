`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:10:04 11/18/2014
// Design Name:   clock_divider_v1
// Module Name:   /afs/athena.mit.edu/user/p/a/paulinev/Documents/6.111/laser_pinball/camera//clk_divider_tb.v
// Project Name:  clock_divider
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_divider_v1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_divider_tb;

	// Inputs
	reg reset;
	reg ref_clk;

	// Outputs
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	clock_divider_v2 #(500) uut (
		.reset(reset), 
		.ref_clk(ref_clk), 
		.clk_out(clk_out)
	);

	initial begin
		// Initialize Inputs
		ref_clk = 0;
		reset = 0;
		
	end
	
	always #5 ref_clk = ~ref_clk;
      
endmodule

