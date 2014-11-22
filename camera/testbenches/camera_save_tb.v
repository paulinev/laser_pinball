`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:37:13 11/21/2014
// Design Name:   camera_save
// Module Name:   /afs/athena.mit.edu/user/p/a/paulinev/Documents/6.111/laser_pinball/camera/testbenches//camera_save_tb.v
// Project Name:  camera_read
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: camera_save
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module camera_save_tb;

	// Inputs
	reg clk;
	reg reset;
	reg pixel_done;
	reg [31:0] data_in;
	reg frame_done;

	// Outputs
	wire [18:0] addr;
	wire we;
	wire [7:0] pixel_out;

	// Instantiate the Unit Under Test (UUT)
	camera_save uut (
		.clk(clk), 
		.reset(reset), 
		.pixel_done(pixel_done), 
		.data_in(data_in), 
		.frame_done(frame_done), 
		.addr(addr), 
		.we(we), 
		.pixel_out(pixel_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		pixel_done = 0;
		data_in = 0;
		frame_done = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 0;
		data_in = 'hFFFFFFFF;
		#30;
		pixel_done = 1;
		#10;
		pixel_done = 0;
		data_in = 'h0ABCEEFF;
		#30;
		pixel_done = 1;
		#10;
		pixel_done = 0;
		data_in = 'hABCDECDF;
		#30;
		pixel_done = 1;
		#10;
		pixel_done = 0;
		data_in = 'hBBAB087A;
		#30;
		pixel_done = 1;
		#10;
		pixel_done = 0;
		data_in = 'h9C731234;
		#30;
		pixel_done = 1;
		#10;
		frame_done = 1;
		

	end
      
	always #5 clk = ~clk;
	
endmodule

