`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:48:29 12/06/2014 
// Design Name: 
// Module Name:    image_hunt 
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
//processes a 240x240 pixel frame
//outputs locus of red, green, and blue
module image_hunt(
	input wire clk,
	input wire [8:0] mem_pixel_data,
	input wire start,
	output reg mem_request = 0,
	output reg done = 0,
	output wire [9:0] mem_hcount,
	output wire [9:0] mem_vcount,
	output reg [9:0] red_x = 0,
	output reg [9:0] red_y = 0,
	output reg [9:0] green_x = 0,
	output reg [9:0] green_y = 0,
	output reg [9:0] blue_x = 0,
	output reg [9:0] blue_y = 0
    );
	 
	 parameter block_max = 58; //number of blocks minus 1
	 
	 reg [3:0] FSM_state = 0;
	 
	 //storage for cost function values
	 reg [15:0] red_cost;
	 reg [15:0] green_cost;
	 reg [15:0] blue_cost; 
	 
	 reg [15:0] red_cost_max;
	 reg [15:0] green_cost_max;
	 reg [15:0] blue_cost_max;
	 
	 reg [7:0] block_x = 0;
	 reg [7:0] block_y = 0; //current image segment
	
	 wire [8:0] pixel_0, pixel_1, pixel_2, pixel_3;
	 wire [8:0] pixel_4, pixel_5, pixel_6, pixel_7;
	 wire [8:0] pixel_8, pixel_9, pixel_a, pixel_b;
	 wire [8:0] pixel_c, pixel_d, pixel_e, pixel_f;

	 reg start_fetch = 0;
	 
	 //pipeline values
	 reg [8:0] p_1, p_2, p_3, p_4;
	 
	 wire [8:0] p_1_red, p_2_red, p_3_red, p_4_red; 
	 wire [8:0] p_1_green, p_2_green, p_3_green, p_4_green;
	 wire [8:0] p_1_blue, p_2_blue, p_3_blue, p_4_blue;
	 
	 
	 wire load_done;
	 
	 always@(posedge clk)
	 begin
	 
		 case(FSM_state)
		 
		 0: begin //reset and wait for start
		 FSM_state <= start ? 1 : 0; 
		 mem_request <= start ? 1 : 0;
		 done <= 0;
		 
		 block_x <= 2;
		 block_y <= 2;
		 
		 red_cost <= 0;
		 green_cost <= 0;
		 blue_cost <= 0;
		 
		 red_cost_max <= 0;
		 green_cost_max <= 0;
		 blue_cost_max <= 0;
		 end
 
		 1: begin //fetch_data;
		 FSM_state <= 2;
		 start_fetch <= 1; 
		 end
		 
		 2: begin //wait for memory read
		 FSM_state <= load_done ? 3 : 2;
		 start_fetch <= 0;
		 end
		 
		 3: begin //process data
		 FSM_state <= 4;
		 p_1 <= pixel_0;
		 p_2 <= pixel_1;
		 p_3 <= pixel_2;
		 p_4 <= pixel_3;
		 end
		 
		 4: begin //process data
		 FSM_state <= 5;
		 
		 red_cost <= p_1_red + p_2_red + p_3_red + p_4_red;
		 green_cost <= p_1_green +p_2_green + p_3_green + p_4_green;
		 blue_cost <= p_1_blue + p_2_blue + p_3_blue + p_4_blue;
		 
		 p_1 <= pixel_4;
		 p_2 <= pixel_5;
		 p_3 <= pixel_6;
		 p_4 <= pixel_7;
		 end
		 
		 5: begin //process data
		 FSM_state <= 6;
		 
		 red_cost <= p_1_red + p_2_red + p_3_red + p_4_red + red_cost;
		 green_cost <= p_1_green +p_2_green + p_3_green + p_4_green + green_cost;
		 blue_cost <= p_1_blue + p_2_blue + p_3_blue + p_4_blue + blue_cost;
		 
		 p_1 <= pixel_8;
		 p_2 <= pixel_9;
		 p_3 <= pixel_a;
		 p_4 <= pixel_b;
		 end
		 
		 6: begin //process data
		 FSM_state <= 7;
		 
		 red_cost <= p_1_red + p_2_red + p_3_red + p_4_red + red_cost;
		 green_cost <= p_1_green +p_2_green + p_3_green + p_4_green + green_cost;
		 blue_cost <= p_1_blue + p_2_blue + p_3_blue + p_4_blue + blue_cost;
		 
		 p_1 <= pixel_c;
		 p_2 <= pixel_d;
		 p_3 <= pixel_e;
		 p_4 <= pixel_f;
		 end
		 
		 7: begin //process data
		 FSM_state <= 8;
		 
		 red_cost <= p_1_red + p_2_red + p_3_red + p_4_red + red_cost;
		 green_cost <= p_1_green +p_2_green + p_3_green + p_4_green + green_cost;
		 blue_cost <= p_1_blue + p_2_blue + p_3_blue + p_4_blue + blue_cost;
		 end
		 
		 8: begin //process results of block
		 FSM_state <= (block_y >= block_max) && (block_x >= block_max) ? 9 : 1;
		 
		 red_cost_max <= (red_cost > red_cost_max) ? red_cost : red_cost_max;
		 green_cost_max <= (green_cost > green_cost_max) ? green_cost : green_cost_max;
		 blue_cost_max <= (blue_cost > blue_cost_max) ? blue_cost : blue_cost_max;
		 
		 red_x <= (red_cost >= red_cost_max) ? (block_x<<3) : red_x;
		 red_y <= (red_cost >= red_cost_max) ? (block_y<<3) : red_y;
		 
		 green_x <= (green_cost >= green_cost_max) ? (block_x<<3) : green_x;
		 green_y <= (green_cost >= green_cost_max) ? (block_y<<3) : green_y;
		 
		 blue_x <= (blue_cost >= blue_cost_max) ? (block_x<<3) : blue_x;
		 blue_y <= (blue_cost >= blue_cost_max) ? (block_y<<3) : blue_y;
		 
		 //go x, then y,
		 block_x <= (block_x >= block_max) ? 0 : block_x+1;
		 block_y <= (block_x >= block_max) ? block_y+1 : block_y;
		 
		 //reset
		 red_cost <= 0;
		 green_cost <= 0;
		 blue_cost <= 0;
		 end
		 
		 9:begin //end state
		 FSM_state <= 0;
		 done <= 1;
		 end
		 
		 endcase
		 end
		 
		 
	load_pixel_block data_fetch (
    .clk(clk), 
    .start(start_fetch), 
    .block_x(block_x), 
    .block_y(block_y), 
    .memory_in(mem_pixel_data), 
    .mem_hcount(mem_hcount), 
    .mem_vcount(mem_vcount), 
    .done(load_done), 
    .pixel_0(pixel_0), 
    .pixel_1(pixel_1), 
    .pixel_2(pixel_2), 
    .pixel_3(pixel_3), 
    .pixel_4(pixel_4), 
    .pixel_5(pixel_5), 
    .pixel_6(pixel_6), 
    .pixel_7(pixel_7), 
    .pixel_8(pixel_8), 
    .pixel_9(pixel_9), 
    .pixel_a(pixel_a), 
    .pixel_b(pixel_b), 
    .pixel_c(pixel_c), 
    .pixel_d(pixel_d), 
    .pixel_e(pixel_e), 
    .pixel_f(pixel_f)
    );


	pixel_cost_function cost_a ( 
    .pixel_data(p_1), 
    .pixel_red_cost(p_1_red), 
    .pixel_green_cost(p_1_green), 
    .pixel_blue_cost(p_1_blue)
    );
	 
	 
	pixel_cost_function cost_b ( 
    .pixel_data(p_2), 
    .pixel_red_cost(p_2_red), 
    .pixel_green_cost(p_2_green), 
    .pixel_blue_cost(p_2_blue)
    );
	 
	 pixel_cost_function cost_c ( 
    .pixel_data(p_3), 
    .pixel_red_cost(p_3_red), 
    .pixel_green_cost(p_3_green), 
    .pixel_blue_cost(p_3_blue)
    );
	 
	 pixel_cost_function cost_d ( 
    .pixel_data(p_4), 
    .pixel_red_cost(p_4_red), 
    .pixel_green_cost(p_4_green), 
    .pixel_blue_cost(p_4_blue)
    );

		endmodule
