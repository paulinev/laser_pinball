`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:23:20 11/17/2014
// Design Name:   sccb_master_v1
// Module Name:   /afs/athena.mit.edu/user/p/a/paulinev/Documents/6.111/laser_pinball/camera//sccb_master_tb.v
// Project Name:  sccb_master
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sccb_master_v1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sccb_master_tb;

	// Inputs
	reg clk;
	reg start;
	reg reset;
	reg [6:0] slave_addr;
	reg [7:0] reg_addr;
	reg [7:0] data;
	reg rw;

	// Outputs
	wire sdioc;
	wire cs;
	wire [7:0] data_out;
	wire done;

	// Bidirs
	wire sdiod;
	
	// Instantiate the Unit Under Test (UUT)
	sccb_master_v1 uut (
		.clk(clk), 
		.start(start), 
		.reset(reset), 
		.slave_addr(slave_addr), 
		.reg_addr(reg_addr), 
		.data(data), 
		.rw(rw), 
		.sdiod(sdiod), 
		.sdioc(sdioc), 
		.cs(cs),
		.data_out(data_out),
		.done(done)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		reset = 1;
		slave_addr = 0;
		reg_addr = 0;
		data = 0;
		rw = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 0;
		#10;
		slave_addr = 7'b1010111;
		reg_addr = 8'b10101010;
		data = 8'b00101101;
		rw = 1; // read test
		//rw = 0; //write test
		#10;
		start = 1;
		#10;
		start = 0;

	end
	
	always #5 clk = ~clk;
      
endmodule

