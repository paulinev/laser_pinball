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
	AUDIO_BIT_CLK, AUDIO_SDATA_IN, AUDIO_SDATA_OUT, AUDIO_SYNC,	//audio stuff stuff
	GPIO_SW_C, //reset button
	GPIO_SW_W, GPIO_SW_E, //paddle buttons
	GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4,
	GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0 //test LEDs
	
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
	 input wire GPIO_SW_C;
	 input wire GPIO_SW_W, GPIO_SW_E;
	 output wire GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4;
	 output wire GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0;
	 
	 reg clk_50 = 0; //this is actually the worst solution
	 //wire clk;
	 wire [2:0] laser_rgb;
	 wire dac_sclk;
	 wire dac_mosi;
	 wire dac_csn;
	 wire dac_latch;
	 wire [7:0] dip_sw;
	 wire [7:0] debug_led;
	 
	 assign HDR1_2 = dac_csn;
	 assign HDR1_4 = dac_sclk;
	 assign HDR1_6 = dac_mosi;
	 assign HDR1_8 = dac_latch;
	 
	 assign {HDR1_10, HDR1_12, HDR1_14} = ~laser_rgb;
	 
	 assign dip_sw = 	{GPIO_DIP_SW8, GPIO_DIP_SW7, GPIO_DIP_SW6, GPIO_DIP_SW5,
							GPIO_DIP_SW4, GPIO_DIP_SW3, GPIO_DIP_SW2, GPIO_DIP_SW1};	 
	 assign {GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4, 
							GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0} = debug_led;
	 
	 
	 always @(posedge USER_CLK) //this is soooo wrong I need to figure out how to DCM
	 begin
		clk_50 <= ~clk_50;
		
	 end
	 
	 
	 
	 laser_projector_full best_hazor (
    .clk(clk_50), 
    .reset(GPIO_SW_C), 
    .dip_sw(dip_sw), 
    .paddle_l(GPIO_SW_W),  
    .paddle_r(GPIO_SW_E), 
    .laser_rgb(laser_rgb), 
    .dac_mosi(dac_mosi), 
    .dac_csn(dac_csn), 
    .dac_latchn(dac_latchn), 
    .dac_sclk(dac_sclk), 
    .debug_led(debug_led)
    );
	 
	
	 
endmodule
