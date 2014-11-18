`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:19 11/18/2014 
// Design Name: 
// Module Name:    clk_divider_v2 
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
module clock_divider_v2(
    input reset,
    input ref_clk,
    output reg clk_out
    );
	
	parameter delay = 1000;
	
	//100MHz to 100kHz, not sure what the Virtex 5 is
	reg [9:0] count = 0;
	initial clk_out = 0;
	
	always @(posedge ref_clk) begin
		
		if (count == (delay/2)-1) begin // constant division, evaluated at compile time
			clk_out <= ~clk_out;
			count = 0;
		end
		else count = count + 1;
	end
endmodule

