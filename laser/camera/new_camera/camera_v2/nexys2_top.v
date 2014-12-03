`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:35 12/02/2014 
// Design Name: 
// Module Name:    nexys2_top 
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
module nexys2_top(
	input wire clk,
	input wire [7:0] sw,
	output wire [7:0] Led,
	output wire [2:0] vgaRed,
	output wire [2:0] vgaGreen,
	output wire [1:0] vgaBlue,
	output wire Hsync,
	output wire Vsync
    );
	 
	 
	 reg [25:0] counter = 0;
	 reg [7:0] pixel = 0;
	 reg vclock = 0;
	 wire [9:0] hcount;
	 wire [9:0] vcount;
	 wire blank;
	 
	vga_drive vga_test (
    .vclock(vclock), 
    .hcount(hcount), 
    .vcount(vcount), 
    .vsync(Vsync), 
    .hsync(Hsync), 
    .blank(blank)
    );
	 

	
	 assign Led = counter[25:18];
	 assign {vgaBlue, vgaGreen, vgaRed} = blank ? 0 : pixel;
	 
	always@(posedge clk)
	begin
		counter <= counter +1; 
		pixel <= vcount;
		vclock <= ~vclock;
	
	end

endmodule
