`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:10:47 11/04/2014
// Design Name:   DAC_drive
// Module Name:   /afs/athena.mit.edu/user/w/b/wbraun/Private/6_111/FinalProject/DAC_FSM/Test/DAC_FSM_test/DAC_drive_tb.v
// Project Name:  DAC_FSM_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DAC_drive
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DAC_drive_tb;

	// Inputs
	reg clk;
	reg [11:0] x_in;
	reg [11:0] y_in;
	reg start;
	reg laser_rgb;

	// Outputs
	wire dac_mosi;
	wire dac_CSN;
	wire dac_sclk;
	wire dac_latch;
	wire done;
	wire laser_rgb_latched;
	// Instantiate the Unit Under Test (UUT)
	DAC_drive uut (
		.clk(clk), 
		.x_in(x_in), 
		.y_in(y_in), 
		.start(start),
		.laser_rgb(laser_rgb),
		.dac_mosi(dac_mosi), 
		.dac_CSN(dac_CSN), 
		.dac_sclk(dac_sclk), 
		.dac_latch(dac_latch), 
		.done(done),
		.laser_rgb_latched(laser_rgb_latched)
	);
	always #5 clk = !clk;
	//always begin
	//#5;
	//if (done == 1) $stop();
	//end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		x_in = 0;
		y_in = 0;
		start = 0;
		laser_rgb =0;

		// Wait 100 ns for global reset to finish
		#100;
		x_in = 12'b111100001111;
		y_in = 12'b100011110000;
		laser_rgb = 3'b101;
		start = 1'b1;
		#10; 
		start = 0;
      #3000;
		x_in = 12'b000000000000;
		y_in = 12'b000000000000;
		start = 1'b1;
		#10;
		start = 0;
		#3000;
		
		// Add stimulus here

	end
      
endmodule

