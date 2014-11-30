`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:56 11/27/2014
// Design Name:   mul32
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/multi_32_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mul32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multi_32_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	
	//outputs
	wire [31:0] mult;

	// Instantiate the Unit Under Test (UUT)
	mul32 uut (
		.a(a), 
		.b(b), 
		.mult(mult)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
      a= 1;
		b=1;
		#10;
		a=32'hFFFF;
		b=1;
		// Add stimulus here

	end
      
endmodule

