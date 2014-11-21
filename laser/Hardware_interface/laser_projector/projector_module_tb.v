`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:12:18 11/15/2014
// Design Name:   projector_module
// Module Name:   /afs/athena.mit.edu/user/w/b/wbraun/Private/6_111/FinalProject/Hardware_interface/laser_projector/projector_module_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: projector_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module projector_module_tb;

	// Inputs
	reg clk;
	reg reset;
	reg laser_enable;
	reg [63:0] physics_data;
	reg [1:0] update_rate;
	reg [1:0] mode_control;

	// Outputs
	wire [2:0] laser_rgb;
	wire DAC_SCLK;
	wire DAC_MOSI;
	wire DAC_CSN;
	wire DAC_latch;

	// Instantiate the Unit Under Test (UUT)
	projector_module uut (
		.clk(clk), 
		.reset(reset), 
		.laser_enable(laser_enable), 
		.physics_data(physics_data), 
		.update_rate(update_rate), 
		.mode_control(mode_control), 
		.laser_rgb(laser_rgb), 
		.DAC_SCLK(DAC_SCLK), 
		.DAC_MOSI(DAC_MOSI), 
		.DAC_CSN(DAC_CSN), 
		.DAC_latch(DAC_latch)
	);
	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		laser_enable = 0;
		physics_data = 0;
		update_rate = 0;
		mode_control = 0;

		// Wait 100 ns for global reset to finish
		#100;
      laser_enable =1;
		update_rate = 3;
		mode_control = 2; //ilda test pattern 
		// Add stimulus here

	end
      
endmodule

