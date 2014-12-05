`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:52:29 11/29/2014
// Design Name:   mapped_IO
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/mapped_IO_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mapped_IO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mapped_IO_tb;

	// Inputs
	reg clk;
	reg [31:0] addr;
	reg [31:0] din;
	reg mwe;
	reg [31:0] in_port_a;
	reg [31:0] in_port_b;
	reg spi_miso;

	// Outputs
	wire [31:0] dout;
	wire [31:0] out_port_a;
	wire [31:0] out_port_b;
	wire spi_csn;
	wire spi_sclk;
	wire spi_mosi;
	wire irq;

	// Instantiate the Unit Under Test (UUT)
	mapped_IO uut (
		.clk(clk), 
		.addr(addr), 
		.din(din), 
		.mwe(mwe), 
		.in_port_a(in_port_a), 
		.in_port_b(in_port_b), 
		.dout(dout), 
		.out_port_a(out_port_a), 
		.out_port_b(out_port_b), 
		.spi_miso(spi_miso), 
		.spi_csn(spi_csn), 
		.spi_sclk(spi_sclk), 
		.spi_mosi(spi_mosi), 
		.irq(irq)
	);
	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		addr = 0;
		din = 0;
		mwe = 0;
		in_port_a = 0;
		in_port_b = 0;
		spi_miso = 0;

		// Wait 100 ns for global reset to finish
		#100;
		//#1200; 
		addr = 16'h0024; //timer 1 cin
		din = 20; //count down from 20
		mwe = 1; //write dat memory
		
		#10; //enable timer irq
		addr = 16'h0028;
		din = 1;
		mwe =1; 
		
		
		#10;
		addr = 16'h0018; //spi tx data
		din = 32'hFF_aa_FF_aa; //data to send
		mwe = 1;
		
		#10 ; 
		//clk/4 32 bits tx
		addr = 16'h0010;
		din = 32'h00_00_02_08; //spi config
		mwe = 1;
		
		#10;
		addr = 16'h0014; //spi start 
		din = 32'b1;
		mwe = 1;
		
		#10;
		addr = 16'h0020; //timer 1 cout
		din = 0;
		mwe = 0;
		
		
		
		
        
		// Add stimulus here

	end
      
endmodule

