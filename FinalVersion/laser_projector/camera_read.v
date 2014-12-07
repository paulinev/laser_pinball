`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:24 12/03/2014 
// Design Name: 
// Module Name:    camera_read 
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
module camera_read(
	input wire p_clock,
	input wire vsync,
	input wire href,
	input wire [7:0] p_data,
	input wire start,
	output reg [15:0] pixel_data =0,
	output reg pixel_done = 0,
	output reg done =0,
	output reg [9:0] hcount = 0,
	output reg [9:0] vcount = 0
    );
	 
	
	reg [2:0] FSM_state = 0;
	reg vsync_last = 0;
	reg href_last = 0;
	
	always@(posedge p_clock)
	begin 
	
	href_last <= href;
	vsync_last <= vsync;
	
	case(FSM_state)
	
	0: begin //start
	FSM_state <= start ? 1 : 0;
	done <= 0;
	vcount <= 0;
	hcount <= 0;
	end
	
	1: begin //wait for vsync 
	FSM_state <= ((vsync_last==1)&&(vsync==0)) ? 2 : 1; //detect falling edge
	end
	
	2: begin //wait for href
	if (vcount == 479)
	begin
	//done with frame
	FSM_state <= 5;
	pixel_done <= 0;
	end
	else
	begin 
	FSM_state <= ((href_last==0)&&(href==1)) ? 3 : 2; //detect rising edge of href
	pixel_data[15:8] <= p_data; 
	pixel_done <= 0;
	hcount <= 0;
	end
	end
	
	3: begin //second part of  first data word
	FSM_state <= (href==0) ? 2 : 4;
	vcount <= (href==0) ? vcount+1 : vcount;
	//pixel_data[7:0] <= p_data;
	pixel_data[15:8] <= p_data; //try swapping?
	pixel_done <= (href==0) ? 0 : 1; 
	//pixel_done <= 0;
	hcount <= hcount+1;
	end
	
	4: begin //first part of nth data word
	FSM_state <= 3;
	//pixel_data[15:8] <= p_data;  //it works when swapped
	pixel_data[7:0] <= p_data; //try swapping?
	pixel_done <= 0; 
	//pixel_done<= 1;
	end
	
	5: begin //done state 
	FSM_state <= 0;
	done <= 1; 
	pixel_done <= 0;
	end
	endcase
	end
	
endmodule
