`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:24:38 12/07/2014
// Design Name:   image_hunt
// Module Name:   /home/wbraun/laser_pinball/FinalVersion/laser_projector/image_hunt_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: image_hunt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module image_hunt_tb;

	// Inputs
	reg clk;
	reg [8:0] mem_pixel_data;
	reg start;

	// Outputs
	wire mem_request;
	wire done;
	wire [9:0] mem_hcount;
	wire [9:0] mem_vcount;
	wire [8:0] red_x;
	wire [8:0] red_y;
	wire [8:0] green_x;
	wire [8:0] green_y;
	wire [8:0] blue_x;
	wire [8:0] blue_y;

	// Instantiate the Unit Under Test (UUT)
	image_hunt uut (
		.clk(clk), 
		.mem_pixel_data(mem_pixel_data), 
		.start(start), 
		.mem_request(mem_request), 
		.done(done), 
		.mem_hcount(mem_hcount), 
		.mem_vcount(mem_vcount), 
		.red_x(red_x), 
		.red_y(red_y), 
		.green_x(green_x), 
		.green_y(green_y), 
		.blue_x(blue_x), 
		.blue_y(blue_y)
	);
	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		mem_pixel_data = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
		start = 1;
		#10;
		start = 0;
		
        
		// Add stimulus here

	end
      
endmodule

