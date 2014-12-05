`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:36 12/04/2014
// Design Name:   rgb_upconvert
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/rgb_upconvert_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rgb_upconvert
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rgb_upconvert_tb;

	// Inputs
	reg [15:0] rgb565;

	// Instantiate the Unit Under Test (UUT)
	rgb_upconvert uut (
		.rgb565(rgb565)
	);

	initial begin
		// Initialize Inputs
		rgb565 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rgb565 = 16'hff;
		#10;
		rgb565 = 16'hffff;
		
        
		// Add stimulus here

	end
      
endmodule

