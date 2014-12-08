`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:12:46 12/07/2014 
// Design Name: 
// Module Name:    pixel_cost_function 
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
module pixel_cost_function(
	input [8:0] pixel_data,
	output [8:0] pixel_red_cost,
	output [8:0] pixel_green_cost,
	output [8:0] pixel_blue_cost
    );
	
	wire [2:0] red = pixel_data[8:6];
	wire [2:0] green = pixel_data[5:3];
	wire [2:0] blue = pixel_data[2:0];
	
	/*
	assign pixel_red_cost = ((red>(green<<1)) && (red>(blue<<1)) && (red>(blue+red)) && (red>2)) ?
									(red<<2)-(green<<1)-(blue<<1) + 3: 0;
									
	assign pixel_blue_cost = ((blue>(green<<1)) && (blue>(red<<1)) && (blue>(red+green)) && (blue>2)) ?
									(blue<<2) - (green<<1) - (blue<<1) +15 : 0;
									
	assign pixel_green_cost = ((green>(blue<<1)) && (green>(red<<1)) && (green>(red+blue)) &&(green>2)) ?
									(green<<2) - (green<<1) - (blue<<1) +7 : 0;
	*/
	assign pixel_red_cost = ((red>=(green<<1)) && (red>=(blue<<1))) ? 1 : 0;
	assign pixel_blue_cost = ((blue>=(green<<1)) && (blue>=(red<<1))) ? 1 : 0;
	assign pixel_green_cost = ((green>=(blue<<1)) && (green>=(red<<1))) ? 1: 0;
	
	

endmodule
