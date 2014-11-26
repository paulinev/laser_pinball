`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:25 11/26/2014 
// Design Name: 
// Module Name:    mapped_IO 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//this is a basic memory mapped IO, SPI, inputs, and outputs
module mapped_IO(
	input wire clk,
	input wire [31:0] addr,//from beta
	input wire [31:0] din, //from beta
	input wire mwe //memory write enable from beta
	input wire [31:0] in_port_a, in_port_b, // general use input port
	output wire [31:0] dout, //data to beta
	output reg [31:0] out_port_a, out_port_b, // general output ports
	output wire spi_miso, //spi stuff
	output wire spi_csn, 
	output wire spi_sclk,
	output wire spi_mosi,
    );
	//registers: 
	//	0000 - 0001 : in_port_a - in_port b
	//	0002 - 0003 : out_port_a - out_port_b
	//	0004 - 0007 : spi_config, spi_start, spi_tx, spi_rx
	//	0008 - 000b : reserved for audio stuff


	//decode address
	always @(posedge clk)
	begin 
	case(addr[15:0])
	
	16'h0000: begin //in_port_a
	//no write
	dout <= in_port_a;
	end
	
	
	16'h0001: begin //in_port_b
	//no write
	dout <= in_port_b;
	end
	
	16'h0002: begin //out_port_a
	dout <= out_port_a;
	out_port_a <= mwe ? din : out_port_a;
	end
	
	16'h0003: begin //out_port_b
	dout <= out_port_b;
	out_port_b <= mwe ? din : out_port_b;
	end
	
	default: begin 
	dout <= 0;
	end
	
	endcase
	end
	
	

endmodule
