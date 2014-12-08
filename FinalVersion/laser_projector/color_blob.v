`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:53 12/06/2014 
// Design Name: 
// Module Name:    color_blob 
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
module color_blob(
	input wire clk,
	input wire [9:0] hcount,
	input wire [9:0] vcount,
	input wire [9:0] x_loc,
	input wire [9:0] y_loc,
	input wire enable,
	input wire [8:0] color,
	output reg [8:0] pixel
    );
	 
	parameter blob_size = 8; 
	
	
	always@(posedge clk)
	begin
	
	if( (hcount>=x_loc)&&(hcount<(x_loc+blob_size)) && (vcount>=y_loc) && (vcount<(y_loc+blob_size)))
	begin
	pixel <= color;	
	end
	else
	begin
	pixel <= 9'h00;
	end
	
	end

endmodule
