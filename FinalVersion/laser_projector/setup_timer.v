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
	output reg setup_start
    );
	 
	 //generate one cycle setup pulse long after reset
	 reg [31:0] setup_delay = 32'hFFFF;
	 
	 always@(posedge clk)
	 begin
	 
	 setup_start <= (setup_delay == 1) ? 1 : 0;
	 
	 if (setup_delay > 0)
	 begin
	 setup_delay <= reset ? 32'hFFFF : setup_delay-1;
	 end
	 else 
	 begin
	 setup_delay <= reset ? 32'hFFFF : 0;
	 end 
	 
	 end


endmodule
