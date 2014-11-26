`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:58 11/26/2014 
// Design Name: 
// Module Name:    beta_addr_decode 
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
module beta_addr_decode(
	input wire [31:0] addr,
	output reg sel_ram,
	output reg sel_IO,
	output reg sel_read_shared,
	output reg sel_write_shared,
	output reg [2:0] read_select
    );

	always@(*)
	begin
	case(addr[31:16])
	
	0: begin //RAM select
		sel_ram <=1; 
		sel_IO <= 0;
		sel_read_shared <= 0;
		sel_write_shared <= 0;
		read_select <= 0;
	end
	
	1: begin //Memory mapped IO select 
		sel_ram <=0; 
		sel_IO <= 1;
		sel_read_shared <= 0;
		sel_write_shared <= 0;
		read_select <= 1;
	end
	
	2: begin //read block select
		sel_ram <=0; 
		sel_IO <= 0;
		sel_read_shared <= 1;
		sel_write_shared <= 0;
		read_select <= 2;
	end
	
	3: begin //write block select 
		sel_ram <=0; 
		sel_IO <= 0;
		sel_read_shared <= 0;
		sel_write_shared <= 1;
		read_select <= 3;
	end
	
	default : begin //this should never happen
		sel_ram <=1; //read from main mem? I could trigger error IRQ
		sel_IO <= 0;
		sel_read_shared <= 0;
		sel_write_shared <= 0;
		read_select <= 0;
	end 
	endcase
	
	end
endmodule
