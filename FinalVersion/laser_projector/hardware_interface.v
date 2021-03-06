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
	 output wire HDR1_18, HDR1_20, HDR1_28;
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
	 
	 output wire HDR1_22, HDR1_24;
	 input wire HDR1_26;
	 
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
	 
	 wire setup_start;
	 
	 //buttons
	 wire user_reset;
	 wire GPIO_SW_E_db;
	 wire GPIO_SW_N_db;
	 wire GPIO_SW_S_db;
	 wire GPIO_SW_W_db;
	 
	 //SNES controller buttons
	 wire snes_R, snes_L, snes_A, snes_B, snes_N;
	 wire snes_E, snes_S, snes_W, snes_START, snes_SELECT;
	 wire snes_X, snes_Y;
	 wire snes_latch;
	 wire snes_dout;
	 wire snes_clk;
	 
	 wire [31:0] beta_camera_addr;
	 wire [31:0] beta_camera_data;
	 wire beta_camera_mwe;
	 
	 assign HDR1_22 = snes_latch;
	 assign HDR1_24 = snes_clk; 
	 assign snes_dout = HDR1_26;
	 
	 //inputs from camera
	 assign camera_dout = {HDR1_50, HDR1_52, HDR1_54, HDR1_56, HDR1_58, HDR1_60, HDR1_62, HDR1_64};
	 assign camera_href = HDR1_44;
	 assign camera_vsync = HDR1_46;
	 assign camera_pclk = HDR1_48;
	 
	 //outputs to camera
	 assign HDR1_40 = camera_xclk; 
	 assign HDR1_42 = ~reset; //reset is active high
	
	 //test outputs
	 assign HDR1_18 = clk_50;
	 assign HDR1_20 = reset; 
	 
	 assign {DVI_D11, DVI_D10, DVI_D9, DVI_D8, DVI_D7, DVI_D6, DVI_D5,
								DVI_D4, DVI_D3, DVI_D2, DVI_D1, DVI_D0} = DVI_data;
	 assign HDR1_2 = dac_csn;
	 assign HDR1_4 = dac_sclk;
	 assign HDR1_6 = dac_mosi;
	 assign HDR1_8 = dac_latchn;
	 
	 assign {HDR1_10, HDR1_12, HDR1_14} = ~laser_rgb; //inverted output
	 
	 assign dip_sw = 	{GPIO_DIP_SW8, GPIO_DIP_SW7, GPIO_DIP_SW6, GPIO_DIP_SW5,
							GPIO_DIP_SW4, GPIO_DIP_SW3, GPIO_DIP_SW2, GPIO_DIP_SW1};	 
	 assign {GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4, 
							GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0} = 
							{snes_R, snes_L, snes_A, snes_B, snes_N, snes_E, snes_S, snes_W};
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
	 
	 wire camera_start;
	 wire process_frame_start;
		 
	clocking clk_50_gen (
    .CLKIN_IN(USER_CLK), //100MHz
    .RST_IN(0), 
    .CLKDV_OUT(clk_50), 
    .CLK0_OUT(), 
    .LOCKED_OUT()
    );
	 
	
	 laser_projector_full best_hazor (
    .clk(clk_50), 
    .reset(reset), 
    .dip_sw(dip_sw), 
    .paddle_l(snes_L),  
    .paddle_r(snes_R), 
    .laser_rgb(laser_rgb), 
	 .camera_addr(beta_camera_addr),
	 .camera_dout(beta_camera_data),
	 .camera_mwe(beta_camera_mwe),
    .dac_mosi(dac_mosi),
    .dac_csn(dac_csn), 
    .dac_latchn(dac_latchn), 
    .dac_sclk(dac_sclk), 
    .debug_led(debug_led)
    );
	 
	
	
	 camera_full camera_main (
    .clk_50(clk_50), 
    .camera_pclk(camera_pclk), 
    .reset(reset), 
    .system_start(setup_start), 
    .capture_frame(GPIO_SW_E_db), 
    .process_frame(GPIO_SW_W_db), 
    .camera_href(camera_href), 
    .camera_vsync(camera_vsync), 
    .camera_data(camera_dout), 
    .camera_scl(IIC_SCL_MAIN), 
    .camera_sda(IIC_SDA_MAIN), 
    .vga_scl(IIC_SCL_VIDEO), 
    .vga_sda(IIC_SDA_VIDEO), 
    .camera_xclk(camera_xclk), 
    .vga_drive(DVI_data), 
    .vga_hsync(hsync), 
    .vga_vsync(vsync), 
    .vga_blank(blank), 
    .beta_mwe(beta_camera_mwe), 
    .beta_addr(beta_camera_addr), 
    .beta_din(beta_camera_data)
    );
	
	 
	 
	 reset_controller gen_sys_reset (
    .clk(clk_50), 
    .user_reset(user_reset), 
    .reset(reset)
    );
	 
	 setup_timer instance_name (
    .clk(clk_50), 
    .reset(reset), 
    .setup_start(setup_start)
    );


	 
	 assign user_reset = GPIO_SW_C;
	 
	  
	 nes_interface nes_controller (
    .clk_50(clk_50), 
    .controller_dout(snes_dout), 
    .controller_clk(snes_clk), 
    .controller_latch(snes_latch), 
    .updated(), 
    .button_A(snes_A), 
    .button_B(snes_B), 
    .button_X(snes_X), 
    .button_Y(snes_Y), 
    .button_L(snes_L), 
    .button_R(snes_R), 
    .button_N(snes_N), 
    .button_E(snes_E), 
    .button_S(snes_S), 
    .button_W(snes_W), 
    .button_START(snes_START), 
    .button_SELECT(snes_SELECT)
    );

	 
	 debounce db_2 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_E), 
    .clean(GPIO_SW_E_db)
    );
	 
	 debounce db_3 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_W), 
    .clean(GPIO_SW_W_db)
    );
	 
	 debounce db_4 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_N), 
    .clean(GPIO_SW_N_db)
    );
	 
	  debounce db_5 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_S), 
    .clean(GPIO_SW_S_db)
    );

	 
	 
endmodule
