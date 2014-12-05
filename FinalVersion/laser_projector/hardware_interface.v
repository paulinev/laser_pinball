`timescale 1ns / 1ps
`default_nettype none 
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
	GPIO_SW_C, GPIO_SW_N, GPIO_SW_E, GPIO_SW_S, GPIO_SW_W, 
	GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4,
	GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0, //test LEDs
	IIC_SCL_VIDEO, IIC_SDA_VIDEO, //i2c for video
	IIC_SDA_MAIN, IIC_SCL_MAIN
	
    );
	 
	 input wire CLK_27MHZ_FPGA, USER_CLK; 
	 input wire GPIO_DIP_SW1, GPIO_DIP_SW2, GPIO_DIP_SW3, GPIO_DIP_SW4;
	 input wire GPIO_DIP_SW5, GPIO_DIP_SW6, GPIO_DIP_SW7, GPIO_DIP_SW8;
	 
	 output wire HDR1_2, HDR1_4, HDR1_6, HDR1_8;
	 output wire HDR1_10, HDR1_12, HDR1_14, HDR1_16; 
	 output wire HDR1_18, HDR1_20, HDR1_22, HDR1_24, HDR1_26, HDR1_28;
	 output wire HDR1_30, HDR1_32, HDR1_34, HDR1_36, HDR1_38;
	 
	 output wire HDR1_40, HDR1_42; //camera xclk and reset;
	 
	 input wire HDR1_44, HDR1_46, HDR1_48; //camera href, vsync, pclk
	 input wire  HDR1_50, HDR1_52, HDR1_54, HDR1_56; //camera din
	 input wire  HDR1_58, HDR1_60, HDR1_62, HDR1_64;
	 
	 output wire DVI_D0, DVI_D1, DVI_D2, DVI_D3, DVI_D4, DVI_D5;
	 output wire DVI_D6, DVI_D7,	DVI_D8, DVI_D9, DVI_D10, DVI_D11;
	 output wire DVI_DE, DVI_GPIO1, DVI_H, DVI_RESET_B, DVI_V, DVI_XCLK_N, DVI_XCLK_P;
	 
	 output wire AUDIO_BIT_CLK, AUDIO_SDATA_OUT, AUDIO_SYNC;
	 input wire AUDIO_SDATA_IN;
	 input wire GPIO_SW_C, GPIO_SW_N, GPIO_SW_S;
	 input wire GPIO_SW_W, GPIO_SW_E;
	 output wire GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4;
	 output wire GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0;
	 
	 inout wire IIC_SDA_VIDEO;
	 inout wire IIC_SCL_VIDEO;
	 inout wire IIC_SDA_MAIN, IIC_SCL_MAIN;
	 
	 //wire clk;
	 wire [2:0] laser_rgb;
	 wire dac_sclk;
	 wire dac_mosi;
	 wire dac_csn;
	 wire dac_latchn;
	 wire [7:0] dip_sw;
	 wire [7:0] debug_led;
	 wire [11:0] DVI_data;
	 wire reset;
	 wire clk_50;
	 wire clk_100;
	 wire blank; 
	 
	 wire [7:0] camera_dout;
	 wire camera_pclk;
	 wire camera_xclk;
	 wire camera_vsync;
	 wire camera_href;
	 
	 wire camera_clk; //12.5Mhz
	 
	 //inputs from camera
	 //assign camera_dout = 8'hFF;
	 assign camera_dout = {HDR1_50, HDR1_52, HDR1_54, HDR1_56, HDR1_58, HDR1_60, HDR1_62, HDR1_64};
	 assign camera_href = HDR1_44;
	 assign camera_vsync = HDR1_46;
	 assign camera_pclk = HDR1_48;
	 
	 //outputs to camera
	 assign HDR1_40 = camera_xclk; 
	 assign HDR1_42 = ~reset; //reset is active high
	 assign camera_xclk = camera_clk;
	 
	 assign {DVI_D11, DVI_D10, DVI_D9, DVI_D8, DVI_D7, DVI_D6, DVI_D5,
								DVI_D4, DVI_D3, DVI_D2, DVI_D1, DVI_D0} = DVI_data;
	 assign HDR1_2 = dac_csn;
	 assign HDR1_4 = dac_sclk;
	 assign HDR1_6 = dac_mosi;
	 assign HDR1_8 = dac_latchn;
	 
	 assign {HDR1_10, HDR1_12, HDR1_14} = ~laser_rgb; //inveted output
	 
	 assign dip_sw = 	{GPIO_DIP_SW8, GPIO_DIP_SW7, GPIO_DIP_SW6, GPIO_DIP_SW5,
							GPIO_DIP_SW4, GPIO_DIP_SW3, GPIO_DIP_SW2, GPIO_DIP_SW1};	 
	 assign {GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4, 
							GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0} = 8'hF0;
							//debug_led;
	 
	 assign DVI_RESET_B = ~reset; //keep reset high
	 assign DVI_DE = ~blank; //data enable is active high, blank is active high, invert it
	 assign DVI_XCLK_N = clk_50;
	 assign DVI_XCLK_P = ~clk_50; //clk is at pixel frequency
	 
	 wire vsync;
	 wire hsync;
	 assign DVI_H = hsync;
	 assign DVI_V = vsync;
	 	 
		 
	 //wires for connections between systems
	 
	 wire paddle_l; //button for left paddle
	 wire paddle_r; //button for right paddle
	 wire camera_start;
	 
		 
		 
	clocking clk_50_gen (
    .CLKIN_IN(USER_CLK), //100MHz
    .RST_IN(0), 
    .CLKDV_OUT(clk_50), 
    .CLK0_OUT(), 
    .LOCKED_OUT()
    );
	 
	 
	camera_clk clk12_5_gen ( //12.5Mhz camera clk
    .CLKIN_IN(USER_CLK), 
    .RST_IN(0), 
    .CLKDV_OUT(camera_clk),  
    .CLK0_OUT(), 
    .LOCKED_OUT()
    );

	 
	 laser_projector_full best_hazor (
    .clk(clk_50), 
    .reset(reset), 
    .dip_sw(dip_sw), 
    .paddle_l(paddle_l),  
    .paddle_r(paddle_r), 
    .laser_rgb(laser_rgb), 
	 .camera_addr(32'b0),
	 .camera_dout(32'b0),
	 .camera_mwe(1'b0),
    .dac_mosi(dac_mosi),
    .dac_csn(dac_csn), 
    .dac_latchn(dac_latchn), 
    .dac_sclk(dac_sclk), 
    .debug_led(debug_led)
    );

	 
	 debounce db_1 (
    .reset(0), 
    .clock(clk_50), 
    .noisy(GPIO_SW_C), 
    .clean(reset)
    );
	 
	 debounce db_2 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_E), 
    .clean(paddle_r)
    );
	 
	 debounce db_3 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_W), 
    .clean(paddle_l)
    );
	 
	 debounce db_4 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_N), 
    .clean(camera_start)
    );
	 
	  debounce db_5 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_S), 
    .clean()
    );

	 
	 
endmodule
