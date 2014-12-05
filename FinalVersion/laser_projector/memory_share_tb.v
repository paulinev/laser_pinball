`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:06:57 11/29/2014
// Design Name:   memory_share
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/memory_share_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_share
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_share_tb;

	// Inputs
	reg clk;
	reg mwe_host;
	reg mwe_client;
	reg [31:0] host_addr;
	reg [31:0] client_addr;
	reg [31:0] host_din;
	reg [31:0] client_din;

	// Outputs
	wire [31:0] host_dout;
	wire [31:0] client_dout;
	
	//other 
	reg [31:0] i = 0;
	reg [31:0] z = 0;

	// Instantiate the Unit Under Test (UUT)
	memory_share uut (
		.clk(clk), 
		.mwe_host(mwe_host), 
		.mwe_client(mwe_client), 
		.host_addr(host_addr), 
		.client_addr(client_addr), 
		.host_din(host_din), 
		.client_din(client_din), 
		.host_dout(host_dout), 
		.client_dout(client_dout)
	);
	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		mwe_host = 0;
		mwe_client = 0;
		host_addr = 0;
		client_addr = 0;
		host_din = 0;
		client_din = 0;
		#5;
		// Wait 100 ns for global reset to finish
		#100;
		//write memory
		mwe_host = 1;
		mwe_client = 1;
		for (i=2; i<262; i=i+1) begin
		client_addr = i*4-8;
		host_addr = i*4;
		host_din = i;
		client_din = 32'hFFFFFF;
		#10;
		end
		mwe_host=0;
		mwe_client=0;
		
		#100; //readmemory
		
		for (z=0; z<260; z=z+1) begin
		client_addr = z*4;
		host_addr = z*4;
		client_din = 32'hF;
		#10;
		end
        
		// Add stimulus here

	end
      
endmodule

