`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:11:36 11/21/2014
// Design Name:   camera_read
// Module Name:   /afs/athena.mit.edu/user/p/a/paulinev/Documents/6.111/laser_pinball/camera/testbenches//camera_read_tb.v
// Project Name:  camera_read
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
	reg reset;
	reg clk;
	reg vsync;
	reg href;
	reg pclk;
	reg [7:0] data_in;

	// Outputs
	wire [31:0] data_out;
	wire pixel_done;
	wire frame_done;

	// Instantiate the Unit Under Test (UUT)
	camera_read uut (
		.reset(reset), 
		.clk(clk), 
		.vsync(vsync), 
		.href(href), 
		.pclk(pclk), 
		.data_in(data_in), 
		.data_out(data_out), 
		.pixel_done(pixel_done), 
		.frame_done(frame_done)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
		vsync = 0;
		href = 0;
		pclk = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 0;
		data_in = 'hFF;
		href = 1;
		#50;
		vsync = 1;
		href = 0;
		#10;
		href = 1;
		vsync = 0;
		data_in = 'hFE;
		#10;
		data_in = 'hFD;
		#10;
		data_in = 'hFC;
		#10;
		data_in = 'hAA;
		#10;
		data_in = 'h00;
		#10;
		data_in = 'h0F;
		#10;
		data_in = 'hF0;
		#10;
		data_in = 'hEE;
		#10;
		data_in = 'h7F;
		#10;
		data_in = 'hC2;
		#10;
		data_in = 'h11;
		#10;
		data_in = 'h08;
		#10;
		href = 0;
		vsync = 1;
		#10;
		href = 1;
		vsync = 0;
		data_in = 'hFE;
		#10;
		data_in = 'hFD;
		#10;
		data_in = 'hFC;
		#10;
		data_in = 'hAA;

	end
	
	always #5 clk = ~clk;
	always #5 pclk = ~pclk;
      
endmodule

