`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:46:48 12/08/2014
// Design Name:   nes_interface
// Module Name:   /home/wbraun/laser_pinball/FinalVersion/laser_projector/nes_interface_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nes_interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module nes_interface_tb;

	// Inputs
	reg clk_50;
	reg controller_dout;

	// Outputs
	wire controller_clk;
	wire controller_latch;
	wire updated;
	wire button_A;
	wire button_B;
	wire button_X;
	wire button_Y;
	wire button_L;
	wire button_R;
	wire button_N;
	wire button_E;
	wire button_S;
	wire button_W;
	wire button_START;
	wire button_SELECT;

	// Instantiate the Unit Under Test (UUT)
	nes_interface uut (
		.clk_50(clk_50), 
		.controller_dout(controller_dout), 
		.controller_clk(controller_clk), 
		.controller_latch(controller_latch), 
		.updated(updated), 
		.button_A(button_A), 
		.button_B(button_B), 
		.button_X(button_X), 
		.button_Y(button_Y), 
		.button_L(button_L), 
		.button_R(button_R), 
		.button_N(button_N), 
		.button_E(button_E), 
		.button_S(button_S), 
		.button_W(button_W), 
		.button_START(button_START), 
		.button_SELECT(button_SELECT)
	);
	always #5 clk_50=~clk_50;
	initial begin
		// Initialize Inputs
		clk_50 = 0;
		controller_dout = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

