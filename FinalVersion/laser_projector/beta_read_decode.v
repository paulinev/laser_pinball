`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:16 11/26/2014 
// Design Name: 
// Module Name:    beta_read_decode 
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
module beta_read_decode(
	input wire clk,
	input wire [2:0] read_select, //need to pipeline
	input wire [31:0] ram_dout,
	input wire [31:0] IO_dout,
	input wire [31:0] shared_read_dout,
	input wire [31:0] shared_write_dout,
	output reg [31:0] beta_mdin = 0
    );

	reg [2:0] old_read_select = 0;
	
	always@(posedge clk)
	begin
	old_read_select <= read_select;
	end
	
	always@(*)
	begin
	
	case(old_read_select)
	
	0: begin //select ram
	beta_mdin <= ram_dout;
	end
	
	1: begin //select IO
	beta_mdin <= IO_dout; 
	end
	
	2: begin //select shared_read
	beta_mdin <= shared_read_dout;
	end
	
	3: begin //select shared write 
	beta_mdin <= shared_write_dout;
	end
	
	default : begin //this should not happen, select ram?
	beta_mdin <= ram_dout;
	end 
	endcase 
	end

endmodule
