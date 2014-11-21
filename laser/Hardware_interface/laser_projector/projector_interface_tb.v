`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:33:30 11/14/2014
// Design Name:   projector_interface
// Module Name:   /afs/athena.mit.edu/user/w/b/wbraun/Private/6_111/FinalProject/galvo_drive/project_ise/galvo_drive/projector_interface_tb.v
// Project Name:  galvo_drive
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: projector_interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module projector_interface_tb;

	// Inputs
	reg clk;
	reg update;
	reg [31:0] data_in;
	reg [1:0] control;
	reg reset;

	// Outputs
	wire frame_done;
	wire [11:0] DAC_x;
	wire [11:0] DAC_y;
	wire DAC_start;
	wire [2:0] laser_rgb;

	// Instantiate the Unit Under Test (UUT)
	projector_interface uut (
		.clk(clk), 
		.update(update), 
		.data_in(data_in), 
		.control(control), 
		.reset(reset), 
		.frame_done(frame_done), 
		.DAC_x(DAC_x), 
		.DAC_y(DAC_y), 
		.DAC_start(DAC_start), 
		.laser_rgb(laser_rgb)
	);
	always begin
	clk=!clk;
	#5;
	end
	
	always begin
	update = 1;
	#10;
	update = 0;
	#390;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		update = 0;
		data_in = 0;
		control = 0;
		reset = 0;
	
		// Wait 100 ns for global reset to finish
		#100;
		
		control = 2; //ILDA test pattern
      #20000;
		// Add stimulus here
	end
      
endmodule

