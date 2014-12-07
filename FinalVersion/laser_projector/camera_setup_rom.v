`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:39 12/06/2014 
// Design Name: 
// Module Name:    camera_setup_rom 
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
module camera_setup_rom(
	input wire [3:0] addr,
	output reg [7:0] register,
	output reg [7:0] value
    );


	always@()
	begin 
	
	case(addr)
	begin
	
	0: begin
	register <= 8'h12; //COM7
	value <= write_data <= 8'b0000_0100; //rgb output
	end
	
	1: begin 
	
	
	end
	
	
	

endmodule
