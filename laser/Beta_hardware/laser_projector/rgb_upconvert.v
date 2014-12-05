`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:25 12/04/2014 
// Design Name: 
// Module Name:    rgb_upconvert 
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
module rgb_upconvert(
	input wire [15:0] rgb565,
	output wire [23:0] rgb888
    );
	 
	 assign rgb888 = 
	 {rgb565[15:11],{3{rgb565[11]}},
	 rgb565[10:5],{2{rgb565[5]}},
	 rgb565[4:0],{3{rgb565[0]}}}; 


endmodule
