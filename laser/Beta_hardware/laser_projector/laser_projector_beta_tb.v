`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:15:10 11/26/2014
// Design Name:   laser_projector_full
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/laser_projector_beta_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: laser_projector_full
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module laser_projector_beta_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] dip_sw;
	reg paddle_l;
	reg paddle_r;

	// Outputs
	wire [2:0] laser_rgb;
	wire dac_mosi;
	wire dac_csn;
	wire dac_latchn;
	wire dac_sclk;
	wire [7:0] debug_led;

	// Instantiate the Unit Under Test (UUT)
	laser_projector_full uut (
		.clk(clk), 
		.reset(reset), 
		.dip_sw(dip_sw), 
		.paddle_l(paddle_l), 
		.paddle_r(paddle_r), 
		.laser_rgb(laser_rgb), 
		.dac_mosi(dac_mosi), 
		.dac_csn(dac_csn), 
		.dac_latchn(dac_latchn),
		.debug_led(debug_led)
	);

	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		dip_sw = 0;
		paddle_l = 0;
		paddle_r = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 1;
		#20;
		reset = 0;
		#1000;
		reset = 1;
		#20
		reset = 0;
		// Add stimulus here

	end
      
endmodule

