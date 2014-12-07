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
	input wire [15:0] color,
	output wire [15:0] pixel
    );
	 
	parameter blob_size = 4; 
	
	wire [9:0] diff_x;
	wire [9:0] diff_y;
	
	assign diff_x = (x_loc >= hcount) ? x_loc - hcount : hcount - x_loc;
	assign diff_y = (y_loc >= vcount) ? y_loc - vcount : vcount - y_loc;
	
	
	
	
	always@(posedge clk)
	begin
	
	if((blob_size>diff_x) && blob_size>diff_y)
	begin
	pixel <= color;	
	end
	else
	begin
	pixel <= 16'h00;
	end
	
	end

endmodule
