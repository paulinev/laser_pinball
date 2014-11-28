`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:14:48 11/28/2014
// Design Name:   spi_io
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/spi_io_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: spi_io
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module spi_io_tb;

	// Inputs
	reg clk;
	reg start;
	reg [31:0] ctrl_reg;
	reg [31:0] din;
	reg miso;

	// Outputs
	wire [31:0] dout;
	wire [31:0] status_reg;
	wire sclk;
	wire mosi;

	// Instantiate the Unit Under Test (UUT)
	spi_io uut (
		.clk(clk), 
		.start(start), 
		.ctrl_reg(ctrl_reg), 
		.din(din), 
		.dout(dout), 
		.status_reg(status_reg), 
		.sclk(sclk), 
		.miso(miso), 
		.mosi(mosi)
	);
	always #5 clk=~clk;
	always #1 miso = mosi;
	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		ctrl_reg = 0;
		din = 0;
		//miso = 0;

		// Wait 100 ns for global reset to finish
		#100;
      ctrl_reg = 32'h00_00_02_0c;
		din = 32'hFF_00_FF_AA;
		start = 1;
		#10;
		start = 0;
		// Add stimulus here

	end
      
endmodule

