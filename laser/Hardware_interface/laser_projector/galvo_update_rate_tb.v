`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:05:58 11/15/2014
// Design Name:   galvo_update_rate
// Module Name:   /afs/athena.mit.edu/user/w/b/wbraun/Private/6_111/FinalProject/Hardware_interface/laser_projector/galvo_update_rate_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: galvo_update_rate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module galvo_update_rate_tb;

	// Inputs
	reg clk;
	reg [1:0] setting;

	// Outputs
	wire strobe_out;

	// Instantiate the Unit Under Test (UUT)
	galvo_update_rate uut (
		.clk(clk), 
		.setting(setting), 
		.strobe_out(strobe_out)
	);
	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		setting = 0;

		// Wait 100 ns for global reset to finish
		#100;
		setting = 3; 
        
		// Add stimulus here

	end
      
endmodule

