`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:44:05 12/08/2014 
// Design Name: 
// Module Name:    camera_write_to_beta 
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
module camera_write_to_beta(
	input wire clk,
	input wire start,
	input wire [9:0] red_x,
	input wire [9:0] red_y,
	input wire [9:0] green_x,
	input wire [9:0] green_y,
	input wire [9:0] blue_x,
	input wire [9:0] blue_y,
	output reg [31:0] beta_addr =0,
	output reg [31:0] beta_data =0,
	output reg beta_mwe = 0
    );
	 
	 
	reg [5:0] FSM_state = 0;
	
	
	always@(posedge clk)
	begin
	case(FSM_state)
	
	0: begin //wait for start signal
	
	FSM_state <= start ? 1 : 0;
	end
	
	1: begin //write red 
	FSM_state <= 2;
	beta_addr <= 0;
	beta_data <= {6'b0, red_x, 6'b0, red_y};
	beta_mwe <= 1;
	end
	
	2: begin //write green
	FSM_state <= 3;
	beta_addr <= 1;
	beta_data <= {6'b0, green_x, 6'b0, red_y};
	beta_mwe <= 1;
	end
	
	3: begin //write blue
	FSM_state <= 4;
	beta_addr <= 2;
	beta_data <= {6'b0, blue_x, 6'b0, blue_y};
	beta_mwe <= 1;
	end
	
	4: begin //write status register 
	FSM_state <= 5;
	beta_addr <= 32'b100;
	beta_data <= 1; //done!
	beta_mwe <= 1;
	end
	
	5: begin //end state 
	FSM_state <= 0;
	beta_mwe <= 0;
	end
	endcase
	end
	

endmodule
