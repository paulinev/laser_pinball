////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : xaw2verilog
//  /   /         Filename : clocking.v
// /___/   /\     Timestamp : 12/06/2014 05:17:14
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: xaw2verilog -intstyle /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/clocking.xaw -st clocking.v
//Design Name: clocking
//Device: xc5vlx50t-3ff1136
//
// Module clocking
// Generated by Xilinx Architecture Wizard
// Written for synthesis tool: XST
`timescale 1ns / 1ps

module clocking(CLKIN_IN, 
                RST_IN, 
                CLKDV_OUT, 
                CLKIN_IBUFG_OUT, 
                CLK0_OUT, 
                LOCKED_OUT);

    input CLKIN_IN;
    input RST_IN;
   output CLKDV_OUT;
   output CLKIN_IBUFG_OUT;
   output CLK0_OUT;
   output LOCKED_OUT;
   
   wire CLKDV_BUF;
   wire CLKFB_IN;
   wire CLKIN_IBUFG;
   wire CLK0_BUF;
   wire GND_BIT;
   wire [6:0] GND_BUS_7;
   wire [15:0] GND_BUS_16;
   
   assign GND_BIT = 0;
   assign GND_BUS_7 = 7'b0000000;
   assign GND_BUS_16 = 16'b0000000000000000;
   assign CLKIN_IBUFG_OUT = CLKIN_IBUFG;
   assign CLK0_OUT = CLKFB_IN;
   BUFG CLKDV_BUFG_INST (.I(CLKDV_BUF), 
                         .O(CLKDV_OUT));
   IBUFG CLKIN_IBUFG_INST (.I(CLKIN_IN), 
                           .O(CLKIN_IBUFG));
   BUFG CLK0_BUFG_INST (.I(CLK0_BUF), 
                        .O(CLKFB_IN));
   DCM_ADV DCM_ADV_INST (.CLKFB(CLKFB_IN), 
                         .CLKIN(CLKIN_IBUFG), 
                         .DADDR(GND_BUS_7[6:0]), 
                         .DCLK(GND_BIT), 
                         .DEN(GND_BIT), 
                         .DI(GND_BUS_16[15:0]), 
                         .DWE(GND_BIT), 
                         .PSCLK(GND_BIT), 
                         .PSEN(GND_BIT), 
                         .PSINCDEC(GND_BIT), 
                         .RST(RST_IN), 
                         .CLKDV(CLKDV_BUF), 
                         .CLKFX(), 
                         .CLKFX180(), 
                         .CLK0(CLK0_BUF), 
                         .CLK2X(), 
                         .CLK2X180(), 
                         .CLK90(), 
                         .CLK180(), 
                         .CLK270(), 
                         .DO(), 
                         .DRDY(), 
                         .LOCKED(LOCKED_OUT), 
                         .PSDONE());
   defparam DCM_ADV_INST.CLK_FEEDBACK = "1X";
   defparam DCM_ADV_INST.CLKDV_DIVIDE = 2.0;
   defparam DCM_ADV_INST.CLKFX_DIVIDE = 1;
   defparam DCM_ADV_INST.CLKFX_MULTIPLY = 4;
   defparam DCM_ADV_INST.CLKIN_DIVIDE_BY_2 = "FALSE";
   defparam DCM_ADV_INST.CLKIN_PERIOD = 10.000;
   defparam DCM_ADV_INST.CLKOUT_PHASE_SHIFT = "NONE";
   defparam DCM_ADV_INST.DCM_AUTOCALIBRATION = "TRUE";
   defparam DCM_ADV_INST.DCM_PERFORMANCE_MODE = "MAX_SPEED";
   defparam DCM_ADV_INST.DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS";
   defparam DCM_ADV_INST.DFS_FREQUENCY_MODE = "LOW";
   defparam DCM_ADV_INST.DLL_FREQUENCY_MODE = "LOW";
   defparam DCM_ADV_INST.DUTY_CYCLE_CORRECTION = "TRUE";
   defparam DCM_ADV_INST.FACTORY_JF = 16'hF0F0;
   defparam DCM_ADV_INST.PHASE_SHIFT = 0;
   defparam DCM_ADV_INST.STARTUP_WAIT = "FALSE";
   defparam DCM_ADV_INST.SIM_DEVICE = "VIRTEX5";
endmodule
