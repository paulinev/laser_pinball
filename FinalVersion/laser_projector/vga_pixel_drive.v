`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:15 12/03/2014 
// Design Name: 
// Module Name:    vga_pixel_drive 
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
//this contains some trick logic delays
module vga_pixel_drive(
	input wire hsync,
	input wire pixel_clk_2x, //50 MHz
	input wire [23:0] pixel_data,
	output reg [11:0] vga_out
    );
	 
	 reg pixel_ab; //0 for a, 1 for b
	 reg hsync_last = 0;
	 reg [23:0] stored_pixel;
	 reg [11:0] pixel_b;
	 
	 
	 always@(posedge pixel_clk_2x)
	 begin
		 hsync_last <= hsync;
		 
		pixel_ab <= ((hsync_last==0)&&(hsync==1)) ? 1 : ~pixel_ab;
		
		//latch input data on pixel_ab = a 
		pixel_b <= pixel_data[11:0];
		vga_out <= pixel_ab ? pixel_b : pixel_data[23:12];  
	 end


endmodule
