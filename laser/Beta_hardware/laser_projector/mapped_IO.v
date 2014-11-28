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
	input wire mwe, //memory write enable from beta
	input wire [31:0] in_port_a, in_port_b, // general use input port
	output reg [31:0] dout =0, //data to beta
	output reg [31:0] out_port_a = 0,
	output reg [31:0] out_port_b = 0, // general output ports
	input wire spi_miso, //spi stuff
	output wire spi_csn, 
	output wire spi_sclk,
	output wire spi_mosi
    );
	//this is on word offset
	//registers: 
	//	0000 - 0004 : in_port_a - in_port b
	//	0008 - 000c : out_port_a - out_port_b
	//	0010 - 001c : spi_config, spi_start, spi_tx, spi_rx
	//	0020 - 002c : reserved for audio stuff

	wire [31:0] spi_rx_data;
	reg [31:0] spi_tx_data =0;
	reg [31:0] spi_config = 32'h00_00_02_0a; //default to nice value

	reg spi_start;
	wire [31:0]spi_status;
	
	spi_io instance_name (
    .clk(clk), 
    .start(spi_start), 
    .ctrl_reg(ctrl_reg), 
    .din(spi_tx_data), 
    .dout(spi_rx_data), 
    .status_reg(spi_status), 
    .sclk(spi_sclk), 
    .miso(spi_miso), 
    .mosi(spi_mosi)
    );
	 
	 //handle addresses with no readback
	 always @(*)
	 begin
		spi_start <= (mwe&&(addr[15:0]==16'h0014)&&din[0]);
	 end
	 
	//decode address
	always @(posedge clk)
	begin 
		case(addr[15:0])
		16'h0000: begin //in_port_a
		//no write
		dout <= in_port_a;
		end

		16'h0004: begin //in_port_b
		//no write
		dout <= in_port_b;
		end

		16'h0008: begin //out_port_a
		dout <= out_port_a;
		out_port_a <= mwe ? din : out_port_a;
		end

		16'h000c: begin //out_port_b
		dout <= out_port_b;
		out_port_b <= mwe ? din : out_port_b;
		end
		
		16'h0010: begin //spi_config reg
		dout <= spi_config;
		spi_config <= mwe ? din : spi_config;
		end
		
		16'h0014: begin //spi_start/status
		//when wrote to, starts SPI
		//does not retain data value
		//spi start assignment occurs outside clocked logic
		//when read, gives status
		dout <= spi_status;
		end
		
		16'h0018: begin //spi_tx_data
		dout <= spi_tx_data;
		spi_tx_data <= mwe ? din : spi_tx_data;
		end
		
		16'h001c: begin //spi_rx_data
		//read only
		dout <= spi_rx_data;
		end

		default: begin 
		dout <= 0;
		end
		endcase
	end
	
	

endmodule
