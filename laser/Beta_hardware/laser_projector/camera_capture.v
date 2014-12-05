`timescale 1ns / 1ps
`default_nettype none 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:28 12/03/2014 
// Design Name: 
// Module Name:    camera_capture 
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

//takes 12.5Mhz camera clk, writes to memory, then frees up memory
//wrapper for camera
//stored as r[2:0]g[2:0]b[1:0]
module camera_capture(
	input wire camera_clk,
	input wire start,
	input wire camera_vsync,
	input wire camera_href,
	input wire [7:0] camera_dout,
	output reg mem_request = 0,
	output reg mem_we =0,
	output reg [15:0] mem_din =0,
	output reg [9:0] vcount,
	output reg [9:0] hcount,
	output reg done = 0
	);


	reg [3:0] FSM_state = 0;
	reg camera_start = 0;
	
	
	wire [15:0] pixel_data;
	wire pixel_done;
	wire camera_done;
	wire [9:0] camera_vcount;
	wire [9:0] camera_hcount;

	camera_read camera_reader (
    .p_clock(camera_clk), 
    .vsync(camera_vsync), 
    .href(camera_href), 
    .p_data(camera_dout), 
    .start(camera_start), 
    .pixel_data(pixel_data), 
    .pixel_done(pixel_done), 
    .done(camera_done),
	 .hcount(camera_hcount),
	 .vcount(camera_vcount)
    );
	 
	 
	 always@(posedge camera_clk)
	 begin
	 
	 case(FSM_state)
	 
	 0: begin //start state
	 FSM_state <= start ? 1 : 0;	 
	 done <= 0;
	 end
	 
	 1: begin //start camera read 
	 FSM_state <= 2;
	 camera_start <= 1;
	 mem_request <= 1;
	 hcount <=0;
	 vcount <=0;
	 mem_we <= 0;
	 end
	 
	 2: begin //wait 
	 FSM_state <= camera_done ? 3:2;
	 camera_start <= 0;
	 mem_we <= pixel_done ? 1 :0;
	 //mem_din <= {pixel_data[14:12],pixel_data[9:7], pixel_data[4:3]};
	 mem_din <= pixel_data;
	 hcount <= camera_hcount;
	 vcount <= camera_vcount;
	 end
	 
	 3: begin //free up memory
	 FSM_state <= 0;
	 mem_request <= 0;
	 mem_we <= 0;
	 done <= 1;
	 end
	 endcase
	 end

endmodule
