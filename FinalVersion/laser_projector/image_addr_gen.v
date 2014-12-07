`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:52 12/04/2014 
// Design Name: 
// Module Name:    image_addr_gen 
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
module image_addr_gen(
	input wire [9:0] hcount,
	input wire [9:0] vcount,
	output wire [15:0] addr
    );
	//map 640 X 480 to 240 X 240
	parameter div_by = 1;
	
	wire [9:0] hcount_trun;
	wire [9:0] vcount_trun;
	reg [9:0] hnumb = 480;
	
	assign hcount_trun = (hcount>=480) ? 0 : hcount;
	assign vcount_trun = (vcount>=480) ? 0 : vcount;
	
	assign addr = hcount_trun[9:div_by] + vcount_trun[9:div_by] * hnumb[9:div_by];

endmodule
