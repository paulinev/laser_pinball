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
	input wire clk,
	input wire [5:0] addr,
	output reg [7:0] register,
	output reg [7:0] value
    );


	always@(posedge clk)
	begin 
	case(addr)
	
	0: begin
	register <= 8'h12; //COM7
	value <= 8'b0000_0100; //rgb output
	end
	
	1: begin 
	register <= 8'h11;//clkrc
	value <= 8'h80; //default
	end
	
	2: begin 
	register <= 8'h40; //COM15
	value <= 8'b1101_0000; //rgb565 format
	end
	
	3: begin 
	register <= 8'h1E; //MVFP
	value <= 8'b0011_0000; //flip vertically and mirror
	end
	
	//begin magic internet color settings
	4: begin 
	register <= 8'h4f;
	value <= 8'h80;
	end
	
	5: begin 
	register <= 8'h50;
	value <= 8'h80;
	end
	
	6: begin 
	register <= 8'h51;
	value <= 8'h00;
	end
	
	7: begin 
	register <= 8'h52;
	value <= 8'h22;
	end
	
	8: begin 
	register <= 8'h53;
	value <= 8'h5e;
	end
	
	9: begin 
	register <= 8'h54;
	value <= 8'h80;
	end
	
	10: begin 
	register <= 8'h56;
	value <= 8'h40;
	end
	
	11: begin 
	register <= 8'h58;
	value <= 8'h9e;
	end
	
	12: begin 
	register <= 8'h59;
	value <= 8'h88;
	end
	
	13: begin 
	register <= 8'h5a;
	value <= 8'h88;
	end
	
	14: begin 
	register <= 8'h5b;
	value <= 8'h44;
	end
	
	15: begin 
	register <= 8'h5c;
	value <= 8'h67;
	end
	
	16: begin 
	register <= 8'h5d;
	value <= 8'h49;
	end
	
	17: begin 
	register <= 8'h5e;
	value <= 8'h0e;
	end
	
	18: begin 
	register <= 8'h69;
	value <= 8'h00;
	end
	
	19: begin 
	register <= 8'h6a;
	value <= 8'h40;
	end
	
	20: begin 
	register <= 8'h6b;
	value <= 8'h0a;
	end
	
	21: begin 
	register <= 8'h6c;
	value <= 8'h0a;
	end
	
	22: begin 
	register <= 8'h6d;
	value <= 8'h55;
	end
	
	23: begin 
	register <= 8'h6e;
	value <= 8'h11;
	end
	
	24: begin 
	register <= 8'h6f;
	value <= 8'h9f;
	end
	
	25: begin  //internet magic
	register <= 8'hb0;
	value <= 8'h84;
	end
	
	default: begin //nice values
	register <= 8'h11;//clkrc
	value <= 8'h80; //default
	end
	
	endcase
	end
	
endmodule
