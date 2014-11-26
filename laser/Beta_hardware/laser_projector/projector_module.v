`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:41 11/15/2014 
// Design Name: 
// Module Name:    projector_module 
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
//this module is all the outwards facing connections of laser subsystem
module projector_module(
	input wire clk, //system clock. 54 MHz?
	input wire reset, //one day I may impliment this?
	input wire laser_enable, //enable laser output
	input wire [63:0] physics_data,//data from jakes module
	input wire [1:0] update_rate, //dip switch to change plot rate
	input wire [1:0] mode_control,
	output reg [2:0] laser_rgb,//laser RGB control
	output wire DAC_SCLK, //galvo DAC
	output wire DAC_MOSI,
	output wire DAC_CSN,
	output wire DAC_latch
    );
	
	
	wire next_step; //control for galvo stepping
	wire [31:0] projection_data; //32 bit control word for projector interface
	wire projection_frame_done;
	wire [2:0] laser_rgb_internal; 
	wire [11:0] DAC_y; 
	wire [11:0] DAC_x;
	wire DAC_start;
	wire [2:0] laser_rgb_out;

	
									
	//laser output enable
	always@(*)
	begin
	laser_rgb <= laser_enable ? laser_rgb_out : 3'b0; 
	end
									

endmodule
