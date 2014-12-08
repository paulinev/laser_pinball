`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:24 12/07/2014 
// Design Name: 
// Module Name:    nes_interface 
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
module nes_interface(
	input wire clk_50, 
	input wire controller_dout,
	output reg controller_clk,
	output reg controller_latch,
	output reg updated,
	output reg button_A,
	output reg button_B,
	output reg button_X,
	output reg button_Y,
	output reg button_L,
	output reg button_R,
	output reg button_N,
	output reg button_E,
	output reg button_S,
	output reg button_W,
	output reg button_START,
	output reg button_SELECT
    );
	 
	 
	 parameter timer_state = 36; 
	 parameter clk_period = 300;
	 parameter update_delay = 30000;
	 reg [31:0] counter = 0;
	 reg [5:0] FSM_state_return = 0;
	 reg [5:0] FSM_state = 0;
	 
	 
	 //sample data on falling clock edge
	 always@(posedge clk_50)
	 begin
	 case(FSM_state) 
	 
	 0: begin //start state
	 FSM_state <= 1;
	 updated <= 0;
	 end
	 
	 1: begin //set latch and set timer
	 FSM_state <= timer_state;
	 FSM_state_return <= 2;
	 controller_latch <= 1;
	 counter <= 2*clk_period; //12us
	 end
	 
	 
	 2: begin //latch goes low
	 FSM_state <= timer_state;
	 FSM_state_return <= 3;
	 controller_latch <= 0;
	 counter <= clk_period; 
	 end
	 
	 3: begin //latch B and clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 4; 
	 controller_clk <= 0;
	 button_B <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 4: begin //clock go high
	 FSM_state <= timer_state;
	 FSM_state_return <= 5;
	 controller_clk <= 1; 
	 counter <= clk_period;
	 end
	 
	 5: begin //latch Y, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 6;
	 controller_clk <= 0;
	 button_Y <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 6: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 7;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 7: begin //latch SELECT, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 8;
	 controller_clk <= 0;
	 button_SELECT <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 8: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 9;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 9: begin //latch START, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 10;
	 controller_clk <= 0;
	 button_START <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 10: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 11;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 11: begin //latch N, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 12;
	 controller_clk <= 0;
	 button_N <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 12: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 13;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 13: begin //latch S, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 14;
	 controller_clk <= 0;
	 button_S <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 14: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 15;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 15: begin //latch W, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 16;
	 controller_clk <= 0;
	 button_W <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 16: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 17;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 17: begin //latch E, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 18;
	 controller_clk <= 0;
	 button_E <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 18: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 19;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 19: begin //latch A, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 20;
	 controller_clk <= 0;
	 button_A <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 20: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 21;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 21: begin //latch X, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 22;
	 controller_clk <= 0;
	 button_X <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 22: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 23;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 23: begin //latch L, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 24;
	 controller_clk <= 0;
	 button_L <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 24: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 25;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 25: begin //latch R, clk go low
	 FSM_state <= timer_state;
	 FSM_state_return <= 26;
	 controller_clk <= 0;
	 button_R <= controller_dout;
	 counter <= clk_period;
	 end
	 
	 26: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 27;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 27: begin //clock go low //empty 1
	 FSM_state <= timer_state;
	 FSM_state_return <= 28;
	 controller_clk <= 0;
	 counter <= clk_period;
	 end
	 
	 28: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 29;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 29: begin //clock go low //empty 2
	 FSM_state <= timer_state;
	 FSM_state_return <= 30;
	 controller_clk <= 0;
	 counter <= clk_period;
	 end
	 
	 30: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 31;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 31: begin //clock go low //empty 3
	 FSM_state <= timer_state;
	 FSM_state_return <= 32;
	 controller_clk <= 0;
	 counter <= clk_period;
	 end
	 
	 32: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 33;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 33: begin //clock go low //empty 4
	 FSM_state <= timer_state;
	 FSM_state_return <= 34;
	 controller_clk <= 0;
	 counter <= clk_period;
	 end
	 
	 34: begin //clock go high 
	 FSM_state <= timer_state;
	 FSM_state_return <= 35;
	 controller_clk <= 1;
	 counter <= clk_period;
	 end
	 
	 35: begin //wait for next update interval
	 FSM_state <= timer_state;
	 FSM_state_return <= 0;
	 counter <= update_delay; 
	 end 
	 
	 timer_state: begin //count down and return to stored state
	 FSM_state <= (counter == 0) ? FSM_state_return : timer_state;
	 counter <= (counter == 0) ? 0 : counter - 1; 
	 end
	 endcase 
	 end
	 


endmodule
