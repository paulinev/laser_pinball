`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:33:23 11/14/2014 
// Design Name: 
// Module Name:    hardware_interface 
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
//this is the top level module
module hardware_interface(
	CLK_27MHZ_FPGA, USER_CLK, //FPGA Board clocks USER_CLK is 100MHz
	GPIO_DIP_SW1, GPIO_DIP_SW2, GPIO_DIP_SW3, GPIO_DIP_SW4,
	GPIO_DIP_SW5, GPIO_DIP_SW6, GPIO_DIP_SW7, GPIO_DIP_SW8, //user dip switch
	HDR1_2, HDR1_4, HDR1_6, HDR1_8, HDR1_10, HDR1_12, HDR1_14,
	HDR1_16, HDR1_18, HDR1_20, HDR1_22, HDR1_24, HDR1_26, HDR1_28,
	HDR1_30, HDR1_32, HDR1_34, HDR1_36, HDR1_38, HDR1_40, HDR1_42,
	HDR1_44, HDR1_46, HDR1_48, HDR1_50, HDR1_52, HDR1_54, HDR1_56,
	HDR1_58, HDR1_60, HDR1_62, HDR1_64, //user I/O pins
	DVI_D0, DVI_D1, DVI_D2, DVI_D3, DVI_D4, DVI_D5, DVI_D6, DVI_D7,
	DVI_D8, DVI_D9, DVI_D10, DVI_D11, 
	DVI_DE, DVI_GPIO1, DVI_H, DVI_RESET_B, DVI_V, DVI_XCLK_N, DVI_XCLK_P,//DVI interface
	AUDIO_BIT_CLK, AUDIO_SDATA_IN, AUDIO_SDATA_OUT, AUDIO_SYNC //audio stuff stuff
	
    );
	 
	 input wire CLK_27MHZ_FPGA, USER_CLK; 
	 input wire GPIO_DIP_SW1, GPIO_DIP_SW2, GPIO_DIP_SW3, GPIO_DIP_SW4;
	 input wire GPIO_DIP_SW5, GPIO_DIP_SW6, GPIO_DIP_SW7, GPIO_DIP_SW8;
	 
	 output wire HDR1_2, HDR1_4, HDR1_6, HDR1_8;
	 output wire HDR1_10, HDR1_12, HDR1_14, HDR1_16; 
	 output wire HDR1_18, HDR1_20, HDR1_22, HDR1_24, HDR1_26, HDR1_28;
	 output wire HDR1_30, HDR1_32, HDR1_34, HDR1_36, HDR1_38, HDR1_40, HDR1_42;
	 output wire HDR1_44, HDR1_46, HDR1_48, HDR1_50, HDR1_52, HDR1_54, HDR1_56;
	 output wire HDR1_58, HDR1_60, HDR1_62, HDR1_64;
	 
	 output wire DVI_D0, DVI_D1, DVI_D2, DVI_D3, DVI_D4, DVI_D5;
	 output wire DVI_D6, DVI_D7,	DVI_D8, DVI_D9, DVI_D10, DVI_D11;
	 output wire DVI_DE, DVI_GPIO1, DVI_H, DVI_RESET_B, DVI_V, DVI_XCLK_N, DVI_XCLK_P;
	 
	 output wire AUDIO_BIT_CLK, AUDIO_SDATA_OUT, AUDIO_SYNC;
	 input wire AUDIO_SDATA_IN;
	 
	 reg clk_50 = 0; //this is actually the worst solution
	 //wire clk;
	 wire [2:0] laser_rgb;
	 wire DAC_SCLK;
	 wire DAC_MOSI;
	 wire DAC_CSN;
	 wire DAC_latch;
	 wire [1:0] mode_control;
	 wire [1:0] update_rate;
	 
	 assign HDR1_2 = DAC_CSN;
	 assign HDR1_4 = DAC_SCLK;
	 assign HDR1_6 = DAC_MOSI;
	 assign HDR1_8 = DAC_latch;
	 
	 assign {HDR1_10, HDR1_12, HDR1_14} = ~laser_rgb;
	 
	 assign mode_control = {GPIO_DIP_SW1, GPIO_DIP_SW2};
	 assign update_rate = {GPIO_DIP_SW3, GPIO_DIP_SW4};
	 
	 always @(posedge USER_CLK) //this is soooo wrong I need to figure out how to DCM
	 begin
		clk_50 = ~clk_50;
		
	 end
	 
	 
	 
	
	 
endmodule
