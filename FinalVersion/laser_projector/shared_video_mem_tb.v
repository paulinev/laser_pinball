`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:31:56 12/07/2014
// Design Name:   shared_video_mem
// Module Name:   /home/wbraun/laser_pinball/FinalVersion/laser_projector/shared_video_mem_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shared_video_mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shared_video_mem_tb;

	// Inputs
	reg clk_read;
	reg clk_write;
	reg [15:0] write_addr;
	reg [15:0] read_addr;
	reg [15:0] dout_camera;
	reg mwe_camera;

	// Outputs
	wire [8:0] dout_pixel;

	// Instantiate the Unit Under Test (UUT)
	shared_video_mem uut (
		.clk_read(clk_read), 
		.clk_write(clk_write), 
		.write_addr(write_addr), 
		.read_addr(read_addr), 
		.dout_camera(dout_camera), 
		.mwe_camera(mwe_camera), 
		.dout_pixel(dout_pixel)
	);

	initial begin
		// Initialize Inputs
		clk_read = 0;
		clk_write = 0;
		write_addr = 0;
		read_addr = 0;
		dout_camera = 0;
		mwe_camera = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

