`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:53:58 12/06/2014 
// Design Name: 
// Module Name:    reset_controller 
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
//this should fix all our weird reset issues?
module reset_controller(
	input wire clk,
	input wire user_reset,
	output wire reset
    );
	 
	 
	 
	 reg [15:0] reset_timer = 16'hFFFF;
	 
	 assign reset = reset_timer[15] | user_reset; 
	 
	 always@(posedge clk)
	 begin
	 
	 reset_timer <= reset_timer<<1;
	 
	 end


endmodule
