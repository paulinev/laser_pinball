`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:20:54 12/07/2014
// Design Name:   pixel_cost_function
// Module Name:   /home/wbraun/laser_pinball/FinalVersion/laser_projector/pixel_cost_function_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pixel_cost_function
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pixel_cost_function_tb;

	// Inputs
	reg [8:0] pixel_data;

	// Outputs
	wire [8:0] pixel_red_cost;
	wire [8:0] pixel_green_cost;
	wire [8:0] pixel_blue_cost;

	// Instantiate the Unit Under Test (UUT)
	pixel_cost_function uut (
		.pixel_data(pixel_data), 
		.pixel_red_cost(pixel_red_cost), 
		.pixel_green_cost(pixel_green_cost), 
		.pixel_blue_cost(pixel_blue_cost)
	);

	initial begin
		// Initialize Inputs
		pixel_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		pixel_data = 9'b111_111_111;
		#10;
		pixel_data = 9'b000_111_111;
		#10;
		pixel_data = 9'b000_111_000;
		#10;
		pixel_data = 9'b111_000_111;
		#10;
		pixel_data = 9'b000_000_111;
		#10;
		pixel_data = 9'b000_000_000;
		#10;
        
		// Add stimulus here

	end
      
endmodule

