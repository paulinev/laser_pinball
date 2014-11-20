`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:55:59 11/20/2014 
// Design Name: 
// Module Name:    playback 
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
module playback(
    input clk,
    input reset,
    input [23:0] bram_data,
	 output [18:0] addr,
    output [23:0] rgb
    );

	reg [18:0] addr = 0;
	
	always @(posedge clk) begin
		
	end

endmodule
