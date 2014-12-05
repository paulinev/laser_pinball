`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:30:47 12/03/2014
// Design Name:   camera_read
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/camera_read_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: camera_read
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module camera_read_tb;

	// Inputs
	reg p_clock;
	reg vsync;
	reg href;
	reg [7:0] p_data;
	reg start;

	// Outputs
	wire [15:0] pixel_data;

	wire pixel_done;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	camera_read uut (
		.p_clock(p_clock), 
		.vsync(vsync), 
		.href(href), 
		.p_data(p_data), 
		.start(start), 
		.pixel_data(pixel_data),  
		.pixel_done(pixel_done), 
		.done(done)
	);
	
	reg [9:0] i = 0;
	reg [9:0] z = 0;
	always #5 p_clock = ~p_clock;
	initial begin
		// Initialize Inputs
		p_clock = 0;
		vsync = 0;
		href = 0;
		p_data = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
		start = 1;
		#10;
		start = 0;
		#10
		vsync= 1;
		#20;
		vsync = 0;
		#20;
		href = 0;
		
		for (z= 0; z<480; z=z+1)begin
		#20;
		href = 1;
		
		for (i = 0; i < 20; i = i +1) begin //mini line
		p_data = i[7:0];
		#10;
		p_data = 0;
		#10;
		end
		href = 0;
		#50;
      end
		// Add stimulus here

	end
      
endmodule

