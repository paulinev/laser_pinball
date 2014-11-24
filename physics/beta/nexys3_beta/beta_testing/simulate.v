`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:38 11/23/2014
// Design Name:   beta2demo
// Module Name:   C:/Users/Jake/laser_pinball/physics/nexys3/beta_testing/simulate.v
// Project Name:  beta_testing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: beta2demo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module simulate;

	// Inputs
	reg gclk;
	reg [7:0] sw;
	reg [4:0] btn;

	// Outputs
	wire [7:0] seg;
	wire [3:0] an;
	wire [7:0] led;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	beta2demo uut (
		.gclk(gclk), 
		.seg(seg), 
		.an(an), 
		.sw(sw), 
		.btn(btn), 
		.led(led), 
		.red(red), 
		.green(green), 
		.blue(blue), 
		.hsync(hsync), 
		.vsync(vsync)
	);

	always #5 gclk <= !gclk;
	initial begin
		// Initialize Inputs
		gclk = 0;
		sw = 0;
		btn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

