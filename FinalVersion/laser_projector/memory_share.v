`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:11 11/29/2014 
// Design Name: 
// Module Name:    memory_share 
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
module memory_share(
	input wire clk,
	input wire mwe_host,
	input wire mwe_client,
	input wire [31:0] host_addr,
	input wire [31:0] client_addr,
	input wire [31:0] host_din,
	input wire [31:0] client_din,
	output reg [31:0] host_dout,
	output reg [31:0] client_dout
    );
	 //memory section is 16 bits wide
	 
	 //256 location dual port ram
	 //32 bit wide word
	 
	 reg mem_mwe;
	 reg host_mem_read;
	 reg client_mem_read;
	 
	 //wire [31:0] host_mem_data;
	 wire [31:0] client_mem_data;
	 
	 reg [31:0] host_reg_data;
	 reg [31:0] client_reg_data;
	 
	 
	beta_shared_mem shared_ram (
	.clka(clk),
	.dina(host_din),
	.addra(host_addr[9:2]),
	.wea(mem_mwe),
	.clkb(clk),
	.addrb(client_addr[9:2]),
	.doutb(client_mem_data)
	);
	
	reg [31:0] host_status = 0;// 14'h100
	reg [31:0] client_status = 0; //14'h101
	
	always@(*)
	begin
	mem_mwe<= mwe_host&&(host_addr[15:2]<=14'hFF);
	
	//if data to be read from ram block
	host_mem_read <= (host_addr[15:2]<=14'hFF); 
	client_mem_read <= (client_addr[15:2]<=14'hFF);
	
	//ouput data mux
	host_dout <= host_mem_read ? 32'h00 : host_reg_data; //no mem read
	client_dout <= client_mem_read ? client_mem_data : client_reg_data;
	
	end
	
	always@(posedge clk)
	begin
		case(host_addr[15:2])
		
		14'h100: begin //host status reg
		host_reg_data <= host_status; //read
		host_status <= mwe_host ? host_din : host_status; //write
		end
		
		14'h101: begin //client status reg 
		host_reg_data <= client_status; //read
		//no write
		end
		
		default: begin //other addresses
		host_reg_data <= 32'h00;
		end
		endcase
		
		case(client_addr[15:2])
		
		14'h100: begin //host status reg
		client_reg_data <= host_status; //read
		//no write
		end
		
		14'h101: begin //client status reg
		client_reg_data <= client_status; //read
		client_status <= mwe_client ? client_din : client_status; //write
		end
		
		default: begin //other addresses
		client_reg_data <= 32'h00;
		end
		endcase
	
	
	end
	
	

endmodule
