`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:36:49 11/27/2014
// Design Name:   hardware_interface
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/hardware_interface_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hardware_interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hardware_interface_tb;

	// Inputs
	reg CLK_27MHZ_FPGA;
	reg USER_CLK;
	reg GPIO_DIP_SW1;
	reg GPIO_DIP_SW2;
	reg GPIO_DIP_SW3;
	reg GPIO_DIP_SW4;
	reg GPIO_DIP_SW5;
	reg GPIO_DIP_SW6;
	reg GPIO_DIP_SW7;
	reg GPIO_DIP_SW8;
	reg AUDIO_SDATA_IN;
	reg GPIO_SW_C;
	reg GPIO_SW_W;
	reg GPIO_SW_E;

	// Outputs
	wire HDR1_2;
	wire HDR1_4;
	wire HDR1_6;
	wire HDR1_8;
	wire HDR1_10;
	wire HDR1_12;
	wire HDR1_14;
	wire HDR1_16;
	wire HDR1_18;
	wire HDR1_20;
	wire HDR1_22;
	wire HDR1_24;
	wire HDR1_26;
	wire HDR1_28;
	wire HDR1_30;
	wire HDR1_32;
	wire HDR1_34;
	wire HDR1_36;
	wire HDR1_38;
	wire HDR1_40;
	wire HDR1_42;
	wire HDR1_44;
	wire HDR1_46;
	wire HDR1_48;
	wire HDR1_50;
	wire HDR1_52;
	wire HDR1_54;
	wire HDR1_56;
	wire HDR1_58;
	wire HDR1_60;
	wire HDR1_62;
	wire HDR1_64;
	wire DVI_D0;
	wire DVI_D1;
	wire DVI_D2;
	wire DVI_D3;
	wire DVI_D4;
	wire DVI_D5;
	wire DVI_D6;
	wire DVI_D7;
	wire DVI_D8;
	wire DVI_D9;
	wire DVI_D10;
	wire DVI_D11;
	wire DVI_DE;
	wire DVI_GPIO1;
	wire DVI_H;
	wire DVI_RESET_B;
	wire DVI_V;
	wire DVI_XCLK_N;
	wire DVI_XCLK_P;
	wire AUDIO_BIT_CLK;
	wire AUDIO_SDATA_OUT;
	wire AUDIO_SYNC;
	wire GPIO_LED_7;
	wire GPIO_LED_6;
	wire GPIO_LED_5;
	wire GPIO_LED_4;
	wire GPIO_LED_3;
	wire GPIO_LED_2;
	wire GPIO_LED_1;
	wire GPIO_LED_0;

	// Instantiate the Unit Under Test (UUT)
	hardware_interface uut (
		.CLK_27MHZ_FPGA(CLK_27MHZ_FPGA), 
		.USER_CLK(USER_CLK), 
		.GPIO_DIP_SW1(GPIO_DIP_SW1), 
		.GPIO_DIP_SW2(GPIO_DIP_SW2), 
		.GPIO_DIP_SW3(GPIO_DIP_SW3), 
		.GPIO_DIP_SW4(GPIO_DIP_SW4), 
		.GPIO_DIP_SW5(GPIO_DIP_SW5), 
		.GPIO_DIP_SW6(GPIO_DIP_SW6), 
		.GPIO_DIP_SW7(GPIO_DIP_SW7), 
		.GPIO_DIP_SW8(GPIO_DIP_SW8), 
		.HDR1_2(HDR1_2), 
		.HDR1_4(HDR1_4), 
		.HDR1_6(HDR1_6), 
		.HDR1_8(HDR1_8), 
		.HDR1_10(HDR1_10), 
		.HDR1_12(HDR1_12), 
		.HDR1_14(HDR1_14), 
		.HDR1_16(HDR1_16), 
		.HDR1_18(HDR1_18), 
		.HDR1_20(HDR1_20), 
		.HDR1_22(HDR1_22), 
		.HDR1_24(HDR1_24), 
		.HDR1_26(HDR1_26), 
		.HDR1_28(HDR1_28), 
		.HDR1_30(HDR1_30), 
		.HDR1_32(HDR1_32), 
		.HDR1_34(HDR1_34), 
		.HDR1_36(HDR1_36), 
		.HDR1_38(HDR1_38), 
		.HDR1_40(HDR1_40), 
		.HDR1_42(HDR1_42), 
		.HDR1_44(HDR1_44), 
		.HDR1_46(HDR1_46), 
		.HDR1_48(HDR1_48), 
		.HDR1_50(HDR1_50), 
		.HDR1_52(HDR1_52), 
		.HDR1_54(HDR1_54), 
		.HDR1_56(HDR1_56), 
		.HDR1_58(HDR1_58), 
		.HDR1_60(HDR1_60), 
		.HDR1_62(HDR1_62), 
		.HDR1_64(HDR1_64), 
		.DVI_D0(DVI_D0), 
		.DVI_D1(DVI_D1), 
		.DVI_D2(DVI_D2), 
		.DVI_D3(DVI_D3), 
		.DVI_D4(DVI_D4), 
		.DVI_D5(DVI_D5), 
		.DVI_D6(DVI_D6), 
		.DVI_D7(DVI_D7), 
		.DVI_D8(DVI_D8), 
		.DVI_D9(DVI_D9), 
		.DVI_D10(DVI_D10), 
		.DVI_D11(DVI_D11), 
		.DVI_DE(DVI_DE), 
		.DVI_GPIO1(DVI_GPIO1), 
		.DVI_H(DVI_H), 
		.DVI_RESET_B(DVI_RESET_B), 
		.DVI_V(DVI_V), 
		.DVI_XCLK_N(DVI_XCLK_N), 
		.DVI_XCLK_P(DVI_XCLK_P), 
		.AUDIO_BIT_CLK(AUDIO_BIT_CLK), 
		.AUDIO_SDATA_IN(AUDIO_SDATA_IN), 
		.AUDIO_SDATA_OUT(AUDIO_SDATA_OUT), 
		.AUDIO_SYNC(AUDIO_SYNC), 
		.GPIO_SW_C(GPIO_SW_C), 
		.GPIO_SW_W(GPIO_SW_W), 
		.GPIO_SW_E(GPIO_SW_E), 
		.GPIO_LED_7(GPIO_LED_7), 
		.GPIO_LED_6(GPIO_LED_6), 
		.GPIO_LED_5(GPIO_LED_5), 
		.GPIO_LED_4(GPIO_LED_4), 
		.GPIO_LED_3(GPIO_LED_3), 
		.GPIO_LED_2(GPIO_LED_2), 
		.GPIO_LED_1(GPIO_LED_1), 
		.GPIO_LED_0(GPIO_LED_0)
	);
always #5 USER_CLK = ~USER_CLK;
	initial begin
		// Initialize Inputs
		CLK_27MHZ_FPGA = 0;
		USER_CLK = 0;
		GPIO_DIP_SW1 = 0;
		GPIO_DIP_SW2 = 0;
		GPIO_DIP_SW3 = 0;
		GPIO_DIP_SW4 = 0;
		GPIO_DIP_SW5 = 0;
		GPIO_DIP_SW6 = 0;
		GPIO_DIP_SW7 = 0;
		GPIO_DIP_SW8 = 0;
		AUDIO_SDATA_IN = 0;
		GPIO_SW_C = 0;
		GPIO_SW_W = 0;
		GPIO_SW_E = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		#500;
		GPIO_SW_C=1;
		#60;
		GPIO_SW_C=0;
        
		// Add stimulus here

	end
      
endmodule

