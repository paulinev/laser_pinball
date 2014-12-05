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
	GPIO_SW_C, //reset button
	GPIO_SW_W, GPIO_SW_E, //paddle buttons
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
	 input wire GPIO_SW_C;
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
	 wire start; 
	 wire start2;
	 reg startp =0;
	 reg start_last = 0;
	 wire blank;
	 wire clk_50;
	 wire clk_100;
	 
	 wire [7:0] camera_dout;
	 wire camera_pclk;
	 wire camera_xclk;
	 wire camera_vsync;
	 wire camera_href;
	 wire camera_reset;
	 wire camera_clk; //12.5Mhz
	 
	 //inputs from camera
	 //assign camera_dout = 8'hFF;
	 assign camera_dout = {HDR1_50, HDR1_52, HDR1_54, HDR1_56, HDR1_58, HDR1_60, HDR1_62, HDR1_64};
	 assign camera_href = HDR1_44;
	 assign camera_vsync = HDR1_46;
	 assign camera_pclk = HDR1_48;
	 
	 //outputs to camera
	 assign HDR1_40 = camera_xclk; 
	 assign HDR1_42 = ~camera_reset; //reset is active high?
	 //assign camera_xclk = camera_clk;
	 
	 assign camera_reset = reset;
	 
	 
	 assign {DVI_D11, DVI_D10, DVI_D9, DVI_D8, DVI_D7, DVI_D6, DVI_D5,
								DVI_D4, DVI_D3, DVI_D2, DVI_D1, DVI_D0} = DVI_data;
	 assign HDR1_2 = dac_csn;
	 assign HDR1_4 = dac_sclk;
	 assign HDR1_6 = dac_mosi;
	 assign HDR1_8 = dac_latchn;
	 
	 assign {HDR1_10, HDR1_12, HDR1_14} = ~laser_rgb;
	 
	 assign dip_sw = 	{GPIO_DIP_SW8, GPIO_DIP_SW7, GPIO_DIP_SW6, GPIO_DIP_SW5,
							GPIO_DIP_SW4, GPIO_DIP_SW3, GPIO_DIP_SW2, GPIO_DIP_SW1};	 
	 assign {GPIO_LED_7, GPIO_LED_6, GPIO_LED_5, GPIO_LED_4, 
							GPIO_LED_3, GPIO_LED_2, GPIO_LED_1, GPIO_LED_0} = 8'hF0;
							//debug_led;
	 
	 assign DVI_RESET_B = ~reset; //keep reset high
	 assign DVI_DE = ~blank; //data enable is active high, blank is active high, invert it
	 assign DVI_XCLK_N = clk_50;
	 assign DVI_XCLK_P = ~clk_50; //clk is at pixel frequency
	 
	 wire [9:0] vcount, hcount;
	 
	 wire vsync;
	 wire hsync;
	 assign DVI_H = hsync;
	 assign DVI_V = vsync;
	 
	 
	 //local wires and registers
	 wire camera_memory_request;
	 wire camera_we;
	 wire [15:0] camera_memory_dout;
	 //wire [18:0] mem_addr_vga;
	 wire [15:0] dout_vga;
	 wire [9:0] camera_vcount;
	 wire [9:0] camera_hcount;
	 
	 wire [23:0] VGA_pixel;
	 reg start2_last = 0;
	 reg start2p = 0;
	
	 //assign VGA_pixel = {dout_vga[7:5],{5{dout_vga[5]}},dout_vga[4:2],{5{dout_vga[2]}},dout_vga[1:0],{6{dout_vga[0]}}};
	 //assign VGA_pixel = {dout_vga[14:10],{3{dout_vga[10]}},dout_vga[9:5],{3{dout_vga[5]}},dout_vga[4:0],{3{dout_vga[0]}}};
	 //assign VGA_pixel = {{8{hcount[1]}}, {8{hcount[3]}},{8{hcount[5]}}}; //test pattern 
	 //for debug
	 assign VGA_pixel = {dout_vga[15:11],{3{dout_vga[11]}},dout_vga[10:5],{2{dout_vga[5]}},dout_vga[4:0],{3{dout_vga[0]}}};
	 //assign VGA_pixel[23:16] =  {dout_vga[10:5],2'b0};//red
	 //assign  VGA_pixel[15:8] = {dout_vga[15:11],3'b0};//green
	 //assign VGA_pixel[7:0] = {dout_vga[4:0],3'b0};//blue
	 //assign VGA_pixel= 24'b0000_0000_0000_0000_1111_1111;
	 assign  {HDR1_16,HDR1_18, HDR1_20, HDR1_22, HDR1_24, HDR1_26, HDR1_28, HDR1_30}=camera_memory_dout;
	 
	 
	 reg [2:0] clk_div = 0;
	 always @(posedge clk_50)
	 begin
		clk_div <= clk_div+1;
		start_last <= start;
		startp <= (start_last==0)&&(start==1) ? 1 : 0;		
	 end
	 
	 always @(posedge camera_clk)
	 begin
	 start2_last <= start2;
	 start2p <= (start2_last==0)&&(start2==1) ? 1: 0;
	 
	 end
	 //assign camera_clk = camera_pclk; //fix this
	 assign camera_clk = clk_div[1];
	 assign camera_xclk = clk_div[1];
	 
	 
	 
	 // Instantiate the module
	clocking clk_50_gen (
    .CLKIN_IN(USER_CLK), //100MHz
    .RST_IN(0), 
    .CLKDV_OUT(clk_50), 
    .CLKIN_IBUFG_OUT(clk_100), 
    .CLK0_OUT(), 
    .LOCKED_OUT()
    );
	 
	 /*
	camera_clk clk12_5_gen (
    .CLKIN_IN(USER_CLK), 
    .RST_IN(0), 
    .CLKDV_OUT(camera_clk), 
    //.CLKIN_IBUFG_OUT(), 
    .CLK0_OUT(), 
    .LOCKED_OUT()
    );*/

	 /*
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
	 */
	 
	vga_setup vga_test (
    .clk(clk_50), 
    .reset(reset), 
    .start(startp), 
    .scl(IIC_SCL_VIDEO), 
    .sda(IIC_SDA_VIDEO)
    );
	 
	 camera_configure main_camera (
    .clk(clk_50), 
    .reset(reset), 
    .start(startp), 
    .scl(IIC_SCL_MAIN), 
    .sda(IIC_SDA_MAIN)
    );
	 
	 //sync is active low,
	 //blank is active high
	 vga_drive vga_gen (
    .vclock(clk_50), 
    .hcount(hcount), 
    .vcount(vcount), 
    .vsync(vsync), 
    .hsync(hsync), 
    .blank(blank)
    );
	 
	 vga_pixel_drive dvi_vga (
    .hsync(hsync), 
    .pixel_clk_2x(clk_50), 
    .pixel_data(VGA_pixel), //this should be red
    .vga_out(DVI_data)
    );


	camera_capture get_image (
    .camera_clk(camera_clk), 
    .start(start2p), 
    .camera_vsync(camera_vsync), 
    .camera_href(camera_href), 
    .camera_dout(camera_dout), 
    .mem_request(camera_memory_request), 
    .mem_we(camera_we), 
    .mem_din(camera_memory_dout), 
	 .hcount(camera_hcount),
	 .vcount(camera_vcount),
    .done()
    );
	 
	 shared_video_mem stored_image (
    .clk_vga(clk_50), 
    .clk_camera(camera_clk), 
    .camera_request(camera_memory_request), 
    .camera_hcount(camera_hcount),
	 .camera_vcount(camera_vcount),
	 .vga_hcount(hcount),
	 .vga_vcount(vcount), 
    .dout_camera(camera_memory_dout), 
    .mwe_camera(camera_we), 
    .dout_vga(dout_vga)
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
    .clean(start)
    );
	 
	 debounce db_3 (
    .reset(reset), 
    .clock(clk_50), 
    .noisy(GPIO_SW_W), 
    .clean(start2)
    );

	 
	 
endmodule
