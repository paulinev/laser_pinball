`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:04:13 11/30/2014 
// Design Name: 
// Module Name:    mul32 
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
module mul32(
	a, 
	b, 
	mult
    );
	 
	 input wire [31:0] a;
	 input wire [31:0] b;
	 output reg[31:0] mult =0;
	 
	 always@(*)
	 begin
	 mult <= a[15:0]*b[15:0];
	 end


endmodule
