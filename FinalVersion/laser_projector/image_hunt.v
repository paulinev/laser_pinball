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
	 reg [31:0] red_cost;
	 reg [31:0] green_cost;
	 reg [31:0] blue_cost; 
	 
	 reg [31:0] red_cost_max;
	 reg [31:0] green_cost_max;
	 reg [31:0] blue_cost_max;
	 
	 reg [7:0] block_x = 0;
	 reg [7:0] block_y = 0; //current image segment
	
	 wire [8:0] pixel_0, pixel_1, pixel_2, pixel_3;
	 wire [8:0] pixel_4, pixel_5, pixel_6, pixel_7;
	 wire [8:0] pixel_8, pixel_9, pixel_a, pixel_b;
	 wire [8:0] pixel_c, pixel_d, pixel_e, pixel_f;

	 reg start_fetch = 0;
	 
	 //pipeline values
	 
	 reg[7:0] super_pixel_red;
	 reg[7:0] super_pixel_green;
	 reg[7:0] super_pixel_blue;
	 
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
		 
		 3: begin //process data //I think I should limit the number of cascaded adds?
		 FSM_state <= 4;
		 super_pixel_red <= pixel_0[8:6]+pixel_1[8:6]+pixel_2[8:6]+pixel_3[8:6]
		 +pixel_4[8:6]+pixel_5[8:6]+pixel_6[8:6]+pixel_7[8:6]
		 +pixel_8[8:6]+pixel_9[8:6]+pixel_a[8:6]+pixel_b[8:6]
		 +pixel_c[8:6]+pixel_d[8:6]+pixel_e[8:6]+pixel_f[8:6];
		 
		 super_pixel_green <= pixel_0[5:3]+pixel_1[5:3]+pixel_2[5:3]+pixel_3[5:3]
		 +pixel_4[5:3]+pixel_5[5:3]+pixel_6[5:3]+pixel_7[5:3]
		 +pixel_8[5:3]+pixel_9[5:3]+pixel_a[5:3]+pixel_b[5:3]
		 +pixel_c[5:3]+pixel_d[5:3]+pixel_e[5:3]+pixel_f[5:3];
		 
		 super_pixel_blue <= pixel_0[2:0]+pixel_1[2:0]+pixel_2[2:0]+pixel_3[2:0]
		 +pixel_4[2:0]+pixel_5[2:0]+pixel_6[2:0]+pixel_7[2:0] 
		 +pixel_8[2:0]+pixel_9[2:0]+pixel_a[2:0]+pixel_b[2:0]
		 +pixel_c[2:0]+pixel_d[2:0]+pixel_e[2:0]+pixel_f[2:0];
		 end
		 
		 4: begin //process data
		 FSM_state <= 5;
		 red_cost <= ((super_pixel_red>super_pixel_green) && (super_pixel_red>super_pixel_blue)) ?
		 (super_pixel_red-super_pixel_green)*(super_pixel_red-super_pixel_blue) : 0;
		 
		 green_cost <= ((super_pixel_green>super_pixel_red) && (super_pixel_green>super_pixel_blue)) ?
		 (super_pixel_green-super_pixel_red)*(super_pixel_green-super_pixel_blue) : 0;
		 
		 blue_cost <= ((super_pixel_blue>super_pixel_green) && (super_pixel_blue>super_pixel_red)) ?
		 (super_pixel_blue-super_pixel_red)*(super_pixel_blue-super_pixel_green) : 0;
		 end
		 		 
		 5: begin //process results of block
		 FSM_state <= (block_y >= block_max) && (block_x >= block_max) ? 6 : 1;
		 
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
		 
		 6:begin //end state
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


	
		endmodule
