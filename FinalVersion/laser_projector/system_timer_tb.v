`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:06 11/29/2014
// Design Name:   system_timer
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/system_timer_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: system_timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module system_timer_tb;

	// Inputs
	reg clk;
	reg [31:0] count_in;
	reg clear_overflow;
	reg irq_enable;
	reg mwe;

	// Outputs
	wire [31:0] count_out;
	wire irq;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	system_timer uut (
		.clk(clk), 
		.count_in(count_in), 
		.count_out(count_out), 
		.clear_overflow(clear_overflow), 
		.irq_enable(irq_enable), 
		.irq(irq), 
		.mwe(mwe),
		.overflow(overflow)
	);
	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		count_in = 0;
		clear_overflow = 0;
		irq_enable = 0;
		mwe = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		count_in = 50;
		irq_enable = 1;
		mwe = 1;
		#10;
		mwe = 0;
		#700;
		clear_overflow = 1;
		irq_enable = 0;
		#10;
		clear_overflow = 0;
		#700;
		mwe = 1;
		#10;
		mwe = 0;
		#700;
		$stop();
		
		// Add stimulus here

	end
      
endmodule

