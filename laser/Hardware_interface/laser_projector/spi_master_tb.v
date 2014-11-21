`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:02 11/04/2014
// Design Name:   spi_master
// Module Name:   /afs/athena.mit.edu/user/w/b/wbraun/Private/6_111/FinalProject/SPI_ADC/Test/SPI_testbench/spi_master_tb.v
// Project Name:  SPI_testbench
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: spi_master
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module spi_master_tb;

	// Inputs
	reg clk;
	reg [15:0] data_in;
	reg miso;
	reg start;

	// Outputs
	wire done;
	wire mosi;
	wire sclk;
	wire CSN;
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	spi_master uut (
		.clk(clk), 
		.data_in(data_in), 
		.miso(miso), 
		.start(start), 
		.done(done), 
		.mosi(mosi), 
		.sclk(sclk), 
		.CSN(CSN), 
		.data_out(data_out)
	);

	always #5 clk = !clk;
	always #1 miso = mosi;
	initial begin
		// Initialize Inputs
		clk = 0;
		data_in = 0;
		miso = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
		data_in = 16'b1010101110101011;
		start=1;
		#10;
		start = 0;
		
		#4000
		$display ("out = %X",data_out);
		$display ("done = %b",done);
		$stop();
		
		
		
        
		// Add stimulus here

	end
      
endmodule

