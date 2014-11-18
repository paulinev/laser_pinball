`timescale 1ns / 1ps
`default_nettype none;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:03 11/18/2014 
// Design Name: 
// Module Name:    clock_divider_v1 
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
module clock_divider_v1(
    input reset,
    input ref_clk,
    output wire clk_out
    );
	
	parameter delay = 1000;
	
	//100MHz to 100kHz, not sure what the Virtex 5 is
	reg [9:0] count = 0;
	reg clk_tmp = 0;
	
	assign clk_out = clk_tmp;
	
	always @(posedge ref_clk) begin
		
		if (count == (delay/2)-1) begin // constant division, evaluated at compile time
			clk_tmp <= ~ clk_tmp;
			count = 0;
		end
		else count = count + 1;
	end
endmodule
