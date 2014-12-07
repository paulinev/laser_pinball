`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:17:37 12/07/2014 
// Design Name: 
// Module Name:    load_pixel_block 
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
module load_pixel_block(
	input wire clk,
	input wire start,
	input wire [7:0] block_x,
	input wire [7:0] block_y,
	input wire [8:0] memory_in,
	output wire [9:0] mem_hcount,
	output wire [9:0] mem_vcount,
	output reg done = 0,
	output reg [8:0] pixel_0,
	output reg [8:0] pixel_1,
	output reg [8:0] pixel_2,
	output reg [8:0] pixel_3,
	output reg [8:0] pixel_4,
	output reg [8:0] pixel_5,
	output reg [8:0] pixel_6,
	output reg [8:0] pixel_7,
	output reg [8:0] pixel_8,
	output reg [8:0] pixel_9,
	output reg [8:0] pixel_a,
	output reg [8:0] pixel_b,
	output reg [8:0] pixel_c,
	output reg [8:0] pixel_d,
	output reg [8:0] pixel_e,
	output reg [8:0] pixel_f
    );

	reg [7:0] x_counter = 0;
	reg [7:0] y_counter = 0; //local counters
	
	reg [4:0] FSM_state = 0
	 
	assign mem_hcount = x_counter + (block_x<<2);
	assign mem_vcount = y_counter + (block_y<<2);
	
	//from this level, memory pipeline is two cycles
	always@(posedge clk)
	begin
	
	case(FSM_state)
	
	0: begin //wait for start
	FSM_state <= start ? 1:0;
	done <= 0;
	x_counter <= 0;
	y_counter <= 0;
	end
	
	1: begin //start loading from memory 
	FSM_state <= 2;
	x_counter <= 1;
	y_counter <= 0;
	end
	
	2: begin //cont loading 
	FSM_state <= 3;
	x_counter <= 2;
	y_counter <= 0;
	pixel_0 <= memory_in;
	end
	
	3: begin //cont loading
	FSM_state <= 4;
	x_counter <= 3;
	y_counter <= 0;
	pixel_1 <= memory_in;
	end
	
	4: begin //cont loading 
	FSM_state <= 5;
	x_counter <= 0;
	y_counter <= 1;
	pixel_2 <= memory_in;
	end
	
	5: begin //cont loading 
	FSM_state <= 6;
	x_counter <= 1;
	y_counter <= 1;
	pixel_3 <= memory_in;
	end
	
	6: begin //cont loading
	FSM_state <= 7:
	x_counter <= 2;
	y_counter <= 1;
	pixel_4 <= memory_in;
	end
	
	7: begin //cont loading
	FSM_state <= 8;
	x_counter <= 3;
	y_counter <= 1;
	pixel_5 <= memory_in;
	end
	
	8: begin //cont loading
	FSM_state <= 9;
	x_counter <= 0;
	y_counter <= 2;
	pixel_6 <= memory_in;
	end
	
	9: begin //cont loading
	FSM_state <= 10;
	x_counter <= 1;
	y_counter <= 2;
	pixel_7 <= memory_in;
	end
	
	10: begin //cont loading
	FSM_state <= 11;
	x_counter <= 2;
	y_counter <= 2;
	pixel_8 <= memory_in;
	end
	
	11: begin //cont loading
	FSM_state <= 12;
	x_counter <= 3;
	y_counter <= 2;
	pixel_9 <= memory_in;
	end
	
	12: begin //cont loading
	FSM_state <= 13;
	x_counter <= 0;
	y_counter <= 3;
	pixel_a <= memory_in;
	end
	
	13: begin //cont loading
	FSM_state <= 14;
	x_counter <= 1;
	y_counter <= 3;
	pixel_b <= memory_in;
	end
	
	14: begin //cont loading
	FSM_state <= 15;
	x_counter <= 2;
	y_counter <= 3;
	pixel_c <= memory_in;
	end
	
	15: begin //cont loading
	FSM_state <= 16;
	x_counter <= 3;
	y_counter <= 3;
	pixel_d <= memory_in;
	end
	
	16: begin //cont loading
	FSM_state <= 17;
	pixel_e <= memory_in;
	end
	
	17: begin //cont loading
	FSM_state <= 18;
	pixel_f <= memory_in;
	end
	
	18: begin //done!
	FSM_state <= 0;
	done <= 1;
	end
	endcase
	end

endmodule
