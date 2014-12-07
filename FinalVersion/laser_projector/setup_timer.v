`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:10 12/06/2014 
// Design Name: 
// Module Name:    setup_timer 
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
module setup_timer(
	input wire clk,
	input wire reset,
	output wire setup_start
    );
	 
	 reg [31:0] setup_delay = 0;
	 
	 always@(posedge clk)
	 begin
	 
	 
	 end


endmodule
