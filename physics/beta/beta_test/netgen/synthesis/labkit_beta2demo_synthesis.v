////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: labkit_beta2demo_synthesis.v
// /___/   /\     Timestamp: Wed Nov 19 18:10:54 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim labkit_beta2demo.ngc labkit_beta2demo_synthesis.v 
// Device	: xc2v6000-4-bf957
// Input file	: labkit_beta2demo.ngc
// Output file	: /afs/athena.mit.edu/user/j/i/jisenhar/Documents/6.111/laser_pinball/physics/beta/beta_test/netgen/synthesis/labkit_beta2demo_synthesis.v
// # of Modules	: 1
// Design Name	: labkit_beta2demo
// Xilinx        : /afs/csail.mit.edu/proj/redsocs/Xilinx10.1/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module labkit_beta2demo (
  tv_in_i2c_data, ram0_cen_b, tv_in_clock, button0, button1, button2, button3, tv_out_subcar_reset, tv_out_pal_ntsc, ram1_adv_ld, ram0_clk, 
vga_out_hsync, clock1, clock2, flash_ce_b, tv_in_aef, ram0_oe_b, tv_in_aff, analyzer1_clock, ram1_cen_b, ram1_oe_b, systemace_irq, clock_feedback_in, 
disp_data_in, ram0_adv_ld, disp_rs, ram0_ce_b, clock_27mhz, button_enter, ac97_sdata_out, analyzer2_clock, keyboard_clock, ram1_ce_b, disp_clock, 
systemace_oe_b, tv_out_blank_b, rs232_rts, flash_sts, rs232_rxd, mouse_data, rs232_cts, tv_out_reset_b, flash_byte_b, audio_reset_b, tv_in_fifo_read, 
tv_out_clock, tv_in_reset_b, analyzer3_clock, systemace_ce_b, rs232_txd, flash_reset_b, ac97_synch, button_left, flash_we_b, disp_ce_b, 
tv_in_fifo_clock, vga_out_vsync, tv_in_i2c_clock, tv_in_data_valid, tv_in_hff, tv_out_i2c_clock, tv_out_hsync_b, analyzer4_clock, ram1_clk, 
vga_out_sync_b, disp_data_out, tv_in_line_clock1, tv_in_line_clock2, vga_out_pixel_clock, keyboard_data, beep, ram0_we_b, ac97_sdata_in, ram1_we_b, 
clock_feedback_out, systemace_mpbrdy, button_right, button_down, mouse_clock, tv_in_iso, ac97_bit_clock, disp_reset_b, systemace_we_b, vga_out_blank_b
, button_up, tv_out_i2c_data, disp_blank, flash_oe_b, tv_out_vsync_b, user3, daughtercard, flash_data, user2, user4, user1, ram0_data, ram1_data, 
systemace_data, systemace_address, vga_out_red, tv_out_ycrcb, vga_out_blue, ram1_address, analyzer1_data, analyzer2_data, analyzer3_data, 
analyzer4_data, ram0_bwe_b, flash_address, ram1_bwe_b, vga_out_green, led, ram0_address, switch, tv_in_ycrcb
);
  inout tv_in_i2c_data;
  output ram0_cen_b;
  output tv_in_clock;
  input button0;
  input button1;
  input button2;
  input button3;
  output tv_out_subcar_reset;
  output tv_out_pal_ntsc;
  output ram1_adv_ld;
  output ram0_clk;
  output vga_out_hsync;
  input clock1;
  input clock2;
  output flash_ce_b;
  input tv_in_aef;
  output ram0_oe_b;
  input tv_in_aff;
  output analyzer1_clock;
  output ram1_cen_b;
  output ram1_oe_b;
  input systemace_irq;
  input clock_feedback_in;
  input disp_data_in;
  output ram0_adv_ld;
  output disp_rs;
  output ram0_ce_b;
  input clock_27mhz;
  input button_enter;
  output ac97_sdata_out;
  output analyzer2_clock;
  input keyboard_clock;
  output ram1_ce_b;
  output disp_clock;
  output systemace_oe_b;
  output tv_out_blank_b;
  output rs232_rts;
  input flash_sts;
  input rs232_rxd;
  input mouse_data;
  input rs232_cts;
  output tv_out_reset_b;
  output flash_byte_b;
  output audio_reset_b;
  output tv_in_fifo_read;
  output tv_out_clock;
  output tv_in_reset_b;
  output analyzer3_clock;
  output systemace_ce_b;
  output rs232_txd;
  output flash_reset_b;
  output ac97_synch;
  input button_left;
  output flash_we_b;
  output disp_ce_b;
  output tv_in_fifo_clock;
  output vga_out_vsync;
  output tv_in_i2c_clock;
  input tv_in_data_valid;
  input tv_in_hff;
  output tv_out_i2c_clock;
  output tv_out_hsync_b;
  output analyzer4_clock;
  output ram1_clk;
  output vga_out_sync_b;
  output disp_data_out;
  input tv_in_line_clock1;
  input tv_in_line_clock2;
  output vga_out_pixel_clock;
  input keyboard_data;
  output beep;
  output ram0_we_b;
  input ac97_sdata_in;
  output ram1_we_b;
  output clock_feedback_out;
  input systemace_mpbrdy;
  input button_right;
  input button_down;
  input mouse_clock;
  output tv_in_iso;
  input ac97_bit_clock;
  output disp_reset_b;
  output systemace_we_b;
  output vga_out_blank_b;
  input button_up;
  output tv_out_i2c_data;
  output disp_blank;
  output flash_oe_b;
  output tv_out_vsync_b;
  inout [31 : 0] user3;
  inout [43 : 0] daughtercard;
  inout [15 : 0] flash_data;
  inout [31 : 0] user2;
  inout [31 : 0] user4;
  inout [31 : 0] user1;
  inout [35 : 0] ram0_data;
  inout [35 : 0] ram1_data;
  inout [15 : 0] systemace_data;
  output [6 : 0] systemace_address;
  output [7 : 0] vga_out_red;
  output [9 : 0] tv_out_ycrcb;
  output [7 : 0] vga_out_blue;
  output [18 : 0] ram1_address;
  output [15 : 0] analyzer1_data;
  output [15 : 0] analyzer2_data;
  output [15 : 0] analyzer3_data;
  output [15 : 0] analyzer4_data;
  output [3 : 0] ram0_bwe_b;
  output [23 : 0] flash_address;
  output [3 : 0] ram1_bwe_b;
  output [7 : 0] vga_out_green;
  output [7 : 0] led;
  output [18 : 0] ram0_address;
  input [7 : 0] switch;
  input [19 : 0] tv_in_ycrcb;
  wire N0;
  wire N10;
  wire N1000;
  wire N1001;
  wire N1002;
  wire N1003;
  wire N1004;
  wire N1005;
  wire N1006;
  wire N1007;
  wire N1008;
  wire N1009;
  wire N1010;
  wire N1011;
  wire N1012;
  wire N1013;
  wire N1014;
  wire N1015;
  wire N1016;
  wire N1017;
  wire N1018;
  wire N1019;
  wire N1020;
  wire N1021;
  wire N1022;
  wire N1023;
  wire N1024;
  wire N1025;
  wire N1026;
  wire N1027;
  wire N1028;
  wire N1029;
  wire N1030;
  wire N1031;
  wire N1032;
  wire N1033;
  wire N1034;
  wire N1035;
  wire N1036;
  wire N1037;
  wire N1038;
  wire N1039;
  wire N1040;
  wire N1041;
  wire N1042;
  wire N1043;
  wire N1044;
  wire N1045;
  wire N1046;
  wire N1047;
  wire N1048;
  wire N1049;
  wire N1050;
  wire N1051;
  wire N1052;
  wire N1053;
  wire N1054;
  wire N1055;
  wire N1056;
  wire N1057;
  wire N110;
  wire N111;
  wire N113;
  wire N12;
  wire N123;
  wire N126;
  wire N129;
  wire N132;
  wire N135;
  wire N138;
  wire N141;
  wire N144;
  wire N147;
  wire N150;
  wire N153;
  wire N156;
  wire N16;
  wire N166;
  wire N167;
  wire N170;
  wire N173;
  wire N176;
  wire N179;
  wire N18;
  wire N182;
  wire N188;
  wire N191;
  wire N197;
  wire N200;
  wire N207;
  wire N208;
  wire N210;
  wire N212;
  wire N221;
  wire N224;
  wire N232;
  wire N234;
  wire N244;
  wire N249;
  wire N25;
  wire N257;
  wire N259;
  wire N265;
  wire N267;
  wire N269;
  wire N27;
  wire N271;
  wire N273;
  wire N275;
  wire N277;
  wire N279;
  wire N283;
  wire N285;
  wire N287;
  wire N289;
  wire N29;
  wire N291;
  wire N293;
  wire N295;
  wire N297;
  wire N299;
  wire N301;
  wire N303;
  wire N305;
  wire N307;
  wire N309;
  wire N311;
  wire N313;
  wire N315;
  wire N317;
  wire N319;
  wire N321;
  wire N323;
  wire N325;
  wire N327;
  wire N329;
  wire N331;
  wire N333;
  wire N335;
  wire N337;
  wire N339;
  wire N341;
  wire N343;
  wire N345;
  wire N347;
  wire N349;
  wire N359;
  wire N361;
  wire N362;
  wire N364;
  wire N366;
  wire N367;
  wire N369;
  wire N37;
  wire N371;
  wire N373;
  wire N385;
  wire N387;
  wire N403;
  wire N405;
  wire N407;
  wire N413;
  wire N417;
  wire N427;
  wire N429;
  wire N431;
  wire N433;
  wire N435;
  wire N436;
  wire N438;
  wire N44;
  wire N440;
  wire N442;
  wire N444;
  wire N46;
  wire N488;
  wire N49;
  wire N490;
  wire N492;
  wire N493;
  wire N495;
  wire N497;
  wire N499;
  wire N503;
  wire N541;
  wire N551;
  wire N553;
  wire N555;
  wire N557;
  wire N559;
  wire N563;
  wire N567;
  wire N569;
  wire N571;
  wire N573;
  wire N575;
  wire N577;
  wire N579;
  wire N581;
  wire N583;
  wire N585;
  wire N587;
  wire N589;
  wire N591;
  wire N593;
  wire N595;
  wire N597;
  wire N599;
  wire N6;
  wire N601;
  wire N603;
  wire N605;
  wire N609;
  wire N621;
  wire N623;
  wire N624;
  wire N626;
  wire N628;
  wire N630;
  wire N632;
  wire N634;
  wire N636;
  wire N638;
  wire N639;
  wire N643;
  wire N650;
  wire N652;
  wire N654;
  wire N659;
  wire N665;
  wire N666;
  wire N667;
  wire N668;
  wire N669;
  wire N670;
  wire N672;
  wire N674;
  wire N676;
  wire N677;
  wire N678;
  wire N679;
  wire N680;
  wire N682;
  wire N686;
  wire N687;
  wire N688;
  wire N689;
  wire N690;
  wire N691;
  wire N692;
  wire N693;
  wire N694;
  wire N695;
  wire N696;
  wire N697;
  wire N698;
  wire N699;
  wire N700;
  wire N701;
  wire N702;
  wire N703;
  wire N704;
  wire N705;
  wire N706;
  wire N707;
  wire N708;
  wire N709;
  wire N710;
  wire N711;
  wire N712;
  wire N713;
  wire N714;
  wire N715;
  wire N716;
  wire N717;
  wire N718;
  wire N719;
  wire N720;
  wire N721;
  wire N722;
  wire N723;
  wire N724;
  wire N725;
  wire N726;
  wire N727;
  wire N728;
  wire N729;
  wire N730;
  wire N731;
  wire N732;
  wire N733;
  wire N734;
  wire N735;
  wire N736;
  wire N737;
  wire N738;
  wire N739;
  wire N740;
  wire N741;
  wire N742;
  wire N743;
  wire N744;
  wire N745;
  wire N746;
  wire N747;
  wire N748;
  wire N749;
  wire N751;
  wire N753;
  wire N755;
  wire N757;
  wire N759;
  wire N761;
  wire N763;
  wire N765;
  wire N767;
  wire N769;
  wire N77;
  wire N771;
  wire N773;
  wire N775;
  wire N777;
  wire N779;
  wire N781;
  wire N783;
  wire N785;
  wire N787;
  wire N789;
  wire N79;
  wire N793;
  wire N794;
  wire N796;
  wire N797;
  wire N799;
  wire N8;
  wire N800;
  wire N802;
  wire N803;
  wire N805;
  wire N806;
  wire N808;
  wire N809;
  wire N81;
  wire N811;
  wire N812;
  wire N814;
  wire N815;
  wire N817;
  wire N818;
  wire N820;
  wire N822;
  wire N824;
  wire N826;
  wire N828;
  wire N83;
  wire N832;
  wire N834;
  wire N836;
  wire N838;
  wire N841;
  wire N843;
  wire N845;
  wire N847;
  wire N849;
  wire N85;
  wire N851;
  wire N853;
  wire N855;
  wire N857;
  wire N859;
  wire N86;
  wire N861;
  wire N863;
  wire N865;
  wire N867;
  wire N869;
  wire N870;
  wire N871;
  wire N872;
  wire N873;
  wire N874;
  wire N875;
  wire N876;
  wire N877;
  wire N878;
  wire N879;
  wire N880;
  wire N881;
  wire N882;
  wire N883;
  wire N884;
  wire N885;
  wire N886;
  wire N887;
  wire N888;
  wire N889;
  wire N890;
  wire N891;
  wire N892;
  wire N893;
  wire N894;
  wire N895;
  wire N896;
  wire N897;
  wire N898;
  wire N899;
  wire N90;
  wire N900;
  wire N901;
  wire N902;
  wire N903;
  wire N904;
  wire N905;
  wire N906;
  wire N907;
  wire N908;
  wire N909;
  wire N910;
  wire N911;
  wire N912;
  wire N913;
  wire N914;
  wire N915;
  wire N916;
  wire N917;
  wire N918;
  wire N919;
  wire N920;
  wire N921;
  wire N922;
  wire N923;
  wire N924;
  wire N925;
  wire N926;
  wire N927;
  wire N928;
  wire N929;
  wire N930;
  wire N931;
  wire N932;
  wire N933;
  wire N934;
  wire N935;
  wire N936;
  wire N937;
  wire N938;
  wire N939;
  wire N940;
  wire N941;
  wire N942;
  wire N943;
  wire N944;
  wire N945;
  wire N946;
  wire N947;
  wire N948;
  wire N949;
  wire N950;
  wire N951;
  wire N952;
  wire N953;
  wire N954;
  wire N955;
  wire N956;
  wire N957;
  wire N958;
  wire N959;
  wire N960;
  wire N961;
  wire N962;
  wire N963;
  wire N964;
  wire N965;
  wire N966;
  wire N967;
  wire N968;
  wire N969;
  wire N970;
  wire N971;
  wire N972;
  wire N973;
  wire N974;
  wire N975;
  wire N976;
  wire N977;
  wire N978;
  wire N979;
  wire N980;
  wire N981;
  wire N982;
  wire N983;
  wire N984;
  wire N985;
  wire N986;
  wire N987;
  wire N988;
  wire N989;
  wire N990;
  wire N991;
  wire N992;
  wire N993;
  wire N994;
  wire N995;
  wire N996;
  wire N997;
  wire N998;
  wire N999;
  wire _and0000;
  wire _and0001;
  wire analyzer1_data_0_OBUF_547;
  wire analyzer4_clock_OBUF_583;
  wire button_enter_IBUF_603;
  wire \c1/lfsr_not0001 ;
  wire clk_300Hz;
  wire clock_27mhz_IBUFG_633;
  wire clock_50MHz;
  wire clock_50mhz_unbuf;
  wire \cpu/Madd_npc_inc_Madd_cy<10>_rt_701 ;
  wire \cpu/Madd_npc_inc_Madd_cy<11>_rt_703 ;
  wire \cpu/Madd_npc_inc_Madd_cy<12>_rt_705 ;
  wire \cpu/Madd_npc_inc_Madd_cy<13>_rt_707 ;
  wire \cpu/Madd_npc_inc_Madd_cy<14>_rt_709 ;
  wire \cpu/Madd_npc_inc_Madd_cy<15>_rt_711 ;
  wire \cpu/Madd_npc_inc_Madd_cy<16>_rt_713 ;
  wire \cpu/Madd_npc_inc_Madd_cy<17>_rt_715 ;
  wire \cpu/Madd_npc_inc_Madd_cy<18>_rt_717 ;
  wire \cpu/Madd_npc_inc_Madd_cy<19>_rt_719 ;
  wire \cpu/Madd_npc_inc_Madd_cy<20>_rt_721 ;
  wire \cpu/Madd_npc_inc_Madd_cy<21>_rt_723 ;
  wire \cpu/Madd_npc_inc_Madd_cy<22>_rt_725 ;
  wire \cpu/Madd_npc_inc_Madd_cy<23>_rt_727 ;
  wire \cpu/Madd_npc_inc_Madd_cy<24>_rt_729 ;
  wire \cpu/Madd_npc_inc_Madd_cy<25>_rt_731 ;
  wire \cpu/Madd_npc_inc_Madd_cy<26>_rt_733 ;
  wire \cpu/Madd_npc_inc_Madd_cy<27>_rt_735 ;
  wire \cpu/Madd_npc_inc_Madd_cy<28>_rt_737 ;
  wire \cpu/Madd_npc_inc_Madd_cy<29>_rt_739 ;
  wire \cpu/Madd_npc_inc_Madd_cy<3>_rt_742 ;
  wire \cpu/Madd_npc_inc_Madd_cy<4>_rt_744 ;
  wire \cpu/Madd_npc_inc_Madd_cy<5>_rt_746 ;
  wire \cpu/Madd_npc_inc_Madd_cy<6>_rt_748 ;
  wire \cpu/Madd_npc_inc_Madd_cy<7>_rt_750 ;
  wire \cpu/Madd_npc_inc_Madd_cy<8>_rt_752 ;
  wire \cpu/Madd_npc_inc_Madd_cy<9>_rt_754 ;
  wire \cpu/Madd_npc_inc_Madd_xor<30>_rt_756 ;
  wire \cpu/N33 ;
  wire \cpu/N34 ;
  wire \cpu/N35 ;
  wire \cpu/N36 ;
  wire \cpu/N37 ;
  wire \cpu/N40 ;
  wire \cpu/N42 ;
  wire \cpu/N47 ;
  wire \cpu/N49 ;
  wire \cpu/N51 ;
  wire \cpu/N52 ;
  wire \cpu/N54 ;
  wire \cpu/N95 ;
  wire \cpu/Sh ;
  wire \cpu/Sh1_771 ;
  wire \cpu/Sh10_772 ;
  wire \cpu/Sh11_773 ;
  wire \cpu/Sh12_774 ;
  wire \cpu/Sh13_775 ;
  wire \cpu/Sh14_776 ;
  wire \cpu/Sh15_777 ;
  wire \cpu/Sh16_778 ;
  wire \cpu/Sh17_779 ;
  wire \cpu/Sh18_780 ;
  wire \cpu/Sh19_781 ;
  wire \cpu/Sh2_782 ;
  wire \cpu/Sh20_783 ;
  wire \cpu/Sh21_784 ;
  wire \cpu/Sh23_785 ;
  wire \cpu/Sh24_786 ;
  wire \cpu/Sh25_787 ;
  wire \cpu/Sh27_788 ;
  wire \cpu/Sh3_789 ;
  wire \cpu/Sh36 ;
  wire \cpu/Sh37 ;
  wire \cpu/Sh38 ;
  wire \cpu/Sh39 ;
  wire \cpu/Sh4_794 ;
  wire \cpu/Sh40_795 ;
  wire \cpu/Sh41_796 ;
  wire \cpu/Sh42_797 ;
  wire \cpu/Sh43_798 ;
  wire \cpu/Sh44 ;
  wire \cpu/Sh45 ;
  wire \cpu/Sh453_801 ;
  wire \cpu/Sh46 ;
  wire \cpu/Sh47 ;
  wire \cpu/Sh5_804 ;
  wire \cpu/Sh6_805 ;
  wire \cpu/Sh7_806 ;
  wire \cpu/Sh8_807 ;
  wire \cpu/Sh9_808 ;
  wire \cpu/addsub_op ;
  wire \cpu/asel ;
  wire \cpu/b<0>1_940 ;
  wire \cpu/b<1>1_952 ;
  wire \cpu/boole_and ;
  wire \cpu/branch ;
  wire \cpu/bsel ;
  wire \cpu/ctl/N13 ;
  wire \cpu/ctl/N6 ;
  wire \cpu/ctl/annul_978 ;
  wire \cpu/ctl/annul_or00001 ;
  wire \cpu/ctl/asel_or0000_980 ;
  wire \cpu/ctl/branch46_981 ;
  wire \cpu/ctl/branch60 ;
  wire \cpu/ctl/branch601_983 ;
  wire \cpu/ctl/bsel55_984 ;
  wire \cpu/ctl/mem_next_985 ;
  wire \cpu/ctl/msel_986 ;
  wire \cpu/ctl/msel_1_987 ;
  wire \cpu/ctl/msel_2_988 ;
  wire \cpu/ctl/msel_next_inv ;
  wire \cpu/ctl/mwrite_990 ;
  wire \cpu/ctl/mwrite_next_norst ;
  wire \cpu/inst_26_1_1012 ;
  wire \cpu/inst_27_1_1014 ;
  wire \cpu/inst_31_1_1020 ;
  wire \cpu/interrupt ;
  wire \cpu/msel_inv ;
  wire \cpu/msel_next ;
  wire \cpu/npc_next<10>0_1090 ;
  wire \cpu/npc_next<10>5_1091 ;
  wire \cpu/npc_next<11>0_1093 ;
  wire \cpu/npc_next<11>5_1094 ;
  wire \cpu/npc_next<12>0_1096 ;
  wire \cpu/npc_next<12>5_1097 ;
  wire \cpu/npc_next<13>0_1099 ;
  wire \cpu/npc_next<13>5_1100 ;
  wire \cpu/npc_next<14>0_1102 ;
  wire \cpu/npc_next<14>5_1103 ;
  wire \cpu/npc_next<15>0_1105 ;
  wire \cpu/npc_next<15>5_1106 ;
  wire \cpu/npc_next<16>0_1108 ;
  wire \cpu/npc_next<16>5_1109 ;
  wire \cpu/npc_next<17>0_1111 ;
  wire \cpu/npc_next<17>5_1112 ;
  wire \cpu/npc_next<18>0_1114 ;
  wire \cpu/npc_next<18>5_1115 ;
  wire \cpu/npc_next<19>0_1117 ;
  wire \cpu/npc_next<19>5_1118 ;
  wire \cpu/npc_next<20>0_1120 ;
  wire \cpu/npc_next<20>5_1121 ;
  wire \cpu/npc_next<21>0_1123 ;
  wire \cpu/npc_next<21>5_1124 ;
  wire \cpu/npc_next<22>0_1126 ;
  wire \cpu/npc_next<22>5_1127 ;
  wire \cpu/npc_next<23>0_1129 ;
  wire \cpu/npc_next<23>5_1130 ;
  wire \cpu/npc_next<24>0_1132 ;
  wire \cpu/npc_next<24>5_1133 ;
  wire \cpu/npc_next<25>0_1135 ;
  wire \cpu/npc_next<25>5_1136 ;
  wire \cpu/npc_next<26>0_1138 ;
  wire \cpu/npc_next<26>5_1139 ;
  wire \cpu/npc_next<27>0_1141 ;
  wire \cpu/npc_next<27>5_1142 ;
  wire \cpu/npc_next<28>0_1144 ;
  wire \cpu/npc_next<28>5_1145 ;
  wire \cpu/npc_next<29>0_1147 ;
  wire \cpu/npc_next<29>5_1148 ;
  wire \cpu/npc_next<2>16_1150 ;
  wire \cpu/npc_next<2>17_1151 ;
  wire \cpu/npc_next<2>28_1152 ;
  wire \cpu/npc_next<30>0_1154 ;
  wire \cpu/npc_next<30>5_1155 ;
  wire \cpu/npc_next<31>16_1157 ;
  wire \cpu/npc_next<31>8_1158 ;
  wire \cpu/npc_next<31>9_1159 ;
  wire \cpu/npc_next<3>0_1161 ;
  wire \cpu/npc_next<3>1_1162 ;
  wire \cpu/npc_next<3>21_1163 ;
  wire \cpu/npc_next<4>0_1165 ;
  wire \cpu/npc_next<4>5_1166 ;
  wire \cpu/npc_next<5>0_1168 ;
  wire \cpu/npc_next<5>5_1169 ;
  wire \cpu/npc_next<6>0_1171 ;
  wire \cpu/npc_next<6>5_1172 ;
  wire \cpu/npc_next<7>0_1174 ;
  wire \cpu/npc_next<7>5_1175 ;
  wire \cpu/npc_next<8>0_1177 ;
  wire \cpu/npc_next<8>5_1178 ;
  wire \cpu/npc_next<9>0_1180 ;
  wire \cpu/npc_next<9>5_1181 ;
  wire \cpu/ra2<0>1_1213 ;
  wire \cpu/ra2<1>1_1215 ;
  wire \cpu/ra2<2>1_1217 ;
  wire \cpu/ra2<3>1_1219 ;
  wire \cpu/ra2<4>1_1221 ;
  wire \cpu/rd1_cmp_eq0000 ;
  wire \cpu/rd1_cmp_eq00001_1228 ;
  wire \cpu/rd2_cmp_eq0000_1229 ;
  wire \cpu/shift_op ;
  wire \cpu/shift_sxt ;
  wire \cpu/sr/shift_right<0>_bdd0 ;
  wire \cpu/sr/shift_right<0>_bdd1 ;
  wire \cpu/sr/shift_right<0>_bdd12 ;
  wire \cpu/sr/shift_right<0>_bdd18 ;
  wire \cpu/sr/shift_right<0>_bdd19 ;
  wire \cpu/sr/shift_right<0>_bdd2 ;
  wire \cpu/sr/shift_right<0>_bdd23 ;
  wire \cpu/sr/shift_right<0>_bdd24 ;
  wire \cpu/sr/shift_right<0>_bdd26 ;
  wire \cpu/sr/shift_right<0>_bdd27 ;
  wire \cpu/sr/shift_right<0>_bdd31 ;
  wire \cpu/sr/shift_right<0>_bdd32 ;
  wire \cpu/sr/shift_right<0>_bdd36 ;
  wire \cpu/sr/shift_right<0>_bdd37 ;
  wire \cpu/sr/shift_right<0>_bdd39 ;
  wire \cpu/sr/shift_right<0>_bdd40 ;
  wire \cpu/sr/shift_right<0>_bdd44 ;
  wire \cpu/sr/shift_right<0>_bdd45 ;
  wire \cpu/sr/shift_right<0>_bdd49 ;
  wire \cpu/sr/shift_right<0>_bdd50 ;
  wire \cpu/sr/shift_right<0>_bdd8 ;
  wire \cpu/sr/shift_right<0>_bdd9 ;
  wire \cpu/sr/shift_right<10>_bdd1 ;
  wire \cpu/sr/shift_right<10>_bdd13 ;
  wire \cpu/sr/shift_right<10>_bdd14 ;
  wire \cpu/sr/shift_right<10>_bdd18 ;
  wire \cpu/sr/shift_right<10>_bdd19 ;
  wire \cpu/sr/shift_right<10>_bdd2 ;
  wire \cpu/sr/shift_right<10>_bdd4 ;
  wire \cpu/sr/shift_right<10>_bdd5 ;
  wire \cpu/sr/shift_right<10>_bdd8 ;
  wire \cpu/sr/shift_right<10>_bdd9 ;
  wire \cpu/sr/shift_right<11>_bdd1 ;
  wire \cpu/sr/shift_right<11>_bdd10 ;
  wire \cpu/sr/shift_right<11>_bdd11 ;
  wire \cpu/sr/shift_right<11>_bdd15 ;
  wire \cpu/sr/shift_right<11>_bdd16 ;
  wire \cpu/sr/shift_right<11>_bdd18 ;
  wire \cpu/sr/shift_right<11>_bdd19 ;
  wire \cpu/sr/shift_right<11>_bdd2 ;
  wire \cpu/sr/shift_right<11>_bdd23 ;
  wire \cpu/sr/shift_right<11>_bdd24 ;
  wire \cpu/sr/shift_right<11>_bdd28 ;
  wire \cpu/sr/shift_right<11>_bdd29 ;
  wire \cpu/sr/shift_right<11>_bdd31 ;
  wire \cpu/sr/shift_right<11>_bdd32 ;
  wire \cpu/sr/shift_right<11>_bdd36 ;
  wire \cpu/sr/shift_right<11>_bdd37 ;
  wire \cpu/sr/shift_right<11>_bdd4 ;
  wire \cpu/sr/shift_right<11>_bdd6 ;
  wire \cpu/sr/shift_right<11>_bdd7 ;
  wire \cpu/sr/shift_right<12>_bdd1 ;
  wire \cpu/sr/shift_right<12>_bdd2 ;
  wire \cpu/sr/shift_right<12>_bdd4 ;
  wire \cpu/sr/shift_right<13>_bdd1 ;
  wire \cpu/sr/shift_right<13>_bdd10 ;
  wire \cpu/sr/shift_right<13>_bdd14 ;
  wire \cpu/sr/shift_right<13>_bdd15 ;
  wire \cpu/sr/shift_right<13>_bdd2 ;
  wire \cpu/sr/shift_right<13>_bdd4 ;
  wire \cpu/sr/shift_right<13>_bdd6 ;
  wire \cpu/sr/shift_right<13>_bdd9 ;
  wire \cpu/sr/shift_right<14>_bdd0 ;
  wire \cpu/sr/shift_right<15>_bdd0 ;
  wire \cpu/sr/shift_right<15>_bdd2 ;
  wire \cpu/sr/shift_right<17>_bdd2 ;
  wire \cpu/sr/shift_right<1>_bdd0 ;
  wire \cpu/sr/shift_right<1>_bdd1 ;
  wire \cpu/sr/shift_right<1>_bdd10 ;
  wire \cpu/sr/shift_right<1>_bdd4 ;
  wire \cpu/sr/shift_right<1>_bdd6 ;
  wire \cpu/sr/shift_right<1>_bdd9 ;
  wire \cpu/sr/shift_right<22>_bdd0 ;
  wire \cpu/sr/shift_right<23>_bdd0 ;
  wire \cpu/sr/shift_right<2>_bdd0 ;
  wire \cpu/sr/shift_right<3>_bdd0 ;
  wire \cpu/trap ;
  wire \cpu/wasel ;
  wire \cpu/wd<0>104_1316 ;
  wire \cpu/wd<0>208_1317 ;
  wire \cpu/wd<0>248_1318 ;
  wire \cpu/wd<0>293_1319 ;
  wire \cpu/wd<0>298_1320 ;
  wire \cpu/wd<0>310_1321 ;
  wire \cpu/wd<0>325_1322 ;
  wire \cpu/wd<0>356_1323 ;
  wire \cpu/wd<0>388_1324 ;
  wire \cpu/wd<0>4_1325 ;
  wire \cpu/wd<0>400_1326 ;
  wire \cpu/wd<0>431_1327 ;
  wire \cpu/wd<0>449_1328 ;
  wire \cpu/wd<0>490_1329 ;
  wire \cpu/wd<0>508_1330 ;
  wire \cpu/wd<0>520_1331 ;
  wire \cpu/wd<0>539_1332 ;
  wire \cpu/wd<0>561_1333 ;
  wire \cpu/wd<0>589_1334 ;
  wire \cpu/wd<0>61_1335 ;
  wire \cpu/wd<0>616_1336 ;
  wire \cpu/wd<0>63_1337 ;
  wire \cpu/wd<0>89_1338 ;
  wire \cpu/wd<10>126_1340 ;
  wire \cpu/wd<10>4_1341 ;
  wire \cpu/wd<10>55_1342 ;
  wire \cpu/wd<10>73_1343 ;
  wire \cpu/wd<10>84 ;
  wire \cpu/wd<11>4_1346 ;
  wire \cpu/wd<11>73_1347 ;
  wire \cpu/wd<11>73_SW0 ;
  wire \cpu/wd<11>73_SW01_1349 ;
  wire \cpu/wd<12>4_1351 ;
  wire \cpu/wd<12>74_1352 ;
  wire \cpu/wd<12>74_SW0 ;
  wire \cpu/wd<12>74_SW01_1354 ;
  wire \cpu/wd<13>131_1356 ;
  wire \cpu/wd<13>4_1357 ;
  wire \cpu/wd<13>74_1358 ;
  wire \cpu/wd<13>74_SW0 ;
  wire \cpu/wd<13>74_SW01_1360 ;
  wire \cpu/wd<14>134_1362 ;
  wire \cpu/wd<14>4_1363 ;
  wire \cpu/wd<14>74_1364 ;
  wire \cpu/wd<14>74_SW0 ;
  wire \cpu/wd<14>74_SW01_1366 ;
  wire \cpu/wd<14>98 ;
  wire \cpu/wd<15>146_SW0 ;
  wire \cpu/wd<15>146_SW01_1370 ;
  wire \cpu/wd<15>4_1371 ;
  wire \cpu/wd<15>73_1372 ;
  wire \cpu/wd<15>73_SW0 ;
  wire \cpu/wd<15>73_SW01_1374 ;
  wire \cpu/wd<15>96_1375 ;
  wire \cpu/wd<16>122_1377 ;
  wire \cpu/wd<16>144_1378 ;
  wire \cpu/wd<16>4_1379 ;
  wire \cpu/wd<16>55_1380 ;
  wire \cpu/wd<16>68_1381 ;
  wire \cpu/wd<16>90_1382 ;
  wire \cpu/wd<17>122_1384 ;
  wire \cpu/wd<17>144_1385 ;
  wire \cpu/wd<17>4_1386 ;
  wire \cpu/wd<17>55_1387 ;
  wire \cpu/wd<17>68_1388 ;
  wire \cpu/wd<17>89_1389 ;
  wire \cpu/wd<18>122_1391 ;
  wire \cpu/wd<18>144_1392 ;
  wire \cpu/wd<18>4_1393 ;
  wire \cpu/wd<18>55_1394 ;
  wire \cpu/wd<18>68_1395 ;
  wire \cpu/wd<18>89_1396 ;
  wire \cpu/wd<19>108_1398 ;
  wire \cpu/wd<19>131 ;
  wire \cpu/wd<19>137_1400 ;
  wire \cpu/wd<19>4_1401 ;
  wire \cpu/wd<19>54_1402 ;
  wire \cpu/wd<19>67_1403 ;
  wire \cpu/wd<19>89_1404 ;
  wire \cpu/wd<1>104_1406 ;
  wire \cpu/wd<1>136_1407 ;
  wire \cpu/wd<1>208_1408 ;
  wire \cpu/wd<1>4_1409 ;
  wire \cpu/wd<1>61_1410 ;
  wire \cpu/wd<1>63_1411 ;
  wire \cpu/wd<1>89_1412 ;
  wire \cpu/wd<20>118_1414 ;
  wire \cpu/wd<20>141_1415 ;
  wire \cpu/wd<20>4_1416 ;
  wire \cpu/wd<20>55_1417 ;
  wire \cpu/wd<20>71_1418 ;
  wire \cpu/wd<20>76_1419 ;
  wire \cpu/wd<20>98_1420 ;
  wire \cpu/wd<21>118_1422 ;
  wire \cpu/wd<21>141_1423 ;
  wire \cpu/wd<21>4_1424 ;
  wire \cpu/wd<21>55_1425 ;
  wire \cpu/wd<21>71_1426 ;
  wire \cpu/wd<21>76_1427 ;
  wire \cpu/wd<21>98_1428 ;
  wire \cpu/wd<22>118_1430 ;
  wire \cpu/wd<22>141_1431 ;
  wire \cpu/wd<22>4_1432 ;
  wire \cpu/wd<22>55_1433 ;
  wire \cpu/wd<22>71_1434 ;
  wire \cpu/wd<22>76_1435 ;
  wire \cpu/wd<22>98_1436 ;
  wire \cpu/wd<23>118_1438 ;
  wire \cpu/wd<23>135_1439 ;
  wire \cpu/wd<23>157_1440 ;
  wire \cpu/wd<23>55_1441 ;
  wire \cpu/wd<23>71_1442 ;
  wire \cpu/wd<23>76_1443 ;
  wire \cpu/wd<23>98_1444 ;
  wire \cpu/wd<24>119_1446 ;
  wire \cpu/wd<24>141 ;
  wire \cpu/wd<24>1411_1448 ;
  wire \cpu/wd<24>1412_1449 ;
  wire \cpu/wd<24>4_1450 ;
  wire \cpu/wd<24>55_1451 ;
  wire \cpu/wd<24>71_1452 ;
  wire \cpu/wd<24>76_1453 ;
  wire \cpu/wd<25>119_1455 ;
  wire \cpu/wd<25>141_1456 ;
  wire \cpu/wd<25>4_1457 ;
  wire \cpu/wd<25>55_1458 ;
  wire \cpu/wd<25>71_1459 ;
  wire \cpu/wd<25>76_1460 ;
  wire \cpu/wd<26>142_1462 ;
  wire \cpu/wd<26>4_1463 ;
  wire \cpu/wd<26>55_1464 ;
  wire \cpu/wd<26>71_1465 ;
  wire \cpu/wd<27>0_1467 ;
  wire \cpu/wd<27>1_1468 ;
  wire \cpu/wd<27>109_1469 ;
  wire \cpu/wd<27>152_1470 ;
  wire \cpu/wd<27>164_1471 ;
  wire \cpu/wd<27>55_1472 ;
  wire \cpu/wd<27>77_1473 ;
  wire \cpu/wd<28>100_1475 ;
  wire \cpu/wd<28>136_1476 ;
  wire \cpu/wd<28>202_1477 ;
  wire \cpu/wd<28>4_1478 ;
  wire \cpu/wd<28>55_1479 ;
  wire \cpu/wd<28>71_1480 ;
  wire \cpu/wd<28>72_1481 ;
  wire \cpu/wd<28>77_1482 ;
  wire \cpu/wd<28>82_1483 ;
  wire \cpu/wd<29>100_1485 ;
  wire \cpu/wd<29>136_1486 ;
  wire \cpu/wd<29>186_1487 ;
  wire \cpu/wd<29>213_1488 ;
  wire \cpu/wd<29>4_1489 ;
  wire \cpu/wd<29>55_1490 ;
  wire \cpu/wd<29>71_1491 ;
  wire \cpu/wd<29>72_1492 ;
  wire \cpu/wd<29>77_1493 ;
  wire \cpu/wd<29>82_1494 ;
  wire \cpu/wd<2>121_1496 ;
  wire \cpu/wd<2>15_1497 ;
  wire \cpu/wd<2>193_1498 ;
  wire \cpu/wd<2>4_1499 ;
  wire \cpu/wd<2>71_1500 ;
  wire \cpu/wd<2>71_SW0 ;
  wire \cpu/wd<2>71_SW01_1502 ;
  wire \cpu/wd<2>93_1503 ;
  wire \cpu/wd<30>109_1505 ;
  wire \cpu/wd<30>148_1506 ;
  wire \cpu/wd<30>176_1507 ;
  wire \cpu/wd<30>187_1508 ;
  wire \cpu/wd<30>55_1509 ;
  wire \cpu/wd<30>71_1510 ;
  wire \cpu/wd<31>103_1512 ;
  wire \cpu/wd<31>108_1513 ;
  wire \cpu/wd<31>126_1514 ;
  wire \cpu/wd<31>162_1515 ;
  wire \cpu/wd<31>196_1516 ;
  wire \cpu/wd<31>39_1517 ;
  wire \cpu/wd<31>77_1518 ;
  wire \cpu/wd<31>80_1519 ;
  wire \cpu/wd<31>97_1520 ;
  wire \cpu/wd<31>98_1521 ;
  wire \cpu/wd<3>121_1523 ;
  wire \cpu/wd<3>15_1524 ;
  wire \cpu/wd<3>191_1525 ;
  wire \cpu/wd<3>4_1526 ;
  wire \cpu/wd<3>70_1527 ;
  wire \cpu/wd<3>70_SW0 ;
  wire \cpu/wd<3>70_SW01_1529 ;
  wire \cpu/wd<3>91_1530 ;
  wire \cpu/wd<4>134_1532 ;
  wire \cpu/wd<4>4_1533 ;
  wire \cpu/wd<4>74_1534 ;
  wire \cpu/wd<4>74_SW0 ;
  wire \cpu/wd<4>74_SW01_1536 ;
  wire \cpu/wd<4>93_1537 ;
  wire \cpu/wd<5>134_1539 ;
  wire \cpu/wd<5>4_1540 ;
  wire \cpu/wd<5>74_1541 ;
  wire \cpu/wd<5>74_SW0 ;
  wire \cpu/wd<5>74_SW01_1543 ;
  wire \cpu/wd<5>93_1544 ;
  wire \cpu/wd<6>115_1546 ;
  wire \cpu/wd<6>134_1547 ;
  wire \cpu/wd<6>4_1548 ;
  wire \cpu/wd<6>74_1549 ;
  wire \cpu/wd<6>74_SW0 ;
  wire \cpu/wd<6>74_SW01_1551 ;
  wire \cpu/wd<7>103_1553 ;
  wire \cpu/wd<7>135_1554 ;
  wire \cpu/wd<7>4_1555 ;
  wire \cpu/wd<7>54_1556 ;
  wire \cpu/wd<7>72_1557 ;
  wire \cpu/wd<8>134_1559 ;
  wire \cpu/wd<8>4_1560 ;
  wire \cpu/wd<8>55_1561 ;
  wire \cpu/wd<8>73_1562 ;
  wire \cpu/wd<8>97_1563 ;
  wire \cpu/wd<9>134_1565 ;
  wire \cpu/wd<9>4_1566 ;
  wire \cpu/wd<9>55_1567 ;
  wire \cpu/wd<9>73_1568 ;
  wire \cpu/wd<9>95_1569 ;
  wire \cpu/wd_addsub ;
  wire \cpu/wd_boole ;
  wire \cpu/wd_cmp ;
  wire \cpu/wd_shift ;
  wire \cpu/werf ;
  wire \cpu/z ;
  wire \cpu/z101_1577 ;
  wire \cpu/z114_1578 ;
  wire \cpu/z12_1579 ;
  wire \cpu/z138_1580 ;
  wire \cpu/z151_1581 ;
  wire \cpu/z165_1582 ;
  wire \cpu/z25_1583 ;
  wire \cpu/z49_1584 ;
  wire \cpu/z62_1585 ;
  wire \cpu/z76_1586 ;
  wire \dbreset/Mcount_count_cy<10>_rt_1589 ;
  wire \dbreset/Mcount_count_cy<11>_rt_1591 ;
  wire \dbreset/Mcount_count_cy<12>_rt_1593 ;
  wire \dbreset/Mcount_count_cy<13>_rt_1595 ;
  wire \dbreset/Mcount_count_cy<14>_rt_1597 ;
  wire \dbreset/Mcount_count_cy<15>_rt_1599 ;
  wire \dbreset/Mcount_count_cy<16>_rt_1601 ;
  wire \dbreset/Mcount_count_cy<17>_rt_1603 ;
  wire \dbreset/Mcount_count_cy<1>_rt_1605 ;
  wire \dbreset/Mcount_count_cy<2>_rt_1607 ;
  wire \dbreset/Mcount_count_cy<3>_rt_1609 ;
  wire \dbreset/Mcount_count_cy<4>_rt_1611 ;
  wire \dbreset/Mcount_count_cy<5>_rt_1613 ;
  wire \dbreset/Mcount_count_cy<6>_rt_1615 ;
  wire \dbreset/Mcount_count_cy<7>_rt_1617 ;
  wire \dbreset/Mcount_count_cy<8>_rt_1619 ;
  wire \dbreset/Mcount_count_cy<9>_rt_1621 ;
  wire \dbreset/Mcount_count_xor<18>_rt_1623 ;
  wire \dbreset/clean_1624 ;
  wire \dbreset/clean_1_1625 ;
  wire \dbreset/clean_not0001 ;
  wire \dbreset/count_cmp_eq0000 ;
  wire \dbreset/count_not0001 ;
  wire \dbreset/new_1657 ;
  wire \dbreset/new_not0001_inv ;
  wire dbreset_not0000;
  wire disp_clock_OBUF_1663;
  wire \dpy/Madd_char_addr_cy<10>_rt_1669 ;
  wire \dpy/Madd_char_addr_cy<7>_rt_1677 ;
  wire \dpy/Madd_char_addr_cy<8>_rt_1679 ;
  wire \dpy/Madd_char_addr_cy<9>_rt_1681 ;
  wire \dpy/Madd_font_addr_cy<4>_rt_1694 ;
  wire \dpy/Madd_font_addr_cy<5>_rt_1696 ;
  wire \dpy/Madd_font_addr_cy<6>_rt_1698 ;
  wire \dpy/Madd_font_addr_cy<7>_rt_1700 ;
  wire \dpy/Madd_font_addr_cy<8>_rt_1702 ;
  wire \dpy/Madd_font_addr_cy<9>_rt_1704 ;
  wire \dpy/Madd_next_column_addsub0000_cy[2] ;
  wire \dpy/Madd_next_column_addsub0000_cy[4] ;
  wire \dpy/Mcount_hcount_cy<1>_rt_1714 ;
  wire \dpy/Mcount_hcount_cy<2>_rt_1716 ;
  wire \dpy/Mcount_hcount_cy<3>_rt_1718 ;
  wire \dpy/Mcount_hcount_cy<4>_rt_1720 ;
  wire \dpy/Mcount_hcount_cy<5>_rt_1722 ;
  wire \dpy/Mcount_hcount_cy<6>_rt_1724 ;
  wire \dpy/Mcount_hcount_cy<7>_rt_1726 ;
  wire \dpy/Mcount_hcount_cy<8>_rt_1728 ;
  wire \dpy/Mcount_hcount_xor<9>_rt_1730 ;
  wire \dpy/Mcount_vcount_cy<1>_rt_1733 ;
  wire \dpy/Mcount_vcount_cy<2>_rt_1735 ;
  wire \dpy/Mcount_vcount_cy<3>_rt_1737 ;
  wire \dpy/Mcount_vcount_cy<4>_rt_1739 ;
  wire \dpy/Mcount_vcount_cy<5>_rt_1741 ;
  wire \dpy/Mcount_vcount_cy<6>_rt_1743 ;
  wire \dpy/Mcount_vcount_cy<7>_rt_1745 ;
  wire \dpy/Mcount_vcount_cy<8>_rt_1747 ;
  wire \dpy/Mcount_vcount_xor<9>_rt_1749 ;
  wire \dpy/Mmux__COND_3_3_f5_1750 ;
  wire \dpy/Mmux__COND_3_4_1751 ;
  wire \dpy/Mmux__COND_3_4_f5_1752 ;
  wire \dpy/Mmux__COND_3_5_1753 ;
  wire \dpy/Mmux__COND_3_51_1754 ;
  wire \dpy/Mmux__COND_3_6_1755 ;
  wire \dpy/N1 ;
  wire \dpy/N11 ;
  wire \dpy/N19 ;
  wire \dpy/N2 ;
  wire \dpy/N21 ;
  wire \dpy/N22 ;
  wire \dpy/N23 ;
  wire \dpy/Result<0>1 ;
  wire \dpy/Result<0>2 ;
  wire \dpy/Result<1>1 ;
  wire \dpy/Result<1>2 ;
  wire \dpy/Result<2>1 ;
  wire \dpy/Result<2>2 ;
  wire \dpy/Result<3>1 ;
  wire \dpy/Result<3>2 ;
  wire \dpy/Result<4>1 ;
  wire \dpy/Result<5>1 ;
  wire \dpy/Result<6>1 ;
  wire \dpy/Result<7>1 ;
  wire \dpy/Result<8>1 ;
  wire \dpy/Result<9>1 ;
  wire \dpy/_COND_3 ;
  wire \dpy/en ;
  wire \dpy/hblank_1858 ;
  wire \dpy/hblankon ;
  wire \dpy/hblankon_cmp_eq0000_1860 ;
  wire \dpy/hcount_and0000 ;
  wire \dpy/hreset_1872 ;
  wire \dpy/hsync_1873 ;
  wire \dpy/hsyncoff ;
  wire \dpy/hsyncoff1_1875 ;
  wire \dpy/hsyncon ;
  wire \dpy/irq_60Hz_1877 ;
  wire \dpy/next_column_cmp_eq0000 ;
  wire \dpy/next_row_cmp_eq0000 ;
  wire \dpy/pcount_1893 ;
  wire \dpy/reverse_1894 ;
  wire \dpy/rgb_or0000<0>19_1897 ;
  wire \dpy/rgb_or0000<0>32_1898 ;
  wire \dpy/rgb_or0000<0>5_1899 ;
  wire \dpy/rgb_or0000<0>50_1900 ;
  wire \dpy/rgb_or0000<0>63_1901 ;
  wire \dpy/rgb_or0000<0>75_1902 ;
  wire \dpy/v_and0000 ;
  wire \dpy/vblank_1914 ;
  wire \dpy/vblankon ;
  wire \dpy/vcount_and0000 ;
  wire \dpy/vsync_1927 ;
  wire \dpy/vsyncoff_1928 ;
  wire \dpy/vsyncon_1929 ;
  wire \hexdisp1/Mcount_reset_count_cy<0>_rt_1993 ;
  wire \hexdisp1/Mcount_reset_count_val ;
  wire \hexdisp1/Mmux__varindex0000_10_2008 ;
  wire \hexdisp1/Mmux__varindex0000_10_f5_2009 ;
  wire \hexdisp1/Mmux__varindex0000_10_f6_2010 ;
  wire \hexdisp1/Mmux__varindex0000_11_2011 ;
  wire \hexdisp1/Mmux__varindex0000_11_f5_2012 ;
  wire \hexdisp1/Mmux__varindex0000_11_f51 ;
  wire \hexdisp1/Mmux__varindex0000_12_2014 ;
  wire \hexdisp1/Mmux__varindex0000_121_2015 ;
  wire \hexdisp1/Mmux__varindex0000_122_2016 ;
  wire \hexdisp1/Mmux__varindex0000_12_f5_2017 ;
  wire \hexdisp1/Mmux__varindex0000_12_f6_2018 ;
  wire \hexdisp1/Mmux__varindex0000_13_2019 ;
  wire \hexdisp1/Mmux__varindex0000_131_2020 ;
  wire \hexdisp1/Mmux__varindex0000_132_2021 ;
  wire \hexdisp1/Mmux__varindex0000_13_f5_2022 ;
  wire \hexdisp1/Mmux__varindex0000_14_2023 ;
  wire \hexdisp1/Mmux__varindex0000_141_2024 ;
  wire \hexdisp1/Mmux__varindex0000_14_f5_2025 ;
  wire \hexdisp1/Mmux__varindex0000_15_2026 ;
  wire \hexdisp1/Mmux__varindex0000_151_2027 ;
  wire \hexdisp1/Mmux__varindex0000_16_2028 ;
  wire \hexdisp1/Mmux__varindex0000_6_f6_2029 ;
  wire \hexdisp1/Mmux__varindex0000_7_f5_2030 ;
  wire \hexdisp1/Mmux__varindex0000_8_2031 ;
  wire \hexdisp1/Mmux__varindex0000_8_f5_2032 ;
  wire \hexdisp1/Mmux__varindex0000_8_f7_2033 ;
  wire \hexdisp1/Mmux__varindex0000_9_2034 ;
  wire \hexdisp1/Mmux__varindex0000_91_2035 ;
  wire \hexdisp1/Mmux__varindex0000_9_f6_2036 ;
  wire \hexdisp1/Mmux_nibble_3_2037 ;
  wire \hexdisp1/Mmux_nibble_31_2038 ;
  wire \hexdisp1/Mmux_nibble_32_2039 ;
  wire \hexdisp1/Mmux_nibble_33_2040 ;
  wire \hexdisp1/Mmux_nibble_4_2041 ;
  wire \hexdisp1/Mmux_nibble_41_2042 ;
  wire \hexdisp1/Mmux_nibble_42_2043 ;
  wire \hexdisp1/Mmux_nibble_43_2044 ;
  wire \hexdisp1/Mmux_nibble_8_2045 ;
  wire \hexdisp1/Mmux_nibble_81_2046 ;
  wire \hexdisp1/Mmux_nibble_82_2047 ;
  wire \hexdisp1/Mmux_nibble_83_2048 ;
  wire \hexdisp1/Mmux_nibble_9_2049 ;
  wire \hexdisp1/Mmux_nibble_91_2050 ;
  wire \hexdisp1/Mmux_nibble_92_2051 ;
  wire \hexdisp1/Mmux_nibble_93_2052 ;
  wire \hexdisp1/Mrom_dots ;
  wire \hexdisp1/Mrom_dots1 ;
  wire \hexdisp1/Mrom_dots10 ;
  wire \hexdisp1/Mrom_dots11 ;
  wire \hexdisp1/Mrom_dots12_2057 ;
  wire \hexdisp1/Mrom_dots13 ;
  wire \hexdisp1/Mrom_dots14 ;
  wire \hexdisp1/Mrom_dots2 ;
  wire \hexdisp1/Mrom_dots22_2061 ;
  wire \hexdisp1/Mrom_dots27 ;
  wire \hexdisp1/Mrom_dots3 ;
  wire \hexdisp1/Mrom_dots30 ;
  wire \hexdisp1/Mrom_dots32 ;
  wire \hexdisp1/Mrom_dots33 ;
  wire \hexdisp1/Mrom_dots34 ;
  wire \hexdisp1/Mrom_dots35 ;
  wire \hexdisp1/Mrom_dots36 ;
  wire \hexdisp1/Mrom_dots37 ;
  wire \hexdisp1/Mrom_dots38 ;
  wire \hexdisp1/Mrom_dots4 ;
  wire \hexdisp1/Mrom_dots5 ;
  wire \hexdisp1/Mrom_dots6 ;
  wire \hexdisp1/Mrom_dots8 ;
  wire \hexdisp1/Mshreg_control_14_2076 ;
  wire \hexdisp1/Mshreg_control_22_2077 ;
  wire \hexdisp1/Mshreg_control_30_2078 ;
  wire \hexdisp1/Mshreg_control_6_2079 ;
  wire \hexdisp1/N11 ;
  wire \hexdisp1/N13 ;
  wire \hexdisp1/N14 ;
  wire \hexdisp1/N23 ;
  wire \hexdisp1/N25 ;
  wire \hexdisp1/N28 ;
  wire \hexdisp1/N31 ;
  wire \hexdisp1/N34 ;
  wire \hexdisp1/N37 ;
  wire \hexdisp1/N39 ;
  wire \hexdisp1/N41 ;
  wire \hexdisp1/N42 ;
  wire \hexdisp1/N58 ;
  wire \hexdisp1/N64 ;
  wire \hexdisp1/N74 ;
  wire \hexdisp1/N83 ;
  wire \hexdisp1/N91 ;
  wire \hexdisp1/N93 ;
  wire \hexdisp1/N95 ;
  wire \hexdisp1/N96 ;
  wire \hexdisp1/N99 ;
  wire \hexdisp1/Result<0>1 ;
  wire \hexdisp1/Result<1>1 ;
  wire \hexdisp1/Result<2>1 ;
  wire \hexdisp1/Result<3>1_2108 ;
  wire \hexdisp1/Result<4>1_2110 ;
  wire \hexdisp1/Result<4>2_2111 ;
  wire \hexdisp1/Result<4>3 ;
  wire \hexdisp1/char_index<1>1_2116 ;
  wire \hexdisp1/char_index<1>2 ;
  wire \hexdisp1/char_index<1>3 ;
  wire \hexdisp1/char_index<1>4 ;
  wire \hexdisp1/clock_2128 ;
  wire \hexdisp1/clock1 ;
  wire \hexdisp1/clock_cmp_eq0000 ;
  wire \hexdisp1/control_141_2131 ;
  wire \hexdisp1/control_1411 ;
  wire \hexdisp1/control_142_2133 ;
  wire \hexdisp1/control[15] ;
  wire \hexdisp1/control_221_2135 ;
  wire \hexdisp1/control_2211 ;
  wire \hexdisp1/control_222_2137 ;
  wire \hexdisp1/control[23] ;
  wire \hexdisp1/control_301_2139 ;
  wire \hexdisp1/control_3011 ;
  wire \hexdisp1/control_302_2141 ;
  wire \hexdisp1/control[31] ;
  wire \hexdisp1/control_61_2143 ;
  wire \hexdisp1/control_611 ;
  wire \hexdisp1/control_62_2145 ;
  wire \hexdisp1/control[7] ;
  wire \hexdisp1/count_or0000 ;
  wire \hexdisp1/count_or00001 ;
  wire \hexdisp1/disp_ce_b_2154 ;
  wire \hexdisp1/disp_ce_b_mux0000 ;
  wire \hexdisp1/disp_data_out_2156 ;
  wire \hexdisp1/disp_data_out_mux0000 ;
  wire \hexdisp1/disp_data_out_mux0000131_2158 ;
  wire \hexdisp1/disp_data_out_mux0000169 ;
  wire \hexdisp1/disp_data_out_mux00001691_2160 ;
  wire \hexdisp1/disp_data_out_mux000017_2161 ;
  wire \hexdisp1/disp_data_out_mux000023_2162 ;
  wire \hexdisp1/disp_data_out_mux000078 ;
  wire \hexdisp1/disp_data_out_mux0000781_2164 ;
  wire \hexdisp1/disp_data_out_mux0000782_2165 ;
  wire \hexdisp1/disp_reset_b_2166 ;
  wire \hexdisp1/disp_reset_b_mux0000 ;
  wire \hexdisp1/disp_rs_2168 ;
  wire \hexdisp1/disp_rs_mux0000 ;
  wire \hexdisp1/dot_index_mux0000<0>29_2180 ;
  wire \hexdisp1/dot_index_mux0000<0>41 ;
  wire \hexdisp1/dot_index_mux0000<0>411_2182 ;
  wire \hexdisp1/dot_index_mux0000<0>59_2183 ;
  wire \hexdisp1/dot_index_mux0000<0>87_2184 ;
  wire \hexdisp1/dot_index_mux0000<1>18 ;
  wire \hexdisp1/dot_index_mux0000<1>181_2187 ;
  wire \hexdisp1/dot_index_mux0000<1>182 ;
  wire \hexdisp1/dot_index_mux0000<1>34_2189 ;
  wire \hexdisp1/dot_index_mux0000<2>69 ;
  wire \hexdisp1/dot_index_mux0000<2>691 ;
  wire \hexdisp1/dot_index_mux0000<2>6911_2192 ;
  wire \hexdisp1/dot_index_mux0000<3>27 ;
  wire \hexdisp1/dot_index_mux0000<3>5_2194 ;
  wire \hexdisp1/dot_index_mux0000<4>110_2195 ;
  wire \hexdisp1/dot_index_mux0000<4>133_2196 ;
  wire \hexdisp1/dot_index_mux0000<4>147_2197 ;
  wire \hexdisp1/dot_index_mux0000<4>23 ;
  wire \hexdisp1/dot_index_mux0000<4>231_2199 ;
  wire \hexdisp1/dot_index_mux0000<4>57_2200 ;
  wire \hexdisp1/dot_index_mux0000<4>91_2201 ;
  wire \hexdisp1/dot_index_mux0000<5>0 ;
  wire \hexdisp1/dot_index_mux0000<5>118 ;
  wire \hexdisp1/dot_index_mux0000<5>13_2204 ;
  wire \hexdisp1/dot_index_mux0000<5>22 ;
  wire \hexdisp1/dot_index_mux0000<5>34_2206 ;
  wire \hexdisp1/dot_index_mux0000<5>89_2207 ;
  wire \hexdisp1/dot_index_mux0000<6>18_2208 ;
  wire \hexdisp1/dot_index_mux0000<6>75_2209 ;
  wire \hexdisp1/dot_index_mux0000<6>96 ;
  wire \hexdisp1/dot_index_mux0000<7>13_2211 ;
  wire \hexdisp1/dot_index_mux0000<7>28_2212 ;
  wire \hexdisp1/dot_index_mux0000<7>94 ;
  wire \hexdisp1/dot_index_mux0000<8>1_2214 ;
  wire \hexdisp1/dot_index_mux0000<9>1_2215 ;
  wire \hexdisp1/dreset ;
  wire \hexdisp1/dreset4_2217 ;
  wire \hexdisp1/dreset9_2218 ;
  wire \hexdisp1/dreset_inv ;
  wire \hexdisp1/dreset_shift1_2220 ;
  wire \hexdisp1/dreset_shift2_2221 ;
  wire \hexdisp1/dreset_shift3_2222 ;
  wire \hexdisp1/dreset_shift4_2223 ;
  wire \hexdisp1/dreset_shift5_2224 ;
  wire \hexdisp1/dreset_shift6_2225 ;
  wire \hexdisp1/reset_count_not0001_inv ;
  wire \hexdisp1/state_FSM_FFd1_2239 ;
  wire \hexdisp1/state_FSM_FFd2_2240 ;
  wire \hexdisp1/state_FSM_FFd2-In12_2241 ;
  wire \hexdisp1/state_FSM_FFd2-In30 ;
  wire \hexdisp1/state_FSM_FFd2-In7_2243 ;
  wire \hexdisp1/state_FSM_FFd3_2244 ;
  wire \hexdisp1/state_FSM_FFd3-In31_2245 ;
  wire \hexdisp1/state_FSM_FFd3-In34_2246 ;
  wire \hexdisp1/state_FSM_FFd3-In42 ;
  wire \hexdisp1/state_FSM_FFd3-In421 ;
  wire \hexdisp1/state_cmp_eq0000_2249 ;
  wire \hexdisp1/state_cmp_eq00001 ;
  wire \hexdisp1/state_cmp_eq0001_2251 ;
  wire \hexdisp1/state_cmp_eq0006 ;
  wire highmem;
  wire irq;
  wire \kbd/Result<0>1 ;
  wire \kbd/Result<1>1_2291 ;
  wire \kbd/Result<2>1_2293 ;
  wire \kbd/_and0000_0 ;
  wire \kbd/and0001_cmp_eq0000 ;
  wire \kbd/count_cmp_eq0000 ;
  wire \kbd/count_mux0000<1>1_2303 ;
  wire \kbd/count_not0002 ;
  wire \kbd/fifo_overflow_2307 ;
  wire \kbd/fifo_overflow_or0000 ;
  wire \kbd/fifo_overflow_or0001 ;
  wire \kbd/fifo_overflow_or000174_2310 ;
  wire \kbd/rptr_and0000 ;
  wire \kbd/rptr_and0001 ;
  wire \kbd/sample ;
  wire \kbd/shift_not0001 ;
  wire \kbd/timeout_2331 ;
  wire \kbd/timeout_mux0000 ;
  wire \kbd/timeout_not0001 ;
  wire \kbd/wptr_0_1_2335 ;
  wire \kbd/wptr_1_1_2337 ;
  wire \kbd/wptr_2_1_2339 ;
  wire \kbd/wptr_not0001 ;
  wire keyboard_clock_IBUF_2342;
  wire keyboard_data_IBUF_2344;
  wire mwe;
  wire power_on_reset;
  wire rd_ps2_2534;
  wire rd_ps2_and0000_norst;
  wire rd_ps2_and0000_norst11_2536;
  wire rd_ps2_and0000_norst110_2537;
  wire rd_ps2_and0000_norst113_2538;
  wire reset;
  wire sel_60Hz;
  wire vga_out_blank_b_OBUF_2579;
  wire NLW_vclk1_RST_UNCONNECTED;
  wire NLW_vclk1_CLKFB_UNCONNECTED;
  wire NLW_vclk1_PSINCDEC_UNCONNECTED;
  wire NLW_vclk1_PSEN_UNCONNECTED;
  wire NLW_vclk1_PSCLK_UNCONNECTED;
  wire NLW_vclk1_DSSEN_UNCONNECTED;
  wire NLW_vclk1_CLK0_UNCONNECTED;
  wire NLW_vclk1_CLK90_UNCONNECTED;
  wire NLW_vclk1_CLK180_UNCONNECTED;
  wire NLW_vclk1_CLK270_UNCONNECTED;
  wire NLW_vclk1_CLK2X_UNCONNECTED;
  wire NLW_vclk1_CLK2X180_UNCONNECTED;
  wire NLW_vclk1_CLKDV_UNCONNECTED;
  wire NLW_vclk1_CLKFX180_UNCONNECTED;
  wire NLW_vclk1_LOCKED_UNCONNECTED;
  wire NLW_vclk1_PSDONE_UNCONNECTED;
  wire \NLW_vclk1_STATUS<7>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<6>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<5>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<4>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<3>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<2>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<1>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<0>_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo8_SPO_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo7_SPO_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo6_SPO_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo5_SPO_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo4_SPO_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo3_SPO_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo2_SPO_UNCONNECTED ;
  wire \NLW_kbd/Mram_fifo1_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren32_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren31_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren30_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren29_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren28_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren27_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren25_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren24_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren26_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren23_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren22_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren21_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren20_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren19_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren18_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren16_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren15_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren17_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren14_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren13_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren12_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren11_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren10_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren9_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren7_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren6_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren8_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren5_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren4_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren2_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren1_SPO_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_ren3_SPO_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<7>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<6>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<5>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<4>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<3>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<2>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<1>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DI<0>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DIP<0>_UNCONNECTED ;
  wire \NLW_dpy/f/font_DOP<0>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<35>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<34>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<33>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<32>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<31>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<30>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<29>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<28>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<27>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<26>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<25>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<24>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<23>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<22>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<21>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<20>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<19>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<18>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<17>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<16>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<15>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<14>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<13>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<12>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_font_addr_mult0000_P<11>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_dpy/Mmult_char_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_mem/m3_DOP<0>_UNCONNECTED ;
  wire \NLW_mem/m2_DOP<0>_UNCONNECTED ;
  wire \NLW_mem/m1_DOP<0>_UNCONNECTED ;
  wire \NLW_mem/m0_DOP<0>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<31>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<30>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<29>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<28>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<27>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<26>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<25>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<24>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<23>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<22>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<21>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<20>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<19>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<18>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<17>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<16>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<15>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<14>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<13>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<12>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<11>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<10>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<9>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<8>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<7>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<6>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<5>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<4>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<3>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<2>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<1>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DIB<0>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<31>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<30>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<29>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<28>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<27>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<26>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<25>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<24>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<23>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<22>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<21>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<20>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<19>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<18>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<17>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<16>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<15>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<14>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<13>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<12>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<11>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<10>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<9>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<8>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<7>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<6>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<5>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<4>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<3>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<2>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<1>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOA<0>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPA<3>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPA<2>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPA<1>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPA<0>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPB<3>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPB<2>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPB<1>_UNCONNECTED ;
  wire \NLW_cpu/Mram_regfile_DOPB<0>_UNCONNECTED ;
  wire \NLW_dpy/b/mlo_DIA<3>_UNCONNECTED ;
  wire \NLW_dpy/b/mlo_DIA<2>_UNCONNECTED ;
  wire \NLW_dpy/b/mlo_DIA<1>_UNCONNECTED ;
  wire \NLW_dpy/b/mlo_DIA<0>_UNCONNECTED ;
  wire \NLW_dpy/b/mlo_DOPB<1>_UNCONNECTED ;
  wire \NLW_dpy/b/mlo_DOPB<0>_UNCONNECTED ;
  wire \NLW_dpy/b/mhi_DIA<3>_UNCONNECTED ;
  wire \NLW_dpy/b/mhi_DIA<2>_UNCONNECTED ;
  wire \NLW_dpy/b/mhi_DIA<1>_UNCONNECTED ;
  wire \NLW_dpy/b/mhi_DIA<0>_UNCONNECTED ;
  wire \NLW_dpy/b/mhi_DOPB<1>_UNCONNECTED ;
  wire \NLW_dpy/b/mhi_DOPB<0>_UNCONNECTED ;
  wire [18 : 0] Result;
  wire [3 : 0] \c1/clk_300Hz_cmp_eq0000_wg_cy ;
  wire [4 : 0] \c1/clk_300Hz_cmp_eq0000_wg_lut ;
  wire [17 : 1] \c1/lfsr ;
  wire [30 : 0] \cpu/Madd_addsub_cy ;
  wire [31 : 0] \cpu/Madd_addsub_lut ;
  wire [29 : 2] \cpu/Madd_npc_inc_Madd_cy ;
  wire [2 : 2] \cpu/Madd_npc_inc_Madd_lut ;
  wire [31 : 0] \cpu/_varindex0000 ;
  wire [31 : 0] \cpu/_varindex0001 ;
  wire [31 : 0] \cpu/a ;
  wire [31 : 0] \cpu/addsub ;
  wire [31 : 0] \cpu/b ;
  wire [31 : 0] \cpu/inst ;
  wire [31 : 2] \cpu/npc ;
  wire [30 : 2] \cpu/npc_inc ;
  wire [31 : 2] \cpu/npc_next ;
  wire [31 : 2] \cpu/pc_inc ;
  wire [4 : 0] \cpu/ra2 ;
  wire [4 : 0] \cpu/rc_save ;
  wire [4 : 0] \cpu/wa ;
  wire [31 : 0] \cpu/wd ;
  wire [31 : 31] \cpu/xb ;
  wire [17 : 0] \dbreset/Mcount_count_cy ;
  wire [0 : 0] \dbreset/Mcount_count_lut ;
  wire [18 : 0] \dbreset/count ;
  wire [3 : 0] \dbreset/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \dbreset/count_cmp_eq0000_wg_lut ;
  wire [10 : 0] \dpy/Madd_char_addr_cy ;
  wire [6 : 0] \dpy/Madd_char_addr_lut ;
  wire [9 : 0] \dpy/Madd_font_addr_cy ;
  wire [3 : 0] \dpy/Madd_font_addr_lut ;
  wire [3 : 3] \dpy/Madd_next_row_addsub0000_cy ;
  wire [8 : 0] \dpy/Mcount_hcount_cy ;
  wire [0 : 0] \dpy/Mcount_hcount_lut ;
  wire [8 : 0] \dpy/Mcount_vcount_cy ;
  wire [0 : 0] \dpy/Mcount_vcount_lut ;
  wire [9 : 0] \dpy/Result ;
  wire [7 : 0] \dpy/char ;
  wire [11 : 0] \dpy/char_addr ;
  wire [11 : 0] \dpy/char_addr_mult0001 ;
  wire [6 : 0] \dpy/column ;
  wire [10 : 0] \dpy/font_addr ;
  wire [10 : 0] \dpy/font_addr_mult0000 ;
  wire [7 : 0] \dpy/font_byte ;
  wire [9 : 0] \dpy/hcount ;
  wire [6 : 0] \dpy/next_column ;
  wire [5 : 0] \dpy/next_row ;
  wire [0 : 0] \dpy/rgb ;
  wire [0 : 0] \dpy/rgb_or0000 ;
  wire [5 : 0] \dpy/row ;
  wire [3 : 0] \dpy/v ;
  wire [9 : 0] \dpy/vcount ;
  wire [31 : 0] dpyout;
  wire [5 : 5] \hexdisp1/Maddsub_dot_index_share0000_cy ;
  wire [6 : 0] \hexdisp1/Mcount_reset_count_cy ;
  wire [7 : 1] \hexdisp1/Mcount_reset_count_lut ;
  wire [7 : 0] \hexdisp1/Result ;
  wire [3 : 0] \hexdisp1/char_index ;
  wire [3 : 0] \hexdisp1/char_index_mux0000 ;
  wire [4 : 0] \hexdisp1/count ;
  wire [9 : 0] \hexdisp1/dot_index ;
  wire [1 : 1] \hexdisp1/dot_index_mux0000 ;
  wire [3 : 0] \hexdisp1/nibble ;
  wire [7 : 0] \hexdisp1/reset_count ;
  wire [14 : 0] highmem_wg_cy;
  wire [15 : 0] highmem_wg_lut;
  wire [5 : 4] \kbd/Mxor_and0000_xor0000_xo ;
  wire [2 : 0] \kbd/Result ;
  wire [3 : 0] \kbd/count ;
  wire [3 : 0] \kbd/count_mux0000 ;
  wire [2 : 0] \kbd/ps2c_sync ;
  wire [2 : 0] \kbd/rptr ;
  wire [9 : 0] \kbd/shift ;
  wire [2 : 0] \kbd/wptr ;
  wire [15 : 2] ma;
  wire [31 : 0] mdin;
  wire [2 : 1] mdin_sel;
  wire [31 : 0] mdout;
  wire [8 : 0] ps2out;
  wire [31 : 0] ramout;
  GND   XST_GND (
    .G(analyzer1_data_0_OBUF_547)
  );
  VCC   XST_VCC (
    .P(analyzer4_clock_OBUF_583)
  );
  FDR   rd_ps2 (
    .C(clock_50MHz),
    .D(rd_ps2_and0000_norst),
    .R(mwe),
    .Q(rd_ps2_2534)
  );
  FDE   \dbreset/clean  (
    .C(clock_50MHz),
    .CE(\dbreset/clean_not0001 ),
    .D(\dbreset/new_1657 ),
    .Q(\dbreset/clean_1624 )
  );
  FDE   \dbreset/new  (
    .C(clock_50MHz),
    .CE(\dbreset/new_not0001_inv ),
    .D(dbreset_not0000),
    .Q(\dbreset/new_1657 )
  );
  FDRE   \dbreset/count_0  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[0]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [0])
  );
  FDRE   \dbreset/count_1  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[1]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [1])
  );
  FDRE   \dbreset/count_2  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[2]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [2])
  );
  FDRE   \dbreset/count_3  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[3]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [3])
  );
  FDRE   \dbreset/count_4  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[4]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [4])
  );
  FDRE   \dbreset/count_5  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[5]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [5])
  );
  FDRE   \dbreset/count_6  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[6]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [6])
  );
  FDRE   \dbreset/count_7  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[7]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [7])
  );
  FDRE   \dbreset/count_8  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[8]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [8])
  );
  FDRE   \dbreset/count_9  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[9]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [9])
  );
  FDRE   \dbreset/count_10  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[10]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [10])
  );
  FDRE   \dbreset/count_11  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[11]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [11])
  );
  FDRE   \dbreset/count_12  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[12]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [12])
  );
  FDRE   \dbreset/count_13  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[13]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [13])
  );
  FDRE   \dbreset/count_14  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[14]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [14])
  );
  FDRE   \dbreset/count_15  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[15]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [15])
  );
  FDRE   \dbreset/count_16  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[16]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [16])
  );
  FDRE   \dbreset/count_17  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[17]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [17])
  );
  FDRE   \dbreset/count_18  (
    .C(clock_50MHz),
    .CE(\dbreset/count_not0001 ),
    .D(Result[18]),
    .R(\dbreset/new_not0001_inv ),
    .Q(\dbreset/count [18])
  );
  MUXCY   \dbreset/Mcount_count_cy<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .DI(analyzer4_clock_OBUF_583),
    .S(\dbreset/Mcount_count_lut [0]),
    .O(\dbreset/Mcount_count_cy [0])
  );
  XORCY   \dbreset/Mcount_count_xor<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .LI(\dbreset/Mcount_count_lut [0]),
    .O(Result[0])
  );
  MUXCY   \dbreset/Mcount_count_cy<1>  (
    .CI(\dbreset/Mcount_count_cy [0]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<1>_rt_1605 ),
    .O(\dbreset/Mcount_count_cy [1])
  );
  XORCY   \dbreset/Mcount_count_xor<1>  (
    .CI(\dbreset/Mcount_count_cy [0]),
    .LI(\dbreset/Mcount_count_cy<1>_rt_1605 ),
    .O(Result[1])
  );
  MUXCY   \dbreset/Mcount_count_cy<2>  (
    .CI(\dbreset/Mcount_count_cy [1]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<2>_rt_1607 ),
    .O(\dbreset/Mcount_count_cy [2])
  );
  XORCY   \dbreset/Mcount_count_xor<2>  (
    .CI(\dbreset/Mcount_count_cy [1]),
    .LI(\dbreset/Mcount_count_cy<2>_rt_1607 ),
    .O(Result[2])
  );
  MUXCY   \dbreset/Mcount_count_cy<3>  (
    .CI(\dbreset/Mcount_count_cy [2]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<3>_rt_1609 ),
    .O(\dbreset/Mcount_count_cy [3])
  );
  XORCY   \dbreset/Mcount_count_xor<3>  (
    .CI(\dbreset/Mcount_count_cy [2]),
    .LI(\dbreset/Mcount_count_cy<3>_rt_1609 ),
    .O(Result[3])
  );
  MUXCY   \dbreset/Mcount_count_cy<4>  (
    .CI(\dbreset/Mcount_count_cy [3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<4>_rt_1611 ),
    .O(\dbreset/Mcount_count_cy [4])
  );
  XORCY   \dbreset/Mcount_count_xor<4>  (
    .CI(\dbreset/Mcount_count_cy [3]),
    .LI(\dbreset/Mcount_count_cy<4>_rt_1611 ),
    .O(Result[4])
  );
  MUXCY   \dbreset/Mcount_count_cy<5>  (
    .CI(\dbreset/Mcount_count_cy [4]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<5>_rt_1613 ),
    .O(\dbreset/Mcount_count_cy [5])
  );
  XORCY   \dbreset/Mcount_count_xor<5>  (
    .CI(\dbreset/Mcount_count_cy [4]),
    .LI(\dbreset/Mcount_count_cy<5>_rt_1613 ),
    .O(Result[5])
  );
  MUXCY   \dbreset/Mcount_count_cy<6>  (
    .CI(\dbreset/Mcount_count_cy [5]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<6>_rt_1615 ),
    .O(\dbreset/Mcount_count_cy [6])
  );
  XORCY   \dbreset/Mcount_count_xor<6>  (
    .CI(\dbreset/Mcount_count_cy [5]),
    .LI(\dbreset/Mcount_count_cy<6>_rt_1615 ),
    .O(Result[6])
  );
  MUXCY   \dbreset/Mcount_count_cy<7>  (
    .CI(\dbreset/Mcount_count_cy [6]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<7>_rt_1617 ),
    .O(\dbreset/Mcount_count_cy [7])
  );
  XORCY   \dbreset/Mcount_count_xor<7>  (
    .CI(\dbreset/Mcount_count_cy [6]),
    .LI(\dbreset/Mcount_count_cy<7>_rt_1617 ),
    .O(Result[7])
  );
  MUXCY   \dbreset/Mcount_count_cy<8>  (
    .CI(\dbreset/Mcount_count_cy [7]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<8>_rt_1619 ),
    .O(\dbreset/Mcount_count_cy [8])
  );
  XORCY   \dbreset/Mcount_count_xor<8>  (
    .CI(\dbreset/Mcount_count_cy [7]),
    .LI(\dbreset/Mcount_count_cy<8>_rt_1619 ),
    .O(Result[8])
  );
  MUXCY   \dbreset/Mcount_count_cy<9>  (
    .CI(\dbreset/Mcount_count_cy [8]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<9>_rt_1621 ),
    .O(\dbreset/Mcount_count_cy [9])
  );
  XORCY   \dbreset/Mcount_count_xor<9>  (
    .CI(\dbreset/Mcount_count_cy [8]),
    .LI(\dbreset/Mcount_count_cy<9>_rt_1621 ),
    .O(Result[9])
  );
  MUXCY   \dbreset/Mcount_count_cy<10>  (
    .CI(\dbreset/Mcount_count_cy [9]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<10>_rt_1589 ),
    .O(\dbreset/Mcount_count_cy [10])
  );
  XORCY   \dbreset/Mcount_count_xor<10>  (
    .CI(\dbreset/Mcount_count_cy [9]),
    .LI(\dbreset/Mcount_count_cy<10>_rt_1589 ),
    .O(Result[10])
  );
  MUXCY   \dbreset/Mcount_count_cy<11>  (
    .CI(\dbreset/Mcount_count_cy [10]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<11>_rt_1591 ),
    .O(\dbreset/Mcount_count_cy [11])
  );
  XORCY   \dbreset/Mcount_count_xor<11>  (
    .CI(\dbreset/Mcount_count_cy [10]),
    .LI(\dbreset/Mcount_count_cy<11>_rt_1591 ),
    .O(Result[11])
  );
  MUXCY   \dbreset/Mcount_count_cy<12>  (
    .CI(\dbreset/Mcount_count_cy [11]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<12>_rt_1593 ),
    .O(\dbreset/Mcount_count_cy [12])
  );
  XORCY   \dbreset/Mcount_count_xor<12>  (
    .CI(\dbreset/Mcount_count_cy [11]),
    .LI(\dbreset/Mcount_count_cy<12>_rt_1593 ),
    .O(Result[12])
  );
  MUXCY   \dbreset/Mcount_count_cy<13>  (
    .CI(\dbreset/Mcount_count_cy [12]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<13>_rt_1595 ),
    .O(\dbreset/Mcount_count_cy [13])
  );
  XORCY   \dbreset/Mcount_count_xor<13>  (
    .CI(\dbreset/Mcount_count_cy [12]),
    .LI(\dbreset/Mcount_count_cy<13>_rt_1595 ),
    .O(Result[13])
  );
  MUXCY   \dbreset/Mcount_count_cy<14>  (
    .CI(\dbreset/Mcount_count_cy [13]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<14>_rt_1597 ),
    .O(\dbreset/Mcount_count_cy [14])
  );
  XORCY   \dbreset/Mcount_count_xor<14>  (
    .CI(\dbreset/Mcount_count_cy [13]),
    .LI(\dbreset/Mcount_count_cy<14>_rt_1597 ),
    .O(Result[14])
  );
  MUXCY   \dbreset/Mcount_count_cy<15>  (
    .CI(\dbreset/Mcount_count_cy [14]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<15>_rt_1599 ),
    .O(\dbreset/Mcount_count_cy [15])
  );
  XORCY   \dbreset/Mcount_count_xor<15>  (
    .CI(\dbreset/Mcount_count_cy [14]),
    .LI(\dbreset/Mcount_count_cy<15>_rt_1599 ),
    .O(Result[15])
  );
  MUXCY   \dbreset/Mcount_count_cy<16>  (
    .CI(\dbreset/Mcount_count_cy [15]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<16>_rt_1601 ),
    .O(\dbreset/Mcount_count_cy [16])
  );
  XORCY   \dbreset/Mcount_count_xor<16>  (
    .CI(\dbreset/Mcount_count_cy [15]),
    .LI(\dbreset/Mcount_count_cy<16>_rt_1601 ),
    .O(Result[16])
  );
  MUXCY   \dbreset/Mcount_count_cy<17>  (
    .CI(\dbreset/Mcount_count_cy [16]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/Mcount_count_cy<17>_rt_1603 ),
    .O(\dbreset/Mcount_count_cy [17])
  );
  XORCY   \dbreset/Mcount_count_xor<17>  (
    .CI(\dbreset/Mcount_count_cy [16]),
    .LI(\dbreset/Mcount_count_cy<17>_rt_1603 ),
    .O(Result[17])
  );
  XORCY   \dbreset/Mcount_count_xor<18>  (
    .CI(\dbreset/Mcount_count_cy [17]),
    .LI(\dbreset/Mcount_count_xor<18>_rt_1623 ),
    .O(Result[18])
  );
  DCM #(
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 13 ),
    .CLKFX_MULTIPLY ( 24 ),
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKIN_PERIOD ( 37.0000000000000000 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "NONE" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .SIM_MODE ( "SAFE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .FACTORY_JF ( 16'hC080 ))
  vclk1 (
    .RST(NLW_vclk1_RST_UNCONNECTED),
    .CLKIN(clock_27mhz_IBUFG_633),
    .CLKFB(NLW_vclk1_CLKFB_UNCONNECTED),
    .PSINCDEC(NLW_vclk1_PSINCDEC_UNCONNECTED),
    .PSEN(NLW_vclk1_PSEN_UNCONNECTED),
    .PSCLK(NLW_vclk1_PSCLK_UNCONNECTED),
    .DSSEN(NLW_vclk1_DSSEN_UNCONNECTED),
    .CLK0(NLW_vclk1_CLK0_UNCONNECTED),
    .CLK90(NLW_vclk1_CLK90_UNCONNECTED),
    .CLK180(NLW_vclk1_CLK180_UNCONNECTED),
    .CLK270(NLW_vclk1_CLK270_UNCONNECTED),
    .CLK2X(NLW_vclk1_CLK2X_UNCONNECTED),
    .CLK2X180(NLW_vclk1_CLK2X180_UNCONNECTED),
    .CLKDV(NLW_vclk1_CLKDV_UNCONNECTED),
    .CLKFX(clock_50mhz_unbuf),
    .CLKFX180(NLW_vclk1_CLKFX180_UNCONNECTED),
    .LOCKED(NLW_vclk1_LOCKED_UNCONNECTED),
    .PSDONE(NLW_vclk1_PSDONE_UNCONNECTED),
    .STATUS({\NLW_vclk1_STATUS<7>_UNCONNECTED , \NLW_vclk1_STATUS<6>_UNCONNECTED , \NLW_vclk1_STATUS<5>_UNCONNECTED , 
\NLW_vclk1_STATUS<4>_UNCONNECTED , \NLW_vclk1_STATUS<3>_UNCONNECTED , \NLW_vclk1_STATUS<2>_UNCONNECTED , \NLW_vclk1_STATUS<1>_UNCONNECTED , 
\NLW_vclk1_STATUS<0>_UNCONNECTED })
  );
  BUFG   vclk2 (
    .I(clock_50mhz_unbuf),
    .O(clock_50MHz)
  );
  SRL16 #(
    .INIT ( 16'hFFFF ))
  reset_sr (
    .A0(analyzer4_clock_OBUF_583),
    .A1(analyzer4_clock_OBUF_583),
    .A2(analyzer4_clock_OBUF_583),
    .A3(analyzer4_clock_OBUF_583),
    .CLK(clock_50MHz),
    .D(analyzer1_data_0_OBUF_547),
    .Q(power_on_reset)
  );
  FD   \c1/lfsr_17  (
    .C(clock_50MHz),
    .D(\c1/lfsr [16]),
    .Q(\c1/lfsr [17])
  );
  FD   \c1/lfsr_16  (
    .C(clock_50MHz),
    .D(\c1/lfsr [15]),
    .Q(\c1/lfsr [16])
  );
  FD   \c1/lfsr_15  (
    .C(clock_50MHz),
    .D(\c1/lfsr [14]),
    .Q(\c1/lfsr [15])
  );
  FD   \c1/lfsr_14  (
    .C(clock_50MHz),
    .D(\c1/lfsr [13]),
    .Q(\c1/lfsr [14])
  );
  FD   \c1/lfsr_13  (
    .C(clock_50MHz),
    .D(\c1/lfsr [12]),
    .Q(\c1/lfsr [13])
  );
  FD   \c1/lfsr_12  (
    .C(clock_50MHz),
    .D(\c1/lfsr [11]),
    .Q(\c1/lfsr [12])
  );
  FD   \c1/lfsr_11  (
    .C(clock_50MHz),
    .D(\c1/lfsr [10]),
    .Q(\c1/lfsr [11])
  );
  FD   \c1/lfsr_10  (
    .C(clock_50MHz),
    .D(\c1/lfsr [9]),
    .Q(\c1/lfsr [10])
  );
  FD   \c1/lfsr_9  (
    .C(clock_50MHz),
    .D(\c1/lfsr [8]),
    .Q(\c1/lfsr [9])
  );
  FD   \c1/lfsr_8  (
    .C(clock_50MHz),
    .D(\c1/lfsr [7]),
    .Q(\c1/lfsr [8])
  );
  FD   \c1/lfsr_7  (
    .C(clock_50MHz),
    .D(\c1/lfsr [6]),
    .Q(\c1/lfsr [7])
  );
  FD   \c1/lfsr_6  (
    .C(clock_50MHz),
    .D(\c1/lfsr [5]),
    .Q(\c1/lfsr [6])
  );
  FD   \c1/lfsr_5  (
    .C(clock_50MHz),
    .D(\c1/lfsr [4]),
    .Q(\c1/lfsr [5])
  );
  FD   \c1/lfsr_4  (
    .C(clock_50MHz),
    .D(\c1/lfsr [3]),
    .Q(\c1/lfsr [4])
  );
  FD   \c1/lfsr_3  (
    .C(clock_50MHz),
    .D(\c1/lfsr [2]),
    .Q(\c1/lfsr [3])
  );
  FD   \c1/lfsr_2  (
    .C(clock_50MHz),
    .D(\c1/lfsr [1]),
    .Q(\c1/lfsr [2])
  );
  FD   \c1/lfsr_1  (
    .C(clock_50MHz),
    .D(\c1/lfsr_not0001 ),
    .Q(\c1/lfsr [1])
  );
  FDRE   \kbd/rptr_2  (
    .C(clock_50MHz),
    .CE(\kbd/rptr_and0001 ),
    .D(\kbd/Result<2>1_2293 ),
    .R(\kbd/rptr_and0000 ),
    .Q(\kbd/rptr [2])
  );
  FDRE   \kbd/rptr_1  (
    .C(clock_50MHz),
    .CE(\kbd/rptr_and0001 ),
    .D(\kbd/Result<1>1_2291 ),
    .R(\kbd/rptr_and0000 ),
    .Q(\kbd/rptr [1])
  );
  FDRE   \kbd/rptr_0  (
    .C(clock_50MHz),
    .CE(\kbd/rptr_and0001 ),
    .D(\kbd/Result<0>1 ),
    .R(\kbd/rptr_and0000 ),
    .Q(\kbd/rptr [0])
  );
  FDRE   \kbd/wptr_2  (
    .C(clock_50MHz),
    .CE(\kbd/wptr_not0001 ),
    .D(\kbd/Result [2]),
    .R(reset),
    .Q(\kbd/wptr [2])
  );
  FDRE   \kbd/wptr_1  (
    .C(clock_50MHz),
    .CE(\kbd/wptr_not0001 ),
    .D(\kbd/Result [1]),
    .R(reset),
    .Q(\kbd/wptr [1])
  );
  FDRE   \kbd/wptr_0  (
    .C(clock_50MHz),
    .CE(\kbd/wptr_not0001 ),
    .D(\kbd/Result [0]),
    .R(reset),
    .Q(\kbd/wptr [0])
  );
  RAM16X1D   \kbd/Mram_fifo8  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [8]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo8_SPO_UNCONNECTED ),
    .DPO(ps2out[7])
  );
  RAM16X1D   \kbd/Mram_fifo7  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [7]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo7_SPO_UNCONNECTED ),
    .DPO(ps2out[6])
  );
  RAM16X1D   \kbd/Mram_fifo6  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [6]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo6_SPO_UNCONNECTED ),
    .DPO(ps2out[5])
  );
  RAM16X1D   \kbd/Mram_fifo5  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [5]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo5_SPO_UNCONNECTED ),
    .DPO(ps2out[4])
  );
  RAM16X1D   \kbd/Mram_fifo4  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [4]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo4_SPO_UNCONNECTED ),
    .DPO(ps2out[3])
  );
  RAM16X1D   \kbd/Mram_fifo3  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [3]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo3_SPO_UNCONNECTED ),
    .DPO(ps2out[2])
  );
  RAM16X1D   \kbd/Mram_fifo2  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [2]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo2_SPO_UNCONNECTED ),
    .DPO(ps2out[1])
  );
  RAM16X1D   \kbd/Mram_fifo1  (
    .A0(\kbd/wptr [0]),
    .A1(\kbd/wptr [1]),
    .A2(\kbd/wptr [2]),
    .A3(analyzer1_data_0_OBUF_547),
    .D(\kbd/shift [1]),
    .DPRA0(\kbd/rptr [0]),
    .DPRA1(\kbd/rptr [1]),
    .DPRA2(\kbd/rptr [2]),
    .DPRA3(analyzer1_data_0_OBUF_547),
    .WCLK(clock_50MHz),
    .WE(\kbd/_and0000_0 ),
    .SPO(\NLW_kbd/Mram_fifo1_SPO_UNCONNECTED ),
    .DPO(ps2out[0])
  );
  FDE   \kbd/shift_9  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(keyboard_data_IBUF_2344),
    .Q(\kbd/shift [9])
  );
  FDE   \kbd/shift_8  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [9]),
    .Q(\kbd/shift [8])
  );
  FDE   \kbd/shift_7  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [8]),
    .Q(\kbd/shift [7])
  );
  FDE   \kbd/shift_6  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [7]),
    .Q(\kbd/shift [6])
  );
  FDE   \kbd/shift_5  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [6]),
    .Q(\kbd/shift [5])
  );
  FDE   \kbd/shift_4  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [5]),
    .Q(\kbd/shift [4])
  );
  FDE   \kbd/shift_3  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [4]),
    .Q(\kbd/shift [3])
  );
  FDE   \kbd/shift_2  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [3]),
    .Q(\kbd/shift [2])
  );
  FDE   \kbd/shift_1  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [2]),
    .Q(\kbd/shift [1])
  );
  FDE   \kbd/shift_0  (
    .C(clock_50MHz),
    .CE(\kbd/shift_not0001 ),
    .D(\kbd/shift [1]),
    .Q(\kbd/shift [0])
  );
  FDRE   \kbd/timeout  (
    .C(clock_50MHz),
    .CE(\kbd/timeout_not0001 ),
    .D(\kbd/timeout_mux0000 ),
    .R(reset),
    .Q(\kbd/timeout_2331 )
  );
  FDRE   \kbd/fifo_overflow  (
    .C(clock_50MHz),
    .CE(\kbd/wptr_not0001 ),
    .D(\kbd/fifo_overflow_or0001 ),
    .R(\kbd/fifo_overflow_or0000 ),
    .Q(\kbd/fifo_overflow_2307 )
  );
  FDRE   \kbd/count_3  (
    .C(clock_50MHz),
    .CE(\kbd/count_not0002 ),
    .D(\kbd/count_mux0000 [0]),
    .R(reset),
    .Q(\kbd/count [3])
  );
  FDRE   \kbd/count_2  (
    .C(clock_50MHz),
    .CE(\kbd/count_not0002 ),
    .D(\kbd/count_mux0000 [1]),
    .R(reset),
    .Q(\kbd/count [2])
  );
  FDRE   \kbd/count_1  (
    .C(clock_50MHz),
    .CE(\kbd/count_not0002 ),
    .D(\kbd/count_mux0000 [2]),
    .R(reset),
    .Q(\kbd/count [1])
  );
  FDRE   \kbd/count_0  (
    .C(clock_50MHz),
    .CE(\kbd/count_not0002 ),
    .D(\kbd/count_mux0000 [3]),
    .R(reset),
    .Q(\kbd/count [0])
  );
  FD   \kbd/ps2c_sync_2  (
    .C(clock_50MHz),
    .D(\kbd/ps2c_sync [1]),
    .Q(\kbd/ps2c_sync [2])
  );
  FD   \kbd/ps2c_sync_1  (
    .C(clock_50MHz),
    .D(\kbd/ps2c_sync [0]),
    .Q(\kbd/ps2c_sync [1])
  );
  FD   \kbd/ps2c_sync_0  (
    .C(clock_50MHz),
    .D(keyboard_clock_IBUF_2342),
    .Q(\kbd/ps2c_sync [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hexdisp1/Mmux_nibble_3  (
    .I0(\hexdisp1/char_index<1>1_2116 ),
    .I1(\hexdisp1/char_index [2]),
    .O(\hexdisp1/Mmux_nibble_3_2037 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hexdisp1/Mmux_nibble_9  (
    .I0(\hexdisp1/char_index [0]),
    .I1(ma[8]),
    .I2(ma[12]),
    .O(\hexdisp1/Mmux_nibble_9_2049 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \hexdisp1/Mmux_nibble_4  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/Mmux_nibble_8_2045 ),
    .I2(\hexdisp1/char_index [2]),
    .I3(\hexdisp1/Mmux_nibble_9_2049 ),
    .O(\hexdisp1/Mmux_nibble_4_2041 )
  );
  MUXF5   \hexdisp1/Mmux_nibble_2_f5  (
    .I0(\hexdisp1/Mmux_nibble_4_2041 ),
    .I1(\hexdisp1/Mmux_nibble_3_2037 ),
    .S(\hexdisp1/char_index [3]),
    .O(\hexdisp1/nibble [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hexdisp1/Mmux_nibble_31  (
    .I0(\hexdisp1/char_index<1>2 ),
    .I1(\hexdisp1/char_index [2]),
    .O(\hexdisp1/Mmux_nibble_31_2038 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hexdisp1/Mmux_nibble_91  (
    .I0(\hexdisp1/char_index [0]),
    .I1(ma[9]),
    .I2(ma[13]),
    .O(\hexdisp1/Mmux_nibble_91_2050 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \hexdisp1/Mmux_nibble_41  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/Mmux_nibble_81_2046 ),
    .I2(\hexdisp1/char_index [2]),
    .I3(\hexdisp1/Mmux_nibble_91_2050 ),
    .O(\hexdisp1/Mmux_nibble_41_2042 )
  );
  MUXF5   \hexdisp1/Mmux_nibble_2_f5_0  (
    .I0(\hexdisp1/Mmux_nibble_41_2042 ),
    .I1(\hexdisp1/Mmux_nibble_31_2038 ),
    .S(\hexdisp1/char_index [3]),
    .O(\hexdisp1/nibble [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hexdisp1/Mmux_nibble_32  (
    .I0(\hexdisp1/char_index<1>3 ),
    .I1(\hexdisp1/char_index [2]),
    .O(\hexdisp1/Mmux_nibble_32_2039 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hexdisp1/Mmux_nibble_82  (
    .I0(\hexdisp1/char_index [0]),
    .I1(ma[2]),
    .I2(ma[6]),
    .O(\hexdisp1/Mmux_nibble_82_2047 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hexdisp1/Mmux_nibble_92  (
    .I0(\hexdisp1/char_index [0]),
    .I1(ma[10]),
    .I2(ma[14]),
    .O(\hexdisp1/Mmux_nibble_92_2051 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \hexdisp1/Mmux_nibble_42  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/Mmux_nibble_82_2047 ),
    .I2(\hexdisp1/char_index [2]),
    .I3(\hexdisp1/Mmux_nibble_92_2051 ),
    .O(\hexdisp1/Mmux_nibble_42_2043 )
  );
  MUXF5   \hexdisp1/Mmux_nibble_2_f5_1  (
    .I0(\hexdisp1/Mmux_nibble_42_2043 ),
    .I1(\hexdisp1/Mmux_nibble_32_2039 ),
    .S(\hexdisp1/char_index [3]),
    .O(\hexdisp1/nibble [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hexdisp1/Mmux_nibble_33  (
    .I0(\hexdisp1/char_index<1>4 ),
    .I1(\hexdisp1/char_index [2]),
    .O(\hexdisp1/Mmux_nibble_33_2040 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hexdisp1/Mmux_nibble_83  (
    .I0(\hexdisp1/char_index [0]),
    .I1(ma[3]),
    .I2(ma[7]),
    .O(\hexdisp1/Mmux_nibble_83_2048 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hexdisp1/Mmux_nibble_93  (
    .I0(\hexdisp1/char_index [0]),
    .I1(ma[11]),
    .I2(ma[15]),
    .O(\hexdisp1/Mmux_nibble_93_2052 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \hexdisp1/Mmux_nibble_43  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/Mmux_nibble_83_2048 ),
    .I2(\hexdisp1/char_index [2]),
    .I3(\hexdisp1/Mmux_nibble_93_2052 ),
    .O(\hexdisp1/Mmux_nibble_43_2044 )
  );
  MUXF5   \hexdisp1/Mmux_nibble_2_f5_2  (
    .I0(\hexdisp1/Mmux_nibble_43_2044 ),
    .I1(\hexdisp1/Mmux_nibble_33_2040 ),
    .S(\hexdisp1/char_index [3]),
    .O(\hexdisp1/nibble [3])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<7>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [6]),
    .LI(\hexdisp1/Mcount_reset_count_lut [7]),
    .O(\hexdisp1/Result [7])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<6>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [5]),
    .LI(\hexdisp1/Mcount_reset_count_lut [6]),
    .O(\hexdisp1/Result [6])
  );
  MUXCY   \hexdisp1/Mcount_reset_count_cy<6>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [5]),
    .DI(analyzer4_clock_OBUF_583),
    .S(\hexdisp1/Mcount_reset_count_lut [6]),
    .O(\hexdisp1/Mcount_reset_count_cy [6])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<5>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [4]),
    .LI(\hexdisp1/Mcount_reset_count_lut [5]),
    .O(\hexdisp1/Result [5])
  );
  MUXCY   \hexdisp1/Mcount_reset_count_cy<5>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [4]),
    .DI(analyzer4_clock_OBUF_583),
    .S(\hexdisp1/Mcount_reset_count_lut [5]),
    .O(\hexdisp1/Mcount_reset_count_cy [5])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<4>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [3]),
    .LI(\hexdisp1/Mcount_reset_count_lut [4]),
    .O(\hexdisp1/Result<4>1_2110 )
  );
  MUXCY   \hexdisp1/Mcount_reset_count_cy<4>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [3]),
    .DI(analyzer4_clock_OBUF_583),
    .S(\hexdisp1/Mcount_reset_count_lut [4]),
    .O(\hexdisp1/Mcount_reset_count_cy [4])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<3>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [2]),
    .LI(\hexdisp1/Mcount_reset_count_lut [3]),
    .O(\hexdisp1/Result<3>1_2108 )
  );
  MUXCY   \hexdisp1/Mcount_reset_count_cy<3>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [2]),
    .DI(analyzer4_clock_OBUF_583),
    .S(\hexdisp1/Mcount_reset_count_lut [3]),
    .O(\hexdisp1/Mcount_reset_count_cy [3])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<2>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [1]),
    .LI(\hexdisp1/Mcount_reset_count_lut [2]),
    .O(\hexdisp1/Result<2>1 )
  );
  MUXCY   \hexdisp1/Mcount_reset_count_cy<2>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [1]),
    .DI(analyzer4_clock_OBUF_583),
    .S(\hexdisp1/Mcount_reset_count_lut [2]),
    .O(\hexdisp1/Mcount_reset_count_cy [2])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<1>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [0]),
    .LI(\hexdisp1/Mcount_reset_count_lut [1]),
    .O(\hexdisp1/Result<1>1 )
  );
  MUXCY   \hexdisp1/Mcount_reset_count_cy<1>  (
    .CI(\hexdisp1/Mcount_reset_count_cy [0]),
    .DI(analyzer4_clock_OBUF_583),
    .S(\hexdisp1/Mcount_reset_count_lut [1]),
    .O(\hexdisp1/Mcount_reset_count_cy [1])
  );
  XORCY   \hexdisp1/Mcount_reset_count_xor<0>  (
    .CI(analyzer4_clock_OBUF_583),
    .LI(\hexdisp1/Mcount_reset_count_cy<0>_rt_1993 ),
    .O(\hexdisp1/Result<0>1 )
  );
  MUXCY   \hexdisp1/Mcount_reset_count_cy<0>  (
    .CI(analyzer4_clock_OBUF_583),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\hexdisp1/Mcount_reset_count_cy<0>_rt_1993 ),
    .O(\hexdisp1/Mcount_reset_count_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_12  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/Mrom_dots3 ),
    .I2(\hexdisp1/Mrom_dots11 ),
    .O(\hexdisp1/Mmux__varindex0000_12_2014 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_10_f5  (
    .I0(\hexdisp1/Mmux__varindex0000_12_2014 ),
    .I1(\hexdisp1/Mmux__varindex0000_11_2011 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/Mmux__varindex0000_10_f5_2009 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_13  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/Mrom_dots2 ),
    .I2(\hexdisp1/Mrom_dots10 ),
    .O(\hexdisp1/Mmux__varindex0000_13_2019 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_11_f5  (
    .I0(\hexdisp1/Mmux__varindex0000_13_2019 ),
    .I1(\hexdisp1/Mmux__varindex0000_121_2015 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/Mmux__varindex0000_11_f5_2012 )
  );
  MUXF6   \hexdisp1/Mmux__varindex0000_9_f6  (
    .I0(\hexdisp1/Mmux__varindex0000_11_f5_2012 ),
    .I1(\hexdisp1/Mmux__varindex0000_10_f5_2009 ),
    .S(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/Mmux__varindex0000_9_f6_2036 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_131  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/Mrom_dots1 ),
    .I2(\hexdisp1/Mrom_dots12_2057 ),
    .O(\hexdisp1/Mmux__varindex0000_131_2020 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_11_f5_0  (
    .I0(\hexdisp1/Mmux__varindex0000_131_2020 ),
    .I1(\hexdisp1/Mmux__varindex0000_122_2016 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/Mmux__varindex0000_11_f51 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_14  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/Mrom_dots ),
    .I2(\hexdisp1/Mrom_dots8 ),
    .O(\hexdisp1/Mmux__varindex0000_14_2023 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_12_f5  (
    .I0(\hexdisp1/Mmux__varindex0000_14_2023 ),
    .I1(\hexdisp1/Mmux__varindex0000_132_2021 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/Mmux__varindex0000_12_f5_2017 )
  );
  MUXF6   \hexdisp1/Mmux__varindex0000_10_f6  (
    .I0(\hexdisp1/Mmux__varindex0000_12_f5_2017 ),
    .I1(\hexdisp1/Mmux__varindex0000_11_f51 ),
    .S(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/Mmux__varindex0000_10_f6_2010 )
  );
  MUXF7   \hexdisp1/Mmux__varindex0000_8_f7  (
    .I0(\hexdisp1/Mmux__varindex0000_10_f6_2010 ),
    .I1(\hexdisp1/Mmux__varindex0000_9_f6_2036 ),
    .S(\hexdisp1/dot_index [1]),
    .O(\hexdisp1/Mmux__varindex0000_8_f7_2033 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_15  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/Mrom_dots5 ),
    .I2(\hexdisp1/Mrom_dots13 ),
    .O(\hexdisp1/Mmux__varindex0000_15_2026 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_13_f5  (
    .I0(\hexdisp1/Mmux__varindex0000_15_2026 ),
    .I1(\hexdisp1/Mmux__varindex0000_141_2024 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/Mmux__varindex0000_13_f5_2022 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_16  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/Mrom_dots4 ),
    .I2(\hexdisp1/Mrom_dots12_2057 ),
    .O(\hexdisp1/Mmux__varindex0000_16_2028 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_14_f5  (
    .I0(\hexdisp1/Mmux__varindex0000_16_2028 ),
    .I1(\hexdisp1/Mmux__varindex0000_151_2027 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/Mmux__varindex0000_14_f5_2025 )
  );
  MUXF6   \hexdisp1/Mmux__varindex0000_12_f6  (
    .I0(\hexdisp1/Mmux__varindex0000_14_f5_2025 ),
    .I1(\hexdisp1/Mmux__varindex0000_13_f5_2022 ),
    .S(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/Mmux__varindex0000_12_f6_2018 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hexdisp1/Mmux__varindex0000_8  (
    .I0(\hexdisp1/Mrom_dots38 ),
    .I1(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/Mmux__varindex0000_8_2031 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_9  (
    .I0(\hexdisp1/dot_index [0]),
    .I1(\hexdisp1/Mrom_dots36 ),
    .I2(\hexdisp1/Mrom_dots37 ),
    .O(\hexdisp1/Mmux__varindex0000_9_2034 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_7_f5  (
    .I0(\hexdisp1/Mmux__varindex0000_9_2034 ),
    .I1(\hexdisp1/Mmux__varindex0000_8_2031 ),
    .S(\hexdisp1/dot_index [1]),
    .O(\hexdisp1/Mmux__varindex0000_7_f5_2030 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_91  (
    .I0(\hexdisp1/dot_index [0]),
    .I1(\hexdisp1/Mrom_dots34 ),
    .I2(\hexdisp1/Mrom_dots35 ),
    .O(\hexdisp1/Mmux__varindex0000_91_2035 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_10  (
    .I0(\hexdisp1/dot_index [0]),
    .I1(\hexdisp1/Mrom_dots32 ),
    .I2(\hexdisp1/Mrom_dots33 ),
    .O(\hexdisp1/Mmux__varindex0000_10_2008 )
  );
  MUXF5   \hexdisp1/Mmux__varindex0000_8_f5  (
    .I0(\hexdisp1/Mmux__varindex0000_10_2008 ),
    .I1(\hexdisp1/Mmux__varindex0000_91_2035 ),
    .S(\hexdisp1/dot_index [1]),
    .O(\hexdisp1/Mmux__varindex0000_8_f5_2032 )
  );
  MUXF6   \hexdisp1/Mmux__varindex0000_6_f6  (
    .I0(\hexdisp1/Mmux__varindex0000_8_f5_2032 ),
    .I1(\hexdisp1/Mmux__varindex0000_7_f5_2030 ),
    .S(\hexdisp1/dot_index [2]),
    .O(\hexdisp1/Mmux__varindex0000_6_f6_2029 )
  );
  FDR   \hexdisp1/reset_count_7  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [7]),
    .R(\hexdisp1/Mcount_reset_count_val ),
    .Q(\hexdisp1/reset_count [7])
  );
  FDRS   \hexdisp1/reset_count_6  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [6]),
    .R(\hexdisp1/reset_count_not0001_inv ),
    .S(reset),
    .Q(\hexdisp1/reset_count [6])
  );
  FDRS   \hexdisp1/reset_count_5  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [5]),
    .R(\hexdisp1/reset_count_not0001_inv ),
    .S(reset),
    .Q(\hexdisp1/reset_count [5])
  );
  FDR   \hexdisp1/reset_count_4  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result<4>1_2110 ),
    .R(\hexdisp1/Mcount_reset_count_val ),
    .Q(\hexdisp1/reset_count [4])
  );
  FDR   \hexdisp1/reset_count_3  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result<3>1_2108 ),
    .R(\hexdisp1/Mcount_reset_count_val ),
    .Q(\hexdisp1/reset_count [3])
  );
  FDRS   \hexdisp1/reset_count_2  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result<2>1 ),
    .R(\hexdisp1/reset_count_not0001_inv ),
    .S(reset),
    .Q(\hexdisp1/reset_count [2])
  );
  FDR   \hexdisp1/reset_count_1  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result<1>1 ),
    .R(\hexdisp1/Mcount_reset_count_val ),
    .Q(\hexdisp1/reset_count [1])
  );
  FDR   \hexdisp1/reset_count_0  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result<0>1 ),
    .R(\hexdisp1/Mcount_reset_count_val ),
    .Q(\hexdisp1/reset_count [0])
  );
  FDR   \hexdisp1/count_4  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [4]),
    .R(\hexdisp1/count_or0000 ),
    .Q(\hexdisp1/count [4])
  );
  FDR   \hexdisp1/count_3  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [3]),
    .R(\hexdisp1/count_or0000 ),
    .Q(\hexdisp1/count [3])
  );
  FDR   \hexdisp1/count_2  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [2]),
    .R(\hexdisp1/count_or0000 ),
    .Q(\hexdisp1/count [2])
  );
  FDR   \hexdisp1/count_1  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [1]),
    .R(\hexdisp1/count_or0000 ),
    .Q(\hexdisp1/count [1])
  );
  FDR   \hexdisp1/count_0  (
    .C(clock_50MHz),
    .D(\hexdisp1/Result [0]),
    .R(\hexdisp1/count_or0000 ),
    .Q(\hexdisp1/count [0])
  );
  FDRE   \hexdisp1/control_31  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_302_2141 ),
    .R(\hexdisp1/dreset ),
    .Q(\hexdisp1/control[31] )
  );
  FDRE   \hexdisp1/control_23  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_222_2137 ),
    .R(\hexdisp1/dreset ),
    .Q(\hexdisp1/control[23] )
  );
  FDRE   \hexdisp1/control_15  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_142_2133 ),
    .R(\hexdisp1/dreset ),
    .Q(\hexdisp1/control[15] )
  );
  FDRE   \hexdisp1/control_7  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_62_2145 ),
    .R(\hexdisp1/dreset ),
    .Q(\hexdisp1/control[7] )
  );
  FDE   \hexdisp1/char_index_3  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/char_index_mux0000 [0]),
    .Q(\hexdisp1/char_index [3])
  );
  FDE   \hexdisp1/char_index_2  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/char_index_mux0000 [1]),
    .Q(\hexdisp1/char_index [2])
  );
  FDE   \hexdisp1/char_index_1  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/char_index_mux0000 [2]),
    .Q(\hexdisp1/char_index [1])
  );
  FDE   \hexdisp1/char_index_0  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/char_index_mux0000 [3]),
    .Q(\hexdisp1/char_index [0])
  );
  FDE   \hexdisp1/disp_reset_b  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/disp_reset_b_mux0000 ),
    .Q(\hexdisp1/disp_reset_b_2166 )
  );
  FDE   \hexdisp1/disp_ce_b  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/disp_ce_b_mux0000 ),
    .Q(\hexdisp1/disp_ce_b_2154 )
  );
  FDE   \hexdisp1/disp_rs  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/disp_rs_mux0000 ),
    .Q(\hexdisp1/disp_rs_2168 )
  );
  FDE   \hexdisp1/disp_data_out  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/dreset_inv ),
    .D(\hexdisp1/disp_data_out_mux0000 ),
    .Q(\hexdisp1/disp_data_out_2156 )
  );
  FDR   \hexdisp1/dot_index_8  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000 [1]),
    .R(\hexdisp1/dreset ),
    .Q(\hexdisp1/dot_index [8])
  );
  FDRE   \hexdisp1/clock  (
    .C(clock_50MHz),
    .CE(\hexdisp1/clock_cmp_eq0000 ),
    .D(disp_clock_OBUF_1663),
    .R(reset),
    .Q(\hexdisp1/clock1 )
  );
  FDR   \cpu/ctl/mwrite  (
    .C(clock_50MHz),
    .D(\cpu/ctl/mwrite_next_norst ),
    .R(\cpu/ctl/msel_next_inv ),
    .Q(\cpu/ctl/mwrite_990 )
  );
  FD   \cpu/ctl/msel  (
    .C(clock_50MHz),
    .D(\cpu/msel_next ),
    .Q(\cpu/ctl/msel_986 )
  );
  XORCY   \cpu/Madd_addsub_xor<31>  (
    .CI(\cpu/Madd_addsub_cy [30]),
    .LI(\cpu/Madd_addsub_lut [31]),
    .O(\cpu/addsub [31])
  );
  XORCY   \cpu/Madd_addsub_xor<30>  (
    .CI(\cpu/Madd_addsub_cy [29]),
    .LI(\cpu/Madd_addsub_lut [30]),
    .O(\cpu/addsub [30])
  );
  MUXCY   \cpu/Madd_addsub_cy<30>  (
    .CI(\cpu/Madd_addsub_cy [29]),
    .DI(\cpu/a [30]),
    .S(\cpu/Madd_addsub_lut [30]),
    .O(\cpu/Madd_addsub_cy [30])
  );
  XORCY   \cpu/Madd_addsub_xor<29>  (
    .CI(\cpu/Madd_addsub_cy [28]),
    .LI(\cpu/Madd_addsub_lut [29]),
    .O(\cpu/addsub [29])
  );
  MUXCY   \cpu/Madd_addsub_cy<29>  (
    .CI(\cpu/Madd_addsub_cy [28]),
    .DI(\cpu/a [29]),
    .S(\cpu/Madd_addsub_lut [29]),
    .O(\cpu/Madd_addsub_cy [29])
  );
  XORCY   \cpu/Madd_addsub_xor<28>  (
    .CI(\cpu/Madd_addsub_cy [27]),
    .LI(\cpu/Madd_addsub_lut [28]),
    .O(\cpu/addsub [28])
  );
  MUXCY   \cpu/Madd_addsub_cy<28>  (
    .CI(\cpu/Madd_addsub_cy [27]),
    .DI(\cpu/a [28]),
    .S(\cpu/Madd_addsub_lut [28]),
    .O(\cpu/Madd_addsub_cy [28])
  );
  XORCY   \cpu/Madd_addsub_xor<27>  (
    .CI(\cpu/Madd_addsub_cy [26]),
    .LI(\cpu/Madd_addsub_lut [27]),
    .O(\cpu/addsub [27])
  );
  MUXCY   \cpu/Madd_addsub_cy<27>  (
    .CI(\cpu/Madd_addsub_cy [26]),
    .DI(\cpu/a [27]),
    .S(\cpu/Madd_addsub_lut [27]),
    .O(\cpu/Madd_addsub_cy [27])
  );
  XORCY   \cpu/Madd_addsub_xor<26>  (
    .CI(\cpu/Madd_addsub_cy [25]),
    .LI(\cpu/Madd_addsub_lut [26]),
    .O(\cpu/addsub [26])
  );
  MUXCY   \cpu/Madd_addsub_cy<26>  (
    .CI(\cpu/Madd_addsub_cy [25]),
    .DI(\cpu/a [26]),
    .S(\cpu/Madd_addsub_lut [26]),
    .O(\cpu/Madd_addsub_cy [26])
  );
  XORCY   \cpu/Madd_addsub_xor<25>  (
    .CI(\cpu/Madd_addsub_cy [24]),
    .LI(\cpu/Madd_addsub_lut [25]),
    .O(\cpu/addsub [25])
  );
  MUXCY   \cpu/Madd_addsub_cy<25>  (
    .CI(\cpu/Madd_addsub_cy [24]),
    .DI(\cpu/a [25]),
    .S(\cpu/Madd_addsub_lut [25]),
    .O(\cpu/Madd_addsub_cy [25])
  );
  XORCY   \cpu/Madd_addsub_xor<24>  (
    .CI(\cpu/Madd_addsub_cy [23]),
    .LI(\cpu/Madd_addsub_lut [24]),
    .O(\cpu/addsub [24])
  );
  MUXCY   \cpu/Madd_addsub_cy<24>  (
    .CI(\cpu/Madd_addsub_cy [23]),
    .DI(\cpu/a [24]),
    .S(\cpu/Madd_addsub_lut [24]),
    .O(\cpu/Madd_addsub_cy [24])
  );
  XORCY   \cpu/Madd_addsub_xor<23>  (
    .CI(\cpu/Madd_addsub_cy [22]),
    .LI(\cpu/Madd_addsub_lut [23]),
    .O(\cpu/addsub [23])
  );
  MUXCY   \cpu/Madd_addsub_cy<23>  (
    .CI(\cpu/Madd_addsub_cy [22]),
    .DI(\cpu/a [23]),
    .S(\cpu/Madd_addsub_lut [23]),
    .O(\cpu/Madd_addsub_cy [23])
  );
  XORCY   \cpu/Madd_addsub_xor<22>  (
    .CI(\cpu/Madd_addsub_cy [21]),
    .LI(\cpu/Madd_addsub_lut [22]),
    .O(\cpu/addsub [22])
  );
  MUXCY   \cpu/Madd_addsub_cy<22>  (
    .CI(\cpu/Madd_addsub_cy [21]),
    .DI(\cpu/a [22]),
    .S(\cpu/Madd_addsub_lut [22]),
    .O(\cpu/Madd_addsub_cy [22])
  );
  XORCY   \cpu/Madd_addsub_xor<21>  (
    .CI(\cpu/Madd_addsub_cy [20]),
    .LI(\cpu/Madd_addsub_lut [21]),
    .O(\cpu/addsub [21])
  );
  MUXCY   \cpu/Madd_addsub_cy<21>  (
    .CI(\cpu/Madd_addsub_cy [20]),
    .DI(\cpu/a [21]),
    .S(\cpu/Madd_addsub_lut [21]),
    .O(\cpu/Madd_addsub_cy [21])
  );
  XORCY   \cpu/Madd_addsub_xor<20>  (
    .CI(\cpu/Madd_addsub_cy [19]),
    .LI(\cpu/Madd_addsub_lut [20]),
    .O(\cpu/addsub [20])
  );
  MUXCY   \cpu/Madd_addsub_cy<20>  (
    .CI(\cpu/Madd_addsub_cy [19]),
    .DI(\cpu/a [20]),
    .S(\cpu/Madd_addsub_lut [20]),
    .O(\cpu/Madd_addsub_cy [20])
  );
  XORCY   \cpu/Madd_addsub_xor<19>  (
    .CI(\cpu/Madd_addsub_cy [18]),
    .LI(\cpu/Madd_addsub_lut [19]),
    .O(\cpu/addsub [19])
  );
  MUXCY   \cpu/Madd_addsub_cy<19>  (
    .CI(\cpu/Madd_addsub_cy [18]),
    .DI(\cpu/a [19]),
    .S(\cpu/Madd_addsub_lut [19]),
    .O(\cpu/Madd_addsub_cy [19])
  );
  XORCY   \cpu/Madd_addsub_xor<18>  (
    .CI(\cpu/Madd_addsub_cy [17]),
    .LI(\cpu/Madd_addsub_lut [18]),
    .O(\cpu/addsub [18])
  );
  MUXCY   \cpu/Madd_addsub_cy<18>  (
    .CI(\cpu/Madd_addsub_cy [17]),
    .DI(\cpu/a [18]),
    .S(\cpu/Madd_addsub_lut [18]),
    .O(\cpu/Madd_addsub_cy [18])
  );
  XORCY   \cpu/Madd_addsub_xor<17>  (
    .CI(\cpu/Madd_addsub_cy [16]),
    .LI(\cpu/Madd_addsub_lut [17]),
    .O(\cpu/addsub [17])
  );
  MUXCY   \cpu/Madd_addsub_cy<17>  (
    .CI(\cpu/Madd_addsub_cy [16]),
    .DI(\cpu/a [17]),
    .S(\cpu/Madd_addsub_lut [17]),
    .O(\cpu/Madd_addsub_cy [17])
  );
  XORCY   \cpu/Madd_addsub_xor<16>  (
    .CI(\cpu/Madd_addsub_cy [15]),
    .LI(\cpu/Madd_addsub_lut [16]),
    .O(\cpu/addsub [16])
  );
  MUXCY   \cpu/Madd_addsub_cy<16>  (
    .CI(\cpu/Madd_addsub_cy [15]),
    .DI(\cpu/a [16]),
    .S(\cpu/Madd_addsub_lut [16]),
    .O(\cpu/Madd_addsub_cy [16])
  );
  XORCY   \cpu/Madd_addsub_xor<15>  (
    .CI(\cpu/Madd_addsub_cy [14]),
    .LI(\cpu/Madd_addsub_lut [15]),
    .O(\cpu/addsub [15])
  );
  MUXCY   \cpu/Madd_addsub_cy<15>  (
    .CI(\cpu/Madd_addsub_cy [14]),
    .DI(\cpu/a [15]),
    .S(\cpu/Madd_addsub_lut [15]),
    .O(\cpu/Madd_addsub_cy [15])
  );
  XORCY   \cpu/Madd_addsub_xor<14>  (
    .CI(\cpu/Madd_addsub_cy [13]),
    .LI(\cpu/Madd_addsub_lut [14]),
    .O(\cpu/addsub [14])
  );
  MUXCY   \cpu/Madd_addsub_cy<14>  (
    .CI(\cpu/Madd_addsub_cy [13]),
    .DI(\cpu/a [14]),
    .S(\cpu/Madd_addsub_lut [14]),
    .O(\cpu/Madd_addsub_cy [14])
  );
  XORCY   \cpu/Madd_addsub_xor<13>  (
    .CI(\cpu/Madd_addsub_cy [12]),
    .LI(\cpu/Madd_addsub_lut [13]),
    .O(\cpu/addsub [13])
  );
  MUXCY   \cpu/Madd_addsub_cy<13>  (
    .CI(\cpu/Madd_addsub_cy [12]),
    .DI(\cpu/a [13]),
    .S(\cpu/Madd_addsub_lut [13]),
    .O(\cpu/Madd_addsub_cy [13])
  );
  XORCY   \cpu/Madd_addsub_xor<12>  (
    .CI(\cpu/Madd_addsub_cy [11]),
    .LI(\cpu/Madd_addsub_lut [12]),
    .O(\cpu/addsub [12])
  );
  MUXCY   \cpu/Madd_addsub_cy<12>  (
    .CI(\cpu/Madd_addsub_cy [11]),
    .DI(\cpu/a [12]),
    .S(\cpu/Madd_addsub_lut [12]),
    .O(\cpu/Madd_addsub_cy [12])
  );
  XORCY   \cpu/Madd_addsub_xor<11>  (
    .CI(\cpu/Madd_addsub_cy [10]),
    .LI(\cpu/Madd_addsub_lut [11]),
    .O(\cpu/addsub [11])
  );
  MUXCY   \cpu/Madd_addsub_cy<11>  (
    .CI(\cpu/Madd_addsub_cy [10]),
    .DI(\cpu/a [11]),
    .S(\cpu/Madd_addsub_lut [11]),
    .O(\cpu/Madd_addsub_cy [11])
  );
  XORCY   \cpu/Madd_addsub_xor<10>  (
    .CI(\cpu/Madd_addsub_cy [9]),
    .LI(\cpu/Madd_addsub_lut [10]),
    .O(\cpu/addsub [10])
  );
  MUXCY   \cpu/Madd_addsub_cy<10>  (
    .CI(\cpu/Madd_addsub_cy [9]),
    .DI(\cpu/a [10]),
    .S(\cpu/Madd_addsub_lut [10]),
    .O(\cpu/Madd_addsub_cy [10])
  );
  XORCY   \cpu/Madd_addsub_xor<9>  (
    .CI(\cpu/Madd_addsub_cy [8]),
    .LI(\cpu/Madd_addsub_lut [9]),
    .O(\cpu/addsub [9])
  );
  MUXCY   \cpu/Madd_addsub_cy<9>  (
    .CI(\cpu/Madd_addsub_cy [8]),
    .DI(\cpu/a [9]),
    .S(\cpu/Madd_addsub_lut [9]),
    .O(\cpu/Madd_addsub_cy [9])
  );
  XORCY   \cpu/Madd_addsub_xor<8>  (
    .CI(\cpu/Madd_addsub_cy [7]),
    .LI(\cpu/Madd_addsub_lut [8]),
    .O(\cpu/addsub [8])
  );
  MUXCY   \cpu/Madd_addsub_cy<8>  (
    .CI(\cpu/Madd_addsub_cy [7]),
    .DI(\cpu/a [8]),
    .S(\cpu/Madd_addsub_lut [8]),
    .O(\cpu/Madd_addsub_cy [8])
  );
  XORCY   \cpu/Madd_addsub_xor<7>  (
    .CI(\cpu/Madd_addsub_cy [6]),
    .LI(\cpu/Madd_addsub_lut [7]),
    .O(\cpu/addsub [7])
  );
  MUXCY   \cpu/Madd_addsub_cy<7>  (
    .CI(\cpu/Madd_addsub_cy [6]),
    .DI(\cpu/a [7]),
    .S(\cpu/Madd_addsub_lut [7]),
    .O(\cpu/Madd_addsub_cy [7])
  );
  XORCY   \cpu/Madd_addsub_xor<6>  (
    .CI(\cpu/Madd_addsub_cy [5]),
    .LI(\cpu/Madd_addsub_lut [6]),
    .O(\cpu/addsub [6])
  );
  MUXCY   \cpu/Madd_addsub_cy<6>  (
    .CI(\cpu/Madd_addsub_cy [5]),
    .DI(\cpu/a [6]),
    .S(\cpu/Madd_addsub_lut [6]),
    .O(\cpu/Madd_addsub_cy [6])
  );
  XORCY   \cpu/Madd_addsub_xor<5>  (
    .CI(\cpu/Madd_addsub_cy [4]),
    .LI(\cpu/Madd_addsub_lut [5]),
    .O(\cpu/addsub [5])
  );
  MUXCY   \cpu/Madd_addsub_cy<5>  (
    .CI(\cpu/Madd_addsub_cy [4]),
    .DI(\cpu/a [5]),
    .S(\cpu/Madd_addsub_lut [5]),
    .O(\cpu/Madd_addsub_cy [5])
  );
  XORCY   \cpu/Madd_addsub_xor<4>  (
    .CI(\cpu/Madd_addsub_cy [3]),
    .LI(\cpu/Madd_addsub_lut [4]),
    .O(\cpu/addsub [4])
  );
  MUXCY   \cpu/Madd_addsub_cy<4>  (
    .CI(\cpu/Madd_addsub_cy [3]),
    .DI(\cpu/a [4]),
    .S(\cpu/Madd_addsub_lut [4]),
    .O(\cpu/Madd_addsub_cy [4])
  );
  XORCY   \cpu/Madd_addsub_xor<3>  (
    .CI(\cpu/Madd_addsub_cy [2]),
    .LI(\cpu/Madd_addsub_lut [3]),
    .O(\cpu/addsub [3])
  );
  MUXCY   \cpu/Madd_addsub_cy<3>  (
    .CI(\cpu/Madd_addsub_cy [2]),
    .DI(\cpu/a [3]),
    .S(\cpu/Madd_addsub_lut [3]),
    .O(\cpu/Madd_addsub_cy [3])
  );
  XORCY   \cpu/Madd_addsub_xor<2>  (
    .CI(\cpu/Madd_addsub_cy [1]),
    .LI(\cpu/Madd_addsub_lut [2]),
    .O(\cpu/addsub [2])
  );
  MUXCY   \cpu/Madd_addsub_cy<2>  (
    .CI(\cpu/Madd_addsub_cy [1]),
    .DI(\cpu/a [2]),
    .S(\cpu/Madd_addsub_lut [2]),
    .O(\cpu/Madd_addsub_cy [2])
  );
  XORCY   \cpu/Madd_addsub_xor<1>  (
    .CI(\cpu/Madd_addsub_cy [0]),
    .LI(\cpu/Madd_addsub_lut [1]),
    .O(\cpu/addsub [1])
  );
  MUXCY   \cpu/Madd_addsub_cy<1>  (
    .CI(\cpu/Madd_addsub_cy [0]),
    .DI(\cpu/a [1]),
    .S(\cpu/Madd_addsub_lut [1]),
    .O(\cpu/Madd_addsub_cy [1])
  );
  XORCY   \cpu/Madd_addsub_xor<0>  (
    .CI(\cpu/addsub_op ),
    .LI(\cpu/Madd_addsub_lut [0]),
    .O(\cpu/addsub [0])
  );
  MUXCY   \cpu/Madd_addsub_cy<0>  (
    .CI(\cpu/addsub_op ),
    .DI(\cpu/a [0]),
    .S(\cpu/Madd_addsub_lut [0]),
    .O(\cpu/Madd_addsub_cy [0])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<30>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [29]),
    .LI(\cpu/Madd_npc_inc_Madd_xor<30>_rt_756 ),
    .O(\cpu/npc_inc [30])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<29>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [28]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<29>_rt_739 ),
    .O(\cpu/npc_inc [29])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<29>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [28]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<29>_rt_739 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [29])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<28>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [27]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<28>_rt_737 ),
    .O(\cpu/npc_inc [28])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<28>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [27]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<28>_rt_737 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [28])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<27>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [26]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<27>_rt_735 ),
    .O(\cpu/npc_inc [27])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<27>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [26]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<27>_rt_735 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [27])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<26>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [25]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<26>_rt_733 ),
    .O(\cpu/npc_inc [26])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<26>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [25]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<26>_rt_733 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [26])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<25>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [24]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<25>_rt_731 ),
    .O(\cpu/npc_inc [25])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<25>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [24]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<25>_rt_731 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [25])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<24>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [23]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<24>_rt_729 ),
    .O(\cpu/npc_inc [24])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<24>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [23]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<24>_rt_729 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [24])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<23>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [22]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<23>_rt_727 ),
    .O(\cpu/npc_inc [23])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<23>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [22]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<23>_rt_727 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [23])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<22>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [21]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<22>_rt_725 ),
    .O(\cpu/npc_inc [22])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<22>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [21]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<22>_rt_725 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [22])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<21>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [20]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<21>_rt_723 ),
    .O(\cpu/npc_inc [21])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<21>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [20]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<21>_rt_723 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [21])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<20>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [19]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<20>_rt_721 ),
    .O(\cpu/npc_inc [20])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<20>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [19]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<20>_rt_721 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [20])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<19>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [18]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<19>_rt_719 ),
    .O(\cpu/npc_inc [19])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<19>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [18]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<19>_rt_719 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [19])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<18>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [17]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<18>_rt_717 ),
    .O(\cpu/npc_inc [18])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<18>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [17]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<18>_rt_717 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [18])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<17>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [16]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<17>_rt_715 ),
    .O(\cpu/npc_inc [17])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<17>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [16]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<17>_rt_715 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [17])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<16>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [15]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<16>_rt_713 ),
    .O(\cpu/npc_inc [16])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<16>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [15]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<16>_rt_713 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [16])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<15>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [14]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<15>_rt_711 ),
    .O(\cpu/npc_inc [15])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<15>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [14]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<15>_rt_711 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [15])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<14>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [13]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<14>_rt_709 ),
    .O(\cpu/npc_inc [14])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<14>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [13]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<14>_rt_709 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [14])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<13>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [12]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<13>_rt_707 ),
    .O(\cpu/npc_inc [13])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<13>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [12]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<13>_rt_707 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [13])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<12>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [11]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<12>_rt_705 ),
    .O(\cpu/npc_inc [12])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<12>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [11]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<12>_rt_705 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [12])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<11>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [10]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<11>_rt_703 ),
    .O(\cpu/npc_inc [11])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<11>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [10]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<11>_rt_703 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [11])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<10>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [9]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<10>_rt_701 ),
    .O(\cpu/npc_inc [10])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<10>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [9]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<10>_rt_701 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [10])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<9>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [8]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<9>_rt_754 ),
    .O(\cpu/npc_inc [9])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<9>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [8]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<9>_rt_754 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [9])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<8>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [7]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<8>_rt_752 ),
    .O(\cpu/npc_inc [8])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<8>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [7]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<8>_rt_752 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [8])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<7>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [6]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<7>_rt_750 ),
    .O(\cpu/npc_inc [7])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<7>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [6]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<7>_rt_750 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [7])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<6>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [5]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<6>_rt_748 ),
    .O(\cpu/npc_inc [6])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<6>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [5]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<6>_rt_748 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [6])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<5>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [4]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<5>_rt_746 ),
    .O(\cpu/npc_inc [5])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<5>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [4]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<5>_rt_746 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [5])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<4>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [3]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<4>_rt_744 ),
    .O(\cpu/npc_inc [4])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<4>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<4>_rt_744 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [4])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<3>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [2]),
    .LI(\cpu/Madd_npc_inc_Madd_cy<3>_rt_742 ),
    .O(\cpu/npc_inc [3])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<3>  (
    .CI(\cpu/Madd_npc_inc_Madd_cy [2]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\cpu/Madd_npc_inc_Madd_cy<3>_rt_742 ),
    .O(\cpu/Madd_npc_inc_Madd_cy [3])
  );
  XORCY   \cpu/Madd_npc_inc_Madd_xor<2>  (
    .CI(analyzer1_data_0_OBUF_547),
    .LI(\cpu/Madd_npc_inc_Madd_lut [2]),
    .O(\cpu/npc_inc [2])
  );
  MUXCY   \cpu/Madd_npc_inc_Madd_cy<2>  (
    .CI(analyzer1_data_0_OBUF_547),
    .DI(analyzer4_clock_OBUF_583),
    .S(\cpu/Madd_npc_inc_Madd_lut [2]),
    .O(\cpu/Madd_npc_inc_Madd_cy [2])
  );
  RAM32X1D   \cpu/Mram_regfile_ren32  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [31]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren32_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [31])
  );
  RAM32X1D   \cpu/Mram_regfile_ren31  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [30]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren31_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [30])
  );
  RAM32X1D   \cpu/Mram_regfile_ren30  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [29]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren30_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [29])
  );
  RAM32X1D   \cpu/Mram_regfile_ren29  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [28]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren29_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [28])
  );
  RAM32X1D   \cpu/Mram_regfile_ren28  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [27]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren28_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [27])
  );
  RAM32X1D   \cpu/Mram_regfile_ren27  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [26]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren27_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [26])
  );
  RAM32X1D   \cpu/Mram_regfile_ren25  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [24]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren25_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [24])
  );
  RAM32X1D   \cpu/Mram_regfile_ren24  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [23]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren24_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [23])
  );
  RAM32X1D   \cpu/Mram_regfile_ren26  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [25]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren26_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [25])
  );
  RAM32X1D   \cpu/Mram_regfile_ren23  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [22]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren23_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [22])
  );
  RAM32X1D   \cpu/Mram_regfile_ren22  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [21]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren22_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [21])
  );
  RAM32X1D   \cpu/Mram_regfile_ren21  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [20]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren21_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [20])
  );
  RAM32X1D   \cpu/Mram_regfile_ren20  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [19]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren20_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [19])
  );
  RAM32X1D   \cpu/Mram_regfile_ren19  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [18]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren19_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [18])
  );
  RAM32X1D   \cpu/Mram_regfile_ren18  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [17]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren18_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [17])
  );
  RAM32X1D   \cpu/Mram_regfile_ren16  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [15]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren16_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [15])
  );
  RAM32X1D   \cpu/Mram_regfile_ren15  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [14]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren15_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [14])
  );
  RAM32X1D   \cpu/Mram_regfile_ren17  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [16]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren17_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [16])
  );
  RAM32X1D   \cpu/Mram_regfile_ren14  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [13]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren14_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [13])
  );
  RAM32X1D   \cpu/Mram_regfile_ren13  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [12]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren13_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [12])
  );
  RAM32X1D   \cpu/Mram_regfile_ren12  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [11]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren12_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [11])
  );
  RAM32X1D   \cpu/Mram_regfile_ren11  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [10]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren11_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [10])
  );
  RAM32X1D   \cpu/Mram_regfile_ren10  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [9]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren10_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [9])
  );
  RAM32X1D   \cpu/Mram_regfile_ren9  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [8]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren9_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [8])
  );
  RAM32X1D   \cpu/Mram_regfile_ren7  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [6]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren7_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [6])
  );
  RAM32X1D   \cpu/Mram_regfile_ren6  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [5]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren6_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [5])
  );
  RAM32X1D   \cpu/Mram_regfile_ren8  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [7]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren8_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [7])
  );
  RAM32X1D   \cpu/Mram_regfile_ren5  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [4]),
    .DPRA0(\cpu/ra2 [0]),
    .DPRA1(\cpu/ra2 [1]),
    .DPRA2(\cpu/ra2 [2]),
    .DPRA3(\cpu/ra2 [3]),
    .DPRA4(\cpu/ra2 [4]),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren5_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [4])
  );
  RAM32X1D   \cpu/Mram_regfile_ren4  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [3]),
    .DPRA0(\cpu/ra2<0>1_1213 ),
    .DPRA1(\cpu/ra2<1>1_1215 ),
    .DPRA2(\cpu/ra2<2>1_1217 ),
    .DPRA3(\cpu/ra2<3>1_1219 ),
    .DPRA4(\cpu/ra2<4>1_1221 ),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren4_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [3])
  );
  RAM32X1D   \cpu/Mram_regfile_ren2  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [1]),
    .DPRA0(\cpu/ra2<0>1_1213 ),
    .DPRA1(\cpu/ra2<1>1_1215 ),
    .DPRA2(\cpu/ra2<2>1_1217 ),
    .DPRA3(\cpu/ra2<3>1_1219 ),
    .DPRA4(\cpu/ra2<4>1_1221 ),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren2_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [1])
  );
  RAM32X1D   \cpu/Mram_regfile_ren1  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [0]),
    .DPRA0(\cpu/ra2<0>1_1213 ),
    .DPRA1(\cpu/ra2<1>1_1215 ),
    .DPRA2(\cpu/ra2<2>1_1217 ),
    .DPRA3(\cpu/ra2<3>1_1219 ),
    .DPRA4(\cpu/ra2<4>1_1221 ),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren1_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [0])
  );
  RAM32X1D   \cpu/Mram_regfile_ren3  (
    .A0(\cpu/wa [0]),
    .A1(\cpu/wa [1]),
    .A2(\cpu/wa [2]),
    .A3(\cpu/wa [3]),
    .A4(\cpu/wa [4]),
    .D(\cpu/wd [2]),
    .DPRA0(\cpu/ra2<0>1_1213 ),
    .DPRA1(\cpu/ra2<1>1_1215 ),
    .DPRA2(\cpu/ra2<2>1_1217 ),
    .DPRA3(\cpu/ra2<3>1_1219 ),
    .DPRA4(\cpu/ra2<4>1_1221 ),
    .WCLK(clock_50MHz),
    .WE(\cpu/werf ),
    .SPO(\NLW_cpu/Mram_regfile_ren3_SPO_UNCONNECTED ),
    .DPO(\cpu/_varindex0001 [2])
  );
  FDE   \cpu/rc_save_4  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/inst [25]),
    .Q(\cpu/rc_save [4])
  );
  FDE   \cpu/rc_save_3  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/inst [24]),
    .Q(\cpu/rc_save [3])
  );
  FDE   \cpu/rc_save_2  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/inst [23]),
    .Q(\cpu/rc_save [2])
  );
  FDE   \cpu/rc_save_1  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/inst [22]),
    .Q(\cpu/rc_save [1])
  );
  FDE   \cpu/rc_save_0  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/inst [21]),
    .Q(\cpu/rc_save [0])
  );
  FDE   \cpu/pc_inc_31  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc [31]),
    .Q(\cpu/pc_inc [31])
  );
  FDE   \cpu/pc_inc_30  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [30]),
    .Q(\cpu/pc_inc [30])
  );
  FDE   \cpu/pc_inc_29  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [29]),
    .Q(\cpu/pc_inc [29])
  );
  FDE   \cpu/pc_inc_28  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [28]),
    .Q(\cpu/pc_inc [28])
  );
  FDE   \cpu/pc_inc_27  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [27]),
    .Q(\cpu/pc_inc [27])
  );
  FDE   \cpu/pc_inc_26  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [26]),
    .Q(\cpu/pc_inc [26])
  );
  FDE   \cpu/pc_inc_25  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [25]),
    .Q(\cpu/pc_inc [25])
  );
  FDE   \cpu/pc_inc_24  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [24]),
    .Q(\cpu/pc_inc [24])
  );
  FDE   \cpu/pc_inc_23  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [23]),
    .Q(\cpu/pc_inc [23])
  );
  FDE   \cpu/pc_inc_22  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [22]),
    .Q(\cpu/pc_inc [22])
  );
  FDE   \cpu/pc_inc_21  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [21]),
    .Q(\cpu/pc_inc [21])
  );
  FDE   \cpu/pc_inc_20  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [20]),
    .Q(\cpu/pc_inc [20])
  );
  FDE   \cpu/pc_inc_19  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [19]),
    .Q(\cpu/pc_inc [19])
  );
  FDE   \cpu/pc_inc_18  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [18]),
    .Q(\cpu/pc_inc [18])
  );
  FDE   \cpu/pc_inc_17  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [17]),
    .Q(\cpu/pc_inc [17])
  );
  FDE   \cpu/pc_inc_16  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [16]),
    .Q(\cpu/pc_inc [16])
  );
  FDE   \cpu/pc_inc_15  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [15]),
    .Q(\cpu/pc_inc [15])
  );
  FDE   \cpu/pc_inc_14  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [14]),
    .Q(\cpu/pc_inc [14])
  );
  FDE   \cpu/pc_inc_13  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [13]),
    .Q(\cpu/pc_inc [13])
  );
  FDE   \cpu/pc_inc_12  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [12]),
    .Q(\cpu/pc_inc [12])
  );
  FDE   \cpu/pc_inc_11  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [11]),
    .Q(\cpu/pc_inc [11])
  );
  FDE   \cpu/pc_inc_10  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [10]),
    .Q(\cpu/pc_inc [10])
  );
  FDE   \cpu/pc_inc_9  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [9]),
    .Q(\cpu/pc_inc [9])
  );
  FDE   \cpu/pc_inc_8  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [8]),
    .Q(\cpu/pc_inc [8])
  );
  FDE   \cpu/pc_inc_7  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [7]),
    .Q(\cpu/pc_inc [7])
  );
  FDE   \cpu/pc_inc_6  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [6]),
    .Q(\cpu/pc_inc [6])
  );
  FDE   \cpu/pc_inc_5  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [5]),
    .Q(\cpu/pc_inc [5])
  );
  FDE   \cpu/pc_inc_4  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [4]),
    .Q(\cpu/pc_inc [4])
  );
  FDE   \cpu/pc_inc_3  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [3]),
    .Q(\cpu/pc_inc [3])
  );
  FDE   \cpu/pc_inc_2  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(\cpu/npc_inc [2]),
    .Q(\cpu/pc_inc [2])
  );
  FDE   \cpu/inst_31  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[31]),
    .Q(\cpu/inst [31])
  );
  FDE   \cpu/inst_30  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[30]),
    .Q(\cpu/inst [30])
  );
  FDE   \cpu/inst_29  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[29]),
    .Q(\cpu/inst [29])
  );
  FDE   \cpu/inst_28  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[28]),
    .Q(\cpu/inst [28])
  );
  FDE   \cpu/inst_27  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[27]),
    .Q(\cpu/inst [27])
  );
  FDE   \cpu/inst_26  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[26]),
    .Q(\cpu/inst [26])
  );
  FDE   \cpu/inst_25  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[25]),
    .Q(\cpu/inst [25])
  );
  FDE   \cpu/inst_24  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[24]),
    .Q(\cpu/inst [24])
  );
  FDE   \cpu/inst_23  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[23]),
    .Q(\cpu/inst [23])
  );
  FDE   \cpu/inst_22  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[22]),
    .Q(\cpu/inst [22])
  );
  FDE   \cpu/inst_21  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[21]),
    .Q(\cpu/inst [21])
  );
  FDE   \cpu/inst_20  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[20]),
    .Q(\cpu/inst [20])
  );
  FDE   \cpu/inst_19  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[19]),
    .Q(\cpu/inst [19])
  );
  FDE   \cpu/inst_18  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[18]),
    .Q(\cpu/inst [18])
  );
  FDE   \cpu/inst_17  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[17]),
    .Q(\cpu/inst [17])
  );
  FDE   \cpu/inst_16  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[16]),
    .Q(\cpu/inst [16])
  );
  FDE   \cpu/inst_15  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[15]),
    .Q(\cpu/inst [15])
  );
  FDE   \cpu/inst_14  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[14]),
    .Q(\cpu/inst [14])
  );
  FDE   \cpu/inst_13  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[13]),
    .Q(\cpu/inst [13])
  );
  FDE   \cpu/inst_12  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[12]),
    .Q(\cpu/inst [12])
  );
  FDE   \cpu/inst_11  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[11]),
    .Q(\cpu/inst [11])
  );
  FDE   \cpu/inst_10  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[10]),
    .Q(\cpu/inst [10])
  );
  FDE   \cpu/inst_9  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[9]),
    .Q(\cpu/inst [9])
  );
  FDE   \cpu/inst_8  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[8]),
    .Q(\cpu/inst [8])
  );
  FDE   \cpu/inst_7  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[7]),
    .Q(\cpu/inst [7])
  );
  FDE   \cpu/inst_6  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[6]),
    .Q(\cpu/inst [6])
  );
  FDE   \cpu/inst_5  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[5]),
    .Q(\cpu/inst [5])
  );
  FDE   \cpu/inst_4  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[4]),
    .Q(\cpu/inst [4])
  );
  FDE   \cpu/inst_3  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[3]),
    .Q(\cpu/inst [3])
  );
  FDE   \cpu/inst_2  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[2]),
    .Q(\cpu/inst [2])
  );
  FDE   \cpu/inst_1  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[1]),
    .Q(\cpu/inst [1])
  );
  FDE   \cpu/inst_0  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[0]),
    .Q(\cpu/inst [0])
  );
  FD   \cpu/npc_31  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [31]),
    .Q(\cpu/npc [31])
  );
  FD   \cpu/npc_30  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [30]),
    .Q(\cpu/npc [30])
  );
  FD   \cpu/npc_29  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [29]),
    .Q(\cpu/npc [29])
  );
  FD   \cpu/npc_28  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [28]),
    .Q(\cpu/npc [28])
  );
  FD   \cpu/npc_27  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [27]),
    .Q(\cpu/npc [27])
  );
  FD   \cpu/npc_26  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [26]),
    .Q(\cpu/npc [26])
  );
  FD   \cpu/npc_25  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [25]),
    .Q(\cpu/npc [25])
  );
  FD   \cpu/npc_24  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [24]),
    .Q(\cpu/npc [24])
  );
  FD   \cpu/npc_23  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [23]),
    .Q(\cpu/npc [23])
  );
  FD   \cpu/npc_22  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [22]),
    .Q(\cpu/npc [22])
  );
  FD   \cpu/npc_21  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [21]),
    .Q(\cpu/npc [21])
  );
  FD   \cpu/npc_20  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [20]),
    .Q(\cpu/npc [20])
  );
  FD   \cpu/npc_19  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [19]),
    .Q(\cpu/npc [19])
  );
  FD   \cpu/npc_18  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [18]),
    .Q(\cpu/npc [18])
  );
  FD   \cpu/npc_17  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [17]),
    .Q(\cpu/npc [17])
  );
  FD   \cpu/npc_16  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [16]),
    .Q(\cpu/npc [16])
  );
  FD   \cpu/npc_15  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [15]),
    .Q(\cpu/npc [15])
  );
  FD   \cpu/npc_14  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [14]),
    .Q(\cpu/npc [14])
  );
  FD   \cpu/npc_13  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [13]),
    .Q(\cpu/npc [13])
  );
  FD   \cpu/npc_12  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [12]),
    .Q(\cpu/npc [12])
  );
  FD   \cpu/npc_11  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [11]),
    .Q(\cpu/npc [11])
  );
  FD   \cpu/npc_10  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [10]),
    .Q(\cpu/npc [10])
  );
  FD   \cpu/npc_9  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [9]),
    .Q(\cpu/npc [9])
  );
  FD   \cpu/npc_8  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [8]),
    .Q(\cpu/npc [8])
  );
  FD   \cpu/npc_7  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [7]),
    .Q(\cpu/npc [7])
  );
  FD   \cpu/npc_6  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [6]),
    .Q(\cpu/npc [6])
  );
  FD   \cpu/npc_5  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [5]),
    .Q(\cpu/npc [5])
  );
  FD   \cpu/npc_4  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [4]),
    .Q(\cpu/npc [4])
  );
  FD   \cpu/npc_3  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [3]),
    .Q(\cpu/npc [3])
  );
  FD   \cpu/npc_2  (
    .C(clock_50MHz),
    .D(\cpu/npc_next [2]),
    .Q(\cpu/npc [2])
  );
  RAMB16_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT ( 9'h000 ),
    .SRVAL ( 9'h000 ),
    .INIT_00 ( 256'h1818181818181818FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000 ),
    .INIT_01 ( 256'h181818180000000000F8F818181818180000000000FFFF000000000018181818 ),
    .INIT_02 ( 256'h1818181818F8F8000000000018181818181F1F000000000000000000001F1F18 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000FF81818181818181818181FF ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000002466666600000018180018183C3C3C1800000000000000000000000000 ),
    .INIT_0D ( 256'h62000000000018187C06063C60603E18000036367F3636367F36360000000000 ),
    .INIT_0E ( 256'h00000000000000301818180000003B6E667F7D386C6C38000000466630180C66 ),
    .INIT_0F ( 256'h663CFF3C66000000000030180C0606060C1830000000060C18303030180C0600 ),
    .INIT_10 ( 256'h0000000000301C1C00000000000000000000000018187E181800000000000000 ),
    .INIT_11 ( 256'h000080C06030180C0603010000001C1C00000000000000000000000000007E00 ),
    .INIT_12 ( 256'h30180C0663633E0000007E18181818187818080000003E63737B6B6F67633E00 ),
    .INIT_13 ( 256'h60607E0000000F06067F66361E0E060000003E6303031E0303633E0000007F63 ),
    .INIT_14 ( 256'h00001818180C060303637F0000003C6666667C6060301C0000003C6606063C60 ),
    .INIT_15 ( 256'h1C00001C1C000000000038180C0C3E6666663C0000003C66666E3C3666663C00 ),
    .INIT_16 ( 256'h000000000000060C18306030180C060000180C1C1C00001C1C0000000000001C ),
    .INIT_17 ( 256'h00000C0C000C0C0603633E00000030180C0603060C18300000000000007E007E ),
    .INIT_18 ( 256'h33333E3333337E0000006666667E6666663C180000003E60606F6F6F63633C00 ),
    .INIT_19 ( 256'h30317F0000007C363333333333367C0000001E336060606063331E0000007E33 ),
    .INIT_1A ( 256'h00001F336367606063331E000000783030323E3231337F0000007F3130323E32 ),
    .INIT_1B ( 256'h6606060606060F0000003C181818181818183C000000666666667E6666666600 ),
    .INIT_1C ( 256'h7F77630000007F3333313030303078000000733336363E363633730000003C66 ),
    .INIT_1D ( 256'h00001C366363636363361C0000006363676F7F7B73636300000063636363636B ),
    .INIT_1E ( 256'h33363E3333337E0000000F063E6F676363361C000000783030303E3333337E00 ),
    .INIT_1F ( 256'h6666660000003C1818181818185A7E0000003C66660C386066663C0000007333 ),
    .INIT_20 ( 256'h000036366B6B6363636363000000183C666666666666660000003C6666666666 ),
    .INIT_21 ( 256'h3130180C0C677F0000003C1818183C666666660000006666663C183C66666600 ),
    .INIT_22 ( 256'h06061E0000000103060C18306040000000001E181818181818181E0000007F63 ),
    .INIT_23 ( 256'h007F00000000000000000000000000000000000063361C0800001E0606060606 ),
    .INIT_24 ( 256'h33333E303030700000003B66663E063C00000000000000000000000000306060 ),
    .INIT_25 ( 256'h0000000000003B666666663E06060E0000003C666060663C0000000000006E33 ),
    .INIT_26 ( 256'h3C66063E6666663B0000000000003C1818183E18181B0E0000003C66607E663C ),
    .INIT_27 ( 256'h0606061E0006060000003F0C0C0C0C3C000C0C000000733333333B3630306000 ),
    .INIT_28 ( 256'h0000000000003F0C0C0C0C0C0C0C3C0000007333363C3633303070003C646606 ),
    .INIT_29 ( 256'h00003C666666663C00000000000066666666667C000000000000636B6B6B6B7E ),
    .INIT_2A ( 256'h303B3776000000000F063E666666663B0000000078303E333333336E00000000 ),
    .INIT_2B ( 256'h0000000000001C363030307E3010000000003C660C30663C0000000000007830 ),
    .INIT_2C ( 256'h000036366B6B6363000000000000183C666666660000000000003B6666666666 ),
    .INIT_2D ( 256'h1806437F00000000780C061E3333333300000000000063361C1C366300000000 ),
    .INIT_2E ( 256'h181870000000181818180018181818000000070C0C1830180C0C070000007F61 ),
    .INIT_2F ( 256'h00007E7E7E7E7E7E7E7E7E000000000000000000CEDA730000007018180C060C ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \dpy/f/font  (
    .CLK(clock_50MHz),
    .EN(analyzer4_clock_OBUF_583),
    .SSR(analyzer1_data_0_OBUF_547),
    .WE(analyzer1_data_0_OBUF_547),
    .ADDR({\dpy/font_addr [10], \dpy/font_addr [9], \dpy/font_addr [8], \dpy/font_addr [7], \dpy/font_addr [6], \dpy/font_addr [5], \dpy/font_addr [4]
, \dpy/font_addr [3], \dpy/font_addr [2], \dpy/font_addr [1], \dpy/font_addr [0]}),
    .DI({\NLW_dpy/f/font_DI<7>_UNCONNECTED , \NLW_dpy/f/font_DI<6>_UNCONNECTED , \NLW_dpy/f/font_DI<5>_UNCONNECTED , 
\NLW_dpy/f/font_DI<4>_UNCONNECTED , \NLW_dpy/f/font_DI<3>_UNCONNECTED , \NLW_dpy/f/font_DI<2>_UNCONNECTED , \NLW_dpy/f/font_DI<1>_UNCONNECTED , 
\NLW_dpy/f/font_DI<0>_UNCONNECTED }),
    .DIP({\NLW_dpy/f/font_DIP<0>_UNCONNECTED }),
    .DO({\dpy/font_byte [7], \dpy/font_byte [6], \dpy/font_byte [5], \dpy/font_byte [4], \dpy/font_byte [3], \dpy/font_byte [2], \dpy/font_byte [1], 
\dpy/font_byte [0]}),
    .DOP({\NLW_dpy/f/font_DOP<0>_UNCONNECTED })
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dpy/Mmux__COND_3_4  (
    .I0(\dpy/hcount [0]),
    .I1(\dpy/font_byte [1]),
    .I2(\dpy/font_byte [0]),
    .O(\dpy/Mmux__COND_3_4_1751 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dpy/Mmux__COND_3_5  (
    .I0(\dpy/hcount [0]),
    .I1(\dpy/font_byte [3]),
    .I2(\dpy/font_byte [2]),
    .O(\dpy/Mmux__COND_3_5_1753 )
  );
  MUXF5   \dpy/Mmux__COND_3_3_f5  (
    .I0(\dpy/Mmux__COND_3_5_1753 ),
    .I1(\dpy/Mmux__COND_3_4_1751 ),
    .S(\dpy/hcount [1]),
    .O(\dpy/Mmux__COND_3_3_f5_1750 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dpy/Mmux__COND_3_51  (
    .I0(\dpy/hcount [0]),
    .I1(\dpy/font_byte [5]),
    .I2(\dpy/font_byte [4]),
    .O(\dpy/Mmux__COND_3_51_1754 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dpy/Mmux__COND_3_6  (
    .I0(\dpy/hcount [0]),
    .I1(\dpy/font_byte [7]),
    .I2(\dpy/font_byte [6]),
    .O(\dpy/Mmux__COND_3_6_1755 )
  );
  MUXF5   \dpy/Mmux__COND_3_4_f5  (
    .I0(\dpy/Mmux__COND_3_6_1755 ),
    .I1(\dpy/Mmux__COND_3_51_1754 ),
    .S(\dpy/hcount [1]),
    .O(\dpy/Mmux__COND_3_4_f5_1752 )
  );
  MUXF6   \dpy/Mmux__COND_3_2_f6  (
    .I0(\dpy/Mmux__COND_3_4_f5_1752 ),
    .I1(\dpy/Mmux__COND_3_3_f5_1750 ),
    .S(\dpy/hcount [2]),
    .O(\dpy/_COND_3 )
  );
  XORCY   \dpy/Mcount_vcount_xor<9>  (
    .CI(\dpy/Mcount_vcount_cy [8]),
    .LI(\dpy/Mcount_vcount_xor<9>_rt_1749 ),
    .O(\dpy/Result<9>1 )
  );
  XORCY   \dpy/Mcount_vcount_xor<8>  (
    .CI(\dpy/Mcount_vcount_cy [7]),
    .LI(\dpy/Mcount_vcount_cy<8>_rt_1747 ),
    .O(\dpy/Result<8>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<8>  (
    .CI(\dpy/Mcount_vcount_cy [7]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<8>_rt_1747 ),
    .O(\dpy/Mcount_vcount_cy [8])
  );
  XORCY   \dpy/Mcount_vcount_xor<7>  (
    .CI(\dpy/Mcount_vcount_cy [6]),
    .LI(\dpy/Mcount_vcount_cy<7>_rt_1745 ),
    .O(\dpy/Result<7>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<7>  (
    .CI(\dpy/Mcount_vcount_cy [6]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<7>_rt_1745 ),
    .O(\dpy/Mcount_vcount_cy [7])
  );
  XORCY   \dpy/Mcount_vcount_xor<6>  (
    .CI(\dpy/Mcount_vcount_cy [5]),
    .LI(\dpy/Mcount_vcount_cy<6>_rt_1743 ),
    .O(\dpy/Result<6>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<6>  (
    .CI(\dpy/Mcount_vcount_cy [5]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<6>_rt_1743 ),
    .O(\dpy/Mcount_vcount_cy [6])
  );
  XORCY   \dpy/Mcount_vcount_xor<5>  (
    .CI(\dpy/Mcount_vcount_cy [4]),
    .LI(\dpy/Mcount_vcount_cy<5>_rt_1741 ),
    .O(\dpy/Result<5>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<5>  (
    .CI(\dpy/Mcount_vcount_cy [4]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<5>_rt_1741 ),
    .O(\dpy/Mcount_vcount_cy [5])
  );
  XORCY   \dpy/Mcount_vcount_xor<4>  (
    .CI(\dpy/Mcount_vcount_cy [3]),
    .LI(\dpy/Mcount_vcount_cy<4>_rt_1739 ),
    .O(\dpy/Result<4>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<4>  (
    .CI(\dpy/Mcount_vcount_cy [3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<4>_rt_1739 ),
    .O(\dpy/Mcount_vcount_cy [4])
  );
  XORCY   \dpy/Mcount_vcount_xor<3>  (
    .CI(\dpy/Mcount_vcount_cy [2]),
    .LI(\dpy/Mcount_vcount_cy<3>_rt_1737 ),
    .O(\dpy/Result<3>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<3>  (
    .CI(\dpy/Mcount_vcount_cy [2]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<3>_rt_1737 ),
    .O(\dpy/Mcount_vcount_cy [3])
  );
  XORCY   \dpy/Mcount_vcount_xor<2>  (
    .CI(\dpy/Mcount_vcount_cy [1]),
    .LI(\dpy/Mcount_vcount_cy<2>_rt_1735 ),
    .O(\dpy/Result<2>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<2>  (
    .CI(\dpy/Mcount_vcount_cy [1]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<2>_rt_1735 ),
    .O(\dpy/Mcount_vcount_cy [2])
  );
  XORCY   \dpy/Mcount_vcount_xor<1>  (
    .CI(\dpy/Mcount_vcount_cy [0]),
    .LI(\dpy/Mcount_vcount_cy<1>_rt_1733 ),
    .O(\dpy/Result<1>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<1>  (
    .CI(\dpy/Mcount_vcount_cy [0]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_vcount_cy<1>_rt_1733 ),
    .O(\dpy/Mcount_vcount_cy [1])
  );
  XORCY   \dpy/Mcount_vcount_xor<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .LI(\dpy/Mcount_vcount_lut [0]),
    .O(\dpy/Result<0>1 )
  );
  MUXCY   \dpy/Mcount_vcount_cy<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .DI(analyzer4_clock_OBUF_583),
    .S(\dpy/Mcount_vcount_lut [0]),
    .O(\dpy/Mcount_vcount_cy [0])
  );
  XORCY   \dpy/Mcount_hcount_xor<9>  (
    .CI(\dpy/Mcount_hcount_cy [8]),
    .LI(\dpy/Mcount_hcount_xor<9>_rt_1730 ),
    .O(\dpy/Result [9])
  );
  XORCY   \dpy/Mcount_hcount_xor<8>  (
    .CI(\dpy/Mcount_hcount_cy [7]),
    .LI(\dpy/Mcount_hcount_cy<8>_rt_1728 ),
    .O(\dpy/Result [8])
  );
  MUXCY   \dpy/Mcount_hcount_cy<8>  (
    .CI(\dpy/Mcount_hcount_cy [7]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<8>_rt_1728 ),
    .O(\dpy/Mcount_hcount_cy [8])
  );
  XORCY   \dpy/Mcount_hcount_xor<7>  (
    .CI(\dpy/Mcount_hcount_cy [6]),
    .LI(\dpy/Mcount_hcount_cy<7>_rt_1726 ),
    .O(\dpy/Result [7])
  );
  MUXCY   \dpy/Mcount_hcount_cy<7>  (
    .CI(\dpy/Mcount_hcount_cy [6]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<7>_rt_1726 ),
    .O(\dpy/Mcount_hcount_cy [7])
  );
  XORCY   \dpy/Mcount_hcount_xor<6>  (
    .CI(\dpy/Mcount_hcount_cy [5]),
    .LI(\dpy/Mcount_hcount_cy<6>_rt_1724 ),
    .O(\dpy/Result [6])
  );
  MUXCY   \dpy/Mcount_hcount_cy<6>  (
    .CI(\dpy/Mcount_hcount_cy [5]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<6>_rt_1724 ),
    .O(\dpy/Mcount_hcount_cy [6])
  );
  XORCY   \dpy/Mcount_hcount_xor<5>  (
    .CI(\dpy/Mcount_hcount_cy [4]),
    .LI(\dpy/Mcount_hcount_cy<5>_rt_1722 ),
    .O(\dpy/Result [5])
  );
  MUXCY   \dpy/Mcount_hcount_cy<5>  (
    .CI(\dpy/Mcount_hcount_cy [4]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<5>_rt_1722 ),
    .O(\dpy/Mcount_hcount_cy [5])
  );
  XORCY   \dpy/Mcount_hcount_xor<4>  (
    .CI(\dpy/Mcount_hcount_cy [3]),
    .LI(\dpy/Mcount_hcount_cy<4>_rt_1720 ),
    .O(\dpy/Result [4])
  );
  MUXCY   \dpy/Mcount_hcount_cy<4>  (
    .CI(\dpy/Mcount_hcount_cy [3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<4>_rt_1720 ),
    .O(\dpy/Mcount_hcount_cy [4])
  );
  XORCY   \dpy/Mcount_hcount_xor<3>  (
    .CI(\dpy/Mcount_hcount_cy [2]),
    .LI(\dpy/Mcount_hcount_cy<3>_rt_1718 ),
    .O(\dpy/Result [3])
  );
  MUXCY   \dpy/Mcount_hcount_cy<3>  (
    .CI(\dpy/Mcount_hcount_cy [2]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<3>_rt_1718 ),
    .O(\dpy/Mcount_hcount_cy [3])
  );
  XORCY   \dpy/Mcount_hcount_xor<2>  (
    .CI(\dpy/Mcount_hcount_cy [1]),
    .LI(\dpy/Mcount_hcount_cy<2>_rt_1716 ),
    .O(\dpy/Result [2])
  );
  MUXCY   \dpy/Mcount_hcount_cy<2>  (
    .CI(\dpy/Mcount_hcount_cy [1]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<2>_rt_1716 ),
    .O(\dpy/Mcount_hcount_cy [2])
  );
  XORCY   \dpy/Mcount_hcount_xor<1>  (
    .CI(\dpy/Mcount_hcount_cy [0]),
    .LI(\dpy/Mcount_hcount_cy<1>_rt_1714 ),
    .O(\dpy/Result [1])
  );
  MUXCY   \dpy/Mcount_hcount_cy<1>  (
    .CI(\dpy/Mcount_hcount_cy [0]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Mcount_hcount_cy<1>_rt_1714 ),
    .O(\dpy/Mcount_hcount_cy [1])
  );
  XORCY   \dpy/Mcount_hcount_xor<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .LI(\dpy/Mcount_hcount_lut [0]),
    .O(\dpy/Result [0])
  );
  MUXCY   \dpy/Mcount_hcount_cy<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .DI(analyzer4_clock_OBUF_583),
    .S(\dpy/Mcount_hcount_lut [0]),
    .O(\dpy/Mcount_hcount_cy [0])
  );
  XORCY   \dpy/Madd_font_addr_xor<10>  (
    .CI(\dpy/Madd_font_addr_cy [9]),
    .LI(\dpy/font_addr_mult0000 [10]),
    .O(\dpy/font_addr [10])
  );
  XORCY   \dpy/Madd_font_addr_xor<9>  (
    .CI(\dpy/Madd_font_addr_cy [8]),
    .LI(\dpy/Madd_font_addr_cy<9>_rt_1704 ),
    .O(\dpy/font_addr [9])
  );
  MUXCY   \dpy/Madd_font_addr_cy<9>  (
    .CI(\dpy/Madd_font_addr_cy [8]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_font_addr_cy<9>_rt_1704 ),
    .O(\dpy/Madd_font_addr_cy [9])
  );
  XORCY   \dpy/Madd_font_addr_xor<8>  (
    .CI(\dpy/Madd_font_addr_cy [7]),
    .LI(\dpy/Madd_font_addr_cy<8>_rt_1702 ),
    .O(\dpy/font_addr [8])
  );
  MUXCY   \dpy/Madd_font_addr_cy<8>  (
    .CI(\dpy/Madd_font_addr_cy [7]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_font_addr_cy<8>_rt_1702 ),
    .O(\dpy/Madd_font_addr_cy [8])
  );
  XORCY   \dpy/Madd_font_addr_xor<7>  (
    .CI(\dpy/Madd_font_addr_cy [6]),
    .LI(\dpy/Madd_font_addr_cy<7>_rt_1700 ),
    .O(\dpy/font_addr [7])
  );
  MUXCY   \dpy/Madd_font_addr_cy<7>  (
    .CI(\dpy/Madd_font_addr_cy [6]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_font_addr_cy<7>_rt_1700 ),
    .O(\dpy/Madd_font_addr_cy [7])
  );
  XORCY   \dpy/Madd_font_addr_xor<6>  (
    .CI(\dpy/Madd_font_addr_cy [5]),
    .LI(\dpy/Madd_font_addr_cy<6>_rt_1698 ),
    .O(\dpy/font_addr [6])
  );
  MUXCY   \dpy/Madd_font_addr_cy<6>  (
    .CI(\dpy/Madd_font_addr_cy [5]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_font_addr_cy<6>_rt_1698 ),
    .O(\dpy/Madd_font_addr_cy [6])
  );
  XORCY   \dpy/Madd_font_addr_xor<5>  (
    .CI(\dpy/Madd_font_addr_cy [4]),
    .LI(\dpy/Madd_font_addr_cy<5>_rt_1696 ),
    .O(\dpy/font_addr [5])
  );
  MUXCY   \dpy/Madd_font_addr_cy<5>  (
    .CI(\dpy/Madd_font_addr_cy [4]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_font_addr_cy<5>_rt_1696 ),
    .O(\dpy/Madd_font_addr_cy [5])
  );
  XORCY   \dpy/Madd_font_addr_xor<4>  (
    .CI(\dpy/Madd_font_addr_cy [3]),
    .LI(\dpy/Madd_font_addr_cy<4>_rt_1694 ),
    .O(\dpy/font_addr [4])
  );
  MUXCY   \dpy/Madd_font_addr_cy<4>  (
    .CI(\dpy/Madd_font_addr_cy [3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_font_addr_cy<4>_rt_1694 ),
    .O(\dpy/Madd_font_addr_cy [4])
  );
  XORCY   \dpy/Madd_font_addr_xor<3>  (
    .CI(\dpy/Madd_font_addr_cy [2]),
    .LI(\dpy/Madd_font_addr_lut [3]),
    .O(\dpy/font_addr [3])
  );
  MUXCY   \dpy/Madd_font_addr_cy<3>  (
    .CI(\dpy/Madd_font_addr_cy [2]),
    .DI(\dpy/font_addr_mult0000 [3]),
    .S(\dpy/Madd_font_addr_lut [3]),
    .O(\dpy/Madd_font_addr_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_font_addr_lut<3>  (
    .I0(\dpy/font_addr_mult0000 [3]),
    .I1(\dpy/v [3]),
    .O(\dpy/Madd_font_addr_lut [3])
  );
  XORCY   \dpy/Madd_font_addr_xor<2>  (
    .CI(\dpy/Madd_font_addr_cy [1]),
    .LI(\dpy/Madd_font_addr_lut [2]),
    .O(\dpy/font_addr [2])
  );
  MUXCY   \dpy/Madd_font_addr_cy<2>  (
    .CI(\dpy/Madd_font_addr_cy [1]),
    .DI(\dpy/font_addr_mult0000 [2]),
    .S(\dpy/Madd_font_addr_lut [2]),
    .O(\dpy/Madd_font_addr_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_font_addr_lut<2>  (
    .I0(\dpy/font_addr_mult0000 [2]),
    .I1(\dpy/v [2]),
    .O(\dpy/Madd_font_addr_lut [2])
  );
  XORCY   \dpy/Madd_font_addr_xor<1>  (
    .CI(\dpy/Madd_font_addr_cy [0]),
    .LI(\dpy/Madd_font_addr_lut [1]),
    .O(\dpy/font_addr [1])
  );
  MUXCY   \dpy/Madd_font_addr_cy<1>  (
    .CI(\dpy/Madd_font_addr_cy [0]),
    .DI(\dpy/font_addr_mult0000 [1]),
    .S(\dpy/Madd_font_addr_lut [1]),
    .O(\dpy/Madd_font_addr_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_font_addr_lut<1>  (
    .I0(\dpy/font_addr_mult0000 [1]),
    .I1(\dpy/v [1]),
    .O(\dpy/Madd_font_addr_lut [1])
  );
  XORCY   \dpy/Madd_font_addr_xor<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .LI(\dpy/Madd_font_addr_lut [0]),
    .O(\dpy/font_addr [0])
  );
  MUXCY   \dpy/Madd_font_addr_cy<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .DI(\dpy/font_addr_mult0000 [0]),
    .S(\dpy/Madd_font_addr_lut [0]),
    .O(\dpy/Madd_font_addr_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_font_addr_lut<0>  (
    .I0(\dpy/font_addr_mult0000 [0]),
    .I1(\dpy/v [0]),
    .O(\dpy/Madd_font_addr_lut [0])
  );
  XORCY   \dpy/Madd_char_addr_xor<11>  (
    .CI(\dpy/Madd_char_addr_cy [10]),
    .LI(\dpy/char_addr_mult0001 [11]),
    .O(\dpy/char_addr [11])
  );
  XORCY   \dpy/Madd_char_addr_xor<10>  (
    .CI(\dpy/Madd_char_addr_cy [9]),
    .LI(\dpy/Madd_char_addr_cy<10>_rt_1669 ),
    .O(\dpy/char_addr [10])
  );
  MUXCY   \dpy/Madd_char_addr_cy<10>  (
    .CI(\dpy/Madd_char_addr_cy [9]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_char_addr_cy<10>_rt_1669 ),
    .O(\dpy/Madd_char_addr_cy [10])
  );
  XORCY   \dpy/Madd_char_addr_xor<9>  (
    .CI(\dpy/Madd_char_addr_cy [8]),
    .LI(\dpy/Madd_char_addr_cy<9>_rt_1681 ),
    .O(\dpy/char_addr [9])
  );
  MUXCY   \dpy/Madd_char_addr_cy<9>  (
    .CI(\dpy/Madd_char_addr_cy [8]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_char_addr_cy<9>_rt_1681 ),
    .O(\dpy/Madd_char_addr_cy [9])
  );
  XORCY   \dpy/Madd_char_addr_xor<8>  (
    .CI(\dpy/Madd_char_addr_cy [7]),
    .LI(\dpy/Madd_char_addr_cy<8>_rt_1679 ),
    .O(\dpy/char_addr [8])
  );
  MUXCY   \dpy/Madd_char_addr_cy<8>  (
    .CI(\dpy/Madd_char_addr_cy [7]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_char_addr_cy<8>_rt_1679 ),
    .O(\dpy/Madd_char_addr_cy [8])
  );
  XORCY   \dpy/Madd_char_addr_xor<7>  (
    .CI(\dpy/Madd_char_addr_cy [6]),
    .LI(\dpy/Madd_char_addr_cy<7>_rt_1677 ),
    .O(\dpy/char_addr [7])
  );
  MUXCY   \dpy/Madd_char_addr_cy<7>  (
    .CI(\dpy/Madd_char_addr_cy [6]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dpy/Madd_char_addr_cy<7>_rt_1677 ),
    .O(\dpy/Madd_char_addr_cy [7])
  );
  XORCY   \dpy/Madd_char_addr_xor<6>  (
    .CI(\dpy/Madd_char_addr_cy [5]),
    .LI(\dpy/Madd_char_addr_lut [6]),
    .O(\dpy/char_addr [6])
  );
  MUXCY   \dpy/Madd_char_addr_cy<6>  (
    .CI(\dpy/Madd_char_addr_cy [5]),
    .DI(\dpy/char_addr_mult0001 [6]),
    .S(\dpy/Madd_char_addr_lut [6]),
    .O(\dpy/Madd_char_addr_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_char_addr_lut<6>  (
    .I0(\dpy/next_column [6]),
    .I1(\dpy/char_addr_mult0001 [6]),
    .O(\dpy/Madd_char_addr_lut [6])
  );
  XORCY   \dpy/Madd_char_addr_xor<5>  (
    .CI(\dpy/Madd_char_addr_cy [4]),
    .LI(\dpy/Madd_char_addr_lut [5]),
    .O(\dpy/char_addr [5])
  );
  MUXCY   \dpy/Madd_char_addr_cy<5>  (
    .CI(\dpy/Madd_char_addr_cy [4]),
    .DI(\dpy/char_addr_mult0001 [5]),
    .S(\dpy/Madd_char_addr_lut [5]),
    .O(\dpy/Madd_char_addr_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_char_addr_lut<5>  (
    .I0(\dpy/next_column [5]),
    .I1(\dpy/char_addr_mult0001 [5]),
    .O(\dpy/Madd_char_addr_lut [5])
  );
  XORCY   \dpy/Madd_char_addr_xor<4>  (
    .CI(\dpy/Madd_char_addr_cy [3]),
    .LI(\dpy/Madd_char_addr_lut [4]),
    .O(\dpy/char_addr [4])
  );
  MUXCY   \dpy/Madd_char_addr_cy<4>  (
    .CI(\dpy/Madd_char_addr_cy [3]),
    .DI(\dpy/char_addr_mult0001 [4]),
    .S(\dpy/Madd_char_addr_lut [4]),
    .O(\dpy/Madd_char_addr_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_char_addr_lut<4>  (
    .I0(\dpy/next_column [4]),
    .I1(\dpy/char_addr_mult0001 [4]),
    .O(\dpy/Madd_char_addr_lut [4])
  );
  XORCY   \dpy/Madd_char_addr_xor<3>  (
    .CI(\dpy/Madd_char_addr_cy [2]),
    .LI(\dpy/Madd_char_addr_lut [3]),
    .O(\dpy/char_addr [3])
  );
  MUXCY   \dpy/Madd_char_addr_cy<3>  (
    .CI(\dpy/Madd_char_addr_cy [2]),
    .DI(\dpy/char_addr_mult0001 [3]),
    .S(\dpy/Madd_char_addr_lut [3]),
    .O(\dpy/Madd_char_addr_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_char_addr_lut<3>  (
    .I0(\dpy/next_column [3]),
    .I1(\dpy/char_addr_mult0001 [3]),
    .O(\dpy/Madd_char_addr_lut [3])
  );
  XORCY   \dpy/Madd_char_addr_xor<2>  (
    .CI(\dpy/Madd_char_addr_cy [1]),
    .LI(\dpy/Madd_char_addr_lut [2]),
    .O(\dpy/char_addr [2])
  );
  MUXCY   \dpy/Madd_char_addr_cy<2>  (
    .CI(\dpy/Madd_char_addr_cy [1]),
    .DI(\dpy/char_addr_mult0001 [2]),
    .S(\dpy/Madd_char_addr_lut [2]),
    .O(\dpy/Madd_char_addr_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_char_addr_lut<2>  (
    .I0(\dpy/next_column [2]),
    .I1(\dpy/char_addr_mult0001 [2]),
    .O(\dpy/Madd_char_addr_lut [2])
  );
  XORCY   \dpy/Madd_char_addr_xor<1>  (
    .CI(\dpy/Madd_char_addr_cy [0]),
    .LI(\dpy/Madd_char_addr_lut [1]),
    .O(\dpy/char_addr [1])
  );
  MUXCY   \dpy/Madd_char_addr_cy<1>  (
    .CI(\dpy/Madd_char_addr_cy [0]),
    .DI(\dpy/char_addr_mult0001 [1]),
    .S(\dpy/Madd_char_addr_lut [1]),
    .O(\dpy/Madd_char_addr_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Madd_char_addr_lut<1>  (
    .I0(\dpy/char_addr_mult0001 [1]),
    .I1(\dpy/next_column [1]),
    .O(\dpy/Madd_char_addr_lut [1])
  );
  XORCY   \dpy/Madd_char_addr_xor<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .LI(\dpy/Madd_char_addr_lut [0]),
    .O(\dpy/char_addr [0])
  );
  MUXCY   \dpy/Madd_char_addr_cy<0>  (
    .CI(analyzer1_data_0_OBUF_547),
    .DI(\dpy/char_addr_mult0001 [0]),
    .S(\dpy/Madd_char_addr_lut [0]),
    .O(\dpy/Madd_char_addr_cy [0])
  );
  FDRE   \dpy/v_3  (
    .C(clock_50MHz),
    .CE(\dpy/hcount_and0000 ),
    .D(\dpy/Result<3>2 ),
    .R(\dpy/v_and0000 ),
    .Q(\dpy/v [3])
  );
  FDRE   \dpy/v_2  (
    .C(clock_50MHz),
    .CE(\dpy/hcount_and0000 ),
    .D(\dpy/Result<2>2 ),
    .R(\dpy/v_and0000 ),
    .Q(\dpy/v [2])
  );
  FDRE   \dpy/v_1  (
    .C(clock_50MHz),
    .CE(\dpy/hcount_and0000 ),
    .D(\dpy/Result<1>2 ),
    .R(\dpy/v_and0000 ),
    .Q(\dpy/v [1])
  );
  FDRE   \dpy/v_0  (
    .C(clock_50MHz),
    .CE(\dpy/hcount_and0000 ),
    .D(\dpy/Result<0>2 ),
    .R(\dpy/v_and0000 ),
    .Q(\dpy/v [0])
  );
  FDRE   \dpy/hcount_9  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [9]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [9])
  );
  FDRE   \dpy/hcount_8  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [8]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [8])
  );
  FDRE   \dpy/hcount_7  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [7]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [7])
  );
  FDRE   \dpy/hcount_6  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [6]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [6])
  );
  FDRE   \dpy/hcount_5  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [5]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [5])
  );
  FDRE   \dpy/hcount_4  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [4]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [4])
  );
  FDRE   \dpy/hcount_3  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [3]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [3])
  );
  FDRE   \dpy/hcount_2  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [2]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [2])
  );
  FDRE   \dpy/hcount_1  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [1]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [1])
  );
  FDRE   \dpy/hcount_0  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/Result [0]),
    .R(\dpy/hcount_and0000 ),
    .Q(\dpy/hcount [0])
  );
  FDRE   \dpy/vcount_9  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<9>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [9])
  );
  FDRE   \dpy/vcount_8  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<8>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [8])
  );
  FDRE   \dpy/vcount_7  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<7>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [7])
  );
  FDRE   \dpy/vcount_6  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<6>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [6])
  );
  FDRE   \dpy/vcount_5  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<5>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [5])
  );
  FDRE   \dpy/vcount_4  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<4>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [4])
  );
  FDRE   \dpy/vcount_3  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<3>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [3])
  );
  FDRE   \dpy/vcount_2  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<2>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [2])
  );
  FDRE   \dpy/vcount_1  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<1>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [1])
  );
  FDRE   \dpy/vcount_0  (
    .C(clock_50MHz),
    .CE(\dpy/hreset_1872 ),
    .D(\dpy/Result<0>1 ),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vcount [0])
  );
  MULT18X18   \dpy/Mmult_font_addr_mult0000  (
    .A({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, \dpy/char [6], \dpy/char [5], \dpy/char [4], \dpy/char [3], \dpy/char [2], \dpy/char [1], \dpy/char [0]}),
    .B({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer4_clock_OBUF_583, 
analyzer4_clock_OBUF_583, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547}),
    .P({\NLW_dpy/Mmult_font_addr_mult0000_P<35>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<34>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<33>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<32>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<31>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<30>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<29>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<28>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<27>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<26>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<25>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<24>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<23>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<22>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<21>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<20>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<19>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<18>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<17>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<16>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<15>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<14>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<13>_UNCONNECTED , \NLW_dpy/Mmult_font_addr_mult0000_P<12>_UNCONNECTED , 
\NLW_dpy/Mmult_font_addr_mult0000_P<11>_UNCONNECTED , \dpy/font_addr_mult0000 [10], \dpy/font_addr_mult0000 [9], \dpy/font_addr_mult0000 [8], 
\dpy/font_addr_mult0000 [7], \dpy/font_addr_mult0000 [6], \dpy/font_addr_mult0000 [5], \dpy/font_addr_mult0000 [4], \dpy/font_addr_mult0000 [3], 
\dpy/font_addr_mult0000 [2], \dpy/font_addr_mult0000 [1], \dpy/font_addr_mult0000 [0]})
  );
  MULT18X18   \dpy/Mmult_char_addr_mult0001  (
    .A({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, \dpy/next_row [5], \dpy/next_row [4], \dpy/next_row [3], \dpy/next_row [2], \dpy/next_row [1], 
\dpy/next_row [0]}),
    .B({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer4_clock_OBUF_583, analyzer1_data_0_OBUF_547, analyzer4_clock_OBUF_583, analyzer1_data_0_OBUF_547, 
analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547}),
    .P({\NLW_dpy/Mmult_char_addr_mult0001_P<35>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<33>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<31>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<29>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<27>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<25>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<23>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<21>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<19>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<17>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<15>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_dpy/Mmult_char_addr_mult0001_P<13>_UNCONNECTED , \NLW_dpy/Mmult_char_addr_mult0001_P<12>_UNCONNECTED , \dpy/char_addr_mult0001 [11], 
\dpy/char_addr_mult0001 [10], \dpy/char_addr_mult0001 [9], \dpy/char_addr_mult0001 [8], \dpy/char_addr_mult0001 [7], \dpy/char_addr_mult0001 [6], 
\dpy/char_addr_mult0001 [5], \dpy/char_addr_mult0001 [4], \dpy/char_addr_mult0001 [3], \dpy/char_addr_mult0001 [2], \dpy/char_addr_mult0001 [1], 
\dpy/char_addr_mult0001 [0]})
  );
  FD   \dpy/reverse  (
    .C(clock_50MHz),
    .D(\dpy/char [7]),
    .Q(\dpy/reverse_1894 )
  );
  FDR   \dpy/pcount  (
    .C(clock_50MHz),
    .D(analyzer4_clock_OBUF_583),
    .R(\dpy/pcount_1893 ),
    .Q(\dpy/pcount_1893 )
  );
  FDE   \dpy/row_5  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_row [5]),
    .Q(\dpy/row [5])
  );
  FDE   \dpy/row_4  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_row [4]),
    .Q(\dpy/row [4])
  );
  FDE   \dpy/row_3  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_row [3]),
    .Q(\dpy/row [3])
  );
  FDE   \dpy/row_2  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_row [2]),
    .Q(\dpy/row [2])
  );
  FDE   \dpy/row_1  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_row [1]),
    .Q(\dpy/row [1])
  );
  FDE   \dpy/row_0  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_row [0]),
    .Q(\dpy/row [0])
  );
  FDE   \dpy/rgb_0  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/rgb_or0000 [0]),
    .Q(\dpy/rgb [0])
  );
  FDE   \dpy/column_6  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_column [6]),
    .Q(\dpy/column [6])
  );
  FDE   \dpy/column_5  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_column [5]),
    .Q(\dpy/column [5])
  );
  FDE   \dpy/column_4  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_column [4]),
    .Q(\dpy/column [4])
  );
  FDE   \dpy/column_3  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_column [3]),
    .Q(\dpy/column [3])
  );
  FDE   \dpy/column_2  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_column [2]),
    .Q(\dpy/column [2])
  );
  FDE   \dpy/column_1  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_column [1]),
    .Q(\dpy/column [1])
  );
  FDE   \dpy/column_0  (
    .C(clock_50MHz),
    .CE(\dpy/en ),
    .D(\dpy/next_column [0]),
    .Q(\dpy/column [0])
  );
  FDRE   \dpy/vsync  (
    .C(clock_50MHz),
    .CE(\dpy/vsyncoff_1928 ),
    .D(analyzer4_clock_OBUF_583),
    .R(\dpy/vsyncon_1929 ),
    .Q(\dpy/vsync_1927 )
  );
  FDRE   \dpy/vblank  (
    .C(clock_50MHz),
    .CE(\dpy/vblankon ),
    .D(analyzer4_clock_OBUF_583),
    .R(\dpy/vcount_and0000 ),
    .Q(\dpy/vblank_1914 )
  );
  FDSE   \dpy/irq_60Hz  (
    .C(clock_50MHz),
    .CE(sel_60Hz),
    .D(analyzer1_data_0_OBUF_547),
    .S(\dpy/vcount_and0000 ),
    .Q(\dpy/irq_60Hz_1877 )
  );
  FDRE   \dpy/hsync  (
    .C(clock_50MHz),
    .CE(\dpy/hsyncoff ),
    .D(analyzer4_clock_OBUF_583),
    .R(\dpy/hsyncon ),
    .Q(\dpy/hsync_1873 )
  );
  FDRE   \dpy/hblank  (
    .C(clock_50MHz),
    .CE(\dpy/hblankon ),
    .D(analyzer4_clock_OBUF_583),
    .R(\dpy/hreset_1872 ),
    .Q(\dpy/hblank_1858 )
  );
  MUXCY   \highmem_wg_cy<0>  (
    .CI(analyzer4_clock_OBUF_583),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[0]),
    .O(highmem_wg_cy[0])
  );
  MUXCY   \highmem_wg_cy<1>  (
    .CI(highmem_wg_cy[0]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[1]),
    .O(highmem_wg_cy[1])
  );
  MUXCY   \highmem_wg_cy<2>  (
    .CI(highmem_wg_cy[1]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[2]),
    .O(highmem_wg_cy[2])
  );
  MUXCY   \highmem_wg_cy<3>  (
    .CI(highmem_wg_cy[2]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[3]),
    .O(highmem_wg_cy[3])
  );
  MUXCY   \highmem_wg_cy<4>  (
    .CI(highmem_wg_cy[3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[4]),
    .O(highmem_wg_cy[4])
  );
  MUXCY   \highmem_wg_cy<5>  (
    .CI(highmem_wg_cy[4]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[5]),
    .O(highmem_wg_cy[5])
  );
  MUXCY   \highmem_wg_cy<6>  (
    .CI(highmem_wg_cy[5]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[6]),
    .O(highmem_wg_cy[6])
  );
  MUXCY   \highmem_wg_cy<7>  (
    .CI(highmem_wg_cy[6]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[7]),
    .O(highmem_wg_cy[7])
  );
  MUXCY   \highmem_wg_cy<8>  (
    .CI(highmem_wg_cy[7]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[8]),
    .O(highmem_wg_cy[8])
  );
  MUXCY   \highmem_wg_cy<9>  (
    .CI(highmem_wg_cy[8]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[9]),
    .O(highmem_wg_cy[9])
  );
  MUXCY   \highmem_wg_cy<10>  (
    .CI(highmem_wg_cy[9]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[10]),
    .O(highmem_wg_cy[10])
  );
  MUXCY   \highmem_wg_cy<11>  (
    .CI(highmem_wg_cy[10]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[11]),
    .O(highmem_wg_cy[11])
  );
  MUXCY   \highmem_wg_cy<12>  (
    .CI(highmem_wg_cy[11]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[12]),
    .O(highmem_wg_cy[12])
  );
  MUXCY   \highmem_wg_cy<13>  (
    .CI(highmem_wg_cy[12]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[13]),
    .O(highmem_wg_cy[13])
  );
  MUXCY   \highmem_wg_cy<14>  (
    .CI(highmem_wg_cy[13]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[14]),
    .O(highmem_wg_cy[14])
  );
  MUXCY   \highmem_wg_cy<15>  (
    .CI(highmem_wg_cy[14]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(highmem_wg_lut[15]),
    .O(highmem)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \dbreset/count_cmp_eq0000_wg_lut<0>  (
    .I0(\dbreset/count [7]),
    .I1(\dbreset/count [4]),
    .I2(\dbreset/count [5]),
    .O(\dbreset/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \dbreset/count_cmp_eq0000_wg_cy<0>  (
    .CI(analyzer4_clock_OBUF_583),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/count_cmp_eq0000_wg_lut [0]),
    .O(\dbreset/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \dbreset/count_cmp_eq0000_wg_lut<1>  (
    .I0(\dbreset/count [6]),
    .I1(\dbreset/count [8]),
    .I2(\dbreset/count [3]),
    .I3(\dbreset/count [9]),
    .O(\dbreset/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \dbreset/count_cmp_eq0000_wg_cy<1>  (
    .CI(\dbreset/count_cmp_eq0000_wg_cy [0]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/count_cmp_eq0000_wg_lut [1]),
    .O(\dbreset/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dbreset/count_cmp_eq0000_wg_lut<2>  (
    .I0(\dbreset/count [12]),
    .I1(\dbreset/count [10]),
    .I2(\dbreset/count [1]),
    .I3(\dbreset/count [11]),
    .O(\dbreset/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \dbreset/count_cmp_eq0000_wg_cy<2>  (
    .CI(\dbreset/count_cmp_eq0000_wg_cy [1]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/count_cmp_eq0000_wg_lut [2]),
    .O(\dbreset/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \dbreset/count_cmp_eq0000_wg_lut<3>  (
    .I0(\dbreset/count [13]),
    .I1(\dbreset/count [14]),
    .I2(\dbreset/count [0]),
    .I3(\dbreset/count [15]),
    .O(\dbreset/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \dbreset/count_cmp_eq0000_wg_cy<3>  (
    .CI(\dbreset/count_cmp_eq0000_wg_cy [2]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/count_cmp_eq0000_wg_lut [3]),
    .O(\dbreset/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dbreset/count_cmp_eq0000_wg_lut<4>  (
    .I0(\dbreset/count [16]),
    .I1(\dbreset/count [17]),
    .I2(\dbreset/count [2]),
    .I3(\dbreset/count [18]),
    .O(\dbreset/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \dbreset/count_cmp_eq0000_wg_cy<4>  (
    .CI(\dbreset/count_cmp_eq0000_wg_cy [3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\dbreset/count_cmp_eq0000_wg_lut [4]),
    .O(\dbreset/count_cmp_eq0000 )
  );
  MUXCY   \c1/clk_300Hz_cmp_eq0000_wg_cy<0>  (
    .CI(analyzer4_clock_OBUF_583),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\c1/clk_300Hz_cmp_eq0000_wg_lut [0]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \c1/clk_300Hz_cmp_eq0000_wg_lut<1>  (
    .I0(\c1/lfsr [6]),
    .I1(\c1/lfsr [7]),
    .I2(\c1/lfsr [4]),
    .I3(\c1/lfsr [8]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \c1/clk_300Hz_cmp_eq0000_wg_cy<1>  (
    .CI(\c1/clk_300Hz_cmp_eq0000_wg_cy [0]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\c1/clk_300Hz_cmp_eq0000_wg_lut [1]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \c1/clk_300Hz_cmp_eq0000_wg_lut<2>  (
    .I0(\c1/lfsr [9]),
    .I1(\c1/lfsr [10]),
    .I2(\c1/lfsr [2]),
    .I3(\c1/lfsr [11]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \c1/clk_300Hz_cmp_eq0000_wg_cy<2>  (
    .CI(\c1/clk_300Hz_cmp_eq0000_wg_cy [1]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\c1/clk_300Hz_cmp_eq0000_wg_lut [2]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \c1/clk_300Hz_cmp_eq0000_wg_lut<3>  (
    .I0(\c1/lfsr [12]),
    .I1(\c1/lfsr [13]),
    .I2(\c1/lfsr [1]),
    .I3(\c1/lfsr [14]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \c1/clk_300Hz_cmp_eq0000_wg_cy<3>  (
    .CI(\c1/clk_300Hz_cmp_eq0000_wg_cy [2]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\c1/clk_300Hz_cmp_eq0000_wg_lut [3]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \c1/clk_300Hz_cmp_eq0000_wg_lut<4>  (
    .I0(\c1/lfsr [15]),
    .I1(\c1/lfsr [16]),
    .I2(\c1/lfsr [3]),
    .I3(\c1/lfsr [17]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \c1/clk_300Hz_cmp_eq0000_wg_cy<4>  (
    .CI(\c1/clk_300Hz_cmp_eq0000_wg_cy [3]),
    .DI(analyzer1_data_0_OBUF_547),
    .S(\c1/clk_300Hz_cmp_eq0000_wg_lut [4]),
    .O(clk_300Hz)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  vga_out_blank_b1 (
    .I0(\dpy/vblank_1914 ),
    .I1(\dpy/hblank_1858 ),
    .O(vga_out_blank_b_OBUF_2579)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \hexdisp1/state_FSM_Out31  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .O(\hexdisp1/state_cmp_eq0006 )
  );
  LUT4 #(
    .INIT ( 16'hF1E1 ))
  \hexdisp1/disp_ce_b_mux00001  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(\hexdisp1/state_FSM_FFd3_2244 ),
    .I3(\hexdisp1/disp_ce_b_2154 ),
    .O(\hexdisp1/disp_ce_b_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h7064 ))
  \hexdisp1/disp_rs_mux00001  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(\hexdisp1/disp_rs_2168 ),
    .I3(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(\hexdisp1/disp_rs_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hexdisp1/dot_index_mux0000<4>41  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(\hexdisp1/N23 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \kbd/Result<1>1  (
    .I0(\kbd/wptr [1]),
    .I1(\kbd/wptr [0]),
    .O(\kbd/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \kbd/Mcount_rptr_xor<1>11  (
    .I0(\kbd/rptr [1]),
    .I1(\kbd/rptr [0]),
    .O(\kbd/Result<1>1_2291 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hexdisp1/Mcount_count_xor<1>11  (
    .I0(\hexdisp1/count [1]),
    .I1(\hexdisp1/count [0]),
    .O(\hexdisp1/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dpy/Mcount_v_xor<1>11  (
    .I0(\dpy/v [1]),
    .I1(\dpy/v [0]),
    .O(\dpy/Result<1>2 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \c1/lfsr_not00011  (
    .I0(\c1/lfsr [14]),
    .I1(\c1/lfsr [17]),
    .O(\c1/lfsr_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \kbd/Mcount_rptr_xor<2>11  (
    .I0(\kbd/rptr [0]),
    .I1(\kbd/rptr [2]),
    .I2(\kbd/rptr [1]),
    .O(\kbd/Result<2>1_2293 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \hexdisp1/Mcount_count_xor<2>11  (
    .I0(\hexdisp1/count [0]),
    .I1(\hexdisp1/count [2]),
    .I2(\hexdisp1/count [1]),
    .O(\hexdisp1/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \dpy/Mcount_v_xor<2>11  (
    .I0(\dpy/v [0]),
    .I1(\dpy/v [2]),
    .I2(\dpy/v [1]),
    .O(\dpy/Result<2>2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \hexdisp1/Result<3>1  (
    .I0(\hexdisp1/count [3]),
    .I1(\hexdisp1/count [0]),
    .I2(\hexdisp1/count [2]),
    .I3(\hexdisp1/count [1]),
    .O(\hexdisp1/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dpy/Mcount_v_xor<3>11  (
    .I0(\dpy/v [3]),
    .I1(\dpy/v [2]),
    .I2(\dpy/v [1]),
    .I3(\dpy/v [0]),
    .O(\dpy/Result<3>2 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hexdisp1/state_FSM_FFd2-In12  (
    .I0(\hexdisp1/char_index [0]),
    .I1(\hexdisp1/char_index [3]),
    .I2(\hexdisp1/char_index [2]),
    .I3(\hexdisp1/char_index [1]),
    .O(\hexdisp1/state_FSM_FFd2-In12_2241 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dbreset/Mxor_new_xor0000_Result1  (
    .I0(\dbreset/new_1657 ),
    .I1(button_enter_IBUF_603),
    .O(\dbreset/new_not0001_inv )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \kbd/count_cmp_eq00001  (
    .I0(\kbd/count [1]),
    .I1(\kbd/count [0]),
    .I2(\kbd/count [3]),
    .I3(\kbd/count [2]),
    .O(\kbd/count_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \hexdisp1/char_index_mux0000<0>1  (
    .I0(\hexdisp1/char_index [3]),
    .I1(\hexdisp1/N39 ),
    .I2(\hexdisp1/N23 ),
    .I3(\hexdisp1/N41 ),
    .O(\hexdisp1/char_index_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \kbd/count_mux0000<2>1  (
    .I0(\kbd/count [1]),
    .I1(\kbd/count [0]),
    .I2(\kbd/sample ),
    .I3(\kbd/and0001_cmp_eq0000 ),
    .O(\kbd/count_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hexdisp1/dot_index_mux0000<0>31  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .O(\hexdisp1/N14 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/char_index_mux0000<3>_SW0  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/char_index [2]),
    .I2(\hexdisp1/char_index [3]),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'hEBEA ))
  \hexdisp1/char_index_mux0000<3>  (
    .I0(\hexdisp1/N23 ),
    .I1(\hexdisp1/N39 ),
    .I2(\hexdisp1/char_index [0]),
    .I3(N6),
    .O(\hexdisp1/char_index_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h9998 ))
  \hexdisp1/char_index_mux0000<2>_SW0  (
    .I0(\hexdisp1/char_index [0]),
    .I1(\hexdisp1/char_index [1]),
    .I2(\hexdisp1/char_index [2]),
    .I3(\hexdisp1/char_index [3]),
    .O(N8)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \hexdisp1/char_index_mux0000<2>  (
    .I0(\hexdisp1/N39 ),
    .I1(\hexdisp1/char_index [1]),
    .I2(N8),
    .I3(\hexdisp1/N23 ),
    .O(\hexdisp1/char_index_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hA9A8 ))
  \hexdisp1/char_index_mux0000<1>_SW0  (
    .I0(\hexdisp1/char_index [2]),
    .I1(\hexdisp1/char_index [0]),
    .I2(\hexdisp1/char_index [1]),
    .I3(\hexdisp1/char_index [3]),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \hexdisp1/char_index_mux0000<1>  (
    .I0(\hexdisp1/N39 ),
    .I1(\hexdisp1/char_index [2]),
    .I2(N10),
    .I3(\hexdisp1/N23 ),
    .O(\hexdisp1/char_index_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \hexdisp1/dot_index_mux0000<5>31  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_cmp_eq0000_2249 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .I3(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/N37 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \dpy/vsyncoff_SW0  (
    .I0(\dpy/vcount [4]),
    .I1(\dpy/vcount [1]),
    .I2(\dpy/vcount [0]),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dpy/vsyncoff  (
    .I0(\dpy/vcount [5]),
    .I1(\dpy/N1 ),
    .I2(N12),
    .I3(\dpy/hreset_1872 ),
    .O(\dpy/vsyncoff_1928 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dpy/hsyncon1  (
    .I0(N967),
    .I1(\dpy/N2 ),
    .I2(\dpy/hcount [2]),
    .O(\dpy/hsyncon )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \dpy/vsyncon_SW0  (
    .I0(\dpy/vcount [4]),
    .I1(\dpy/vcount [1]),
    .I2(\dpy/vcount [0]),
    .O(N16)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dpy/vsyncon  (
    .I0(\dpy/vcount [5]),
    .I1(\dpy/N1 ),
    .I2(N16),
    .I3(\dpy/hreset_1872 ),
    .O(\dpy/vsyncon_1929 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \dpy/hsyncoff1_SW0  (
    .I0(\dpy/hcount [8]),
    .I1(\dpy/pcount_1893 ),
    .I2(\dpy/hcount [3]),
    .I3(\dpy/hcount [0]),
    .O(N18)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \dpy/hsyncoff1  (
    .I0(\dpy/hcount [9]),
    .I1(\dpy/hcount [4]),
    .I2(N18),
    .I3(\dpy/hcount [7]),
    .O(\dpy/N2 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hexdisp1/dreset4  (
    .I0(\hexdisp1/reset_count [4]),
    .I1(\hexdisp1/reset_count [3]),
    .I2(\hexdisp1/reset_count [2]),
    .I3(\hexdisp1/reset_count [1]),
    .O(\hexdisp1/dreset4_2217 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hexdisp1/dreset9  (
    .I0(\hexdisp1/reset_count [0]),
    .I1(\hexdisp1/reset_count [7]),
    .I2(\hexdisp1/reset_count [6]),
    .I3(\hexdisp1/reset_count [5]),
    .O(\hexdisp1/dreset9_2218 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/dreset10  (
    .I0(\hexdisp1/dreset4_2217 ),
    .I1(\hexdisp1/dreset9_2218 ),
    .O(\hexdisp1/dreset )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hexdisp1/state_FSM_FFd3-In31  (
    .I0(\hexdisp1/char_index [0]),
    .I1(\hexdisp1/char_index [3]),
    .I2(\hexdisp1/char_index [2]),
    .I3(\hexdisp1/char_index [1]),
    .O(\hexdisp1/state_FSM_FFd3-In31_2245 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hexdisp1/dot_index_mux0000<7>9  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .O(\hexdisp1/dot_index_mux0000<5>22 )
  );
  LUT4 #(
    .INIT ( 16'hCC4C ))
  \hexdisp1/dot_index_mux0000<7>13  (
    .I0(\hexdisp1/dot_index [1]),
    .I1(\hexdisp1/dot_index_mux0000<5>22 ),
    .I2(\hexdisp1/dot_index [0]),
    .I3(\hexdisp1/state_cmp_eq0000_2249 ),
    .O(\hexdisp1/dot_index_mux0000<7>13_2211 )
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \hexdisp1/dot_index_mux0000<7>28  (
    .I0(\hexdisp1/state_cmp_eq0001_2251 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(\hexdisp1/dot_index [1]),
    .I3(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/dot_index_mux0000<7>28_2212 )
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \hexdisp1/dot_index_mux0000<4>57  (
    .I0(\hexdisp1/dot_index [5]),
    .I1(\hexdisp1/dot_index_mux0000<4>23 ),
    .I2(\hexdisp1/state_cmp_eq0000_2249 ),
    .I3(\hexdisp1/N91 ),
    .O(\hexdisp1/dot_index_mux0000<4>57_2200 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \hexdisp1/dot_index_mux0000<4>110  (
    .I0(\hexdisp1/state_cmp_eq0001_2251 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/char_index [3]),
    .I3(\hexdisp1/N41 ),
    .O(\hexdisp1/dot_index_mux0000<4>110_2195 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hexdisp1/dot_index_mux0000<4>133  (
    .I0(\hexdisp1/dot_index [5]),
    .I1(\hexdisp1/N28 ),
    .I2(\hexdisp1/state_cmp_eq0001_2251 ),
    .O(\hexdisp1/dot_index_mux0000<4>133_2196 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \hexdisp1/dot_index_mux0000<5>71  (
    .I0(\hexdisp1/state_cmp_eq0001_2251 ),
    .I1(\hexdisp1/state_FSM_FFd3_2244 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .O(\hexdisp1/N93 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/char_index_mux0000<1>31  (
    .I0(\hexdisp1/char_index [0]),
    .I1(\hexdisp1/char_index [2]),
    .I2(\hexdisp1/char_index [1]),
    .O(\hexdisp1/N41 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \hexdisp1/char_index_mux0000<1>21  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(\hexdisp1/state_cmp_eq0001_2251 ),
    .O(\hexdisp1/N39 )
  );
  LUT4 #(
    .INIT ( 16'h111B ))
  \hexdisp1/dot_index_mux0000<0>21  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_FSM_FFd3_2244 ),
    .I2(\hexdisp1/char_index [3]),
    .I3(\hexdisp1/N41 ),
    .O(\hexdisp1/N11 )
  );
  LUT4 #(
    .INIT ( 16'hB111 ))
  \hexdisp1/dot_index_mux0000<0>1011  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/N14 ),
    .I2(\hexdisp1/state_cmp_eq0001_2251 ),
    .I3(\hexdisp1/N11 ),
    .O(\hexdisp1/N74 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hexdisp1/dot_index_mux0000<9>1_SW0  (
    .I0(\hexdisp1/state_cmp_eq0000_2249 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .O(N25)
  );
  LUT4 #(
    .INIT ( 16'hFF8B ))
  \hexdisp1/dot_index_mux0000<9>1  (
    .I0(\hexdisp1/state_cmp_eq0001_2251 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(N25),
    .I3(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(\hexdisp1/N58 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \hexdisp1/state_cmp_eq0000_SW0  (
    .I0(\hexdisp1/dot_index [8]),
    .I1(\hexdisp1/dot_index [9]),
    .I2(\hexdisp1/dot_index [7]),
    .O(N27)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \hexdisp1/state_cmp_eq0000  (
    .I0(\hexdisp1/dot_index [5]),
    .I1(\hexdisp1/dot_index [6]),
    .I2(N27),
    .I3(\hexdisp1/N91 ),
    .O(\hexdisp1/state_cmp_eq0000_2249 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \hexdisp1/dot_index_mux0000<7>1_SW0  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .O(N29)
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \hexdisp1/dot_index_mux0000<7>1  (
    .I0(\hexdisp1/char_index [3]),
    .I1(\hexdisp1/N39 ),
    .I2(\hexdisp1/N41 ),
    .I3(N29),
    .O(\hexdisp1/N13 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \hexdisp1/dot_index_mux0000<0>71  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .O(\hexdisp1/N34 )
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \hexdisp1/dot_index_mux0000<5>511  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/state_FSM_FFd3_2244 ),
    .I2(\hexdisp1/state_cmp_eq0001_2251 ),
    .I3(\hexdisp1/N11 ),
    .O(\hexdisp1/N83 )
  );
  LUT4 #(
    .INIT ( 16'h028A ))
  \hexdisp1/dot_index_mux0000<0>1021  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd3_2244 ),
    .I3(\hexdisp1/state_cmp_eq0001_2251 ),
    .O(\hexdisp1/N96 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \hexdisp1/dot_index_mux0000<3>5  (
    .I0(\hexdisp1/dot_index [6]),
    .I1(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I2(\hexdisp1/N96 ),
    .I3(\hexdisp1/N74 ),
    .O(\hexdisp1/dot_index_mux0000<3>5_2194 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hexdisp1/dot_index_mux0000<6>0  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(\hexdisp1/dot_index_mux0000<5>0 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hexdisp1/dot_index_mux0000<6>75  (
    .I0(\hexdisp1/N37 ),
    .I1(\hexdisp1/dot_index [2]),
    .I2(\hexdisp1/dot_index [1]),
    .O(\hexdisp1/dot_index_mux0000<6>75_2209 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \hexdisp1/dot_index_mux0000<5>13  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/dot_index [2]),
    .I2(\hexdisp1/dot_index [1]),
    .I3(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/dot_index_mux0000<5>13_2204 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \hexdisp1/dot_index_mux0000<5>34  (
    .I0(\hexdisp1/dot_index_mux0000<5>22 ),
    .I1(\hexdisp1/state_cmp_eq0000_2249 ),
    .I2(\hexdisp1/N83 ),
    .I3(\hexdisp1/dot_index_mux0000<5>13_2204 ),
    .O(\hexdisp1/dot_index_mux0000<5>34_2206 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hexdisp1/dot_index_mux0000<5>89  (
    .I0(\hexdisp1/N37 ),
    .I1(\hexdisp1/dot_index [3]),
    .I2(\hexdisp1/dot_index [2]),
    .I3(\hexdisp1/dot_index [1]),
    .O(\hexdisp1/dot_index_mux0000<5>89_2207 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hexdisp1/dot_index_mux0000<3>112  (
    .I0(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I1(\hexdisp1/state_cmp_eq0000_2249 ),
    .O(\hexdisp1/N64 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \hexdisp1/dot_index_mux0000<0>1111  (
    .I0(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I1(\hexdisp1/dot_index [7]),
    .I2(\hexdisp1/N34 ),
    .I3(\hexdisp1/dot_index [6]),
    .O(\hexdisp1/N95 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dpy/hblankon1  (
    .I0(\dpy/hblankon_cmp_eq0000_1860 ),
    .I1(\dpy/pcount_1893 ),
    .O(\dpy/hblankon )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \dpy/vblankon1  (
    .I0(\dpy/N1 ),
    .I1(\dpy/hreset_1872 ),
    .I2(N966),
    .I3(\dpy/vcount [4]),
    .O(\dpy/vblankon )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dpy/hcount_and00001  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/pcount_1893 ),
    .O(\dpy/hcount_and0000 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \kbd/Result<2>1  (
    .I0(\kbd/wptr [0]),
    .I1(\kbd/wptr [2]),
    .I2(\kbd/wptr [1]),
    .O(\kbd/Result [2])
  );
  LUT4 #(
    .INIT ( 16'hF8C8 ))
  \hexdisp1/Maddsub_dot_index_share0000_cy<5>11  (
    .I0(\hexdisp1/N91 ),
    .I1(\hexdisp1/dot_index [5]),
    .I2(\hexdisp1/N34 ),
    .I3(\hexdisp1/N28 ),
    .O(\hexdisp1/Maddsub_dot_index_share0000_cy [5])
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \hexdisp1/dot_index_mux0000<1>34  (
    .I0(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I1(\hexdisp1/N96 ),
    .I2(\hexdisp1/dot_index [7]),
    .I3(\hexdisp1/dot_index [6]),
    .O(\hexdisp1/dot_index_mux0000<1>34_2189 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \kbd/sample1  (
    .I0(\kbd/ps2c_sync [2]),
    .I1(\kbd/ps2c_sync [1]),
    .O(\kbd/sample )
  );
  LUT4 #(
    .INIT ( 16'h0C08 ))
  \dpy/v_and00001  (
    .I0(\dpy/vcount_and0000 ),
    .I1(\dpy/hreset_1872 ),
    .I2(\dpy/pcount_1893 ),
    .I3(\dpy/next_row_cmp_eq0000 ),
    .O(\dpy/v_and0000 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hexdisp1/dot_index_mux0000<4>62  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/state_cmp_eq0001_2251 ),
    .O(\hexdisp1/N42 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hexdisp1/dot_index_mux0000<2>42  (
    .I0(\hexdisp1/N31 ),
    .I1(\hexdisp1/dot_index [7]),
    .O(\hexdisp1/N99 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/dot_index_mux0000<6>22  (
    .I0(\hexdisp1/dot_index [2]),
    .I1(\hexdisp1/dot_index [1]),
    .I2(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/N25 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/dot_index_mux0000<4>54  (
    .I0(\hexdisp1/N25 ),
    .I1(\hexdisp1/dot_index [4]),
    .I2(\hexdisp1/dot_index [3]),
    .O(\hexdisp1/N28 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \hexdisp1/dot_index_mux0000<0>61  (
    .I0(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I1(\hexdisp1/N14 ),
    .I2(\hexdisp1/dot_index [6]),
    .I3(\hexdisp1/N42 ),
    .O(\hexdisp1/N31 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/state_cmp_eq0001_SW0  (
    .I0(\hexdisp1/dot_index [8]),
    .I1(\hexdisp1/dot_index [7]),
    .I2(\hexdisp1/N28 ),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hexdisp1/state_cmp_eq0001  (
    .I0(\hexdisp1/dot_index [6]),
    .I1(\hexdisp1/dot_index [5]),
    .I2(\hexdisp1/dot_index [9]),
    .I3(N37),
    .O(\hexdisp1/state_cmp_eq0001_2251 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \hexdisp1/dot_index_mux0000<0>59  (
    .I0(\hexdisp1/dot_index [9]),
    .I1(\hexdisp1/dot_index_mux0000<0>29_2180 ),
    .I2(\hexdisp1/dot_index_mux0000<0>41 ),
    .O(\hexdisp1/dot_index_mux0000<0>59_2183 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \hexdisp1/dot_index_mux0000<0>87  (
    .I0(\hexdisp1/dot_index [8]),
    .I1(\hexdisp1/N99 ),
    .I2(\hexdisp1/dot_index [9]),
    .I3(\hexdisp1/N95 ),
    .O(\hexdisp1/dot_index_mux0000<0>87_2184 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \dpy/vsyncoff1_SW0  (
    .I0(\dpy/vcount [3]),
    .I1(\dpy/vcount [2]),
    .I2(\dpy/vcount [9]),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dpy/vsyncoff1  (
    .I0(\dpy/vcount [6]),
    .I1(\dpy/vcount [7]),
    .I2(N44),
    .I3(\dpy/vcount [8]),
    .O(\dpy/N1 )
  );
  LUT4 #(
    .INIT ( 16'hBAAA ))
  \kbd/count_not00021  (
    .I0(\kbd/sample ),
    .I1(\kbd/count_cmp_eq0000 ),
    .I2(clk_300Hz),
    .I3(\kbd/timeout_2331 ),
    .O(\kbd/count_not0002 )
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \kbd/timeout_not00011  (
    .I0(clk_300Hz),
    .I1(\kbd/sample ),
    .I2(\kbd/count_cmp_eq0000 ),
    .I3(\kbd/and0001_cmp_eq0000 ),
    .O(\kbd/timeout_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \kbd/and0001_cmp_eq00001  (
    .I0(\kbd/count [3]),
    .I1(\kbd/count [0]),
    .I2(\kbd/count [2]),
    .I3(\kbd/count [1]),
    .O(\kbd/and0001_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \dpy/rgb_or0000<0>5  (
    .I0(\dpy/N1 ),
    .I1(\dpy/N21 ),
    .I2(\dpy/vcount [4]),
    .I3(\dpy/hblankon_cmp_eq0000_1860 ),
    .O(\dpy/rgb_or0000<0>5_1899 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \dpy/rgb_or0000<0>19  (
    .I0(\dpy/hcount [3]),
    .I1(\dpy/N19 ),
    .I2(\dpy/hcount [2]),
    .I3(\dpy/hcount [4]),
    .O(\dpy/rgb_or0000<0>19_1897 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dpy/rgb_or0000<0>32  (
    .I0(\dpy/hcount [8]),
    .I1(\dpy/hcount [0]),
    .I2(\dpy/hcount [9]),
    .I3(\dpy/hcount [7]),
    .O(\dpy/rgb_or0000<0>32_1898 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \dpy/rgb_or0000<0>50  (
    .I0(\dpy/vcount [9]),
    .I1(\dpy/vcount [5]),
    .I2(N968),
    .O(\dpy/rgb_or0000<0>50_1900 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dpy/rgb_or0000<0>63  (
    .I0(\dpy/vcount [3]),
    .I1(\dpy/vcount [2]),
    .I2(\dpy/vcount [1]),
    .I3(\dpy/vcount [0]),
    .O(\dpy/rgb_or0000<0>63_1901 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dpy/rgb_or0000<0>75  (
    .I0(\dpy/rgb_or0000<0>19_1897 ),
    .I1(\dpy/rgb_or0000<0>32_1898 ),
    .I2(\dpy/rgb_or0000<0>50_1900 ),
    .I3(\dpy/rgb_or0000<0>63_1901 ),
    .O(\dpy/rgb_or0000<0>75_1902 )
  );
  LUT4 #(
    .INIT ( 16'hFFBE ))
  \dpy/rgb_or0000<0>117  (
    .I0(\dpy/rgb_or0000<0>5_1899 ),
    .I1(\dpy/reverse_1894 ),
    .I2(\dpy/_COND_3 ),
    .I3(\dpy/rgb_or0000<0>75_1902 ),
    .O(\dpy/rgb_or0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \cpu/ctl/asel_cmp_eq00012  (
    .I0(\cpu/ctl/N13 ),
    .I1(\cpu/inst [26]),
    .I2(\cpu/inst [31]),
    .I3(\cpu/inst [30]),
    .O(\cpu/ctl/mwrite_next_norst )
  );
  LUT4 #(
    .INIT ( 16'hCF89 ))
  \hexdisp1/Mrom_dots351  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [3]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [2]),
    .O(\hexdisp1/Mrom_dots35 )
  );
  LUT4 #(
    .INIT ( 16'hFB79 ))
  \hexdisp1/Mrom_dots372  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [0]),
    .I2(\hexdisp1/nibble [1]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots37 )
  );
  LUT4 #(
    .INIT ( 16'hF3B1 ))
  \hexdisp1/Mrom_dots361  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [0]),
    .I2(\hexdisp1/nibble [3]),
    .I3(\hexdisp1/nibble [2]),
    .O(\hexdisp1/Mrom_dots36 )
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \hexdisp1/Mrom_dots321  (
    .I0(\hexdisp1/nibble [0]),
    .I1(\hexdisp1/nibble [3]),
    .I2(\hexdisp1/nibble [1]),
    .I3(\hexdisp1/nibble [2]),
    .O(\hexdisp1/Mrom_dots32 )
  );
  LUT4 #(
    .INIT ( 16'hFF61 ))
  \hexdisp1/Mrom_dots341  (
    .I0(\hexdisp1/nibble [0]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [2]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots34 )
  );
  LUT4 #(
    .INIT ( 16'hA88C ))
  \hexdisp1/Mrom_dots381  (
    .I0(\hexdisp1/nibble [3]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [2]),
    .I3(\hexdisp1/nibble [0]),
    .O(\hexdisp1/Mrom_dots38 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \kbd/Mxor_and0000_xor0000_xo<4>1  (
    .I0(\kbd/shift [3]),
    .I1(\kbd/shift [4]),
    .I2(\kbd/shift [1]),
    .I3(\kbd/shift [2]),
    .O(\kbd/Mxor_and0000_xor0000_xo [4])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \kbd/Mxor_and0000_xor0000_xo<5>1  (
    .I0(\kbd/shift [7]),
    .I1(\kbd/shift [8]),
    .I2(\kbd/shift [5]),
    .I3(\kbd/shift [6]),
    .O(\kbd/Mxor_and0000_xor0000_xo [5])
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \kbd/_and000011_SW0  (
    .I0(keyboard_data_IBUF_2344),
    .I1(\kbd/sample ),
    .I2(\kbd/and0001_cmp_eq0000 ),
    .I3(\kbd/shift [0]),
    .O(N46)
  );
  LUT4 #(
    .INIT ( 16'h0096 ))
  \kbd/_and000011  (
    .I0(\kbd/shift [9]),
    .I1(\kbd/Mxor_and0000_xor0000_xo [5]),
    .I2(\kbd/Mxor_and0000_xor0000_xo [4]),
    .I3(N46),
    .O(\kbd/wptr_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h4501 ))
  \hexdisp1/Mrom_dots101  (
    .I0(\hexdisp1/nibble [3]),
    .I1(\hexdisp1/nibble [0]),
    .I2(\hexdisp1/nibble [1]),
    .I3(\hexdisp1/nibble [2]),
    .O(\hexdisp1/Mrom_dots10 )
  );
  LUT4 #(
    .INIT ( 16'h8ACA ))
  \hexdisp1/Mrom_dots271  (
    .I0(\hexdisp1/nibble [3]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [2]),
    .I3(\hexdisp1/nibble [0]),
    .O(\hexdisp1/Mrom_dots27 )
  );
  LUT4 #(
    .INIT ( 16'hDF46 ))
  \hexdisp1/Mrom_dots1111  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [3]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [1]),
    .O(\hexdisp1/Mrom_dots11 )
  );
  LUT4 #(
    .INIT ( 16'h797F ))
  \hexdisp1/Mrom_dots141  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [0]),
    .I2(\hexdisp1/nibble [2]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots14 )
  );
  LUT4 #(
    .INIT ( 16'h7FE7 ))
  \hexdisp1/Mrom_dots301  (
    .I0(\hexdisp1/nibble [3]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [2]),
    .I3(\hexdisp1/nibble [0]),
    .O(\hexdisp1/Mrom_dots30 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \mdin<8>_SW1  (
    .I0(mdin_sel[1]),
    .I1(dpyout[8]),
    .O(N49)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \hexdisp1/Mrom_dots12  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [3]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [1]),
    .O(\hexdisp1/Mrom_dots )
  );
  LUT4 #(
    .INIT ( 16'h3FB1 ))
  \hexdisp1/Mrom_dots111  (
    .I0(\hexdisp1/nibble [0]),
    .I1(\hexdisp1/nibble [2]),
    .I2(\hexdisp1/nibble [1]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots1 )
  );
  LUT4 #(
    .INIT ( 16'h0C29 ))
  \hexdisp1/Mrom_dots31  (
    .I0(\hexdisp1/nibble [3]),
    .I1(\hexdisp1/nibble [0]),
    .I2(\hexdisp1/nibble [1]),
    .I3(\hexdisp1/nibble [2]),
    .O(\hexdisp1/Mrom_dots3 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \hexdisp1/Mrom_dots61  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots6 )
  );
  LUT4 #(
    .INIT ( 16'h6F7D ))
  \hexdisp1/Mrom_dots221  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [0]),
    .I2(\hexdisp1/nibble [1]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots22_2061 )
  );
  LUT4 #(
    .INIT ( 16'h6679 ))
  \hexdisp1/Mrom_dots51  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [2]),
    .I2(\hexdisp1/nibble [3]),
    .I3(\hexdisp1/nibble [0]),
    .O(\hexdisp1/Mrom_dots5 )
  );
  LUT4 #(
    .INIT ( 16'h53ED ))
  \hexdisp1/Mrom_dots41  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [3]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [2]),
    .O(\hexdisp1/Mrom_dots4 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \hexdisp1/char_index<1>31  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/char_index [0]),
    .I2(ps2out[3]),
    .I3(ps2out[7]),
    .O(\hexdisp1/char_index<1>4 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \hexdisp1/char_index<1>21  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/char_index [0]),
    .I2(ps2out[2]),
    .I3(ps2out[6]),
    .O(\hexdisp1/char_index<1>3 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \hexdisp1/char_index<1>11  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/char_index [0]),
    .I2(ps2out[1]),
    .I3(ps2out[5]),
    .O(\hexdisp1/char_index<1>2 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \hexdisp1/char_index<1>1  (
    .I0(\hexdisp1/char_index [1]),
    .I1(\hexdisp1/char_index [0]),
    .I2(ps2out[0]),
    .I3(ps2out[4]),
    .O(\hexdisp1/char_index<1>1_2116 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hexdisp1/disp_data_out_mux000017  (
    .I0(\hexdisp1/dot_index [1]),
    .I1(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/disp_data_out_mux000017_2161 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \hexdisp1/Mrom_dots81  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [3]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [1]),
    .O(\hexdisp1/Mrom_dots8 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \hexdisp1/Mrom_dots1311  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [2]),
    .I2(\hexdisp1/nibble [3]),
    .I3(\hexdisp1/nibble [0]),
    .O(\hexdisp1/Mrom_dots12_2057 )
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \dpy/next_column<5>1  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/column [5]),
    .I2(\dpy/Madd_next_column_addsub0000_cy[4] ),
    .I3(\dpy/next_column_cmp_eq0000 ),
    .O(\dpy/next_column [5])
  );
  LUT4 #(
    .INIT ( 16'h2227 ))
  \cpu/ctl/werf1  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(\cpu/ctl/mwrite_990 ),
    .I2(\cpu/ctl/mem_next_985 ),
    .I3(\cpu/ctl/annul_978 ),
    .O(\cpu/werf )
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \dpy/next_column<3>1  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/column [3]),
    .I2(\dpy/Madd_next_column_addsub0000_cy[2] ),
    .I3(\dpy/next_column_cmp_eq0000 ),
    .O(\dpy/next_column [3])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \cpu/ctl/wasel1  (
    .I0(\cpu/ctl/asel_or0000_980 ),
    .I1(\cpu/interrupt ),
    .O(\cpu/wasel )
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wa<4>1  (
    .I0(\cpu/inst [25]),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/rc_save [4]),
    .I3(\cpu/wasel ),
    .O(\cpu/wa [4])
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wa<3>1  (
    .I0(\cpu/inst [24]),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/rc_save [3]),
    .I3(\cpu/wasel ),
    .O(\cpu/wa [3])
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wa<2>1  (
    .I0(\cpu/inst [23]),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/rc_save [2]),
    .I3(\cpu/wasel ),
    .O(\cpu/wa [2])
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wa<1>1  (
    .I0(\cpu/inst [22]),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/rc_save [1]),
    .I3(\cpu/wasel ),
    .O(\cpu/wa [1])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \cpu/wa<0>1  (
    .I0(\cpu/inst [21]),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/wasel ),
    .I3(\cpu/rc_save [0]),
    .O(\cpu/wa [0])
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \dpy/next_column<1>1  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/column [1]),
    .I2(\dpy/column [0]),
    .I3(\dpy/next_column_cmp_eq0000 ),
    .O(\dpy/next_column [1])
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \dpy/next_column<0>1  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/column [0]),
    .I2(\dpy/next_column_cmp_eq0000 ),
    .O(\dpy/next_column [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dpy/hblankon_cmp_eq000011  (
    .I0(\dpy/hcount [2]),
    .I1(\dpy/hcount [0]),
    .I2(\dpy/hcount [1]),
    .O(\dpy/next_column_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h5014 ))
  \dpy/next_column<4>  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/Madd_next_column_addsub0000_cy[2] ),
    .I2(\dpy/column [4]),
    .I3(N77),
    .O(\dpy/next_column [4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dpy/Madd_next_column_addsub0000_cy<4>11  (
    .I0(\dpy/Madd_next_column_addsub0000_cy[2] ),
    .I1(\dpy/column [3]),
    .I2(\dpy/column [4]),
    .O(\dpy/Madd_next_column_addsub0000_cy[4] )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dpy/Madd_next_column_addsub0000_cy<2>11  (
    .I0(\dpy/column [0]),
    .I1(\dpy/column [1]),
    .I2(\dpy/column [2]),
    .O(\dpy/Madd_next_column_addsub0000_cy[2] )
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \dpy/next_column<6>  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/column [6]),
    .I2(\dpy/column [5]),
    .I3(N79),
    .O(\dpy/next_column [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/ctl/mwrite_next1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/ctl/mwrite_next_norst ),
    .O(mwe)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \cpu/ctl/asel_cmp_eq000111  (
    .I0(\cpu/inst [28]),
    .I1(\cpu/inst [27]),
    .I2(\cpu/inst [29]),
    .O(\cpu/ctl/N13 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \cpu/ctl/wd_addsub_SW0  (
    .I0(\cpu/inst [31]),
    .I1(\cpu/inst [28]),
    .O(N81)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \cpu/wd<0>31  (
    .I0(N957),
    .I1(\cpu/wd_cmp ),
    .I2(\cpu/ctl/msel_986 ),
    .O(\cpu/N35 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \cpu/wd<0>21  (
    .I0(N958),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/wd_addsub ),
    .O(\cpu/N34 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \cpu/ctl/wd_boole_SW0  (
    .I0(\cpu/inst [29]),
    .I1(\cpu/inst [31]),
    .I2(\cpu/inst [28]),
    .O(N83)
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \cpu/ctl/wd_boole  (
    .I0(\cpu/interrupt ),
    .I1(\cpu/inst [26]),
    .I2(N83),
    .I3(\cpu/inst [27]),
    .O(\cpu/wd_boole )
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  \cpu/ctl/asel_or0000_SW0  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [29]),
    .I2(\cpu/inst [28]),
    .I3(\cpu/inst [26]),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'h12FF ))
  \cpu/ctl/asel_or0000_SW1  (
    .I0(\cpu/inst [28]),
    .I1(\cpu/inst [26]),
    .I2(\cpu/inst [27]),
    .I3(\cpu/inst [29]),
    .O(N86)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \cpu/wd<10>141  (
    .I0(\cpu/wd_boole ),
    .I1(N960),
    .O(\cpu/N52 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \dpy/Madd_next_row_addsub0000_cy<3>11  (
    .I0(\dpy/row [2]),
    .I1(\dpy/row [3]),
    .I2(\dpy/row [0]),
    .I3(\dpy/row [1]),
    .O(\dpy/Madd_next_row_addsub0000_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h06AA ))
  \dpy/next_row<0>2  (
    .I0(\dpy/row [0]),
    .I1(\dpy/next_row_cmp_eq0000 ),
    .I2(\dpy/vcount_and0000 ),
    .I3(\dpy/hreset_1872 ),
    .O(\dpy/next_row [0])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \cpu/ctl/shift_sxt_SW0  (
    .I0(\cpu/inst [29]),
    .I1(\cpu/inst [28]),
    .I2(\cpu/inst [31]),
    .O(N90)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/ctl/trap1  (
    .I0(\cpu/ctl/annul_978 ),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/interrupt ),
    .I3(N959),
    .O(\cpu/trap )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/sr/shift_right<10>31  (
    .I0(\cpu/shift_sxt ),
    .I1(N1037),
    .O(\cpu/sr/shift_right<10>_bdd4 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/z25  (
    .I0(\cpu/_varindex0000 [10]),
    .I1(\cpu/_varindex0000 [11]),
    .I2(\cpu/_varindex0000 [12]),
    .I3(\cpu/_varindex0000 [13]),
    .O(\cpu/z25_1583 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/z49  (
    .I0(\cpu/_varindex0000 [14]),
    .I1(\cpu/_varindex0000 [15]),
    .I2(\cpu/_varindex0000 [16]),
    .I3(\cpu/_varindex0000 [17]),
    .O(\cpu/z49_1584 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/z62  (
    .I0(\cpu/_varindex0000 [3]),
    .I1(\cpu/_varindex0000 [2]),
    .I2(\cpu/_varindex0000 [0]),
    .I3(\cpu/_varindex0000 [1]),
    .O(\cpu/z62_1585 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \cpu/z76  (
    .I0(\cpu/z12_1579 ),
    .I1(\cpu/z25_1583 ),
    .I2(\cpu/z49_1584 ),
    .I3(\cpu/z62_1585 ),
    .O(\cpu/z76_1586 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/z114  (
    .I0(\cpu/_varindex0000 [29]),
    .I1(\cpu/_varindex0000 [30]),
    .I2(\cpu/_varindex0000 [31]),
    .I3(\cpu/_varindex0000 [18]),
    .O(\cpu/z114_1578 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/z138  (
    .I0(\cpu/_varindex0000 [19]),
    .I1(\cpu/_varindex0000 [20]),
    .I2(\cpu/_varindex0000 [21]),
    .I3(\cpu/_varindex0000 [22]),
    .O(\cpu/z138_1580 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/z151  (
    .I0(\cpu/_varindex0000 [23]),
    .I1(\cpu/_varindex0000 [24]),
    .I2(\cpu/_varindex0000 [4]),
    .I3(\cpu/_varindex0000 [5]),
    .O(\cpu/z151_1581 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \cpu/z165  (
    .I0(\cpu/z101_1577 ),
    .I1(\cpu/z114_1578 ),
    .I2(\cpu/z138_1580 ),
    .I3(\cpu/z151_1581 ),
    .O(\cpu/z165_1582 )
  );
  LUT4 #(
    .INIT ( 16'h6408 ))
  \cpu/ctl/branch46  (
    .I0(\cpu/inst [28]),
    .I1(\cpu/inst [27]),
    .I2(\cpu/z ),
    .I3(\cpu/inst [26]),
    .O(\cpu/ctl/branch46_981 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \cpu/ctl/branch81  (
    .I0(\cpu/ctl/branch60 ),
    .I1(\cpu/interrupt ),
    .I2(\cpu/ctl/branch46_981 ),
    .O(\cpu/branch )
  );
  LUT3 #(
    .INIT ( 8'h37 ))
  \dpy/next_row<0>11  (
    .I0(N963),
    .I1(\dpy/hreset_1872 ),
    .I2(\dpy/vcount_and0000 ),
    .O(\dpy/N11 )
  );
  LUT4 #(
    .INIT ( 16'h070F ))
  \dpy/next_row<3>_SW1  (
    .I0(\dpy/row [2]),
    .I1(\dpy/row [1]),
    .I2(\dpy/vcount_and0000 ),
    .I3(\dpy/row [0]),
    .O(N111)
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \dpy/next_row<3>  (
    .I0(\dpy/row [3]),
    .I1(N110),
    .I2(\dpy/N11 ),
    .I3(N111),
    .O(\dpy/next_row [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/Sh4441  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .O(\cpu/N54 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \cpu/Sh4411  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .O(\cpu/N37 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \cpu/ctl/bsel87  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/ctl/bsel55_984 ),
    .I2(N1028),
    .O(\cpu/bsel )
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/Sh361  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh4_794 ),
    .I3(N1026),
    .O(\cpu/Sh36 )
  );
  LUT4 #(
    .INIT ( 16'h0C0A ))
  \cpu/Sh110  (
    .I0(\cpu/a [1]),
    .I1(\cpu/a [0]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/Sh1_771 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/ma<2>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/addsub [2]),
    .I2(\cpu/npc_next [2]),
    .O(ma[2])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<2>43  (
    .I0(\cpu/npc_next<2>28_1152 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [2]),
    .I3(\cpu/npc_next<2>17_1151 ),
    .O(\cpu/npc_next [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<19>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[19]),
    .I2(\cpu/addsub [19]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<19>4_1401 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<7>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[7]),
    .I2(\cpu/addsub [7]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<7>4_1555 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<7>172  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<7>4_1555 ),
    .I2(\cpu/wd<7>135_1554 ),
    .I3(\cpu/wd<7>72_1557 ),
    .O(\cpu/wd [7])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<15>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[15]),
    .I2(\cpu/addsub [15]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<15>4_1371 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<15>96  (
    .I0(\cpu/b [3]),
    .I1(\cpu/b [2]),
    .I2(\cpu/sr/shift_right<11>_bdd15 ),
    .I3(\cpu/sr/shift_right<11>_bdd7 ),
    .O(\cpu/wd<15>96_1375 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<11>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[11]),
    .I2(\cpu/addsub [11]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<11>4_1346 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/wd<3>91  (
    .I0(\cpu/a [4]),
    .I1(\cpu/a [3]),
    .I2(\cpu/b [0]),
    .O(\cpu/wd<3>91_1530 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \cpu/wd<3>231  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<3>70_1527 ),
    .I2(\cpu/wd<3>191_1525 ),
    .I3(\cpu/wd<3>4_1526 ),
    .O(\cpu/wd [3])
  );
  LUT4 #(
    .INIT ( 16'hFE10 ))
  \cpu/sr/shift_right<15>2  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(N976),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(\cpu/sr/shift_right<15>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<3>21  (
    .I0(\cpu/b [1]),
    .I1(N985),
    .I2(\cpu/sr/shift_right<1>_bdd6 ),
    .O(\cpu/sr/shift_right<3>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<15>51  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<11>_bdd16 ),
    .I2(\cpu/sr/shift_right<11>_bdd28 ),
    .O(\cpu/sr/shift_right<15>_bdd2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<11>161  (
    .I0(\cpu/b [1]),
    .I1(N994),
    .I2(\cpu/sr/shift_right<11>_bdd31 ),
    .O(\cpu/sr/shift_right<11>_bdd28 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<11>151  (
    .I0(\cpu/b [2]),
    .I1(N975),
    .I2(\cpu/sr/shift_right<11>_bdd28 ),
    .O(\cpu/sr/shift_right<11>_bdd2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<11>81  (
    .I0(\cpu/b [2]),
    .I1(N977),
    .I2(\cpu/sr/shift_right<11>_bdd15 ),
    .O(\cpu/sr/shift_right<11>_bdd1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<31>1  (
    .I0(\cpu/_varindex0001 [31]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[31])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh25  (
    .I0(\cpu/b [0]),
    .I1(N126),
    .I2(N978),
    .O(\cpu/Sh25_787 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh24  (
    .I0(\cpu/b [0]),
    .I1(N979),
    .I2(N129),
    .O(\cpu/Sh24_786 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh20_SW1  (
    .I0(\cpu/a [17]),
    .I1(\cpu/a [19]),
    .I2(\cpu/b [1]),
    .O(N144)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh20  (
    .I0(\cpu/b [0]),
    .I1(N980),
    .I2(N144),
    .O(\cpu/Sh20_783 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh19  (
    .I0(\cpu/b [0]),
    .I1(N147),
    .I2(N144),
    .O(\cpu/Sh19_781 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \cpu/Sh18_SW1  (
    .I0(\cpu/a [17]),
    .I1(\cpu/a [15]),
    .I2(\cpu/b [1]),
    .O(N150)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh18  (
    .I0(\cpu/b [0]),
    .I1(N982),
    .I2(N150),
    .O(\cpu/Sh18_780 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh17  (
    .I0(\cpu/b [0]),
    .I1(N983),
    .I2(N150),
    .O(\cpu/Sh17_779 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh16_SW1  (
    .I0(\cpu/a [13]),
    .I1(\cpu/a [15]),
    .I2(\cpu/b<1>1_952 ),
    .O(N156)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<2>31  (
    .I0(\cpu/b [1]),
    .I1(N1008),
    .I2(\cpu/sr/shift_right<0>_bdd45 ),
    .O(\cpu/sr/shift_right<2>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<1>71  (
    .I0(\cpu/a [6]),
    .I1(\cpu/a [5]),
    .I2(\cpu/b [0]),
    .O(\cpu/sr/shift_right<1>_bdd10 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<1>41  (
    .I0(\cpu/a [10]),
    .I1(\cpu/a [9]),
    .I2(\cpu/b [0]),
    .O(\cpu/sr/shift_right<1>_bdd6 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<1>31  (
    .I0(\cpu/b [1]),
    .I1(N993),
    .I2(\cpu/sr/shift_right<1>_bdd6 ),
    .O(\cpu/sr/shift_right<1>_bdd4 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<1>21  (
    .I0(\cpu/b [2]),
    .I1(N990),
    .I2(\cpu/sr/shift_right<1>_bdd4 ),
    .O(\cpu/sr/shift_right<1>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<13>81  (
    .I0(\cpu/b [2]),
    .I1(N987),
    .I2(\cpu/sr/shift_right<13>_bdd15 ),
    .O(\cpu/sr/shift_right<13>_bdd2 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<13>51  (
    .I0(\cpu/b [2]),
    .I1(N989),
    .I2(\cpu/sr/shift_right<13>_bdd10 ),
    .O(\cpu/sr/shift_right<13>_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<12>51  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<0>_bdd36 ),
    .I2(\cpu/sr/shift_right<0>_bdd24 ),
    .O(\cpu/sr/shift_right<12>_bdd2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<12>41  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<0>_bdd23 ),
    .I2(\cpu/sr/shift_right<0>_bdd9 ),
    .O(\cpu/sr/shift_right<12>_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<11>91  (
    .I0(\cpu/b [1]),
    .I1(N995),
    .I2(\cpu/sr/shift_right<11>_bdd18 ),
    .O(\cpu/sr/shift_right<11>_bdd15 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<11>51  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<11>_bdd10 ),
    .I2(N991),
    .O(\cpu/sr/shift_right<11>_bdd7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>201  (
    .I0(\cpu/a [14]),
    .I1(\cpu/a [13]),
    .I2(\cpu/b [0]),
    .O(\cpu/sr/shift_right<11>_bdd36 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>171  (
    .I0(\cpu/a [18]),
    .I1(\cpu/a [17]),
    .I2(\cpu/b [0]),
    .O(\cpu/sr/shift_right<11>_bdd31 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>141  (
    .I0(\cpu/a [20]),
    .I1(\cpu/a [19]),
    .I2(\cpu/b<0>1_940 ),
    .O(\cpu/sr/shift_right<11>_bdd24 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>131  (
    .I0(\cpu/a [22]),
    .I1(\cpu/a [21]),
    .I2(\cpu/b<0>1_940 ),
    .O(\cpu/sr/shift_right<11>_bdd23 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>101  (
    .I0(\cpu/a [26]),
    .I1(\cpu/a [25]),
    .I2(\cpu/b<0>1_940 ),
    .O(\cpu/sr/shift_right<11>_bdd18 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<10>81  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<0>_bdd19 ),
    .I2(\cpu/sr/shift_right<0>_bdd26 ),
    .O(\cpu/sr/shift_right<10>_bdd13 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<10>71  (
    .I0(\cpu/b [2]),
    .I1(N996),
    .I2(\cpu/sr/shift_right<10>_bdd13 ),
    .O(\cpu/sr/shift_right<10>_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<10>111  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<0>_bdd32 ),
    .I2(N1011),
    .O(\cpu/sr/shift_right<10>_bdd18 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<10>101  (
    .I0(\cpu/b [2]),
    .I1(N998),
    .I2(\cpu/sr/shift_right<10>_bdd18 ),
    .O(\cpu/sr/shift_right<10>_bdd2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/wd<27>0  (
    .I0(\cpu/N34 ),
    .I1(\cpu/addsub [27]),
    .O(\cpu/wd<27>0_1467 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/wd<27>1  (
    .I0(mdin[27]),
    .I1(\cpu/ctl/msel_986 ),
    .O(\cpu/wd<27>1_1468 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<27>109  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/wd<27>77_1473 ),
    .I3(\cpu/Sh43_798 ),
    .O(\cpu/wd<27>109_1469 )
  );
  LUT4 #(
    .INIT ( 16'hFE10 ))
  \cpu/wd<27>152  (
    .I0(\cpu/b [4]),
    .I1(\cpu/b [3]),
    .I2(N992),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(\cpu/wd<27>152_1470 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/wd<27>191  (
    .I0(\cpu/wd<27>0_1467 ),
    .I1(\cpu/N35 ),
    .I2(\cpu/wd<27>164_1471 ),
    .I3(\cpu/wd<27>1_1468 ),
    .O(\cpu/wd [27])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \cpu/wd<31>126  (
    .I0(\cpu/N37 ),
    .I1(\cpu/wd<31>103_1512 ),
    .I2(\cpu/wd<31>98_1521 ),
    .I3(\cpu/wd<31>108_1513 ),
    .O(\cpu/wd<31>126_1514 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \cpu/wd<31>196  (
    .I0(\cpu/N35 ),
    .I1(\cpu/N49 ),
    .I2(\cpu/wd<31>162_1515 ),
    .I3(\cpu/wd<31>80_1519 ),
    .O(\cpu/wd<31>196_1516 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \cpu/Sh8_SW1  (
    .I0(\cpu/a [7]),
    .I1(\cpu/a [5]),
    .I2(N1057),
    .O(N170)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh8  (
    .I0(\cpu/b [0]),
    .I1(N170),
    .I2(N1000),
    .O(\cpu/Sh8_807 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh7  (
    .I0(\cpu/b<0>1_940 ),
    .I1(N170),
    .I2(N1002),
    .O(\cpu/Sh7_806 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh6  (
    .I0(\cpu/b [0]),
    .I1(N173),
    .I2(N1003),
    .O(\cpu/Sh6_805 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh5  (
    .I0(\cpu/b [0]),
    .I1(N1004),
    .I2(N176),
    .O(\cpu/Sh5_804 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh4_SW1  (
    .I0(\cpu/a [1]),
    .I1(\cpu/a [3]),
    .I2(\cpu/b<1>1_952 ),
    .O(N182)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh15  (
    .I0(\cpu/b [0]),
    .I1(N1005),
    .I2(N156),
    .O(\cpu/Sh15_777 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh14  (
    .I0(\cpu/b [0]),
    .I1(N191),
    .I2(N188),
    .O(\cpu/Sh14_776 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh12_SW1  (
    .I0(\cpu/a [9]),
    .I1(\cpu/a [11]),
    .I2(\cpu/b<1>1_952 ),
    .O(N197)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh11  (
    .I0(\cpu/b [0]),
    .I1(N197),
    .I2(N1006),
    .O(\cpu/Sh11_773 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh10  (
    .I0(\cpu/b [0]),
    .I1(N200),
    .I2(N999),
    .O(\cpu/Sh10_772 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<0>91  (
    .I0(\cpu/a [27]),
    .I1(\cpu/a [26]),
    .I2(\cpu/b<0>1_940 ),
    .O(\cpu/sr/shift_right<0>_bdd18 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>81  (
    .I0(\cpu/b [1]),
    .I1(N1014),
    .I2(\cpu/sr/shift_right<0>_bdd18 ),
    .O(\cpu/sr/shift_right<0>_bdd9 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>251  (
    .I0(\cpu/b [1]),
    .I1(N1007),
    .I2(\cpu/sr/shift_right<0>_bdd49 ),
    .O(\cpu/sr/shift_right<0>_bdd2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<0>241  (
    .I0(\cpu/a [9]),
    .I1(\cpu/a [8]),
    .I2(\cpu/b [0]),
    .O(\cpu/sr/shift_right<0>_bdd45 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<0>221  (
    .I0(\cpu/b [1]),
    .I1(N1009),
    .I2(\cpu/sr/shift_right<0>_bdd45 ),
    .O(\cpu/sr/shift_right<0>_bdd37 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>191  (
    .I0(\cpu/b [1]),
    .I1(N1010),
    .I2(\cpu/sr/shift_right<0>_bdd39 ),
    .O(\cpu/sr/shift_right<0>_bdd36 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<0>181  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<0>_bdd36 ),
    .I2(\cpu/sr/shift_right<0>_bdd37 ),
    .O(\cpu/sr/shift_right<0>_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \cpu/sr/shift_right<0>161  (
    .I0(\cpu/a [18]),
    .I1(\cpu/a [19]),
    .I2(\cpu/b<0>1_940 ),
    .O(\cpu/sr/shift_right<0>_bdd31 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>151  (
    .I0(\cpu/b [1]),
    .I1(N1012),
    .I2(\cpu/sr/shift_right<0>_bdd31 ),
    .O(\cpu/sr/shift_right<0>_bdd24 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \cpu/sr/shift_right<0>131  (
    .I0(\cpu/a [22]),
    .I1(\cpu/a [23]),
    .I2(\cpu/b [0]),
    .O(\cpu/sr/shift_right<0>_bdd26 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>121  (
    .I0(\cpu/b [1]),
    .I1(N1013),
    .I2(\cpu/sr/shift_right<0>_bdd26 ),
    .O(\cpu/sr/shift_right<0>_bdd23 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<30>1  (
    .I0(\cpu/_varindex0001 [30]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[30])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<29>1  (
    .I0(\cpu/_varindex0001 [29]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[29])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<28>1  (
    .I0(\cpu/_varindex0001 [28]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[28])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<27>1  (
    .I0(\cpu/_varindex0001 [27]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[27])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<26>1  (
    .I0(\cpu/_varindex0001 [26]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[26])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<6>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[6]),
    .I2(\cpu/addsub [6]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<6>4_1548 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<6>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<6>4_1548 ),
    .I2(\cpu/wd<6>134_1547 ),
    .I3(\cpu/wd<6>74_1549 ),
    .O(\cpu/wd [6])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<14>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[14]),
    .I2(\cpu/addsub [14]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<14>4_1363 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<14>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<14>4_1363 ),
    .I2(\cpu/wd<14>74_1364 ),
    .I3(\cpu/wd<14>134_1362 ),
    .O(\cpu/wd [14])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<22>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[22]),
    .I2(\cpu/addsub [22]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<22>4_1432 )
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wd<22>98  (
    .I0(\cpu/wd<22>71_1434 ),
    .I1(\cpu/b [4]),
    .I2(N971),
    .I3(\cpu/wd<22>76_1435 ),
    .O(\cpu/wd<22>98_1436 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<22>141  (
    .I0(N962),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<22>_bdd0 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(\cpu/wd<22>141_1431 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<22>170  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<22>4_1432 ),
    .I2(\cpu/wd<22>118_1430 ),
    .I3(\cpu/wd<22>141_1431 ),
    .O(\cpu/wd [22])
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<30>148  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/wd<30>109_1505 ),
    .I3(\cpu/Sh46 ),
    .O(\cpu/wd<30>148_1506 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \cpu/wd<30>170  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(\cpu/b [4]),
    .O(\cpu/wd<19>131 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<10>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[10]),
    .I2(\cpu/addsub [10]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<10>4_1341 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<10>165  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<10>4_1341 ),
    .I2(\cpu/wd<10>126_1340 ),
    .I3(\cpu/wd<10>73_1343 ),
    .O(\cpu/wd [10])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<8>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[8]),
    .I2(\cpu/addsub [8]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<8>4_1560 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<8>97  (
    .I0(\cpu/b [3]),
    .I1(\cpu/b [2]),
    .I2(\cpu/sr/shift_right<0>_bdd24 ),
    .I3(\cpu/sr/shift_right<0>_bdd23 ),
    .O(\cpu/wd<8>97_1563 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<8>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<8>4_1560 ),
    .I2(\cpu/wd<8>73_1562 ),
    .I3(\cpu/wd<8>134_1559 ),
    .O(\cpu/wd [8])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<2>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[2]),
    .I2(\cpu/addsub [2]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<2>4_1499 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \cpu/wd<2>15  (
    .I0(N1052),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh2_782 ),
    .I3(\cpu/N37 ),
    .O(\cpu/wd<2>15_1497 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \cpu/wd<2>93  (
    .I0(\cpu/a [2]),
    .I1(\cpu/a [3]),
    .I2(\cpu/b [0]),
    .O(\cpu/wd<2>93_1503 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \cpu/wd<2>233  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<2>71_1500 ),
    .I2(\cpu/wd<2>193_1498 ),
    .I3(\cpu/wd<2>4_1499 ),
    .O(\cpu/wd [2])
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<24>170  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<24>4_1450 ),
    .I2(\cpu/wd<24>119_1446 ),
    .I3(\cpu/wd<24>141 ),
    .O(\cpu/wd [24])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<18>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[18]),
    .I2(\cpu/addsub [18]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<18>4_1393 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<18>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<18>4_1393 ),
    .I2(\cpu/wd<18>144_1392 ),
    .I3(\cpu/wd<18>122_1391 ),
    .O(\cpu/wd [18])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<16>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[16]),
    .I2(\cpu/addsub [16]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<16>4_1379 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<16>122  (
    .I0(\cpu/N49 ),
    .I1(\cpu/wd<16>55_1380 ),
    .I2(\cpu/wd<16>90_1382 ),
    .I3(\cpu/wd<16>68_1381 ),
    .O(\cpu/wd<16>122_1377 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<16>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<16>4_1379 ),
    .I2(\cpu/wd<16>144_1378 ),
    .I3(\cpu/wd<16>122_1377 ),
    .O(\cpu/wd [16])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<26>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[26]),
    .I2(\cpu/addsub [26]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<26>4_1463 )
  );
  LUT4 #(
    .INIT ( 16'h3320 ))
  \cpu/wd<26>142  (
    .I0(\cpu/wd<14>98 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<10>_bdd5 ),
    .I3(N1017),
    .O(\cpu/wd<26>142_1462 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<4>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[4]),
    .I2(\cpu/addsub [4]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<4>4_1533 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<4>93  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<0>_bdd2 ),
    .I2(\cpu/sr/shift_right<0>_bdd37 ),
    .O(\cpu/wd<4>93_1537 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<4>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<4>4_1533 ),
    .I2(\cpu/wd<4>134_1532 ),
    .I3(\cpu/wd<4>74_1534 ),
    .O(\cpu/wd [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<12>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[12]),
    .I2(\cpu/addsub [12]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<12>4_1351 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<20>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[20]),
    .I2(\cpu/addsub [20]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<20>4_1416 )
  );
  LUT4 #(
    .INIT ( 16'hDDD8 ))
  \cpu/wd<20>98  (
    .I0(\cpu/b [4]),
    .I1(\cpu/Sh36 ),
    .I2(\cpu/wd<20>71_1418 ),
    .I3(\cpu/wd<20>76_1419 ),
    .O(\cpu/wd<20>98_1420 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<20>170  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<20>4_1416 ),
    .I2(\cpu/wd<20>118_1414 ),
    .I3(\cpu/wd<20>141_1415 ),
    .O(\cpu/wd [20])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<28>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[28]),
    .I2(\cpu/addsub [28]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<28>4_1478 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \cpu/wd<28>100  (
    .I0(\cpu/N37 ),
    .I1(\cpu/wd<28>77_1482 ),
    .I2(\cpu/wd<28>72_1481 ),
    .I3(\cpu/wd<28>82_1483 ),
    .O(\cpu/wd<28>100_1475 )
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wd<28>136  (
    .I0(\cpu/wd<28>71_1480 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh44 ),
    .I3(\cpu/wd<28>100_1475 ),
    .O(\cpu/wd<28>136_1476 )
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \cpu/wd<28>229  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<28>4_1478 ),
    .I2(\cpu/wd<28>202_1477 ),
    .O(\cpu/wd [28])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<10>41  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<10>_bdd8 ),
    .I2(N997),
    .O(\cpu/sr/shift_right<10>_bdd5 )
  );
  LUT4 #(
    .INIT ( 16'hDC10 ))
  \cpu/sr/shift_right<24>2_SW0  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<0>_bdd9 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(N207)
  );
  LUT4 #(
    .INIT ( 16'hFE32 ))
  \cpu/sr/shift_right<24>2_SW1  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<0>_bdd9 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(N208)
  );
  LUT4 #(
    .INIT ( 16'h88F0 ))
  \cpu/sr/shift_right<10>5  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(N1016),
    .I3(\cpu/b [1]),
    .O(\cpu/sr/shift_right<10>_bdd8 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<12>31  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<10>_bdd4 ),
    .I2(\cpu/sr/shift_right<0>_bdd8 ),
    .O(\cpu/sr/shift_right<12>_bdd4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<25>1  (
    .I0(\cpu/_varindex0001 [25]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<24>1  (
    .I0(\cpu/_varindex0001 [24]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<23>1  (
    .I0(\cpu/_varindex0001 [23]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<22>1  (
    .I0(\cpu/_varindex0001 [22]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<21>1  (
    .I0(\cpu/_varindex0001 [21]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<20>1  (
    .I0(\cpu/_varindex0001 [20]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<19>1  (
    .I0(\cpu/_varindex0001 [19]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[19])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<9>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[9]),
    .I2(\cpu/addsub [9]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<9>4_1566 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<9>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<9>4_1566 ),
    .I2(\cpu/wd<9>134_1565 ),
    .I3(\cpu/wd<9>73_1568 ),
    .O(\cpu/wd [9])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<5>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[5]),
    .I2(\cpu/addsub [5]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<5>4_1540 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<5>93  (
    .I0(\cpu/b [2]),
    .I1(N986),
    .I2(\cpu/sr/shift_right<1>_bdd4 ),
    .O(\cpu/wd<5>93_1544 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<5>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<5>4_1540 ),
    .I2(\cpu/wd<5>134_1539 ),
    .I3(\cpu/wd<5>74_1541 ),
    .O(\cpu/wd [5])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<13>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[13]),
    .I2(\cpu/addsub [13]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<13>4_1357 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<13>171  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<13>4_1357 ),
    .I2(\cpu/wd<13>74_1358 ),
    .I3(\cpu/wd<13>131_1356 ),
    .O(\cpu/wd [13])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<1>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[1]),
    .I2(\cpu/addsub [1]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<1>4_1409 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \cpu/wd<1>61  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/N37 ),
    .I3(\cpu/Sh1_771 ),
    .O(\cpu/wd<1>61_1410 )
  );
  LUT4 #(
    .INIT ( 16'h0C0A ))
  \cpu/wd<1>104  (
    .I0(\cpu/a [1]),
    .I1(\cpu/a [2]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<1>104_1406 )
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wd<1>136  (
    .I0(\cpu/wd<1>89_1412 ),
    .I1(\cpu/b [2]),
    .I2(\cpu/sr/shift_right<1>_bdd1 ),
    .I3(\cpu/wd<1>104_1406 ),
    .O(\cpu/wd<1>136_1407 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \cpu/wd<1>248  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<1>63_1411 ),
    .I2(\cpu/wd<1>208_1408 ),
    .I3(\cpu/wd<1>4_1409 ),
    .O(\cpu/wd [1])
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \cpu/wd<25>170  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<25>141_1456 ),
    .I2(\cpu/wd<25>119_1455 ),
    .I3(\cpu/wd<25>4_1457 ),
    .O(\cpu/wd [25])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<21>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[21]),
    .I2(\cpu/addsub [21]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<21>4_1424 )
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  \cpu/wd<21>98  (
    .I0(\cpu/b [4]),
    .I1(\cpu/wd<21>76_1427 ),
    .I2(N972),
    .I3(\cpu/wd<21>71_1426 ),
    .O(\cpu/wd<21>98_1428 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<21>170  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<21>4_1424 ),
    .I2(\cpu/wd<21>118_1422 ),
    .I3(\cpu/wd<21>141_1423 ),
    .O(\cpu/wd [21])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<17>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[17]),
    .I2(\cpu/addsub [17]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<17>4_1386 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<17>173  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<17>4_1386 ),
    .I2(\cpu/wd<17>122_1384 ),
    .I3(\cpu/wd<17>144_1385 ),
    .O(\cpu/wd [17])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<29>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[29]),
    .I2(\cpu/addsub [29]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<29>4_1489 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \cpu/wd<29>100  (
    .I0(\cpu/N37 ),
    .I1(\cpu/wd<29>77_1493 ),
    .I2(\cpu/wd<29>72_1492 ),
    .I3(\cpu/wd<29>82_1494 ),
    .O(\cpu/wd<29>100_1485 )
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wd<29>136  (
    .I0(\cpu/wd<29>71_1491 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh45 ),
    .I3(\cpu/wd<29>100_1485 ),
    .O(\cpu/wd<29>136_1486 )
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \cpu/wd<29>240  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<29>4_1489 ),
    .I2(\cpu/wd<29>213_1488 ),
    .O(\cpu/wd [29])
  );
  LUT4 #(
    .INIT ( 16'h88F0 ))
  \cpu/sr/shift_right<13>31  (
    .I0(N964),
    .I1(\cpu/a [31]),
    .I2(\cpu/sr/shift_right<13>_bdd6 ),
    .I3(\cpu/b [2]),
    .O(\cpu/sr/shift_right<13>_bdd4 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<17>2_SW0  (
    .I0(\cpu/b [2]),
    .I1(N988),
    .I2(\cpu/sr/shift_right<13>_bdd14 ),
    .O(N212)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>4  (
    .I0(\cpu/b [1]),
    .I1(N1019),
    .I2(N210),
    .O(\cpu/sr/shift_right<0>_bdd8 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>61  (
    .I0(\cpu/a [30]),
    .I1(\cpu/a [29]),
    .I2(\cpu/b<0>1_940 ),
    .O(\cpu/sr/shift_right<11>_bdd10 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<18>1  (
    .I0(\cpu/_varindex0001 [18]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<17>1  (
    .I0(\cpu/_varindex0001 [17]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<16>1  (
    .I0(\cpu/_varindex0001 [16]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<15>1  (
    .I0(\cpu/_varindex0001 [15]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<14>1  (
    .I0(\cpu/_varindex0001 [14]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<12>1  (
    .I0(\cpu/_varindex0001 [12]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<11>1  (
    .I0(\cpu/_varindex0001 [11]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<10>1  (
    .I0(\cpu/_varindex0001 [10]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[10])
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  _and00011 (
    .I0(mwe),
    .I1(ma[14]),
    .I2(highmem),
    .O(_and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<9>1  (
    .I0(\cpu/_varindex0001 [9]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[9])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<15>14  (
    .I0(\cpu/npc_next<15>0_1105 ),
    .I1(\cpu/addsub [15]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<15>5_1106 ),
    .O(\cpu/npc_next [15])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<17>14  (
    .I0(\cpu/npc_next<17>0_1111 ),
    .I1(\cpu/addsub [17]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<17>5_1112 ),
    .O(\cpu/npc_next [17])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<16>14  (
    .I0(\cpu/npc_next<16>0_1108 ),
    .I1(\cpu/addsub [16]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<16>5_1109 ),
    .O(\cpu/npc_next [16])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<23>14  (
    .I0(\cpu/npc_next<23>5_1130 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [23]),
    .I3(\cpu/npc_next<23>0_1129 ),
    .O(\cpu/npc_next [23])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<21>14  (
    .I0(\cpu/npc_next<21>0_1123 ),
    .I1(\cpu/addsub [21]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<21>5_1124 ),
    .O(\cpu/npc_next [21])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<20>14  (
    .I0(\cpu/npc_next<20>0_1120 ),
    .I1(\cpu/addsub [20]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<20>5_1121 ),
    .O(\cpu/npc_next [20])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<19>14  (
    .I0(\cpu/npc_next<19>0_1117 ),
    .I1(\cpu/addsub [19]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<19>5_1118 ),
    .O(\cpu/npc_next [19])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<18>14  (
    .I0(\cpu/npc_next<18>0_1114 ),
    .I1(\cpu/addsub [18]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<18>5_1115 ),
    .O(\cpu/npc_next [18])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<25>14  (
    .I0(\cpu/npc_next<25>5_1136 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [25]),
    .I3(\cpu/npc_next<25>0_1135 ),
    .O(\cpu/npc_next [25])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<24>14  (
    .I0(\cpu/npc_next<24>5_1133 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [24]),
    .I3(\cpu/npc_next<24>0_1132 ),
    .O(\cpu/npc_next [24])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<22>14  (
    .I0(\cpu/npc_next<22>5_1127 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [22]),
    .I3(\cpu/npc_next<22>0_1126 ),
    .O(\cpu/npc_next [22])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<29>14  (
    .I0(\cpu/npc_next<29>5_1148 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [29]),
    .I3(\cpu/npc_next<29>0_1147 ),
    .O(\cpu/npc_next [29])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<28>14  (
    .I0(\cpu/npc_next<28>5_1145 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [28]),
    .I3(\cpu/npc_next<28>0_1144 ),
    .O(\cpu/npc_next [28])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<27>14  (
    .I0(\cpu/npc_next<27>5_1142 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [27]),
    .I3(\cpu/npc_next<27>0_1141 ),
    .O(\cpu/npc_next [27])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<26>14  (
    .I0(\cpu/npc_next<26>5_1139 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [26]),
    .I3(\cpu/npc_next<26>0_1138 ),
    .O(\cpu/npc_next [26])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<30>14  (
    .I0(\cpu/npc_next<30>5_1155 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [30]),
    .I3(\cpu/npc_next<30>0_1154 ),
    .O(\cpu/npc_next [30])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<7>1  (
    .I0(\cpu/_varindex0001 [7]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/npc_next<3>1  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(\cpu/npc [3]),
    .O(\cpu/npc_next<3>1_1162 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \cpu/npc_next<3>52  (
    .I0(\cpu/npc_next<3>1_1162 ),
    .I1(reset),
    .I2(\cpu/npc_next<3>21_1163 ),
    .I3(\cpu/npc_next<3>0_1161 ),
    .O(\cpu/npc_next [3])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<10>14  (
    .I0(\cpu/npc_next<10>0_1090 ),
    .I1(\cpu/addsub [10]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<10>5_1091 ),
    .O(\cpu/npc_next [10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \cpu/rd2_cmp_eq0000  (
    .I0(\cpu/ra2<1>1_1215 ),
    .I1(\cpu/ra2<2>1_1217 ),
    .I2(N1036),
    .I3(\cpu/ra2<3>1_1219 ),
    .O(\cpu/rd2_cmp_eq0000_1229 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<0>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[0]),
    .I2(\cpu/addsub [0]),
    .I3(\cpu/N34 ),
    .O(\cpu/wd<0>4_1325 )
  );
  LUT4 #(
    .INIT ( 16'hC0A0 ))
  \cpu/wd<0>89  (
    .I0(\cpu/a [2]),
    .I1(\cpu/a [3]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<0>89_1338 )
  );
  LUT4 #(
    .INIT ( 16'h0A0C ))
  \cpu/wd<0>104  (
    .I0(\cpu/a [1]),
    .I1(\cpu/a [0]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<0>104_1316 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<0>248  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<0>4_1325 ),
    .I2(\cpu/wd<0>208_1317 ),
    .I3(\cpu/wd<0>63_1337 ),
    .O(\cpu/wd<0>248_1318 )
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \cpu/wd<0>293  (
    .I0(\cpu/inst [26]),
    .I1(\cpu/inst [27]),
    .I2(\cpu/ctl/N6 ),
    .I3(\cpu/inst [29]),
    .O(\cpu/wd<0>293_1319 )
  );
  LUT4 #(
    .INIT ( 16'hA880 ))
  \cpu/wd<0>298  (
    .I0(\cpu/wd<0>293_1319 ),
    .I1(\cpu/a [31]),
    .I2(\cpu/addsub [31]),
    .I3(\cpu/xb [31]),
    .O(\cpu/wd<0>298_1320 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \cpu/wd<0>310  (
    .I0(\cpu/inst [26]),
    .I1(\cpu/inst [29]),
    .O(\cpu/wd<0>310_1321 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \cpu/wd<0>356  (
    .I0(\cpu/addsub [8]),
    .I1(\cpu/addsub [14]),
    .I2(\cpu/addsub [21]),
    .I3(\cpu/wd<0>325_1322 ),
    .O(\cpu/wd<0>356_1323 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \cpu/wd<0>400  (
    .I0(\cpu/addsub [29]),
    .I1(\cpu/addsub [30]),
    .I2(\cpu/wd<0>388_1324 ),
    .I3(\cpu/wd<0>356_1323 ),
    .O(\cpu/wd<0>400_1326 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \cpu/wd<0>449  (
    .I0(\cpu/addsub [26]),
    .I1(\cpu/addsub [27]),
    .I2(\cpu/wd<0>431_1327 ),
    .I3(\cpu/addsub [28]),
    .O(\cpu/wd<0>449_1328 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \cpu/wd<0>508  (
    .I0(\cpu/addsub [11]),
    .I1(\cpu/addsub [10]),
    .I2(\cpu/addsub [18]),
    .O(\cpu/wd<0>508_1330 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \cpu/wd<0>520  (
    .I0(\cpu/addsub [24]),
    .I1(\cpu/addsub [25]),
    .I2(\cpu/wd<0>490_1329 ),
    .I3(\cpu/wd<0>508_1330 ),
    .O(\cpu/wd<0>520_1331 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/wd<0>616  (
    .I0(\cpu/wd_cmp ),
    .I1(\cpu/ctl/msel_986 ),
    .O(\cpu/wd<0>616_1336 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \cpu/wd<0>630  (
    .I0(\cpu/wd<0>616_1336 ),
    .I1(\cpu/wd<0>298_1320 ),
    .I2(\cpu/wd<0>589_1334 ),
    .I3(\cpu/wd<0>248_1318 ),
    .O(\cpu/wd [0])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/ma<4>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/addsub [4]),
    .I2(\cpu/npc_next [4]),
    .O(ma[4])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<4>14  (
    .I0(\cpu/npc_next<4>5_1166 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [4]),
    .I3(\cpu/npc_next<4>0_1165 ),
    .O(\cpu/npc_next [4])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<11>14  (
    .I0(\cpu/npc_next<11>0_1093 ),
    .I1(\cpu/addsub [11]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<11>5_1094 ),
    .O(\cpu/npc_next [11])
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \cpu/npc_next<31>26  (
    .I0(\cpu/npc [31]),
    .I1(\cpu/npc_next<31>16_1157 ),
    .I2(\cpu/addsub [31]),
    .I3(\cpu/npc_next<31>9_1159 ),
    .O(\cpu/npc_next [31])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/ma<5>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/addsub [5]),
    .I2(\cpu/npc_next [5]),
    .O(ma[5])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<5>14  (
    .I0(\cpu/npc_next<5>5_1169 ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [5]),
    .I3(\cpu/npc_next<5>0_1168 ),
    .O(\cpu/npc_next [5])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<12>14  (
    .I0(\cpu/npc_next<12>0_1096 ),
    .I1(\cpu/addsub [12]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<12>5_1097 ),
    .O(\cpu/npc_next [12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<3>1  (
    .I0(\cpu/_varindex0001 [3]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[3])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<6>14  (
    .I0(\cpu/npc_next<6>0_1171 ),
    .I1(\cpu/addsub [6]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<6>5_1172 ),
    .O(\cpu/npc_next [6])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<13>14  (
    .I0(\cpu/npc_next<13>0_1099 ),
    .I1(\cpu/addsub [13]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<13>5_1100 ),
    .O(\cpu/npc_next [13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<2>1  (
    .I0(\cpu/_varindex0001 [2]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[2])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<7>14  (
    .I0(\cpu/npc_next<7>0_1174 ),
    .I1(\cpu/addsub [7]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<7>5_1175 ),
    .O(\cpu/npc_next [7])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<14>14  (
    .I0(\cpu/npc_next<14>0_1102 ),
    .I1(\cpu/addsub [14]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<14>5_1103 ),
    .O(\cpu/npc_next [14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<1>1  (
    .I0(\cpu/_varindex0001 [1]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[1])
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<8>14  (
    .I0(\cpu/npc_next<8>0_1177 ),
    .I1(\cpu/addsub [8]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<8>5_1178 ),
    .O(\cpu/npc_next [8])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  reset1 (
    .I0(power_on_reset),
    .I1(\dbreset/clean_1624 ),
    .O(reset)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \cpu/rd2<0>1  (
    .I0(\cpu/_varindex0001 [0]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .O(mdout[0])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \cpu/ctl/msel_next1  (
    .I0(reset),
    .I1(N1023),
    .I2(\cpu/ctl/msel_986 ),
    .I3(\cpu/ctl/annul_978 ),
    .O(\cpu/msel_next )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  rd_ps2_and0000_norst110 (
    .I0(ma[8]),
    .I1(ma[9]),
    .I2(ma[14]),
    .O(rd_ps2_and0000_norst110_2537)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  rd_ps2_and0000_norst113 (
    .I0(ma[6]),
    .I1(ma[7]),
    .I2(ma[13]),
    .O(rd_ps2_and0000_norst113_2538)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cpu/npc_next<9>14  (
    .I0(\cpu/npc_next<9>0_1180 ),
    .I1(\cpu/addsub [9]),
    .I2(\cpu/N36 ),
    .I3(\cpu/npc_next<9>5_1181 ),
    .O(\cpu/npc_next [9])
  );
  IBUFG   clock_27mhz_IBUFG (
    .I(clock_27mhz),
    .O(clock_27mhz_IBUFG_633)
  );
  IBUF   button_enter_IBUF (
    .I(button_enter),
    .O(button_enter_IBUF_603)
  );
  IBUF   keyboard_clock_IBUF (
    .I(keyboard_clock),
    .O(keyboard_clock_IBUF_2342)
  );
  IBUF   keyboard_data_IBUF (
    .I(keyboard_data),
    .O(keyboard_data_IBUF_2344)
  );
  OBUF   ram0_cen_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_cen_b)
  );
  OBUF   tv_in_clock_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_in_clock)
  );
  OBUF   tv_out_subcar_reset_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_subcar_reset)
  );
  OBUF   tv_out_pal_ntsc_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_pal_ntsc)
  );
  OBUF   ram1_adv_ld_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_adv_ld)
  );
  OBUF   ram0_clk_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_clk)
  );
  OBUF   vga_out_hsync_OBUF (
    .I(\dpy/hsync_1873 ),
    .O(vga_out_hsync)
  );
  OBUF   flash_ce_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(flash_ce_b)
  );
  OBUF   ram0_oe_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_oe_b)
  );
  OBUF   analyzer1_clock_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(analyzer1_clock)
  );
  OBUF   ram1_cen_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_cen_b)
  );
  OBUF   ram1_oe_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_oe_b)
  );
  OBUF   ram0_adv_ld_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_adv_ld)
  );
  OBUF   disp_rs_OBUF (
    .I(\hexdisp1/disp_rs_2168 ),
    .O(disp_rs)
  );
  OBUF   ram0_ce_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_ce_b)
  );
  OBUF   ac97_sdata_out_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ac97_sdata_out)
  );
  OBUF   analyzer2_clock_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(analyzer2_clock)
  );
  OBUF   ram1_ce_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_ce_b)
  );
  OBUF   disp_clock_OBUF (
    .I(disp_clock_OBUF_1663),
    .O(disp_clock)
  );
  OBUF   systemace_oe_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(systemace_oe_b)
  );
  OBUF   tv_out_blank_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(tv_out_blank_b)
  );
  OBUF   rs232_rts_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(rs232_rts)
  );
  OBUF   tv_out_reset_b_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_reset_b)
  );
  OBUF   flash_byte_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(flash_byte_b)
  );
  OBUF   audio_reset_b_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(audio_reset_b)
  );
  OBUF   tv_in_fifo_read_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_in_fifo_read)
  );
  OBUF   tv_out_clock_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_clock)
  );
  OBUF   tv_in_reset_b_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_in_reset_b)
  );
  OBUF   analyzer3_clock_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(analyzer3_clock)
  );
  OBUF   systemace_ce_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(systemace_ce_b)
  );
  OBUF   rs232_txd_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(rs232_txd)
  );
  OBUF   flash_reset_b_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_reset_b)
  );
  OBUF   ac97_synch_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ac97_synch)
  );
  OBUF   flash_we_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(flash_we_b)
  );
  OBUF   disp_ce_b_OBUF (
    .I(\hexdisp1/disp_ce_b_2154 ),
    .O(disp_ce_b)
  );
  OBUF   tv_in_fifo_clock_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_in_fifo_clock)
  );
  OBUF   vga_out_vsync_OBUF (
    .I(\dpy/vsync_1927 ),
    .O(vga_out_vsync)
  );
  OBUF   tv_in_i2c_clock_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_in_i2c_clock)
  );
  OBUF   tv_out_i2c_clock_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_i2c_clock)
  );
  OBUF   tv_out_hsync_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(tv_out_hsync_b)
  );
  OBUF   analyzer4_clock_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(analyzer4_clock)
  );
  OBUF   ram1_clk_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_clk)
  );
  OBUF   vga_out_sync_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(vga_out_sync_b)
  );
  OBUF   disp_data_out_OBUF (
    .I(\hexdisp1/disp_data_out_2156 ),
    .O(disp_data_out)
  );
  OBUF   vga_out_pixel_clock_OBUF (
    .I(\dpy/pcount_1893 ),
    .O(vga_out_pixel_clock)
  );
  OBUF   beep_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(beep)
  );
  OBUF   ram0_we_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_we_b)
  );
  OBUF   ram1_we_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_we_b)
  );
  OBUF   clock_feedback_out_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(clock_feedback_out)
  );
  OBUF   tv_in_iso_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_in_iso)
  );
  OBUF   disp_reset_b_OBUF (
    .I(\hexdisp1/disp_reset_b_2166 ),
    .O(disp_reset_b)
  );
  OBUF   systemace_we_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(systemace_we_b)
  );
  OBUF   vga_out_blank_b_OBUF (
    .I(vga_out_blank_b_OBUF_2579),
    .O(vga_out_blank_b)
  );
  OBUF   tv_out_i2c_data_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_i2c_data)
  );
  OBUF   disp_blank_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(disp_blank)
  );
  OBUF   flash_oe_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(flash_oe_b)
  );
  OBUF   tv_out_vsync_b_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(tv_out_vsync_b)
  );
  OBUF   systemace_address_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(systemace_address[6])
  );
  OBUF   systemace_address_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(systemace_address[5])
  );
  OBUF   systemace_address_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(systemace_address[4])
  );
  OBUF   systemace_address_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(systemace_address[3])
  );
  OBUF   systemace_address_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(systemace_address[2])
  );
  OBUF   systemace_address_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(systemace_address[1])
  );
  OBUF   systemace_address_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(systemace_address[0])
  );
  OBUF   vga_out_red_7_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[7])
  );
  OBUF   vga_out_red_6_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[6])
  );
  OBUF   vga_out_red_5_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[5])
  );
  OBUF   vga_out_red_4_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[4])
  );
  OBUF   vga_out_red_3_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[3])
  );
  OBUF   vga_out_red_2_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[2])
  );
  OBUF   vga_out_red_1_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[1])
  );
  OBUF   vga_out_red_0_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_red[0])
  );
  OBUF   tv_out_ycrcb_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[9])
  );
  OBUF   tv_out_ycrcb_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[8])
  );
  OBUF   tv_out_ycrcb_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[7])
  );
  OBUF   tv_out_ycrcb_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[6])
  );
  OBUF   tv_out_ycrcb_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[5])
  );
  OBUF   tv_out_ycrcb_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[4])
  );
  OBUF   tv_out_ycrcb_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[3])
  );
  OBUF   tv_out_ycrcb_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[2])
  );
  OBUF   tv_out_ycrcb_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[1])
  );
  OBUF   tv_out_ycrcb_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(tv_out_ycrcb[0])
  );
  OBUF   vga_out_blue_7_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[7])
  );
  OBUF   vga_out_blue_6_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[6])
  );
  OBUF   vga_out_blue_5_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[5])
  );
  OBUF   vga_out_blue_4_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[4])
  );
  OBUF   vga_out_blue_3_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[3])
  );
  OBUF   vga_out_blue_2_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[2])
  );
  OBUF   vga_out_blue_1_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[1])
  );
  OBUF   vga_out_blue_0_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_blue[0])
  );
  OBUF   ram1_address_18_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[18])
  );
  OBUF   ram1_address_17_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[17])
  );
  OBUF   ram1_address_16_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[16])
  );
  OBUF   ram1_address_15_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[15])
  );
  OBUF   ram1_address_14_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[14])
  );
  OBUF   ram1_address_13_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[13])
  );
  OBUF   ram1_address_12_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[12])
  );
  OBUF   ram1_address_11_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[11])
  );
  OBUF   ram1_address_10_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[10])
  );
  OBUF   ram1_address_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[9])
  );
  OBUF   ram1_address_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[8])
  );
  OBUF   ram1_address_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[7])
  );
  OBUF   ram1_address_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[6])
  );
  OBUF   ram1_address_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[5])
  );
  OBUF   ram1_address_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[4])
  );
  OBUF   ram1_address_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[3])
  );
  OBUF   ram1_address_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[2])
  );
  OBUF   ram1_address_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[1])
  );
  OBUF   ram1_address_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram1_address[0])
  );
  OBUF   analyzer1_data_15_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[15])
  );
  OBUF   analyzer1_data_14_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[14])
  );
  OBUF   analyzer1_data_13_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[13])
  );
  OBUF   analyzer1_data_12_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[12])
  );
  OBUF   analyzer1_data_11_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[11])
  );
  OBUF   analyzer1_data_10_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[10])
  );
  OBUF   analyzer1_data_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[9])
  );
  OBUF   analyzer1_data_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[8])
  );
  OBUF   analyzer1_data_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[7])
  );
  OBUF   analyzer1_data_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[6])
  );
  OBUF   analyzer1_data_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[5])
  );
  OBUF   analyzer1_data_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[4])
  );
  OBUF   analyzer1_data_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[3])
  );
  OBUF   analyzer1_data_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[2])
  );
  OBUF   analyzer1_data_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[1])
  );
  OBUF   analyzer1_data_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer1_data[0])
  );
  OBUF   analyzer2_data_15_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[15])
  );
  OBUF   analyzer2_data_14_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[14])
  );
  OBUF   analyzer2_data_13_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[13])
  );
  OBUF   analyzer2_data_12_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[12])
  );
  OBUF   analyzer2_data_11_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[11])
  );
  OBUF   analyzer2_data_10_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[10])
  );
  OBUF   analyzer2_data_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[9])
  );
  OBUF   analyzer2_data_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[8])
  );
  OBUF   analyzer2_data_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[7])
  );
  OBUF   analyzer2_data_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[6])
  );
  OBUF   analyzer2_data_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[5])
  );
  OBUF   analyzer2_data_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[4])
  );
  OBUF   analyzer2_data_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[3])
  );
  OBUF   analyzer2_data_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[2])
  );
  OBUF   analyzer2_data_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[1])
  );
  OBUF   analyzer2_data_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer2_data[0])
  );
  OBUF   analyzer3_data_15_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[15])
  );
  OBUF   analyzer3_data_14_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[14])
  );
  OBUF   analyzer3_data_13_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[13])
  );
  OBUF   analyzer3_data_12_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[12])
  );
  OBUF   analyzer3_data_11_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[11])
  );
  OBUF   analyzer3_data_10_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[10])
  );
  OBUF   analyzer3_data_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[9])
  );
  OBUF   analyzer3_data_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[8])
  );
  OBUF   analyzer3_data_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[7])
  );
  OBUF   analyzer3_data_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[6])
  );
  OBUF   analyzer3_data_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[5])
  );
  OBUF   analyzer3_data_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[4])
  );
  OBUF   analyzer3_data_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[3])
  );
  OBUF   analyzer3_data_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[2])
  );
  OBUF   analyzer3_data_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[1])
  );
  OBUF   analyzer3_data_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer3_data[0])
  );
  OBUF   analyzer4_data_15_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[15])
  );
  OBUF   analyzer4_data_14_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[14])
  );
  OBUF   analyzer4_data_13_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[13])
  );
  OBUF   analyzer4_data_12_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[12])
  );
  OBUF   analyzer4_data_11_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[11])
  );
  OBUF   analyzer4_data_10_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[10])
  );
  OBUF   analyzer4_data_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[9])
  );
  OBUF   analyzer4_data_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[8])
  );
  OBUF   analyzer4_data_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[7])
  );
  OBUF   analyzer4_data_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[6])
  );
  OBUF   analyzer4_data_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[5])
  );
  OBUF   analyzer4_data_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[4])
  );
  OBUF   analyzer4_data_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[3])
  );
  OBUF   analyzer4_data_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[2])
  );
  OBUF   analyzer4_data_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[1])
  );
  OBUF   analyzer4_data_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(analyzer4_data[0])
  );
  OBUF   ram0_bwe_b_3_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_bwe_b[3])
  );
  OBUF   ram0_bwe_b_2_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_bwe_b[2])
  );
  OBUF   ram0_bwe_b_1_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_bwe_b[1])
  );
  OBUF   ram0_bwe_b_0_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram0_bwe_b[0])
  );
  OBUF   flash_address_23_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[23])
  );
  OBUF   flash_address_22_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[22])
  );
  OBUF   flash_address_21_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[21])
  );
  OBUF   flash_address_20_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[20])
  );
  OBUF   flash_address_19_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[19])
  );
  OBUF   flash_address_18_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[18])
  );
  OBUF   flash_address_17_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[17])
  );
  OBUF   flash_address_16_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[16])
  );
  OBUF   flash_address_15_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[15])
  );
  OBUF   flash_address_14_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[14])
  );
  OBUF   flash_address_13_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[13])
  );
  OBUF   flash_address_12_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[12])
  );
  OBUF   flash_address_11_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[11])
  );
  OBUF   flash_address_10_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[10])
  );
  OBUF   flash_address_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[9])
  );
  OBUF   flash_address_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[8])
  );
  OBUF   flash_address_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[7])
  );
  OBUF   flash_address_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[6])
  );
  OBUF   flash_address_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[5])
  );
  OBUF   flash_address_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[4])
  );
  OBUF   flash_address_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[3])
  );
  OBUF   flash_address_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[2])
  );
  OBUF   flash_address_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[1])
  );
  OBUF   flash_address_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(flash_address[0])
  );
  OBUF   ram1_bwe_b_3_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_bwe_b[3])
  );
  OBUF   ram1_bwe_b_2_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_bwe_b[2])
  );
  OBUF   ram1_bwe_b_1_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_bwe_b[1])
  );
  OBUF   ram1_bwe_b_0_OBUF (
    .I(analyzer4_clock_OBUF_583),
    .O(ram1_bwe_b[0])
  );
  OBUF   vga_out_green_7_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[7])
  );
  OBUF   vga_out_green_6_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[6])
  );
  OBUF   vga_out_green_5_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[5])
  );
  OBUF   vga_out_green_4_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[4])
  );
  OBUF   vga_out_green_3_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[3])
  );
  OBUF   vga_out_green_2_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[2])
  );
  OBUF   vga_out_green_1_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[1])
  );
  OBUF   vga_out_green_0_OBUF (
    .I(\dpy/rgb [0]),
    .O(vga_out_green[0])
  );
  OBUF   led_7_OBUF (
    .I(\dpy/irq_60Hz_1877 ),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(clk_300Hz),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(irq),
    .O(led[0])
  );
  OBUF   ram0_address_18_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[18])
  );
  OBUF   ram0_address_17_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[17])
  );
  OBUF   ram0_address_16_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[16])
  );
  OBUF   ram0_address_15_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[15])
  );
  OBUF   ram0_address_14_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[14])
  );
  OBUF   ram0_address_13_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[13])
  );
  OBUF   ram0_address_12_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[12])
  );
  OBUF   ram0_address_11_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[11])
  );
  OBUF   ram0_address_10_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[10])
  );
  OBUF   ram0_address_9_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[9])
  );
  OBUF   ram0_address_8_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[8])
  );
  OBUF   ram0_address_7_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[7])
  );
  OBUF   ram0_address_6_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[6])
  );
  OBUF   ram0_address_5_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[5])
  );
  OBUF   ram0_address_4_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[4])
  );
  OBUF   ram0_address_3_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[3])
  );
  OBUF   ram0_address_2_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[2])
  );
  OBUF   ram0_address_1_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[1])
  );
  OBUF   ram0_address_0_OBUF (
    .I(analyzer1_data_0_OBUF_547),
    .O(ram0_address[0])
  );
  FDR   mdin_sel_1 (
    .C(clock_50MHz),
    .D(highmem),
    .R(ma[14]),
    .Q(mdin_sel[1])
  );
  FDR   mdin_sel_2 (
    .C(clock_50MHz),
    .D(N0),
    .R(ma[2]),
    .Q(mdin_sel[2])
  );
  FDRS   \hexdisp1/state_FSM_FFd2  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/state_FSM_FFd2-In30 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/state_FSM_FFd2-In7_2243 ),
    .Q(\hexdisp1/state_FSM_FFd2_2240 )
  );
  FDRS   \hexdisp1/state_FSM_FFd1  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<5>0 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/state_FSM_FFd1_2239 ),
    .Q(\hexdisp1/state_FSM_FFd1_2239 )
  );
  FDRS   \hexdisp1/state_FSM_FFd3  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/state_FSM_FFd3-In42 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/state_FSM_FFd3-In34_2246 ),
    .Q(\hexdisp1/state_FSM_FFd3_2244 )
  );
  FDRS   \hexdisp1/dot_index_9  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<0>87_2184 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/dot_index_mux0000<0>59_2183 ),
    .Q(\hexdisp1/dot_index [9])
  );
  FDRS   \hexdisp1/dot_index_7  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<2>69 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/N99 ),
    .Q(\hexdisp1/dot_index [7])
  );
  FDRS   \hexdisp1/dot_index_6  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<3>27 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/N31 ),
    .Q(\hexdisp1/dot_index [6])
  );
  FDRS   \hexdisp1/dot_index_5  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<4>147_2197 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/dot_index_mux0000<4>91_2201 ),
    .Q(\hexdisp1/dot_index [5])
  );
  FDRS   \hexdisp1/dot_index_4  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<5>118 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/dot_index_mux0000<5>0 ),
    .Q(\hexdisp1/dot_index [4])
  );
  FDRS   \hexdisp1/dot_index_3  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<6>96 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/dot_index_mux0000<5>0 ),
    .Q(\hexdisp1/dot_index [3])
  );
  FDRS   \hexdisp1/dot_index_2  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<7>94 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/N13 ),
    .Q(\hexdisp1/dot_index [2])
  );
  FDRS   \hexdisp1/dot_index_1  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<8>1_2214 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/N13 ),
    .Q(\hexdisp1/dot_index [1])
  );
  FDRS   \hexdisp1/dot_index_0  (
    .C(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/dot_index_mux0000<9>1_2215 ),
    .R(\hexdisp1/dreset ),
    .S(\hexdisp1/N13 ),
    .Q(\hexdisp1/dot_index [0])
  );
  FDRS   \cpu/ctl/annul  (
    .C(clock_50MHz),
    .D(\cpu/ctl/annul_or00001 ),
    .R(reset),
    .S(\cpu/branch ),
    .Q(\cpu/ctl/annul_978 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<1>_rt  (
    .I0(\dbreset/count [1]),
    .O(\dbreset/Mcount_count_cy<1>_rt_1605 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<2>_rt  (
    .I0(\dbreset/count [2]),
    .O(\dbreset/Mcount_count_cy<2>_rt_1607 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<3>_rt  (
    .I0(\dbreset/count [3]),
    .O(\dbreset/Mcount_count_cy<3>_rt_1609 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<4>_rt  (
    .I0(\dbreset/count [4]),
    .O(\dbreset/Mcount_count_cy<4>_rt_1611 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<5>_rt  (
    .I0(\dbreset/count [5]),
    .O(\dbreset/Mcount_count_cy<5>_rt_1613 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<6>_rt  (
    .I0(\dbreset/count [6]),
    .O(\dbreset/Mcount_count_cy<6>_rt_1615 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<7>_rt  (
    .I0(\dbreset/count [7]),
    .O(\dbreset/Mcount_count_cy<7>_rt_1617 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<8>_rt  (
    .I0(\dbreset/count [8]),
    .O(\dbreset/Mcount_count_cy<8>_rt_1619 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<9>_rt  (
    .I0(\dbreset/count [9]),
    .O(\dbreset/Mcount_count_cy<9>_rt_1621 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<10>_rt  (
    .I0(\dbreset/count [10]),
    .O(\dbreset/Mcount_count_cy<10>_rt_1589 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<11>_rt  (
    .I0(\dbreset/count [11]),
    .O(\dbreset/Mcount_count_cy<11>_rt_1591 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<12>_rt  (
    .I0(\dbreset/count [12]),
    .O(\dbreset/Mcount_count_cy<12>_rt_1593 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<13>_rt  (
    .I0(\dbreset/count [13]),
    .O(\dbreset/Mcount_count_cy<13>_rt_1595 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<14>_rt  (
    .I0(\dbreset/count [14]),
    .O(\dbreset/Mcount_count_cy<14>_rt_1597 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<15>_rt  (
    .I0(\dbreset/count [15]),
    .O(\dbreset/Mcount_count_cy<15>_rt_1599 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<16>_rt  (
    .I0(\dbreset/count [16]),
    .O(\dbreset/Mcount_count_cy<16>_rt_1601 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_cy<17>_rt  (
    .I0(\dbreset/count [17]),
    .O(\dbreset/Mcount_count_cy<17>_rt_1603 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hexdisp1/Mcount_reset_count_cy<0>_rt  (
    .I0(\hexdisp1/reset_count [0]),
    .O(\hexdisp1/Mcount_reset_count_cy<0>_rt_1993 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<29>_rt  (
    .I0(\cpu/npc [29]),
    .O(\cpu/Madd_npc_inc_Madd_cy<29>_rt_739 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<28>_rt  (
    .I0(\cpu/npc [28]),
    .O(\cpu/Madd_npc_inc_Madd_cy<28>_rt_737 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<27>_rt  (
    .I0(\cpu/npc [27]),
    .O(\cpu/Madd_npc_inc_Madd_cy<27>_rt_735 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<26>_rt  (
    .I0(\cpu/npc [26]),
    .O(\cpu/Madd_npc_inc_Madd_cy<26>_rt_733 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<25>_rt  (
    .I0(\cpu/npc [25]),
    .O(\cpu/Madd_npc_inc_Madd_cy<25>_rt_731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<24>_rt  (
    .I0(\cpu/npc [24]),
    .O(\cpu/Madd_npc_inc_Madd_cy<24>_rt_729 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<23>_rt  (
    .I0(\cpu/npc [23]),
    .O(\cpu/Madd_npc_inc_Madd_cy<23>_rt_727 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<22>_rt  (
    .I0(\cpu/npc [22]),
    .O(\cpu/Madd_npc_inc_Madd_cy<22>_rt_725 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<21>_rt  (
    .I0(\cpu/npc [21]),
    .O(\cpu/Madd_npc_inc_Madd_cy<21>_rt_723 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<20>_rt  (
    .I0(\cpu/npc [20]),
    .O(\cpu/Madd_npc_inc_Madd_cy<20>_rt_721 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<19>_rt  (
    .I0(\cpu/npc [19]),
    .O(\cpu/Madd_npc_inc_Madd_cy<19>_rt_719 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<18>_rt  (
    .I0(\cpu/npc [18]),
    .O(\cpu/Madd_npc_inc_Madd_cy<18>_rt_717 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<17>_rt  (
    .I0(\cpu/npc [17]),
    .O(\cpu/Madd_npc_inc_Madd_cy<17>_rt_715 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<16>_rt  (
    .I0(\cpu/npc [16]),
    .O(\cpu/Madd_npc_inc_Madd_cy<16>_rt_713 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<15>_rt  (
    .I0(\cpu/npc [15]),
    .O(\cpu/Madd_npc_inc_Madd_cy<15>_rt_711 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<14>_rt  (
    .I0(\cpu/npc [14]),
    .O(\cpu/Madd_npc_inc_Madd_cy<14>_rt_709 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<13>_rt  (
    .I0(\cpu/npc [13]),
    .O(\cpu/Madd_npc_inc_Madd_cy<13>_rt_707 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<12>_rt  (
    .I0(\cpu/npc [12]),
    .O(\cpu/Madd_npc_inc_Madd_cy<12>_rt_705 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<11>_rt  (
    .I0(\cpu/npc [11]),
    .O(\cpu/Madd_npc_inc_Madd_cy<11>_rt_703 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<10>_rt  (
    .I0(\cpu/npc [10]),
    .O(\cpu/Madd_npc_inc_Madd_cy<10>_rt_701 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<9>_rt  (
    .I0(\cpu/npc [9]),
    .O(\cpu/Madd_npc_inc_Madd_cy<9>_rt_754 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<8>_rt  (
    .I0(\cpu/npc [8]),
    .O(\cpu/Madd_npc_inc_Madd_cy<8>_rt_752 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<7>_rt  (
    .I0(\cpu/npc [7]),
    .O(\cpu/Madd_npc_inc_Madd_cy<7>_rt_750 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<6>_rt  (
    .I0(\cpu/npc [6]),
    .O(\cpu/Madd_npc_inc_Madd_cy<6>_rt_748 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<5>_rt  (
    .I0(\cpu/npc [5]),
    .O(\cpu/Madd_npc_inc_Madd_cy<5>_rt_746 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<4>_rt  (
    .I0(\cpu/npc [4]),
    .O(\cpu/Madd_npc_inc_Madd_cy<4>_rt_744 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_cy<3>_rt  (
    .I0(\cpu/npc [3]),
    .O(\cpu/Madd_npc_inc_Madd_cy<3>_rt_742 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<8>_rt  (
    .I0(\dpy/vcount [8]),
    .O(\dpy/Mcount_vcount_cy<8>_rt_1747 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<7>_rt  (
    .I0(\dpy/vcount [7]),
    .O(\dpy/Mcount_vcount_cy<7>_rt_1745 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<6>_rt  (
    .I0(\dpy/vcount [6]),
    .O(\dpy/Mcount_vcount_cy<6>_rt_1743 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<5>_rt  (
    .I0(\dpy/vcount [5]),
    .O(\dpy/Mcount_vcount_cy<5>_rt_1741 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<4>_rt  (
    .I0(\dpy/vcount [4]),
    .O(\dpy/Mcount_vcount_cy<4>_rt_1739 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<3>_rt  (
    .I0(\dpy/vcount [3]),
    .O(\dpy/Mcount_vcount_cy<3>_rt_1737 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<2>_rt  (
    .I0(\dpy/vcount [2]),
    .O(\dpy/Mcount_vcount_cy<2>_rt_1735 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_cy<1>_rt  (
    .I0(\dpy/vcount [1]),
    .O(\dpy/Mcount_vcount_cy<1>_rt_1733 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<8>_rt  (
    .I0(\dpy/hcount [8]),
    .O(\dpy/Mcount_hcount_cy<8>_rt_1728 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<7>_rt  (
    .I0(\dpy/hcount [7]),
    .O(\dpy/Mcount_hcount_cy<7>_rt_1726 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<6>_rt  (
    .I0(\dpy/hcount [6]),
    .O(\dpy/Mcount_hcount_cy<6>_rt_1724 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<5>_rt  (
    .I0(\dpy/hcount [5]),
    .O(\dpy/Mcount_hcount_cy<5>_rt_1722 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<4>_rt  (
    .I0(\dpy/hcount [4]),
    .O(\dpy/Mcount_hcount_cy<4>_rt_1720 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<3>_rt  (
    .I0(\dpy/hcount [3]),
    .O(\dpy/Mcount_hcount_cy<3>_rt_1718 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<2>_rt  (
    .I0(\dpy/hcount [2]),
    .O(\dpy/Mcount_hcount_cy<2>_rt_1716 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_cy<1>_rt  (
    .I0(\dpy/hcount [1]),
    .O(\dpy/Mcount_hcount_cy<1>_rt_1714 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_font_addr_cy<9>_rt  (
    .I0(\dpy/font_addr_mult0000 [9]),
    .O(\dpy/Madd_font_addr_cy<9>_rt_1704 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_font_addr_cy<8>_rt  (
    .I0(\dpy/font_addr_mult0000 [8]),
    .O(\dpy/Madd_font_addr_cy<8>_rt_1702 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_font_addr_cy<7>_rt  (
    .I0(\dpy/font_addr_mult0000 [7]),
    .O(\dpy/Madd_font_addr_cy<7>_rt_1700 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_font_addr_cy<6>_rt  (
    .I0(\dpy/font_addr_mult0000 [6]),
    .O(\dpy/Madd_font_addr_cy<6>_rt_1698 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_font_addr_cy<5>_rt  (
    .I0(\dpy/font_addr_mult0000 [5]),
    .O(\dpy/Madd_font_addr_cy<5>_rt_1696 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_font_addr_cy<4>_rt  (
    .I0(\dpy/font_addr_mult0000 [4]),
    .O(\dpy/Madd_font_addr_cy<4>_rt_1694 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_char_addr_cy<10>_rt  (
    .I0(\dpy/char_addr_mult0001 [10]),
    .O(\dpy/Madd_char_addr_cy<10>_rt_1669 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_char_addr_cy<9>_rt  (
    .I0(\dpy/char_addr_mult0001 [9]),
    .O(\dpy/Madd_char_addr_cy<9>_rt_1681 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_char_addr_cy<8>_rt  (
    .I0(\dpy/char_addr_mult0001 [8]),
    .O(\dpy/Madd_char_addr_cy<8>_rt_1679 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Madd_char_addr_cy<7>_rt  (
    .I0(\dpy/char_addr_mult0001 [7]),
    .O(\dpy/Madd_char_addr_cy<7>_rt_1677 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dbreset/Mcount_count_xor<18>_rt  (
    .I0(\dbreset/count [18]),
    .O(\dbreset/Mcount_count_xor<18>_rt_1623 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cpu/Madd_npc_inc_Madd_xor<30>_rt  (
    .I0(\cpu/npc [30]),
    .O(\cpu/Madd_npc_inc_Madd_xor<30>_rt_756 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_vcount_xor<9>_rt  (
    .I0(\dpy/vcount [9]),
    .O(\dpy/Mcount_vcount_xor<9>_rt_1749 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dpy/Mcount_hcount_xor<9>_rt  (
    .I0(\dpy/hcount [9]),
    .O(\dpy/Mcount_hcount_xor<9>_rt_1730 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<0>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [0]),
    .I2(\cpu/b<0>1_940 ),
    .O(\cpu/Madd_addsub_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<16>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [16]),
    .I2(\cpu/b [16]),
    .O(\cpu/Madd_addsub_lut [16])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<14>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [14]),
    .I2(\cpu/b [14]),
    .O(\cpu/Madd_addsub_lut [14])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<17>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [17]),
    .I2(\cpu/b [17]),
    .O(\cpu/Madd_addsub_lut [17])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<18>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [18]),
    .I2(\cpu/b [18]),
    .O(\cpu/Madd_addsub_lut [18])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \cpu/wd<0>561  (
    .I0(\cpu/addsub [23]),
    .I1(\cpu/wd<0>539_1332 ),
    .I2(\cpu/addsub [31]),
    .I3(\cpu/addsub [17]),
    .O(\cpu/wd<0>561_1333 )
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<17>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [17]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [17])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<18>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [18]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [18])
  );
  LUT4 #(
    .INIT ( 16'h88B8 ))
  \cpu/b<2>  (
    .I0(N259),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [2]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [2])
  );
  LUT4 #(
    .INIT ( 16'h88B8 ))
  \cpu/b<3>  (
    .I0(N257),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [3]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [3])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \cpu/b<7>  (
    .I0(\cpu/_varindex0001 [7]),
    .I1(\cpu/bsel ),
    .I2(\cpu/rd2_cmp_eq0000_1229 ),
    .I3(N244),
    .O(\cpu/b [7])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \cpu/b<10>  (
    .I0(\cpu/_varindex0001 [10]),
    .I1(\cpu/bsel ),
    .I2(\cpu/rd2_cmp_eq0000_1229 ),
    .I3(N234),
    .O(\cpu/b [10])
  );
  LUT4 #(
    .INIT ( 16'h88D8 ))
  \cpu/b<14>  (
    .I0(\cpu/bsel ),
    .I1(N224),
    .I2(\cpu/_varindex0001 [14]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [14])
  );
  LUT4 #(
    .INIT ( 16'h8030 ))
  \cpu/ctl/mem_next_SW0_SW0  (
    .I0(\cpu/inst_26_1_1012 ),
    .I1(\cpu/inst_27_1_1014 ),
    .I2(\cpu/inst [29]),
    .I3(\cpu/inst [28]),
    .O(N279)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  rd_ps2_and0000_norst11_SW0 (
    .I0(\cpu/addsub [4]),
    .I1(\cpu/addsub [5]),
    .O(N283)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/rd2_cmp_eq0000_SW0_SW0  (
    .I0(\cpu/inst [15]),
    .I1(\cpu/inst [11]),
    .O(N285)
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<14>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [14]),
    .I3(N287),
    .O(ma[14])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<13>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [13]),
    .I3(N289),
    .O(ma[13])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<12>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [12]),
    .I3(N291),
    .O(ma[12])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<11>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [11]),
    .I3(N293),
    .O(ma[11])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<10>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [10]),
    .I3(N295),
    .O(ma[10])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<9>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [9]),
    .I3(N297),
    .O(ma[9])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<8>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [8]),
    .I3(N299),
    .O(ma[8])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<7>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [7]),
    .I3(N301),
    .O(ma[7])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<6>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [6]),
    .I3(N303),
    .O(ma[6])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<0>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [16]),
    .I3(N305),
    .O(highmem_wg_lut[0])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<1>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [17]),
    .I3(N307),
    .O(highmem_wg_lut[1])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<2>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [18]),
    .I3(N309),
    .O(highmem_wg_lut[2])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<3>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [19]),
    .I3(N311),
    .O(highmem_wg_lut[3])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \cpu/ma<15>1  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [15]),
    .I3(N313),
    .O(ma[15])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<4>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [20]),
    .I3(N315),
    .O(highmem_wg_lut[4])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<5>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [21]),
    .I3(N317),
    .O(highmem_wg_lut[5])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<6>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [22]),
    .I3(N319),
    .O(highmem_wg_lut[6])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<7>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [23]),
    .I3(N321),
    .O(highmem_wg_lut[7])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<8>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [24]),
    .I3(N323),
    .O(highmem_wg_lut[8])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<9>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [25]),
    .I3(N325),
    .O(highmem_wg_lut[9])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<10>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [26]),
    .I3(N327),
    .O(highmem_wg_lut[10])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<11>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [27]),
    .I3(N329),
    .O(highmem_wg_lut[11])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<12>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [28]),
    .I3(N331),
    .O(highmem_wg_lut[12])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<13>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [29]),
    .I3(N333),
    .O(highmem_wg_lut[13])
  );
  LUT4 #(
    .INIT ( 16'hE0F5 ))
  \highmem_wg_lut<14>  (
    .I0(\cpu/msel_next ),
    .I1(\cpu/N36 ),
    .I2(\cpu/addsub [30]),
    .I3(N335),
    .O(highmem_wg_lut[14])
  );
  LUT4 #(
    .INIT ( 16'h4474 ))
  \cpu/b<0>1  (
    .I0(N337),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [0]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [0])
  );
  LUT4 #(
    .INIT ( 16'h4474 ))
  \cpu/b<1>1  (
    .I0(N339),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [1]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  rd_ps2_and0000_norst16_SW0 (
    .I0(ma[10]),
    .I1(ma[11]),
    .I2(rd_ps2_and0000_norst11_2536),
    .I3(ma[12]),
    .O(N347)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/rd2_cmp_eq0000_SW1  (
    .I0(\cpu/ra2 [2]),
    .I1(\cpu/ra2 [1]),
    .O(N349)
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \cpu/rd2<4>1  (
    .I0(\cpu/_varindex0001 [4]),
    .I1(N249),
    .I2(\cpu/ra2 [3]),
    .I3(N349),
    .O(mdout[4])
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \cpu/rd2<5>1  (
    .I0(\cpu/_varindex0001 [5]),
    .I1(N249),
    .I2(\cpu/ra2 [3]),
    .I3(N349),
    .O(mdout[5])
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \cpu/rd2<6>1  (
    .I0(\cpu/_varindex0001 [6]),
    .I1(N249),
    .I2(\cpu/ra2 [3]),
    .I3(N349),
    .O(mdout[6])
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \cpu/rd2<8>1  (
    .I0(\cpu/_varindex0001 [8]),
    .I1(N249),
    .I2(\cpu/ra2 [3]),
    .I3(N349),
    .O(mdout[8])
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \cpu/rd2<13>1  (
    .I0(\cpu/_varindex0001 [13]),
    .I1(N249),
    .I2(\cpu/ra2 [3]),
    .I3(N349),
    .O(mdout[13])
  );
  LUT3 #(
    .INIT ( 8'h09 ))
  \kbd/fifo_empty3  (
    .I0(\kbd/wptr_1_1_2337 ),
    .I1(\kbd/rptr [1]),
    .I2(N1024),
    .O(ps2out[8])
  );
  LUT4 #(
    .INIT ( 16'hAFA8 ))
  \cpu/npc_next<31>26_SW0  (
    .I0(\cpu/npc [31]),
    .I1(N1051),
    .I2(\cpu/msel_next ),
    .I3(\cpu/npc_next<31>9_1159 ),
    .O(N361)
  );
  LUT4 #(
    .INIT ( 16'hA0C0 ))
  \highmem_wg_lut<15>  (
    .I0(N362),
    .I1(N361),
    .I2(ma[15]),
    .I3(\cpu/addsub [31]),
    .O(highmem_wg_lut[15])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<19>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [19]),
    .I2(\cpu/b [19]),
    .O(\cpu/Madd_addsub_lut [19])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<20>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [20]),
    .I2(\cpu/b [20]),
    .O(\cpu/Madd_addsub_lut [20])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<21>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [21]),
    .I2(\cpu/b [21]),
    .O(\cpu/Madd_addsub_lut [21])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<22>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [22]),
    .I2(\cpu/b [22]),
    .O(\cpu/Madd_addsub_lut [22])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<23>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [23]),
    .I2(\cpu/b [23]),
    .O(\cpu/Madd_addsub_lut [23])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<24>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [24]),
    .I2(\cpu/b [24]),
    .O(\cpu/Madd_addsub_lut [24])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<25>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [25]),
    .I2(\cpu/b [25]),
    .O(\cpu/Madd_addsub_lut [25])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<26>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [26]),
    .I2(\cpu/b [26]),
    .O(\cpu/Madd_addsub_lut [26])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<27>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [27]),
    .I2(\cpu/b [27]),
    .O(\cpu/Madd_addsub_lut [27])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<28>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [28]),
    .I2(\cpu/b [28]),
    .O(\cpu/Madd_addsub_lut [28])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<29>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [29]),
    .I2(\cpu/b [29]),
    .O(\cpu/Madd_addsub_lut [29])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<30>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [30]),
    .I2(\cpu/b [30]),
    .O(\cpu/Madd_addsub_lut [30])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<19>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [19]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [19])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<20>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [20]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [20])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<21>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [21]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [21])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<22>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [22]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [22])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<23>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [23]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [23])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<24>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [24]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [24])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<25>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [25]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [25])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<26>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [26]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [26])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<27>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [27]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [27])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<28>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [28]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [28])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<29>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [29]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [29])
  );
  LUT4 #(
    .INIT ( 16'hAABA ))
  \cpu/b<30>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [30]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [30])
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/Sh453  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N166),
    .I3(N167),
    .O(\cpu/Sh453_801 )
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \cpu/b<9>  (
    .I0(\cpu/_varindex0001 [9]),
    .I1(\cpu/bsel ),
    .I2(\cpu/rd2_cmp_eq0000_1229 ),
    .I3(N273),
    .O(\cpu/b [9])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \cpu/b<16>_SW3  (
    .I0(\cpu/inst [14]),
    .I1(N1034),
    .I2(\cpu/asel ),
    .I3(\cpu/bsel ),
    .O(N367)
  );
  LUT4 #(
    .INIT ( 16'hDC8C ))
  \cpu/b<16>  (
    .I0(\cpu/rd2_cmp_eq0000_1229 ),
    .I1(N366),
    .I2(\cpu/_varindex0001 [16]),
    .I3(N367),
    .O(\cpu/b [16])
  );
  LUT4 #(
    .INIT ( 16'h88B8 ))
  \cpu/b<4>  (
    .I0(N265),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [4]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b [4])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \cpu/b<8>  (
    .I0(\cpu/_varindex0001 [8]),
    .I1(\cpu/bsel ),
    .I2(\cpu/rd2_cmp_eq0000_1229 ),
    .I3(N271),
    .O(\cpu/b [8])
  );
  LUT4 #(
    .INIT ( 16'hFE02 ))
  \cpu/ctl/msel_next1_SW3  (
    .I0(\cpu/inst [21]),
    .I1(\cpu/ctl/msel_1_987 ),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/inst [11]),
    .O(N385)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \cpu/ctl/msel_next1_SW4  (
    .I0(\cpu/inst [25]),
    .I1(\cpu/inst [15]),
    .I2(\cpu/ctl/msel_1_987 ),
    .I3(\cpu/ctl/annul_978 ),
    .O(N387)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  rd_ps2_and0000_norst140 (
    .I0(rd_ps2_and0000_norst110_2537),
    .I1(highmem),
    .I2(N347),
    .I3(N413),
    .O(N0)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<9>95  (
    .I0(\cpu/b [3]),
    .I1(\cpu/b [2]),
    .I2(\cpu/sr/shift_right<13>_bdd14 ),
    .I3(\cpu/sr/shift_right<13>_bdd10 ),
    .O(\cpu/wd<9>95_1569 )
  );
  LUT4 #(
    .INIT ( 16'h1504 ))
  \cpu/ctl/addsub_op  (
    .I0(\cpu/inst [29]),
    .I1(\cpu/inst [26]),
    .I2(N417),
    .I3(\cpu/ctl/N6 ),
    .O(\cpu/addsub_op )
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<2>1  (
    .I0(\cpu/_varindex0000 [2]),
    .I1(\cpu/pc_inc [2]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [2])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<3>1  (
    .I0(\cpu/_varindex0000 [3]),
    .I1(\cpu/pc_inc [3]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \cpu/Madd_addsub_lut<31>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [31]),
    .I2(\cpu/b [31]),
    .O(\cpu/Madd_addsub_lut [31])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \cpu/a<0>1  (
    .I0(\cpu/_varindex0000 [0]),
    .I1(\cpu/rd1_cmp_eq0000 ),
    .I2(\cpu/asel ),
    .O(\cpu/a [0])
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<11>163  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<11>4_1346 ),
    .I2(N427),
    .I3(\cpu/wd<11>73_1347 ),
    .O(\cpu/wd [11])
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \dpy/hreset_SW0_SW0  (
    .I0(\dpy/hcount [8]),
    .I1(\dpy/pcount_1893 ),
    .I2(\dpy/hcount [2]),
    .O(N429)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \dpy/hreset  (
    .I0(\dpy/hcount [0]),
    .I1(N429),
    .I2(\dpy/N19 ),
    .I3(\dpy/N22 ),
    .O(\dpy/hreset_1872 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \cpu/ctl/addsub_op11  (
    .I0(\cpu/inst [28]),
    .I1(\cpu/inst [31]),
    .I2(N431),
    .I3(power_on_reset),
    .O(\cpu/ctl/N6 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<15>171  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<15>4_1371 ),
    .I2(N433),
    .I3(\cpu/wd<15>73_1372 ),
    .O(\cpu/wd [15])
  );
  LUT4 #(
    .INIT ( 16'hF3D1 ))
  \cpu/npc_next<3>52_SW1  (
    .I0(reset),
    .I1(\cpu/msel_next ),
    .I2(\cpu/addsub [3]),
    .I3(N1053),
    .O(N436)
  );
  LUT4 #(
    .INIT ( 16'hFE04 ))
  \cpu/ma<3>1  (
    .I0(\cpu/npc_next<3>1_1162 ),
    .I1(N435),
    .I2(N1020),
    .I3(N436),
    .O(ma[3])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \cpu/wd<30>4_SW0_SW0  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[30]),
    .I2(\cpu/addsub [30]),
    .I3(\cpu/N34 ),
    .O(N444)
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \cpu/wd<30>212  (
    .I0(\cpu/N35 ),
    .I1(N444),
    .I2(\cpu/wd<30>187_1508 ),
    .O(\cpu/wd [30])
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \cpu/wd<29>157_SW0  (
    .I0(\cpu/wd_shift ),
    .I1(\cpu/shift_op ),
    .I2(\cpu/wd<29>186_1487 ),
    .I3(\cpu/wd<19>131 ),
    .O(N373)
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \cpu/wd<19>108  (
    .I0(\cpu/wd_shift ),
    .I1(\cpu/shift_op ),
    .I2(\cpu/wd<19>89_1404 ),
    .I3(\cpu/wd<19>67_1403 ),
    .O(\cpu/wd<19>108_1398 )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<23>118  (
    .I0(\cpu/wd_shift ),
    .I1(\cpu/shift_op ),
    .I2(\cpu/wd<23>98_1444 ),
    .I3(\cpu/wd<23>55_1441 ),
    .O(\cpu/wd<23>118_1438 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  rd_ps2_and0000_norst1 (
    .I0(rd_ps2_and0000_norst110_2537),
    .I1(N347),
    .I2(N488),
    .I3(highmem),
    .O(rd_ps2_and0000_norst)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  sel_60Hz1 (
    .I0(rd_ps2_and0000_norst110_2537),
    .I1(highmem),
    .I2(N490),
    .I3(N347),
    .O(sel_60Hz)
  );
  LUT4 #(
    .INIT ( 16'hFF35 ))
  \cpu/wd<30>91_SW0  (
    .I0(\cpu/a [30]),
    .I1(\cpu/a [28]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [2]),
    .O(N492)
  );
  LUT4 #(
    .INIT ( 16'hFF53 ))
  \cpu/wd<30>91_SW1  (
    .I0(\cpu/a [27]),
    .I1(\cpu/a [29]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [2]),
    .O(N493)
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<19>171  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<19>4_1401 ),
    .I2(N497),
    .I3(\cpu/wd<19>108_1398 ),
    .O(\cpu/wd [19])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \cpu/Sh27_SW1  (
    .I0(\cpu/a [24]),
    .I1(\cpu/a [26]),
    .I2(N503),
    .O(N123)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh23_SW1  (
    .I0(\cpu/a [22]),
    .I1(\cpu/a [20]),
    .I2(N1033),
    .O(N135)
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<4>1  (
    .I0(\cpu/_varindex0000 [4]),
    .I1(\cpu/pc_inc [4]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [4])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<5>1  (
    .I0(\cpu/_varindex0000 [5]),
    .I1(\cpu/pc_inc [5]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [5])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<6>1  (
    .I0(\cpu/_varindex0000 [6]),
    .I1(\cpu/pc_inc [6]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [6])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<7>1  (
    .I0(\cpu/_varindex0000 [7]),
    .I1(\cpu/pc_inc [7]),
    .I2(N974),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [7])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<8>1  (
    .I0(\cpu/_varindex0000 [8]),
    .I1(\cpu/pc_inc [8]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [8])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<9>1  (
    .I0(\cpu/_varindex0000 [9]),
    .I1(\cpu/pc_inc [9]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [9])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<10>2  (
    .I0(\cpu/_varindex0000 [10]),
    .I1(\cpu/pc_inc [10]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [10])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<11>1  (
    .I0(\cpu/_varindex0000 [11]),
    .I1(\cpu/pc_inc [11]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [11])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<12>1  (
    .I0(\cpu/_varindex0000 [12]),
    .I1(\cpu/pc_inc [12]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [12])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<13>1  (
    .I0(\cpu/_varindex0000 [13]),
    .I1(\cpu/pc_inc [13]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [13])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<15>1  (
    .I0(\cpu/_varindex0000 [15]),
    .I1(\cpu/pc_inc [15]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [15])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<26>1  (
    .I0(\cpu/_varindex0000 [26]),
    .I1(\cpu/pc_inc [26]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [26])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<25>1  (
    .I0(\cpu/_varindex0000 [25]),
    .I1(\cpu/pc_inc [25]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [25])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<24>1  (
    .I0(\cpu/_varindex0000 [24]),
    .I1(\cpu/pc_inc [24]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [24])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<23>1  (
    .I0(\cpu/_varindex0000 [23]),
    .I1(\cpu/pc_inc [23]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [23])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<22>1  (
    .I0(\cpu/_varindex0000 [22]),
    .I1(\cpu/pc_inc [22]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [22])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<21>1  (
    .I0(\cpu/_varindex0000 [21]),
    .I1(\cpu/pc_inc [21]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [21])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<20>1  (
    .I0(\cpu/_varindex0000 [20]),
    .I1(\cpu/pc_inc [20]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [20])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<19>1  (
    .I0(\cpu/_varindex0000 [19]),
    .I1(\cpu/pc_inc [19]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [19])
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \cpu/wd<27>71_SW0  (
    .I0(\cpu/b [0]),
    .I1(N135),
    .I2(\cpu/N47 ),
    .I3(N132),
    .O(N495)
  );
  LUT4 #(
    .INIT ( 16'h555D ))
  \cpu/rd2<0>1_SW0  (
    .I0(\cpu/inst [0]),
    .I1(N1035),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .O(N337)
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<3>1  (
    .I0(\cpu/inst [14]),
    .I1(power_on_reset),
    .I2(N403),
    .I3(N551),
    .O(\cpu/ra2 [3])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<2>1  (
    .I0(\cpu/inst [13]),
    .I1(power_on_reset),
    .I2(N405),
    .I3(N551),
    .O(\cpu/ra2 [2])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<1>1  (
    .I0(\cpu/inst [12]),
    .I1(power_on_reset),
    .I2(N407),
    .I3(N551),
    .O(\cpu/ra2 [1])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<0>1  (
    .I0(\cpu/inst [11]),
    .I1(power_on_reset),
    .I2(N442),
    .I3(N551),
    .O(\cpu/ra2 [0])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<4>1  (
    .I0(\cpu/inst [15]),
    .I1(power_on_reset),
    .I2(N438),
    .I3(N551),
    .O(\cpu/ra2 [4])
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \cpu/rd2_cmp_eq0000_SW0_SW1  (
    .I0(\dpy/irq_60Hz_1877 ),
    .I1(N369),
    .I2(ps2out[8]),
    .I3(\dbreset/clean_1624 ),
    .O(N553)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dpy/vreset_SW0_SW0  (
    .I0(\dpy/vcount [9]),
    .I1(\dpy/vcount [3]),
    .I2(\dpy/vcount [2]),
    .O(N555)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \dpy/vreset  (
    .I0(N555),
    .I1(\dpy/N23 ),
    .I2(\dpy/hreset_1872 ),
    .I3(\dpy/N21 ),
    .O(\dpy/vcount_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4C46 ))
  \dpy/next_row<2>  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/row [2]),
    .I2(\dpy/vcount_and0000 ),
    .I3(N557),
    .O(\dpy/next_row [2])
  );
  LUT4 #(
    .INIT ( 16'h4C46 ))
  \dpy/next_row<5>  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/row [5]),
    .I2(\dpy/vcount_and0000 ),
    .I3(N559),
    .O(\dpy/next_row [5])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<2>_SW0  (
    .I0(N1038),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [2]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N563)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<2>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [2]),
    .I2(N563),
    .O(\cpu/Madd_addsub_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<3>_SW0  (
    .I0(N1039),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [3]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/wd<14>98 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<3>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [3]),
    .I2(\cpu/wd<14>98 ),
    .O(\cpu/Madd_addsub_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<7>_SW2  (
    .I0(N1043),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [7]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N567)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<7>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [7]),
    .I2(N567),
    .O(\cpu/Madd_addsub_lut [7])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<9>_SW2  (
    .I0(N1046),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [9]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N569)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<9>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [9]),
    .I2(N569),
    .O(\cpu/Madd_addsub_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<10>_SW2  (
    .I0(N1047),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [10]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N571)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<10>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [10]),
    .I2(N571),
    .O(\cpu/Madd_addsub_lut [10])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<11>_SW2  (
    .I0(N1048),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [11]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N573)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<11>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [11]),
    .I2(N573),
    .O(\cpu/Madd_addsub_lut [11])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<12>_SW2  (
    .I0(N1049),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [12]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N575)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<12>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [12]),
    .I2(N575),
    .O(\cpu/Madd_addsub_lut [12])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<4>_SW2  (
    .I0(N1040),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [4]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N577)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<4>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [4]),
    .I2(N577),
    .O(\cpu/Madd_addsub_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<5>_SW2  (
    .I0(N1041),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [5]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N579)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<5>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [5]),
    .I2(N579),
    .O(\cpu/Madd_addsub_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<6>_SW2  (
    .I0(N1042),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [6]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N581)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<6>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [6]),
    .I2(N581),
    .O(\cpu/Madd_addsub_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<8>_SW2  (
    .I0(N1045),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [8]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N583)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<8>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [8]),
    .I2(N583),
    .O(\cpu/Madd_addsub_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h7747 ))
  \cpu/Madd_addsub_lut<13>_SW2  (
    .I0(N1050),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [13]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(N585)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \cpu/Madd_addsub_lut<13>  (
    .I0(\cpu/addsub_op ),
    .I1(\cpu/a [13]),
    .I2(N585),
    .O(\cpu/Madd_addsub_lut [13])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<14>1  (
    .I0(\cpu/_varindex0000 [14]),
    .I1(\cpu/pc_inc [14]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [14])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<16>1  (
    .I0(\cpu/_varindex0000 [16]),
    .I1(\cpu/pc_inc [16]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [16])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<17>1  (
    .I0(\cpu/_varindex0000 [17]),
    .I1(\cpu/pc_inc [17]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [17])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<18>1  (
    .I0(\cpu/_varindex0000 [18]),
    .I1(\cpu/pc_inc [18]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [18])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<27>1  (
    .I0(\cpu/_varindex0000 [27]),
    .I1(\cpu/pc_inc [27]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [27])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<30>1  (
    .I0(\cpu/_varindex0000 [30]),
    .I1(\cpu/pc_inc [30]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [30])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<29>1  (
    .I0(\cpu/_varindex0000 [29]),
    .I1(\cpu/pc_inc [29]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [29])
  );
  LUT4 #(
    .INIT ( 16'hC0CA ))
  \cpu/a<28>1  (
    .I0(\cpu/_varindex0000 [28]),
    .I1(\cpu/pc_inc [28]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .O(\cpu/a [28])
  );
  LUT4 #(
    .INIT ( 16'h4C46 ))
  \dpy/next_row<1>  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/row [1]),
    .I2(\dpy/vcount_and0000 ),
    .I3(N587),
    .O(\dpy/next_row [1])
  );
  LUT4 #(
    .INIT ( 16'h4C46 ))
  \dpy/next_row<4>  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/row [4]),
    .I2(\dpy/vcount_and0000 ),
    .I3(N589),
    .O(\dpy/next_row [4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dpy/next_row<1>11_SW0  (
    .I0(\dpy/row [2]),
    .I1(\dpy/row [1]),
    .I2(\dpy/row [0]),
    .O(N591)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW2  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [0]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [2]),
    .O(N593)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW3  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [1]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [3]),
    .O(N595)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW4  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [2]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [4]),
    .O(N597)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW5  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [3]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [5]),
    .O(N599)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW6  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [4]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [6]),
    .O(N601)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW7  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [5]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [7]),
    .O(N603)
  );
  LUT3 #(
    .INIT ( 8'hDE ))
  \kbd/fifo_empty3_SW0  (
    .I0(\kbd/wptr_1_1_2337 ),
    .I1(\dpy/irq_60Hz_1877 ),
    .I2(\kbd/rptr [1]),
    .O(N605)
  );
  LUT4 #(
    .INIT ( 16'hAFAE ))
  \cpu/ra2<4>1_SW0  (
    .I0(\dbreset/clean_1624 ),
    .I1(N605),
    .I2(N1027),
    .I3(N359),
    .O(N551)
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \cpu/ctl/csel_SW9  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [26]),
    .I2(N973),
    .O(N609)
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \cpu/a<1>1  (
    .I0(\cpu/_varindex0000 [1]),
    .I1(\cpu/rd1_cmp_eq0000 ),
    .I2(\cpu/interrupt ),
    .I3(N609),
    .O(\cpu/a [1])
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<26>190  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<26>4_1463 ),
    .I2(N371),
    .I3(N621),
    .O(\cpu/wd [26])
  );
  LUT4 #(
    .INIT ( 16'hD2C3 ))
  \cpu/Madd_addsub_lut<15>_SW0  (
    .I0(\cpu/rd2_cmp_eq0000_1229 ),
    .I1(N221),
    .I2(\cpu/a [15]),
    .I3(\cpu/_varindex0001 [15]),
    .O(N623)
  );
  LUT4 #(
    .INIT ( 16'hC963 ))
  \cpu/Madd_addsub_lut<15>  (
    .I0(\cpu/bsel ),
    .I1(\cpu/addsub_op ),
    .I2(N623),
    .I3(N624),
    .O(\cpu/Madd_addsub_lut [15])
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW10  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [6]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [8]),
    .O(N626)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW11  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [7]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [9]),
    .O(N628)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW12  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [8]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [10]),
    .O(N630)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW13  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [9]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [11]),
    .O(N632)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW14  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [10]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [12]),
    .O(N634)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \cpu/ctl/csel_SW15  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [11]),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [13]),
    .O(N636)
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \cpu/Madd_addsub_lut<1>_SW0_SW0  (
    .I0(N1044),
    .I1(\cpu/a [1]),
    .I2(\cpu/bsel ),
    .O(N638)
  );
  LUT4 #(
    .INIT ( 16'hA965 ))
  \cpu/Madd_addsub_lut<1>_SW0_SW1  (
    .I0(\cpu/a [1]),
    .I1(\cpu/bsel ),
    .I2(\cpu/rd2_cmp_eq0000_1229 ),
    .I3(N339),
    .O(N639)
  );
  LUT4 #(
    .INIT ( 16'h5A66 ))
  \cpu/Madd_addsub_lut<1>  (
    .I0(\cpu/addsub_op ),
    .I1(N638),
    .I2(N639),
    .I3(\cpu/_varindex0001 [1]),
    .O(\cpu/Madd_addsub_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hA5C3 ))
  \cpu/Madd_addsub_lut<15>_SW1  (
    .I0(\cpu/inst [13]),
    .I1(\cpu/N42 ),
    .I2(\cpu/a [15]),
    .I3(\cpu/asel ),
    .O(N624)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \cpu/wd<31>80  (
    .I0(\cpu/pc_inc [31]),
    .I1(\cpu/N52 ),
    .I2(\cpu/wd<31>77_1518 ),
    .I3(\cpu/wd<31>39_1517 ),
    .O(\cpu/wd<31>80_1519 )
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<6>14_SW0  (
    .I0(\cpu/npc_inc [6]),
    .I1(\cpu/npc_next<6>5_1172 ),
    .I2(N965),
    .O(N303)
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<12>164  (
    .I0(\cpu/N35 ),
    .I1(\cpu/wd<12>4_1351 ),
    .I2(N643),
    .I3(\cpu/wd<12>74_1352 ),
    .O(\cpu/wd [12])
  );
  LUT4 #(
    .INIT ( 16'hE2C0 ))
  \cpu/npc_next<3>52_SW0  (
    .I0(\cpu/npc_inc [3]),
    .I1(\cpu/msel_next ),
    .I2(\cpu/addsub [3]),
    .I3(\cpu/N33 ),
    .O(N435)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<14>134  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(N650),
    .I3(\cpu/sr/shift_right<14>_bdd0 ),
    .O(\cpu/wd<14>134_1362 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<26>164_SW0  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh42_797 ),
    .I3(N652),
    .O(N621)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \cpu/sr/shift_right<25>21_SW0  (
    .I0(\cpu/b [3]),
    .I1(\cpu/b [4]),
    .O(N654)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<25>141  (
    .I0(\cpu/shift_op ),
    .I1(N654),
    .I2(N1018),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(\cpu/wd<25>141_1456 )
  );
  LUT4 #(
    .INIT ( 16'hE400 ))
  \cpu/wd<26>76_SW0  (
    .I0(\cpu/b [0]),
    .I1(N147),
    .I2(N150),
    .I3(\cpu/N51 ),
    .O(N659)
  );
  MUXF5   \cpu/Sh4429  (
    .I0(N665),
    .I1(N666),
    .S(\cpu/b [2]),
    .O(\cpu/Sh44 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh4429_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh4_794 ),
    .I2(\cpu/Sh12_774 ),
    .O(N665)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh4429_G  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh ),
    .I2(\cpu/Sh8_807 ),
    .O(N666)
  );
  MUXF5   \cpu/Sh4628  (
    .I0(N667),
    .I1(N668),
    .S(\cpu/b [2]),
    .O(\cpu/Sh46 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh4628_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh14_776 ),
    .I2(\cpu/Sh6_805 ),
    .O(N667)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh4628_G  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh2_782 ),
    .I2(\cpu/Sh10_772 ),
    .O(N668)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \cpu/ctl/msel_next1_SW5_F  (
    .I0(\cpu/ctl/msel_2_988 ),
    .I1(\cpu/inst [25]),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/inst [21]),
    .O(N669)
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \cpu/ctl/msel_next1_SW5_G  (
    .I0(\cpu/ctl/msel_2_988 ),
    .I1(\cpu/inst [25]),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/inst [21]),
    .O(N670)
  );
  LUT4 #(
    .INIT ( 16'hFD20 ))
  \cpu/ctl/mem_next_SW0_G  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/inst_31_1_1020 ),
    .I2(N341),
    .I3(\cpu/inst [14]),
    .O(N672)
  );
  LUT4 #(
    .INIT ( 16'hFD20 ))
  \cpu/ctl/mem_next_SW1_G  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/inst_31_1_1020 ),
    .I2(N343),
    .I3(\cpu/inst [13]),
    .O(N674)
  );
  LUT4 #(
    .INIT ( 16'hFD20 ))
  \cpu/ctl/mem_next_SW2_G  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/inst_31_1_1020 ),
    .I2(N345),
    .I3(\cpu/inst [12]),
    .O(N676)
  );
  MUXF5   \cpu/sr/shift_right<0>229  (
    .I0(N677),
    .I1(N678),
    .S(\cpu/b [3]),
    .O(\cpu/sr/shift_right<0>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>229_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<0>_bdd24 ),
    .I2(\cpu/sr/shift_right<0>_bdd23 ),
    .O(N677)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<0>229_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<0>_bdd9 ),
    .I2(\cpu/sr/shift_right<0>_bdd8 ),
    .O(N678)
  );
  MUXF5   \cpu/Sh4728  (
    .I0(N679),
    .I1(N680),
    .S(\cpu/b [2]),
    .O(\cpu/Sh47 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh4728_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh7_806 ),
    .I2(\cpu/Sh15_777 ),
    .O(N679)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh4728_G  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh3_789 ),
    .I2(\cpu/Sh11_773 ),
    .O(N680)
  );
  MUXF5   \cpu/Sh3  (
    .I0(N687),
    .I1(N688),
    .S(\cpu/b<0>1_940 ),
    .O(\cpu/Sh3_789 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh3_F  (
    .I0(\cpu/a [1]),
    .I1(\cpu/a [3]),
    .I2(\cpu/b<1>1_952 ),
    .O(N687)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh3_G  (
    .I0(\cpu/a [0]),
    .I1(\cpu/a [2]),
    .I2(\cpu/b<1>1_952 ),
    .O(N688)
  );
  MUXF5   \cpu/wd<0>182_SW0  (
    .I0(N689),
    .I1(N690),
    .S(\cpu/b [3]),
    .O(N499)
  );
  LUT4 #(
    .INIT ( 16'hF3E2 ))
  \cpu/wd<0>182_SW0_F  (
    .I0(\cpu/wd<0>89_1338 ),
    .I1(\cpu/b [2]),
    .I2(\cpu/sr/shift_right<0>_bdd2 ),
    .I3(\cpu/wd<0>104_1316 ),
    .O(N689)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/wd<0>182_SW0_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<0>_bdd36 ),
    .I2(\cpu/sr/shift_right<0>_bdd37 ),
    .O(N690)
  );
  MUXF5   \cpu/Sh43  (
    .I0(N691),
    .I1(N692),
    .S(\cpu/b [2]),
    .O(\cpu/Sh43_798 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh43_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh3_789 ),
    .I2(\cpu/Sh11_773 ),
    .O(N691)
  );
  LUT4 #(
    .INIT ( 16'h3120 ))
  \cpu/Sh43_G  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N173),
    .I3(N170),
    .O(N692)
  );
  MUXF5   \cpu/wd<30>71  (
    .I0(N693),
    .I1(N694),
    .S(\cpu/b [2]),
    .O(\cpu/wd<30>71_1510 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<30>71_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/b [0]),
    .I2(N135),
    .I3(N138),
    .O(N693)
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/wd<30>71_G  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N123),
    .I3(N126),
    .O(N694)
  );
  MUXF5   \cpu/Sh41  (
    .I0(N695),
    .I1(N696),
    .S(\cpu/b [2]),
    .O(\cpu/Sh41_796 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh41_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh1_771 ),
    .I2(\cpu/Sh9_808 ),
    .O(N695)
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/Sh41_G  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N176),
    .I3(N179),
    .O(N696)
  );
  MUXF5   \cpu/Sh2  (
    .I0(N697),
    .I1(N698),
    .S(\cpu/b [1]),
    .O(\cpu/Sh2_782 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh2_F  (
    .I0(\cpu/a [1]),
    .I1(\cpu/a [2]),
    .I2(\cpu/b [0]),
    .O(N697)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \cpu/Sh2_G  (
    .I0(\cpu/_varindex0000 [0]),
    .I1(\cpu/rd1_cmp_eq0000 ),
    .I2(\cpu/b [0]),
    .I3(\cpu/asel ),
    .O(N698)
  );
  MUXF5   \cpu/wd<11>138_SW0  (
    .I0(N699),
    .I1(N700),
    .S(\cpu/b [4]),
    .O(N427)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<11>138_SW0_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<11>_bdd2 ),
    .I3(\cpu/sr/shift_right<11>_bdd1 ),
    .O(N699)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<11>138_SW0_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<11>_bdd4 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(N700)
  );
  MUXF5   \cpu/wd<10>126  (
    .I0(N701),
    .I1(N702),
    .S(\cpu/b [4]),
    .O(\cpu/wd<10>126_1340 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<10>126_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd1 ),
    .I3(\cpu/sr/shift_right<10>_bdd2 ),
    .O(N701)
  );
  MUXF5   \cpu/wd<13>131  (
    .I0(N703),
    .I1(N704),
    .S(\cpu/b [4]),
    .O(\cpu/wd<13>131_1356 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<13>131_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<13>_bdd2 ),
    .I3(\cpu/sr/shift_right<13>_bdd1 ),
    .O(N703)
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \cpu/wd<13>131_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<13>_bdd4 ),
    .I3(\cpu/wd<10>84 ),
    .O(N704)
  );
  MUXF5   \cpu/wd<8>134  (
    .I0(N705),
    .I1(N706),
    .S(\cpu/b [4]),
    .O(\cpu/wd<8>134_1559 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \cpu/wd<8>134_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/wd<14>98 ),
    .I2(\cpu/sr/shift_right<0>_bdd1 ),
    .I3(\cpu/wd<8>97_1563 ),
    .O(N705)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<8>134_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/sr/shift_right<0>_bdd8 ),
    .I2(N207),
    .I3(N208),
    .O(N706)
  );
  MUXF5   \cpu/wd<3>191  (
    .I0(N707),
    .I1(N708),
    .S(\cpu/b [4]),
    .O(\cpu/wd<3>191_1525 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<3>191_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<11>_bdd2 ),
    .I3(\cpu/wd<3>121_1523 ),
    .O(N707)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<3>191_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<11>_bdd1 ),
    .I3(\cpu/sr/shift_right<11>_bdd4 ),
    .O(N708)
  );
  MUXF5   \cpu/wd<2>193  (
    .I0(N709),
    .I1(N710),
    .S(\cpu/b [4]),
    .O(\cpu/wd<2>193_1498 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<2>193_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd2 ),
    .I3(\cpu/wd<2>121_1496 ),
    .O(N709)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<2>193_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd1 ),
    .I3(\cpu/sr/shift_right<10>_bdd5 ),
    .O(N710)
  );
  MUXF5   \cpu/wd<4>134  (
    .I0(N711),
    .I1(N712),
    .S(\cpu/b [4]),
    .O(\cpu/wd<4>134_1532 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<4>134_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<12>_bdd2 ),
    .I3(\cpu/wd<4>93_1537 ),
    .O(N711)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<4>134_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<12>_bdd1 ),
    .I3(\cpu/sr/shift_right<12>_bdd4 ),
    .O(N712)
  );
  MUXF5   \cpu/wd<5>134  (
    .I0(N713),
    .I1(N714),
    .S(\cpu/b [4]),
    .O(\cpu/wd<5>134_1539 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<5>134_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<13>_bdd2 ),
    .I3(\cpu/wd<5>93_1544 ),
    .O(N713)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<5>134_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<13>_bdd1 ),
    .I3(\cpu/sr/shift_right<13>_bdd4 ),
    .O(N714)
  );
  MUXF5   \cpu/wd<1>208  (
    .I0(N715),
    .I1(N716),
    .S(\cpu/b [4]),
    .O(\cpu/wd<1>208_1408 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<1>208_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<1>_bdd0 ),
    .I3(\cpu/wd<1>136_1407 ),
    .O(N715)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<1>208_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(N212),
    .I3(\cpu/sr/shift_right<17>_bdd2 ),
    .O(N716)
  );
  MUXF5   \cpu/wd<2>121  (
    .I0(N717),
    .I1(N718),
    .S(\cpu/b [2]),
    .O(\cpu/wd<2>121_1496 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<2>121_F  (
    .I0(\cpu/b [1]),
    .I1(\cpu/wd<2>93_1503 ),
    .I2(\cpu/sr/shift_right<0>_bdd50 ),
    .O(N717)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<2>121_G  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<0>_bdd49 ),
    .I2(\cpu/sr/shift_right<0>_bdd45 ),
    .O(N718)
  );
  MUXF5   \cpu/wd<9>134  (
    .I0(N719),
    .I1(N720),
    .S(\cpu/b [4]),
    .O(\cpu/wd<9>134_1565 )
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \cpu/wd<9>134_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<1>_bdd0 ),
    .I3(\cpu/wd<9>95_1569 ),
    .O(N719)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<9>134_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<17>_bdd2 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(N720)
  );
  MUXF5   \cpu/wd<3>121  (
    .I0(N721),
    .I1(N722),
    .S(\cpu/b [2]),
    .O(\cpu/wd<3>121_1523 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<3>121_F  (
    .I0(\cpu/b [1]),
    .I1(\cpu/wd<3>91_1530 ),
    .I2(\cpu/sr/shift_right<1>_bdd10 ),
    .O(N721)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<3>121_G  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<1>_bdd9 ),
    .I2(\cpu/sr/shift_right<1>_bdd6 ),
    .O(N722)
  );
  MUXF5   \cpu/wd<7>103  (
    .I0(N723),
    .I1(N724),
    .S(\cpu/b [3]),
    .O(\cpu/wd<7>103_1553 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<7>103_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<3>_bdd0 ),
    .I2(\cpu/sr/shift_right<11>_bdd29 ),
    .O(N723)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/wd<7>103_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<11>_bdd16 ),
    .I2(\cpu/sr/shift_right<11>_bdd28 ),
    .O(N724)
  );
  MUXF5   \cpu/wd<6>115  (
    .I0(N725),
    .I1(N726),
    .S(\cpu/b [3]),
    .O(\cpu/wd<6>115_1546 )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \cpu/wd<6>115_F  (
    .I0(\cpu/b [4]),
    .I1(\cpu/b [2]),
    .I2(\cpu/sr/shift_right<10>_bdd19 ),
    .I3(\cpu/sr/shift_right<2>_bdd0 ),
    .O(N725)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \cpu/wd<6>115_G  (
    .I0(\cpu/b [4]),
    .I1(\cpu/b [2]),
    .I2(\cpu/sr/shift_right<10>_bdd18 ),
    .I3(\cpu/sr/shift_right<10>_bdd14 ),
    .O(N726)
  );
  MUXF5   \cpu/Sh42  (
    .I0(N727),
    .I1(N728),
    .S(\cpu/b [2]),
    .O(\cpu/Sh42_797 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh42_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh2_782 ),
    .I2(\cpu/Sh10_772 ),
    .O(N727)
  );
  LUT4 #(
    .INIT ( 16'h3120 ))
  \cpu/Sh42_G  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N176),
    .I3(N173),
    .O(N728)
  );
  MUXF5   \cpu/Sh27  (
    .I0(N729),
    .I1(N730),
    .S(\cpu/b [0]),
    .O(\cpu/Sh27_788 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \cpu/Sh27_F  (
    .I0(\cpu/a [25]),
    .I1(\cpu/a [27]),
    .I2(\cpu/b [1]),
    .O(N729)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \cpu/Sh27_G  (
    .I0(\cpu/a [24]),
    .I1(\cpu/a [26]),
    .I2(N503),
    .O(N730)
  );
  MUXF5   \cpu/Sh26_SW1  (
    .I0(N731),
    .I1(N732),
    .S(\cpu/bsel ),
    .O(N126)
  );
  LUT4 #(
    .INIT ( 16'hF4B0 ))
  \cpu/Sh26_SW1_F  (
    .I0(\cpu/rd2_cmp_eq0000_1229 ),
    .I1(\cpu/_varindex0001 [1]),
    .I2(\cpu/a [25]),
    .I3(\cpu/a [23]),
    .O(N731)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh26_SW1_G  (
    .I0(N339),
    .I1(\cpu/a [23]),
    .I2(\cpu/a [25]),
    .O(N732)
  );
  MUXF5   \cpu/Sh22_SW1  (
    .I0(N733),
    .I1(N734),
    .S(\cpu/bsel ),
    .O(N138)
  );
  LUT4 #(
    .INIT ( 16'hF4B0 ))
  \cpu/Sh22_SW1_F  (
    .I0(\cpu/rd2_cmp_eq0000_1229 ),
    .I1(\cpu/_varindex0001 [1]),
    .I2(\cpu/a [21]),
    .I3(\cpu/a [19]),
    .O(N733)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh22_SW1_G  (
    .I0(N339),
    .I1(\cpu/a [19]),
    .I2(\cpu/a [21]),
    .O(N734)
  );
  MUXF5   \cpu/sr/shift_right<22>2_f5  (
    .I0(N735),
    .I1(N736),
    .S(\cpu/b [3]),
    .O(\cpu/sr/shift_right<22>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<22>2_f5_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<10>_bdd9 ),
    .I2(\cpu/sr/shift_right<10>_bdd13 ),
    .O(N735)
  );
  LUT4 #(
    .INIT ( 16'h88F0 ))
  \cpu/sr/shift_right<22>2_f5_G  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(\cpu/sr/shift_right<10>_bdd8 ),
    .I3(\cpu/b [2]),
    .O(N736)
  );
  MUXF5   \cpu/sr/shift_right<23>2_f5  (
    .I0(N737),
    .I1(N738),
    .S(\cpu/b [3]),
    .O(\cpu/sr/shift_right<23>_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<23>2_f5_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<11>_bdd7 ),
    .I2(\cpu/sr/shift_right<11>_bdd15 ),
    .O(N737)
  );
  LUT4 #(
    .INIT ( 16'h88F0 ))
  \cpu/sr/shift_right<23>2_f5_G  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(\cpu/sr/shift_right<11>_bdd6 ),
    .I3(\cpu/b [2]),
    .O(N738)
  );
  MUXF5   \cpu/wd<12>139_SW0  (
    .I0(N739),
    .I1(N740),
    .S(\cpu/b [4]),
    .O(N643)
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \cpu/wd<12>139_SW0_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<12>_bdd1 ),
    .I3(\cpu/sr/shift_right<12>_bdd2 ),
    .O(N739)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<12>139_SW0_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<12>_bdd4 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(N740)
  );
  MUXF5   \cpu/wd<14>113_SW0  (
    .I0(N741),
    .I1(N742),
    .S(\cpu/b [2]),
    .O(N650)
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \cpu/wd<14>113_SW0_F  (
    .I0(\cpu/wd<14>98 ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd18 ),
    .I3(\cpu/sr/shift_right<10>_bdd13 ),
    .O(N741)
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \cpu/wd<14>113_SW0_G  (
    .I0(\cpu/wd<14>98 ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd14 ),
    .I3(\cpu/sr/shift_right<10>_bdd9 ),
    .O(N742)
  );
  MUXF5   \cpu/Sh40  (
    .I0(N743),
    .I1(N744),
    .S(\cpu/b [2]),
    .O(\cpu/Sh40_795 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \cpu/Sh40_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh ),
    .I2(\cpu/Sh8_807 ),
    .O(N743)
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/Sh40_G  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N179),
    .I3(N182),
    .O(N744)
  );
  MUXF5   \cpu/wd<26>71  (
    .I0(N745),
    .I1(N746),
    .S(\cpu/b [2]),
    .O(\cpu/wd<26>71_1465 )
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/wd<26>71_F  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N123),
    .I3(N126),
    .O(N745)
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/wd<26>71_G  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N135),
    .I3(N138),
    .O(N746)
  );
  MUXF5   \cpu/wd<22>71  (
    .I0(N747),
    .I1(N748),
    .S(\cpu/b [2]),
    .O(\cpu/wd<22>71_1434 )
  );
  LUT4 #(
    .INIT ( 16'h3210 ))
  \cpu/wd<22>71_F  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N135),
    .I3(N138),
    .O(N747)
  );
  LUT4 #(
    .INIT ( 16'h3120 ))
  \cpu/wd<22>71_G  (
    .I0(\cpu/b [0]),
    .I1(\cpu/b [3]),
    .I2(N150),
    .I3(N147),
    .O(N748)
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \hexdisp1/dot_index_mux0000<4>147  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(\hexdisp1/dot_index_mux0000<4>110_2195 ),
    .I3(\hexdisp1/dot_index_mux0000<4>133_2196 ),
    .O(\hexdisp1/dot_index_mux0000<4>147_2197 )
  );
  LUT4 #(
    .INIT ( 16'h2148 ))
  \kbd/fifo_overflow_or000174  (
    .I0(\kbd/wptr [1]),
    .I1(\kbd/wptr [0]),
    .I2(\kbd/rptr [1]),
    .I3(\kbd/rptr [0]),
    .O(\kbd/fifo_overflow_or000174_2310 )
  );
  LUT4 #(
    .INIT ( 16'hFF90 ))
  \kbd/fifo_overflow_or000191  (
    .I0(\kbd/rptr [2]),
    .I1(\kbd/Result [2]),
    .I2(\kbd/fifo_overflow_or000174_2310 ),
    .I3(\kbd/fifo_overflow_2307 ),
    .O(\kbd/fifo_overflow_or0001 )
  );
  LUT4 #(
    .INIT ( 16'h02CE ))
  \hexdisp1/Mmux__varindex0000_11  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/dot_index [3]),
    .I2(\hexdisp1/nibble [1]),
    .I3(\hexdisp1/Mrom_dots27 ),
    .O(\hexdisp1/Mmux__varindex0000_11_2011 )
  );
  LUT4 #(
    .INIT ( 16'hFF09 ))
  \hexdisp1/dot_index_mux0000<3>271  (
    .I0(\hexdisp1/dot_index [6]),
    .I1(\hexdisp1/N64 ),
    .I2(\hexdisp1/N34 ),
    .I3(\hexdisp1/dot_index_mux0000<3>5_2194 ),
    .O(\hexdisp1/dot_index_mux0000<3>27 )
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \hexdisp1/state_FSM_FFd2-In301  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd2-In12_2241 ),
    .I3(\hexdisp1/state_cmp_eq0001_2251 ),
    .O(\hexdisp1/state_FSM_FFd2-In30 )
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  \hexdisp1/Mmux_nibble_8  (
    .I0(\cpu/addsub [0]),
    .I1(\hexdisp1/char_index [0]),
    .I2(\cpu/msel_next ),
    .I3(ma[4]),
    .O(\hexdisp1/Mmux_nibble_8_2045 )
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  \hexdisp1/Mmux_nibble_81  (
    .I0(\cpu/addsub [1]),
    .I1(\hexdisp1/char_index [0]),
    .I2(\cpu/msel_next ),
    .I3(ma[5]),
    .O(\hexdisp1/Mmux_nibble_81_2046 )
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<16>14_SW0  (
    .I0(\cpu/npc_inc [16]),
    .I1(\cpu/npc_next<16>5_1109 ),
    .I2(\cpu/N33 ),
    .O(N305)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<17>14_SW0  (
    .I0(\cpu/npc_inc [17]),
    .I1(\cpu/npc_next<17>5_1112 ),
    .I2(\cpu/N33 ),
    .O(N307)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<18>14_SW0  (
    .I0(\cpu/npc_inc [18]),
    .I1(\cpu/npc_next<18>5_1115 ),
    .I2(\cpu/N33 ),
    .O(N309)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<19>14_SW0  (
    .I0(\cpu/npc_inc [19]),
    .I1(\cpu/npc_next<19>5_1118 ),
    .I2(\cpu/N33 ),
    .O(N311)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<20>14_SW0  (
    .I0(\cpu/npc_inc [20]),
    .I1(\cpu/npc_next<20>5_1121 ),
    .I2(\cpu/N33 ),
    .O(N315)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<21>14_SW0  (
    .I0(\cpu/npc_inc [21]),
    .I1(\cpu/npc_next<21>5_1124 ),
    .I2(\cpu/N33 ),
    .O(N317)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<22>14_SW0  (
    .I0(\cpu/npc_inc [22]),
    .I1(\cpu/npc_next<22>5_1127 ),
    .I2(\cpu/N33 ),
    .O(N319)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<14>14_SW0  (
    .I0(\cpu/npc_inc [14]),
    .I1(\cpu/npc_next<14>5_1103 ),
    .I2(\cpu/N33 ),
    .O(N287)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<8>14_SW0  (
    .I0(\cpu/npc_inc [8]),
    .I1(\cpu/npc_next<8>5_1178 ),
    .I2(\cpu/N33 ),
    .O(N299)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<23>14_SW0  (
    .I0(\cpu/npc_inc [23]),
    .I1(\cpu/npc_next<23>5_1130 ),
    .I2(\cpu/N33 ),
    .O(N321)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<24>14_SW0  (
    .I0(\cpu/npc_inc [24]),
    .I1(\cpu/npc_next<24>5_1133 ),
    .I2(\cpu/N33 ),
    .O(N323)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<25>14_SW0  (
    .I0(\cpu/npc_inc [25]),
    .I1(\cpu/npc_next<25>5_1136 ),
    .I2(\cpu/N33 ),
    .O(N325)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<26>14_SW0  (
    .I0(\cpu/npc_inc [26]),
    .I1(\cpu/npc_next<26>5_1139 ),
    .I2(\cpu/N33 ),
    .O(N327)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<27>14_SW0  (
    .I0(\cpu/npc_inc [27]),
    .I1(\cpu/npc_next<27>5_1142 ),
    .I2(\cpu/N33 ),
    .O(N329)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<28>14_SW0  (
    .I0(\cpu/npc_inc [28]),
    .I1(\cpu/npc_next<28>5_1145 ),
    .I2(\cpu/N33 ),
    .O(N331)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<29>14_SW0  (
    .I0(\cpu/npc_inc [29]),
    .I1(\cpu/npc_next<29>5_1148 ),
    .I2(\cpu/N33 ),
    .O(N333)
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<30>14_SW0  (
    .I0(\cpu/npc_inc [30]),
    .I1(\cpu/npc_next<30>5_1155 ),
    .I2(\cpu/N33 ),
    .O(N335)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \cpu/ctl/msel_next_inv1  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(reset),
    .I2(\cpu/ctl/mem_next_985 ),
    .I3(\cpu/ctl/annul_978 ),
    .O(\cpu/ctl/msel_next_inv )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \kbd/shift_not00011  (
    .I0(\kbd/and0001_cmp_eq0000 ),
    .I1(\kbd/sample ),
    .I2(power_on_reset),
    .I3(\dbreset/clean_1624 ),
    .O(\kbd/shift_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hexdisp1/state_FSM_FFd3-In34  (
    .I0(\hexdisp1/state_FSM_FFd3-In31_2245 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .I3(\hexdisp1/state_cmp_eq0001_2251 ),
    .O(\hexdisp1/state_FSM_FFd3-In34_2246 )
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \kbd/rptr_and00001  (
    .I0(\dbreset/clean_1624 ),
    .I1(\kbd/rptr_and0001 ),
    .I2(power_on_reset),
    .O(\kbd/rptr_and0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \cpu/npc_next<31>26_SW1  (
    .I0(reset),
    .I1(\cpu/msel_next ),
    .I2(\cpu/npc_next<31>8_1158 ),
    .I3(\cpu/npc [31]),
    .O(N362)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<6>5  (
    .I0(\cpu/npc [6]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<6>5_1172 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<13>5  (
    .I0(\cpu/npc [13]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<13>5_1100 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<7>5  (
    .I0(\cpu/npc [7]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<7>5_1175 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<16>5  (
    .I0(\cpu/npc [16]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<16>5_1109 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<17>5  (
    .I0(\cpu/npc [17]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<17>5_1112 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<15>5  (
    .I0(\cpu/npc [15]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<15>5_1106 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<18>5  (
    .I0(\cpu/npc [18]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<18>5_1115 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<19>5  (
    .I0(\cpu/npc [19]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<19>5_1118 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<20>5  (
    .I0(\cpu/npc [20]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<20>5_1121 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<21>5  (
    .I0(\cpu/npc [21]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<21>5_1124 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<22>5  (
    .I0(\cpu/npc [22]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<22>5_1127 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<2>28  (
    .I0(\cpu/npc [2]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<2>28_1152 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<10>5  (
    .I0(\cpu/npc [10]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<10>5_1091 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<4>5  (
    .I0(\cpu/npc [4]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<4>5_1166 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<11>5  (
    .I0(\cpu/npc [11]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<11>5_1094 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<5>5  (
    .I0(\cpu/npc [5]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<5>5_1169 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<12>5  (
    .I0(\cpu/npc [12]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<12>5_1097 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<14>5  (
    .I0(\cpu/npc [14]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<14>5_1103 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<8>5  (
    .I0(\cpu/npc [8]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<8>5_1178 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<9>5  (
    .I0(\cpu/npc [9]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<9>5_1181 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<23>5  (
    .I0(\cpu/npc [23]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<23>5_1130 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<24>5  (
    .I0(\cpu/npc [24]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<24>5_1133 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<25>5  (
    .I0(\cpu/npc [25]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<25>5_1136 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<26>5  (
    .I0(\cpu/npc [26]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<26>5_1139 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<27>5  (
    .I0(\cpu/npc [27]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<27>5_1142 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<28>5  (
    .I0(\cpu/npc [28]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<28>5_1145 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<29>5  (
    .I0(\cpu/npc [29]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<29>5_1148 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<30>5  (
    .I0(\cpu/npc [30]),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<30>5_1155 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \kbd/fifo_overflow_or00001  (
    .I0(\kbd/rptr_and0001 ),
    .I1(power_on_reset),
    .I2(\dbreset/clean_1624 ),
    .O(\kbd/fifo_overflow_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<31>1  (
    .I0(ramout[31]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[31]),
    .O(mdin[31])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<30>1  (
    .I0(ramout[30]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[30]),
    .O(mdin[30])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<29>1  (
    .I0(ramout[29]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[29]),
    .O(mdin[29])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<28>1  (
    .I0(ramout[28]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[28]),
    .O(mdin[28])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<27>1  (
    .I0(ramout[27]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[27]),
    .O(mdin[27])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<26>1  (
    .I0(ramout[26]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[26]),
    .O(mdin[26])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<25>1  (
    .I0(ramout[25]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[25]),
    .O(mdin[25])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<24>1  (
    .I0(ramout[24]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[24]),
    .O(mdin[24])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<23>1  (
    .I0(ramout[23]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[23]),
    .O(mdin[23])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<22>1  (
    .I0(ramout[22]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[22]),
    .O(mdin[22])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<21>1  (
    .I0(ramout[21]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[21]),
    .O(mdin[21])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<20>1  (
    .I0(ramout[20]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[20]),
    .O(mdin[20])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<19>1  (
    .I0(ramout[19]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[19]),
    .O(mdin[19])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<18>1  (
    .I0(ramout[18]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[18]),
    .O(mdin[18])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<17>1  (
    .I0(ramout[17]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[17]),
    .O(mdin[17])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<16>1  (
    .I0(ramout[16]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[16]),
    .O(mdin[16])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<15>1  (
    .I0(ramout[15]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[15]),
    .O(mdin[15])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<14>1  (
    .I0(ramout[14]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[14]),
    .O(mdin[14])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<13>1  (
    .I0(ramout[13]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[13]),
    .O(mdin[13])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<12>1  (
    .I0(ramout[12]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[12]),
    .O(mdin[12])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<11>1  (
    .I0(ramout[11]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[11]),
    .O(mdin[11])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<10>1  (
    .I0(ramout[10]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[10]),
    .O(mdin[10])
  );
  LUT4 #(
    .INIT ( 16'h8AA8 ))
  \kbd/rptr_and00011  (
    .I0(rd_ps2_2534),
    .I1(N359),
    .I2(\kbd/wptr [1]),
    .I3(\kbd/rptr [1]),
    .O(\kbd/rptr_and0001 )
  );
  LUT4 #(
    .INIT ( 16'h0AC0 ))
  \cpu/wd<31>103  (
    .I0(\cpu/a [30]),
    .I1(\cpu/a [29]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<31>103_1512 )
  );
  LUT4 #(
    .INIT ( 16'hA00C ))
  \cpu/wd<31>108  (
    .I0(\cpu/a [28]),
    .I1(\cpu/a [31]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<31>108_1513 )
  );
  LUT4 #(
    .INIT ( 16'h0AC0 ))
  \cpu/wd<28>77  (
    .I0(\cpu/a [27]),
    .I1(\cpu/a [26]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<28>77_1482 )
  );
  LUT4 #(
    .INIT ( 16'hA00C ))
  \cpu/wd<28>82  (
    .I0(\cpu/a [25]),
    .I1(\cpu/a [28]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<28>82_1483 )
  );
  LUT4 #(
    .INIT ( 16'h0AC0 ))
  \cpu/wd<29>77  (
    .I0(\cpu/a [28]),
    .I1(\cpu/a [27]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<29>77_1493 )
  );
  LUT4 #(
    .INIT ( 16'hA00C ))
  \cpu/wd<29>82  (
    .I0(\cpu/a [26]),
    .I1(\cpu/a [29]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .O(\cpu/wd<29>82_1494 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<28>157_SW0  (
    .I0(\cpu/shift_op ),
    .I1(N787),
    .I2(\cpu/sr/shift_right<0>_bdd8 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(N364)
  );
  LUT4 #(
    .INIT ( 16'h1004 ))
  \hexdisp1/Mrom_dots132  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [2]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots13 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hexdisp1/reset_count_not0001_inv1  (
    .I0(power_on_reset),
    .I1(\dbreset/clean_1624 ),
    .I2(\hexdisp1/dreset4_2217 ),
    .I3(\hexdisp1/dreset9_2218 ),
    .O(\hexdisp1/reset_count_not0001_inv )
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \hexdisp1/Mcount_reset_count_val1  (
    .I0(\hexdisp1/dreset4_2217 ),
    .I1(\hexdisp1/dreset9_2218 ),
    .I2(\dbreset/clean_1624 ),
    .I3(power_on_reset),
    .O(\hexdisp1/Mcount_reset_count_val )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hexdisp1/dot_index_mux0000<6>18_SW0  (
    .I0(\hexdisp1/dot_index [2]),
    .I1(\hexdisp1/dot_index [1]),
    .I2(\hexdisp1/dot_index [0]),
    .O(N789)
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \hexdisp1/dot_index_mux0000<6>18  (
    .I0(N789),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .I3(\hexdisp1/state_cmp_eq0000_2249 ),
    .O(\hexdisp1/dot_index_mux0000<6>18_2208 )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \hexdisp1/state_FSM_FFd2-In7  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .O(\hexdisp1/state_FSM_FFd2-In7_2243 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \cpu/npc_next<4>0  (
    .I0(\cpu/npc_inc [4]),
    .I1(\cpu/interrupt ),
    .I2(\cpu/N95 ),
    .I3(\cpu/trap ),
    .O(\cpu/npc_next<4>0_1165 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \cpu/npc_next<5>0  (
    .I0(\cpu/npc_inc [5]),
    .I1(\cpu/interrupt ),
    .I2(\cpu/N95 ),
    .I3(\cpu/trap ),
    .O(\cpu/npc_next<5>0_1168 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<6>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [6]),
    .O(\cpu/npc_next<6>0_1171 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<13>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [13]),
    .O(\cpu/npc_next<13>0_1099 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<7>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [7]),
    .O(\cpu/npc_next<7>0_1174 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \dpy/next_column<6>_SW0  (
    .I0(\dpy/next_column_cmp_eq0000 ),
    .I1(\dpy/Madd_next_column_addsub0000_cy[2] ),
    .I2(\dpy/column [3]),
    .I3(\dpy/column [4]),
    .O(N79)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dpy/next_column<4>_SW0  (
    .I0(\dpy/column [3]),
    .I1(\dpy/hcount [2]),
    .I2(\dpy/hcount [0]),
    .I3(\dpy/hcount [1]),
    .O(N77)
  );
  LUT4 #(
    .INIT ( 16'hAAAB ))
  \cpu/ctl/annul_or000011  (
    .I0(\cpu/interrupt ),
    .I1(\cpu/ctl/asel_or0000_980 ),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/ctl/annul_or00001 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \kbd/_and000012  (
    .I0(power_on_reset),
    .I1(\dbreset/clean_1624 ),
    .I2(\kbd/wptr_not0001 ),
    .O(\kbd/_and0000_0 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/count_or00002  (
    .I0(power_on_reset),
    .I1(\dbreset/clean_1624 ),
    .I2(\hexdisp1/clock_cmp_eq0000 ),
    .O(\hexdisp1/count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h7323 ))
  \hexdisp1/Mrom_dots22  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/nibble [2]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots2 )
  );
  LUT4 #(
    .INIT ( 16'hFF65 ))
  \hexdisp1/Mrom_dots331  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mrom_dots33 )
  );
  LUT3 #(
    .INIT ( 8'h23 ))
  \kbd/timeout_mux00001  (
    .I0(\kbd/ps2c_sync [1]),
    .I1(\kbd/timeout_2331 ),
    .I2(\kbd/ps2c_sync [2]),
    .O(\kbd/timeout_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \hexdisp1/disp_reset_b_mux00001  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/disp_reset_b_2166 ),
    .I2(\hexdisp1/state_FSM_FFd2_2240 ),
    .I3(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(\hexdisp1/disp_reset_b_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h75FF ))
  \cpu/wd<15>42_SW0  (
    .I0(\cpu/a [15]),
    .I1(\cpu/N40 ),
    .I2(\cpu/boole_and ),
    .I3(\cpu/wd_boole ),
    .O(N793)
  );
  LUT4 #(
    .INIT ( 16'h34FF ))
  \cpu/wd<15>42_SW1  (
    .I0(\cpu/N40 ),
    .I1(\cpu/a [15]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/wd_boole ),
    .O(N794)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<10>126_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd5 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(N702)
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<7>72  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(N970),
    .I3(\cpu/wd<7>54_1556 ),
    .O(\cpu/wd<7>72_1557 )
  );
  LUT4 #(
    .INIT ( 16'h88F0 ))
  \cpu/wd<30>176  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(N1015),
    .I3(\cpu/b [4]),
    .O(\cpu/wd<30>176_1507 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \cpu/npc_next<2>17  (
    .I0(\cpu/branch ),
    .I1(\cpu/npc_next<2>16_1150 ),
    .I2(reset),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/npc_next<2>17_1151 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \cpu/npc_next<3>21  (
    .I0(power_on_reset),
    .I1(\cpu/branch ),
    .I2(\dbreset/clean_1624 ),
    .I3(\cpu/ctl/msel_986 ),
    .O(\cpu/N36 )
  );
  LUT4 #(
    .INIT ( 16'h33BF ))
  \cpu/wd<31>39_SW1  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(N1032),
    .I3(\cpu/a [31]),
    .O(N797)
  );
  LUT4 #(
    .INIT ( 16'h0213 ))
  \cpu/wd<31>39  (
    .I0(\cpu/N40 ),
    .I1(\cpu/wd_shift ),
    .I2(N797),
    .I3(N796),
    .O(\cpu/wd<31>39_1517 )
  );
  LUT4 #(
    .INIT ( 16'h7BBF ))
  \cpu/wd<11>42_SW0  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(N1022),
    .I3(\cpu/a [11]),
    .O(N799)
  );
  LUT4 #(
    .INIT ( 16'h33BF ))
  \cpu/wd<11>42_SW1  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [11]),
    .I3(\cpu/a [11]),
    .O(N800)
  );
  LUT4 #(
    .INIT ( 16'h7BBF ))
  \cpu/wd<6>43_SW0  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(N1030),
    .I3(\cpu/a [6]),
    .O(N802)
  );
  LUT4 #(
    .INIT ( 16'h33BF ))
  \cpu/wd<6>43_SW1  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [6]),
    .I3(\cpu/a [6]),
    .O(N803)
  );
  LUT4 #(
    .INIT ( 16'h7BBF ))
  \cpu/wd<4>43_SW0  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [4]),
    .I3(\cpu/a [4]),
    .O(N805)
  );
  LUT4 #(
    .INIT ( 16'h33BF ))
  \cpu/wd<4>43_SW1  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [4]),
    .I3(\cpu/a [4]),
    .O(N806)
  );
  LUT4 #(
    .INIT ( 16'h7BBF ))
  \cpu/wd<12>43_SW0  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(N1025),
    .I3(\cpu/a [12]),
    .O(N808)
  );
  LUT4 #(
    .INIT ( 16'h33BF ))
  \cpu/wd<12>43_SW1  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [12]),
    .I3(\cpu/a [12]),
    .O(N809)
  );
  LUT4 #(
    .INIT ( 16'h7BBF ))
  \cpu/wd<5>43_SW0  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(N1029),
    .I3(\cpu/a [5]),
    .O(N811)
  );
  LUT4 #(
    .INIT ( 16'h33BF ))
  \cpu/wd<5>43_SW1  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [5]),
    .I3(\cpu/a [5]),
    .O(N812)
  );
  LUT4 #(
    .INIT ( 16'h7BBF ))
  \cpu/wd<13>43_SW0  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(N1031),
    .I3(\cpu/a [13]),
    .O(N814)
  );
  LUT4 #(
    .INIT ( 16'h33BF ))
  \cpu/wd<13>43_SW1  (
    .I0(N961),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [13]),
    .I3(\cpu/a [13]),
    .O(N815)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<23>76  (
    .I0(\cpu/b [3]),
    .I1(\cpu/b [2]),
    .I2(\cpu/Sh15_777 ),
    .I3(\cpu/Sh11_773 ),
    .O(\cpu/wd<23>76_1443 )
  );
  LUT4 #(
    .INIT ( 16'h6420 ))
  \cpu/wd<31>97  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh27_788 ),
    .I3(\cpu/Sh23_785 ),
    .O(\cpu/wd<31>97_1520 )
  );
  LUT4 #(
    .INIT ( 16'hC480 ))
  \cpu/wd<22>76  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh10_772 ),
    .I3(\cpu/Sh14_776 ),
    .O(\cpu/wd<22>76_1435 )
  );
  LUT4 #(
    .INIT ( 16'h3120 ))
  \cpu/wd<24>71  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh20_783 ),
    .I3(\cpu/Sh24_786 ),
    .O(\cpu/wd<24>71_1452 )
  );
  LUT4 #(
    .INIT ( 16'hC840 ))
  \cpu/wd<24>76  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(N984),
    .I3(\cpu/Sh12_774 ),
    .O(\cpu/wd<24>76_1453 )
  );
  LUT4 #(
    .INIT ( 16'hC480 ))
  \cpu/wd<20>76  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh8_807 ),
    .I3(\cpu/Sh12_774 ),
    .O(\cpu/wd<20>76_1419 )
  );
  LUT4 #(
    .INIT ( 16'h3120 ))
  \cpu/wd<25>71  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh21_784 ),
    .I3(\cpu/Sh25_787 ),
    .O(\cpu/wd<25>71_1459 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<25>76  (
    .I0(\cpu/b [3]),
    .I1(\cpu/b [2]),
    .I2(\cpu/Sh17_779 ),
    .I3(\cpu/Sh13_775 ),
    .O(\cpu/wd<25>76_1460 )
  );
  LUT4 #(
    .INIT ( 16'h3120 ))
  \cpu/wd<21>71  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh17_779 ),
    .I3(N981),
    .O(\cpu/wd<21>71_1426 )
  );
  LUT4 #(
    .INIT ( 16'hC480 ))
  \cpu/wd<21>76  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(N1001),
    .I3(\cpu/Sh13_775 ),
    .O(\cpu/wd<21>76_1427 )
  );
  LUT4 #(
    .INIT ( 16'h75FF ))
  \cpu/wd<14>43_SW0  (
    .I0(\cpu/a [14]),
    .I1(\cpu/N40 ),
    .I2(\cpu/boole_and ),
    .I3(\cpu/wd_boole ),
    .O(N817)
  );
  LUT4 #(
    .INIT ( 16'h34FF ))
  \cpu/wd<14>43_SW1  (
    .I0(\cpu/N40 ),
    .I1(\cpu/a [14]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/wd_boole ),
    .O(N818)
  );
  LUT4 #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<0>63_SW0  (
    .I0(\cpu/a [0]),
    .I1(\cpu/b [0]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .O(N820)
  );
  LUT4 #(
    .INIT ( 16'hF2F0 ))
  \cpu/wd<0>63  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/wd_shift ),
    .I2(\cpu/wd<0>61_1335 ),
    .I3(N820),
    .O(\cpu/wd<0>63_1337 )
  );
  LUT4 #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<1>63_SW0  (
    .I0(\cpu/a [1]),
    .I1(\cpu/b [1]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .O(N822)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dpy/next_column<2>_SW1  (
    .I0(\dpy/hcount [1]),
    .I1(\dpy/hcount [0]),
    .I2(\dpy/column [1]),
    .I3(\dpy/column [0]),
    .O(N824)
  );
  LUT4 #(
    .INIT ( 16'h5014 ))
  \dpy/next_column<2>  (
    .I0(\dpy/hreset_1872 ),
    .I1(\dpy/hcount [2]),
    .I2(\dpy/column [2]),
    .I3(N824),
    .O(\dpy/next_column [2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hexdisp1/dot_index_mux0000<0>29_SW0  (
    .I0(\hexdisp1/dot_index [8]),
    .I1(\hexdisp1/dot_index [7]),
    .I2(\hexdisp1/dot_index [6]),
    .I3(\hexdisp1/dot_index [5]),
    .O(N826)
  );
  LUT4 #(
    .INIT ( 16'hFF13 ))
  \hexdisp1/dot_index_mux0000<0>29  (
    .I0(\hexdisp1/N91 ),
    .I1(\hexdisp1/N34 ),
    .I2(N826),
    .I3(\hexdisp1/N74 ),
    .O(\hexdisp1/dot_index_mux0000<0>29_2180 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \dpy/hblankon_cmp_eq0000_SW1  (
    .I0(\dpy/hcount [5]),
    .I1(\dpy/hcount [2]),
    .I2(\dpy/hcount [1]),
    .I3(\dpy/hcount [0]),
    .O(N828)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dpy/hblankon_cmp_eq0000  (
    .I0(\dpy/hcount [6]),
    .I1(N969),
    .I2(\dpy/hcount [8]),
    .I3(N828),
    .O(\dpy/hblankon_cmp_eq0000_1860 )
  );
  LUT4 #(
    .INIT ( 16'h847F ))
  \kbd/count_mux0000<0>_SW1  (
    .I0(\kbd/count [0]),
    .I1(\kbd/count [1]),
    .I2(\kbd/count [2]),
    .I3(\kbd/count [3]),
    .O(N832)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \kbd/count_mux0000<0>  (
    .I0(\kbd/ps2c_sync [1]),
    .I1(N832),
    .I2(\kbd/ps2c_sync [2]),
    .O(\kbd/count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \cpu/wd<18>68  (
    .I0(\cpu/b [4]),
    .I1(\cpu/b [2]),
    .I2(\cpu/Sh2_782 ),
    .I3(\cpu/b [3]),
    .O(\cpu/wd<18>68_1395 )
  );
  LUT4 #(
    .INIT ( 16'hAA96 ))
  \dpy/Madd_char_addr_lut<0>  (
    .I0(\dpy/char_addr_mult0001 [0]),
    .I1(\dpy/next_column_cmp_eq0000 ),
    .I2(\dpy/column [0]),
    .I3(\dpy/hreset_1872 ),
    .O(\dpy/Madd_char_addr_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \cpu/wd<17>68  (
    .I0(\cpu/b [4]),
    .I1(\cpu/b [2]),
    .I2(\cpu/Sh1_771 ),
    .I3(\cpu/b [3]),
    .O(\cpu/wd<17>68_1388 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \dbreset/clean_not00011  (
    .I0(\dbreset/count_cmp_eq0000 ),
    .I1(\dbreset/new_1657 ),
    .I2(button_enter_IBUF_603),
    .O(\dbreset/clean_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \kbd/count_mux0000<3>1  (
    .I0(\kbd/and0001_cmp_eq0000 ),
    .I1(\kbd/ps2c_sync [2]),
    .I2(\kbd/count [0]),
    .I3(\kbd/ps2c_sync [1]),
    .O(\kbd/count_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hexdisp1/reset_count_cmp_eq00001  (
    .I0(\hexdisp1/dreset4_2217 ),
    .I1(\hexdisp1/dreset9_2218 ),
    .O(\hexdisp1/dreset_inv )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  _and00001 (
    .I0(\cpu/msel_next ),
    .I1(\cpu/ctl/mwrite_next_norst ),
    .I2(highmem),
    .O(_and0000)
  );
  LUT4 #(
    .INIT ( 16'hFFBE ))
  irq1 (
    .I0(N359),
    .I1(\kbd/wptr [1]),
    .I2(\kbd/rptr [1]),
    .I3(\dpy/irq_60Hz_1877 ),
    .O(irq)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \cpu/wd<23>168_SW0  (
    .I0(\cpu/wd_addsub ),
    .I1(\cpu/wd_cmp ),
    .I2(\cpu/addsub [23]),
    .O(N834)
  );
  LUT4 #(
    .INIT ( 16'hF8FD ))
  \cpu/wd<23>168  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[23]),
    .I2(\cpu/wd<23>157_1440 ),
    .I3(N834),
    .O(\cpu/wd [23])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \cpu/Mmux_boole110  (
    .I0(\cpu/inst [26]),
    .I1(\cpu/inst [31]),
    .I2(\cpu/interrupt ),
    .I3(\cpu/ctl/N13 ),
    .O(\cpu/N40 )
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \cpu/wd<23>55  (
    .I0(\cpu/pc_inc [23]),
    .I1(\cpu/wd_boole ),
    .I2(N749),
    .I3(\cpu/wd_shift ),
    .O(\cpu/wd<23>55_1441 )
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \cpu/wd<24>55  (
    .I0(\cpu/pc_inc [24]),
    .I1(\cpu/wd_boole ),
    .I2(N765),
    .I3(\cpu/wd_shift ),
    .O(\cpu/wd<24>55_1451 )
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \cpu/wd<25>55  (
    .I0(\cpu/pc_inc [25]),
    .I1(\cpu/wd_boole ),
    .I2(N779),
    .I3(\cpu/wd_shift ),
    .O(\cpu/wd<25>55_1458 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<16>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [16]),
    .I2(\cpu/wd_shift ),
    .I3(N769),
    .O(\cpu/wd<16>55_1380 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<19>54  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [19]),
    .I2(\cpu/wd_shift ),
    .I3(N751),
    .O(\cpu/wd<19>54_1402 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<7>54  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [7]),
    .I2(\cpu/wd_shift ),
    .I3(N753),
    .O(\cpu/wd<7>54_1556 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<27>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [27]),
    .I2(\cpu/wd_shift ),
    .I3(N755),
    .O(\cpu/wd<27>55_1472 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<22>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [22]),
    .I2(\cpu/wd_shift ),
    .I3(N757),
    .O(\cpu/wd<22>55_1433 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<30>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [30]),
    .I2(\cpu/wd_shift ),
    .I3(N759),
    .O(\cpu/wd<30>55_1509 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<10>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [10]),
    .I2(\cpu/wd_shift ),
    .I3(N761),
    .O(\cpu/wd<10>55_1342 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<8>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [8]),
    .I2(\cpu/wd_shift ),
    .I3(N763),
    .O(\cpu/wd<8>55_1561 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<18>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [18]),
    .I2(\cpu/wd_shift ),
    .I3(N767),
    .O(\cpu/wd<18>55_1394 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<26>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [26]),
    .I2(\cpu/wd_shift ),
    .I3(N771),
    .O(\cpu/wd<26>55_1464 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<20>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [20]),
    .I2(\cpu/wd_shift ),
    .I3(N773),
    .O(\cpu/wd<20>55_1417 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<28>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [28]),
    .I2(\cpu/wd_shift ),
    .I3(N775),
    .O(\cpu/wd<28>55_1479 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<9>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [9]),
    .I2(\cpu/wd_shift ),
    .I3(N777),
    .O(\cpu/wd<9>55_1567 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<21>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [21]),
    .I2(\cpu/wd_shift ),
    .I3(N781),
    .O(\cpu/wd<21>55_1425 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<17>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [17]),
    .I2(\cpu/wd_shift ),
    .I3(N783),
    .O(\cpu/wd<17>55_1387 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<29>55  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/pc_inc [29]),
    .I2(\cpu/wd_shift ),
    .I3(N785),
    .O(\cpu/wd<29>55_1490 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hexdisp1/Mmux__varindex0000_121_SW0  (
    .I0(\hexdisp1/dot_index [3]),
    .I1(\hexdisp1/nibble [0]),
    .I2(\hexdisp1/nibble [2]),
    .O(N836)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/Mmux__varindex0000_121  (
    .I0(\hexdisp1/nibble [3]),
    .I1(\hexdisp1/nibble [1]),
    .I2(N836),
    .O(\hexdisp1/Mmux__varindex0000_121_2015 )
  );
  LUT4 #(
    .INIT ( 16'hE5FD ))
  \hexdisp1/Mmux__varindex0000_132_SW0  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/dot_index [3]),
    .O(N838)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hexdisp1/Mmux__varindex0000_132  (
    .I0(\hexdisp1/nibble [3]),
    .I1(N838),
    .O(\hexdisp1/Mmux__varindex0000_132_2021 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<15>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [15]),
    .O(\cpu/npc_next<15>0_1105 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<17>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [17]),
    .O(\cpu/npc_next<17>0_1111 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<16>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [16]),
    .O(\cpu/npc_next<16>0_1108 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<23>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [23]),
    .O(\cpu/npc_next<23>0_1129 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<21>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [21]),
    .O(\cpu/npc_next<21>0_1123 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<20>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [20]),
    .O(\cpu/npc_next<20>0_1120 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<19>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [19]),
    .O(\cpu/npc_next<19>0_1117 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<18>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [18]),
    .O(\cpu/npc_next<18>0_1114 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<25>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [25]),
    .O(\cpu/npc_next<25>0_1135 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<24>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [24]),
    .O(\cpu/npc_next<24>0_1132 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<22>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [22]),
    .O(\cpu/npc_next<22>0_1126 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<29>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [29]),
    .O(\cpu/npc_next<29>0_1147 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<28>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [28]),
    .O(\cpu/npc_next<28>0_1144 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<27>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [27]),
    .O(\cpu/npc_next<27>0_1141 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<26>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [26]),
    .O(\cpu/npc_next<26>0_1138 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<30>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [30]),
    .O(\cpu/npc_next<30>0_1154 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<10>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [10]),
    .O(\cpu/npc_next<10>0_1090 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<11>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [11]),
    .O(\cpu/npc_next<11>0_1093 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<12>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [12]),
    .O(\cpu/npc_next<12>0_1096 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<14>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [14]),
    .O(\cpu/npc_next<14>0_1102 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<8>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [8]),
    .O(\cpu/npc_next<8>0_1177 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/npc_next<9>0  (
    .I0(\cpu/N95 ),
    .I1(\cpu/trap ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/npc_inc [9]),
    .O(\cpu/npc_next<9>0_1180 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \cpu/npc_next<31>9  (
    .I0(power_on_reset),
    .I1(\dbreset/clean_1624 ),
    .I2(N1021),
    .O(\cpu/npc_next<31>9_1159 )
  );
  LUT4 #(
    .INIT ( 16'h88F0 ))
  \cpu/wd<23>135  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(\cpu/sr/shift_right<23>_bdd0 ),
    .I3(\cpu/b [4]),
    .O(\cpu/wd<23>135_1439 )
  );
  LUT4 #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<6>74  (
    .I0(N853),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh38 ),
    .I3(\cpu/N49 ),
    .O(\cpu/wd<6>74_1549 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \hexdisp1/Mmux__varindex0000_141_SW0  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/dot_index [3]),
    .O(N859)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \hexdisp1/Mmux__varindex0000_141  (
    .I0(\hexdisp1/nibble [0]),
    .I1(N859),
    .I2(\hexdisp1/nibble [3]),
    .O(\hexdisp1/Mmux__varindex0000_141_2024 )
  );
  LUT4 #(
    .INIT ( 16'h78ED ))
  \hexdisp1/Mmux__varindex0000_151_SW0  (
    .I0(\hexdisp1/nibble [2]),
    .I1(\hexdisp1/nibble [1]),
    .I2(\hexdisp1/nibble [0]),
    .I3(\hexdisp1/dot_index [3]),
    .O(N861)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/Mmux__varindex0000_151  (
    .I0(\hexdisp1/nibble [3]),
    .I1(N861),
    .O(\hexdisp1/Mmux__varindex0000_151_2027 )
  );
  LUT4 #(
    .INIT ( 16'hFA6F ))
  \hexdisp1/Mmux__varindex0000_122_SW0  (
    .I0(\hexdisp1/nibble [1]),
    .I1(\hexdisp1/dot_index [3]),
    .I2(\hexdisp1/nibble [2]),
    .I3(\hexdisp1/nibble [0]),
    .O(N863)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/Mmux__varindex0000_122  (
    .I0(\hexdisp1/nibble [3]),
    .I1(N863),
    .O(\hexdisp1/Mmux__varindex0000_122_2016 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \cpu/npc_next<3>41  (
    .I0(\dbreset/clean_1624 ),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/branch ),
    .I3(power_on_reset),
    .O(\cpu/N95 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \cpu/wd<3>70  (
    .I0(\cpu/wd_shift ),
    .I1(N865),
    .I2(\cpu/wd<3>15_1524 ),
    .O(\cpu/wd<3>70_1527 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/ctl/mem_next_SW31  (
    .I0(N279),
    .I1(\cpu/inst [15]),
    .I2(N682),
    .O(N438)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/ctl/mem_next_SW51  (
    .I0(N279),
    .I1(\cpu/inst [11]),
    .I2(N686),
    .O(N442)
  );
  FDE   \dbreset/clean_1  (
    .C(clock_50MHz),
    .CE(\dbreset/clean_not0001 ),
    .D(\dbreset/new_1657 ),
    .Q(\dbreset/clean_1_1625 )
  );
  FDE   \cpu/inst_26_1  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[26]),
    .Q(\cpu/inst_26_1_1012 )
  );
  FDRE   \kbd/wptr_1_1  (
    .C(clock_50MHz),
    .CE(\kbd/wptr_not0001 ),
    .D(\kbd/Result [1]),
    .R(reset),
    .Q(\kbd/wptr_1_1_2337 )
  );
  FDE   \cpu/inst_27_1  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[27]),
    .Q(\cpu/inst_27_1_1014 )
  );
  FDRE   \kbd/wptr_0_1  (
    .C(clock_50MHz),
    .CE(\kbd/wptr_not0001 ),
    .D(\kbd/Result [0]),
    .R(reset),
    .Q(\kbd/wptr_0_1_2335 )
  );
  FDRE   \kbd/wptr_2_1  (
    .C(clock_50MHz),
    .CE(\kbd/wptr_not0001 ),
    .D(\kbd/Result [2]),
    .R(reset),
    .Q(\kbd/wptr_2_1_2339 )
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<0>1_1  (
    .I0(\cpu/inst [11]),
    .I1(power_on_reset),
    .I2(N442),
    .I3(N551),
    .O(\cpu/ra2<0>1_1213 )
  );
  FD   \cpu/ctl/msel_1  (
    .C(clock_50MHz),
    .D(\cpu/msel_next ),
    .Q(\cpu/ctl/msel_1_987 )
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<3>1_1  (
    .I0(\cpu/inst [14]),
    .I1(power_on_reset),
    .I2(N1054),
    .I3(N551),
    .O(\cpu/ra2<3>1_1219 )
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<2>1_1  (
    .I0(\cpu/inst [13]),
    .I1(power_on_reset),
    .I2(N1055),
    .I3(N551),
    .O(\cpu/ra2<2>1_1217 )
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<1>1_1  (
    .I0(\cpu/inst [12]),
    .I1(power_on_reset),
    .I2(N1056),
    .I3(N551),
    .O(\cpu/ra2<1>1_1215 )
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \cpu/ra2<4>1_1  (
    .I0(\cpu/inst [15]),
    .I1(power_on_reset),
    .I2(N438),
    .I3(N551),
    .O(\cpu/ra2<4>1_1221 )
  );
  FD   \cpu/ctl/msel_2  (
    .C(clock_50MHz),
    .D(\cpu/msel_next ),
    .Q(\cpu/ctl/msel_2_988 )
  );
  FDE   \cpu/inst_31_1  (
    .C(clock_50MHz),
    .CE(\cpu/msel_inv ),
    .D(mdin[31]),
    .Q(\cpu/inst_31_1_1020 )
  );
  LUT4 #(
    .INIT ( 16'h4474 ))
  \cpu/b<0>1_1  (
    .I0(N337),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [0]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .O(\cpu/b<0>1_940 )
  );
  MUXF5   \hexdisp1/dot_index_mux0000<7>941  (
    .I0(N869),
    .I1(N870),
    .S(\hexdisp1/dot_index [2]),
    .O(\hexdisp1/dot_index_mux0000<7>94 )
  );
  LUT4 #(
    .INIT ( 16'hAB01 ))
  \hexdisp1/dot_index_mux0000<7>941_F  (
    .I0(\hexdisp1/dot_index [1]),
    .I1(\hexdisp1/dot_index [0]),
    .I2(\hexdisp1/N42 ),
    .I3(\hexdisp1/N37 ),
    .O(N869)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/dot_index_mux0000<7>941_G  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/dot_index_mux0000<7>13_2211 ),
    .I2(\hexdisp1/dot_index_mux0000<7>28_2212 ),
    .O(N870)
  );
  MUXF5   \hexdisp1/disp_data_out_mux000023  (
    .I0(N871),
    .I1(N872),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/disp_data_out_mux000023_2162 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \hexdisp1/disp_data_out_mux000023_F  (
    .I0(\hexdisp1/disp_data_out_mux000017_2161 ),
    .I1(\hexdisp1/dot_index [3]),
    .I2(\hexdisp1/Mrom_dots6 ),
    .I3(\hexdisp1/Mrom_dots14 ),
    .O(N871)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \hexdisp1/disp_data_out_mux000023_G  (
    .I0(\hexdisp1/disp_data_out_mux000017_2161 ),
    .I1(\hexdisp1/dot_index [3]),
    .I2(\hexdisp1/Mrom_dots22_2061 ),
    .I3(\hexdisp1/Mrom_dots30 ),
    .O(N872)
  );
  MUXF5   \cpu/Sh4532  (
    .I0(N873),
    .I1(N874),
    .S(\cpu/b [2]),
    .O(\cpu/Sh45 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh4532_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh13_775 ),
    .I2(\cpu/Sh5_804 ),
    .O(N873)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \cpu/Sh4532_G  (
    .I0(\cpu/b [3]),
    .I1(\cpu/Sh1_771 ),
    .I2(\cpu/Sh453_801 ),
    .O(N874)
  );
  MUXF5   \hexdisp1/dot_index_mux0000<6>961  (
    .I0(N875),
    .I1(N876),
    .S(\hexdisp1/dot_index [3]),
    .O(\hexdisp1/dot_index_mux0000<6>96 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \hexdisp1/dot_index_mux0000<6>961_F  (
    .I0(\hexdisp1/dot_index_mux0000<6>75_2209 ),
    .I1(\hexdisp1/N25 ),
    .I2(\hexdisp1/N93 ),
    .O(N875)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \hexdisp1/dot_index_mux0000<6>961_G  (
    .I0(\hexdisp1/N83 ),
    .I1(\hexdisp1/N25 ),
    .I2(\hexdisp1/N96 ),
    .I3(\hexdisp1/dot_index_mux0000<6>18_2208 ),
    .O(N876)
  );
  MUXF5   \hexdisp1/dot_index_mux0000<8>1  (
    .I0(N877),
    .I1(N878),
    .S(\hexdisp1/dot_index [1]),
    .O(\hexdisp1/dot_index_mux0000<8>1_2214 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \hexdisp1/dot_index_mux0000<8>1_F  (
    .I0(\hexdisp1/N42 ),
    .I1(\hexdisp1/dot_index [0]),
    .I2(\hexdisp1/N37 ),
    .O(N877)
  );
  LUT4 #(
    .INIT ( 16'hEBEA ))
  \hexdisp1/dot_index_mux0000<8>1_G  (
    .I0(\hexdisp1/N58 ),
    .I1(\hexdisp1/dot_index [0]),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .I3(\hexdisp1/state_FSM_FFd2_2240 ),
    .O(N878)
  );
  MUXF5   \mdin<9>  (
    .I0(N879),
    .I1(N880),
    .S(mdin_sel[2]),
    .O(mdin[9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mdin<9>_F  (
    .I0(mdin_sel[1]),
    .I1(ramout[9]),
    .I2(dpyout[9]),
    .O(N879)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \mdin<9>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[9]),
    .I2(\kbd/fifo_overflow_2307 ),
    .O(N880)
  );
  MUXF5   \mdin<0>  (
    .I0(N881),
    .I1(N882),
    .S(ps2out[0]),
    .O(mdin[0])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<0>_F  (
    .I0(ramout[0]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[0]),
    .O(N881)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<0>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[0]),
    .I2(ramout[0]),
    .I3(mdin_sel[2]),
    .O(N882)
  );
  MUXF5   \hexdisp1/dot_index_mux0000<4>91  (
    .I0(N883),
    .I1(N884),
    .S(\hexdisp1/dot_index_mux0000<4>57_2200 ),
    .O(\hexdisp1/dot_index_mux0000<4>91_2201 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hexdisp1/dot_index_mux0000<4>91_F  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/dot_index [5]),
    .I2(\hexdisp1/state_FSM_FFd2_2240 ),
    .O(N883)
  );
  LUT4 #(
    .INIT ( 16'h2064 ))
  \hexdisp1/dot_index_mux0000<4>91_G  (
    .I0(\hexdisp1/state_FSM_FFd3_2244 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/dot_index [5]),
    .I3(\hexdisp1/state_FSM_FFd1_2239 ),
    .O(N884)
  );
  MUXF5   \mdin<7>  (
    .I0(N885),
    .I1(N886),
    .S(ps2out[7]),
    .O(mdin[7])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<7>_F  (
    .I0(ramout[7]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[7]),
    .O(N885)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<7>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[7]),
    .I2(ramout[7]),
    .I3(mdin_sel[2]),
    .O(N886)
  );
  MUXF5   \mdin<6>  (
    .I0(N887),
    .I1(N888),
    .S(ps2out[6]),
    .O(mdin[6])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<6>_F  (
    .I0(ramout[6]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[6]),
    .O(N887)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<6>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[6]),
    .I2(ramout[6]),
    .I3(mdin_sel[2]),
    .O(N888)
  );
  MUXF5   \mdin<5>  (
    .I0(N889),
    .I1(N890),
    .S(ps2out[5]),
    .O(mdin[5])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<5>_F  (
    .I0(ramout[5]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[5]),
    .O(N889)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<5>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[5]),
    .I2(ramout[5]),
    .I3(mdin_sel[2]),
    .O(N890)
  );
  MUXF5   \mdin<4>  (
    .I0(N891),
    .I1(N892),
    .S(ps2out[4]),
    .O(mdin[4])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<4>_F  (
    .I0(ramout[4]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[4]),
    .O(N891)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<4>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[4]),
    .I2(ramout[4]),
    .I3(mdin_sel[2]),
    .O(N892)
  );
  MUXF5   \mdin<3>  (
    .I0(N893),
    .I1(N894),
    .S(ps2out[3]),
    .O(mdin[3])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<3>_F  (
    .I0(ramout[3]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[3]),
    .O(N893)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<3>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[3]),
    .I2(ramout[3]),
    .I3(mdin_sel[2]),
    .O(N894)
  );
  MUXF5   \mdin<2>  (
    .I0(N895),
    .I1(N896),
    .S(ps2out[2]),
    .O(mdin[2])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<2>_F  (
    .I0(ramout[2]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[2]),
    .O(N895)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<2>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[2]),
    .I2(ramout[2]),
    .I3(mdin_sel[2]),
    .O(N896)
  );
  MUXF5   \mdin<1>  (
    .I0(N897),
    .I1(N898),
    .S(ps2out[1]),
    .O(mdin[1])
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  \mdin<1>_F  (
    .I0(ramout[1]),
    .I1(mdin_sel[1]),
    .I2(mdin_sel[2]),
    .I3(dpyout[1]),
    .O(N897)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \mdin<1>_G  (
    .I0(mdin_sel[1]),
    .I1(dpyout[1]),
    .I2(ramout[1]),
    .I3(mdin_sel[2]),
    .O(N898)
  );
  MUXF5   \cpu/wd<25>119  (
    .I0(N899),
    .I1(N900),
    .S(\cpu/b [4]),
    .O(\cpu/wd<25>119_1455 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \cpu/wd<25>119_F  (
    .I0(\cpu/N49 ),
    .I1(\cpu/wd<25>76_1460 ),
    .I2(\cpu/wd<25>55_1458 ),
    .I3(\cpu/wd<25>71_1459 ),
    .O(N899)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \cpu/wd<25>119_G  (
    .I0(\cpu/Sh41_796 ),
    .I1(\cpu/N49 ),
    .I2(\cpu/wd<25>55_1458 ),
    .O(N900)
  );
  MUXF5   \cpu/wd<24>119  (
    .I0(N901),
    .I1(N902),
    .S(\cpu/b [4]),
    .O(\cpu/wd<24>119_1446 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \cpu/wd<24>119_F  (
    .I0(\cpu/N49 ),
    .I1(\cpu/wd<24>76_1453 ),
    .I2(\cpu/wd<24>55_1451 ),
    .I3(\cpu/wd<24>71_1452 ),
    .O(N901)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \cpu/wd<24>119_G  (
    .I0(\cpu/Sh40_795 ),
    .I1(\cpu/N49 ),
    .I2(\cpu/wd<24>55_1451 ),
    .O(N902)
  );
  MUXF5   \hexdisp1/disp_data_out_mux0000131  (
    .I0(N903),
    .I1(N904),
    .S(\hexdisp1/state_FSM_FFd2_2240 ),
    .O(\hexdisp1/disp_data_out_mux0000131_2158 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hexdisp1/disp_data_out_mux0000131_F  (
    .I0(\hexdisp1/control[31] ),
    .I1(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(N903)
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \hexdisp1/disp_data_out_mux0000131_G  (
    .I0(\hexdisp1/disp_data_out_mux000078 ),
    .I1(\hexdisp1/Mmux__varindex0000_6_f6_2029 ),
    .I2(\hexdisp1/dot_index [5]),
    .O(N904)
  );
  MUXF5   \hexdisp1/dot_index_mux0000<1>69  (
    .I0(N905),
    .I1(N906),
    .S(\hexdisp1/dot_index [8]),
    .O(\hexdisp1/dot_index_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \hexdisp1/dot_index_mux0000<1>69_F  (
    .I0(\hexdisp1/N95 ),
    .I1(\hexdisp1/dot_index [7]),
    .I2(\hexdisp1/N31 ),
    .O(N905)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hexdisp1/dot_index_mux0000<1>69_G  (
    .I0(\hexdisp1/N74 ),
    .I1(\hexdisp1/dot_index_mux0000<1>18 ),
    .I2(\hexdisp1/dot_index_mux0000<1>34_2189 ),
    .O(N906)
  );
  MUXF5   \cpu/wd<18>144  (
    .I0(N907),
    .I1(N908),
    .S(\cpu/b [4]),
    .O(\cpu/wd<18>144_1392 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<18>144_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd1 ),
    .I3(\cpu/sr/shift_right<10>_bdd5 ),
    .O(N907)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \cpu/wd<18>144_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/a [31]),
    .I2(\cpu/shift_sxt ),
    .O(N908)
  );
  MUXF5   \cpu/wd<20>141  (
    .I0(N909),
    .I1(N910),
    .S(\cpu/b [4]),
    .O(\cpu/wd<20>141_1415 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<20>141_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<12>_bdd1 ),
    .I3(\cpu/sr/shift_right<12>_bdd4 ),
    .O(N909)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \cpu/wd<20>141_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/a [31]),
    .I2(\cpu/shift_sxt ),
    .O(N910)
  );
  MUXF5   \cpu/wd<21>141  (
    .I0(N911),
    .I1(N912),
    .S(\cpu/b [4]),
    .O(\cpu/wd<21>141_1423 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<21>141_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<13>_bdd1 ),
    .I3(\cpu/sr/shift_right<13>_bdd4 ),
    .O(N911)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \cpu/wd<21>141_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/a [31]),
    .I2(\cpu/shift_sxt ),
    .O(N912)
  );
  MUXF5   \cpu/wd<17>144  (
    .I0(N913),
    .I1(N914),
    .S(\cpu/b [4]),
    .O(\cpu/wd<17>144_1385 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<17>144_F  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [3]),
    .I2(N212),
    .I3(\cpu/sr/shift_right<17>_bdd2 ),
    .O(N913)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \cpu/wd<17>144_G  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/a [31]),
    .I2(\cpu/shift_sxt ),
    .O(N914)
  );
  MUXF5   \mdin<8>  (
    .I0(N915),
    .I1(N916),
    .S(mdin_sel[2]),
    .O(mdin[8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mdin<8>_F  (
    .I0(mdin_sel[1]),
    .I1(ramout[8]),
    .I2(dpyout[8]),
    .O(N915)
  );
  LUT4 #(
    .INIT ( 16'hFF09 ))
  \mdin<8>_G  (
    .I0(\kbd/wptr [1]),
    .I1(\kbd/rptr [1]),
    .I2(N359),
    .I3(N49),
    .O(N916)
  );
  MUXF5   \cpu/b<15>  (
    .I0(N917),
    .I1(N918),
    .S(\cpu/bsel ),
    .O(\cpu/b [15])
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \cpu/b<15>_F  (
    .I0(\cpu/_varindex0001 [15]),
    .I1(\cpu/rd2_cmp_eq0000_1229 ),
    .I2(\cpu/N42 ),
    .I3(\cpu/asel ),
    .O(N917)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/b<15>_G  (
    .I0(\cpu/asel ),
    .I1(\cpu/N42 ),
    .I2(\cpu/inst [13]),
    .O(N918)
  );
  MUXF5   \cpu/sr/shift_right<13>4  (
    .I0(N919),
    .I1(N920),
    .S(\cpu/b [1]),
    .O(\cpu/sr/shift_right<13>_bdd6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<13>4_F  (
    .I0(\cpu/b<0>1_940 ),
    .I1(\cpu/a [29]),
    .I2(\cpu/a [30]),
    .O(N919)
  );
  LUT3 #(
    .INIT ( 8'hC4 ))
  \cpu/sr/shift_right<13>4_G  (
    .I0(\cpu/b<0>1_940 ),
    .I1(\cpu/a [31]),
    .I2(\cpu/shift_sxt ),
    .O(N920)
  );
  MUXF5   \cpu/wd<30>109  (
    .I0(N921),
    .I1(N922),
    .S(\cpu/b [3]),
    .O(\cpu/wd<30>109_1505 )
  );
  LUT4 #(
    .INIT ( 16'hFF1D ))
  \cpu/wd<30>109_F  (
    .I0(N492),
    .I1(\cpu/b [0]),
    .I2(N493),
    .I3(\cpu/wd<30>71_1510 ),
    .O(N921)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \cpu/wd<30>109_G  (
    .I0(\cpu/Sh18_780 ),
    .I1(\cpu/b [2]),
    .I2(\cpu/wd<30>71_1510 ),
    .O(N922)
  );
  MUXF5   \cpu/wd<31>221  (
    .I0(N923),
    .I1(N924),
    .S(\cpu/ctl/msel_986 ),
    .O(\cpu/wd [31])
  );
  LUT4 #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<31>221_F  (
    .I0(\cpu/wd<31>196_1516 ),
    .I1(\cpu/wd_cmp ),
    .I2(\cpu/addsub [31]),
    .I3(\cpu/wd_addsub ),
    .O(N923)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \cpu/wd<31>221_G  (
    .I0(mdin[31]),
    .I1(\cpu/wd<31>196_1516 ),
    .O(N924)
  );
  MUXF5   \hexdisp1/dot_index_mux0000<5>1181  (
    .I0(N925),
    .I1(N926),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/dot_index_mux0000<5>118 )
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \hexdisp1/dot_index_mux0000<5>1181_F  (
    .I0(\hexdisp1/N25 ),
    .I1(\hexdisp1/dot_index [3]),
    .I2(\hexdisp1/N93 ),
    .I3(\hexdisp1/dot_index_mux0000<5>89_2207 ),
    .O(N925)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \hexdisp1/dot_index_mux0000<5>1181_G  (
    .I0(\hexdisp1/N96 ),
    .I1(\hexdisp1/dot_index [3]),
    .I2(\hexdisp1/dot_index_mux0000<5>34_2206 ),
    .I3(\hexdisp1/N25 ),
    .O(N926)
  );
  MUXF5   \cpu/wd<18>89  (
    .I0(N927),
    .I1(N928),
    .S(\cpu/b [3]),
    .O(\cpu/wd<18>89_1396 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<18>89_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh18_780 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh14_776 ),
    .O(N927)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<18>89_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh10_772 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh6_805 ),
    .O(N928)
  );
  MUXF5   \cpu/wd<17>89  (
    .I0(N929),
    .I1(N930),
    .S(\cpu/b [3]),
    .O(\cpu/wd<17>89_1389 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<17>89_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh17_779 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh13_775 ),
    .O(N929)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<17>89_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh9_808 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh5_804 ),
    .O(N930)
  );
  MUXF5   \cpu/wd<19>89  (
    .I0(N931),
    .I1(N932),
    .S(\cpu/b [3]),
    .O(\cpu/wd<19>89_1404 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<19>89_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh19_781 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh15_777 ),
    .O(N931)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<19>89_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh11_773 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh7_806 ),
    .O(N932)
  );
  MUXF5   \cpu/wd<16>90  (
    .I0(N933),
    .I1(N934),
    .S(\cpu/b [3]),
    .O(\cpu/wd<16>90_1382 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<16>90_F  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh16_778 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh12_774 ),
    .O(N933)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<16>90_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh8_807 ),
    .I2(\cpu/b [4]),
    .I3(\cpu/Sh4_794 ),
    .O(N934)
  );
  MUXF5   \cpu/wd<27>77  (
    .I0(N935),
    .I1(N936),
    .S(\cpu/b [3]),
    .O(\cpu/wd<27>77_1473 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \cpu/wd<27>77_F  (
    .I0(N495),
    .I1(\cpu/b [2]),
    .I2(\cpu/Sh27_788 ),
    .O(N935)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \cpu/wd<27>77_G  (
    .I0(\cpu/b [2]),
    .I1(\cpu/Sh15_777 ),
    .I2(\cpu/Sh19_781 ),
    .I3(N495),
    .O(N936)
  );
  MUXF5   \hexdisp1/dot_index_mux0000<9>2  (
    .I0(N937),
    .I1(N938),
    .S(\hexdisp1/dot_index [0]),
    .O(\hexdisp1/dot_index_mux0000<9>1_2215 )
  );
  LUT4 #(
    .INIT ( 16'h02CE ))
  \hexdisp1/dot_index_mux0000<9>2_F  (
    .I0(\hexdisp1/state_FSM_FFd2_2240 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(\hexdisp1/state_cmp_eq0000_2249 ),
    .I3(\hexdisp1/state_cmp_eq0001_2251 ),
    .O(N937)
  );
  LUT4 #(
    .INIT ( 16'hFF8B ))
  \hexdisp1/dot_index_mux0000<9>2_G  (
    .I0(\hexdisp1/state_cmp_eq0001_2251 ),
    .I1(\hexdisp1/state_FSM_FFd1_2239 ),
    .I2(N25),
    .I3(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(N938)
  );
  MUXF5   \cpu/wd<19>137  (
    .I0(N939),
    .I1(N940),
    .S(\cpu/b [4]),
    .O(\cpu/wd<19>137_1400 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/wd<19>137_F  (
    .I0(\cpu/b [3]),
    .I1(\cpu/sr/shift_right<11>_bdd1 ),
    .I2(\cpu/sr/shift_right<11>_bdd4 ),
    .O(N939)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/wd<19>137_G  (
    .I0(\cpu/a [31]),
    .I1(\cpu/shift_sxt ),
    .O(N940)
  );
  MUXF5   \hexdisp1/dot_index_mux0000<2>691_SW1  (
    .I0(N941),
    .I1(N942),
    .S(\hexdisp1/N34 ),
    .O(N841)
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \hexdisp1/dot_index_mux0000<2>691_SW1_F  (
    .I0(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I1(\hexdisp1/state_cmp_eq0000_2249 ),
    .I2(\hexdisp1/N96 ),
    .I3(\hexdisp1/dot_index [6]),
    .O(N941)
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \hexdisp1/dot_index_mux0000<2>691_SW1_G  (
    .I0(\hexdisp1/dot_index [5]),
    .I1(\hexdisp1/N96 ),
    .I2(\hexdisp1/N28 ),
    .I3(\hexdisp1/dot_index [6]),
    .O(N942)
  );
  MUXF5   \cpu/ctl/bsel55  (
    .I0(N943),
    .I1(N944),
    .S(\cpu/inst [27]),
    .O(\cpu/ctl/bsel55_984 )
  );
  LUT4 #(
    .INIT ( 16'hFF8C ))
  \cpu/ctl/bsel55_F  (
    .I0(\cpu/inst [26]),
    .I1(\cpu/inst [29]),
    .I2(\cpu/inst [28]),
    .I3(\cpu/inst [31]),
    .O(N943)
  );
  LUT4 #(
    .INIT ( 16'h32A8 ))
  \cpu/ctl/bsel55_G  (
    .I0(\cpu/inst [29]),
    .I1(\cpu/inst [26]),
    .I2(\cpu/inst [28]),
    .I3(\cpu/inst [31]),
    .O(N944)
  );
  MUXF5   \cpu/ctl/mem_next_SW4  (
    .I0(N945),
    .I1(N946),
    .S(N285),
    .O(N440)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \cpu/ctl/mem_next_SW4_F  (
    .I0(\cpu/inst [30]),
    .I1(N669),
    .I2(\cpu/inst [31]),
    .I3(N279),
    .O(N945)
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \cpu/ctl/mem_next_SW4_G  (
    .I0(N279),
    .I1(\cpu/inst [31]),
    .I2(N670),
    .I3(\cpu/inst [30]),
    .O(N946)
  );
  MUXF5   \cpu/wd<23>71  (
    .I0(N947),
    .I1(N948),
    .S(\cpu/b [2]),
    .O(\cpu/wd<23>71_1442 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<23>71_F  (
    .I0(\cpu/b [0]),
    .I1(N132),
    .I2(\cpu/b [3]),
    .I3(N135),
    .O(N947)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \cpu/wd<23>71_G  (
    .I0(\cpu/b [0]),
    .I1(N144),
    .I2(\cpu/b [3]),
    .I3(N147),
    .O(N948)
  );
  MUXF5   \cpu/Sh23  (
    .I0(N949),
    .I1(N950),
    .S(\cpu/b [0]),
    .O(\cpu/Sh23_785 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh23_F  (
    .I0(\cpu/b<1>1_952 ),
    .I1(\cpu/a [23]),
    .I2(\cpu/a [21]),
    .O(N949)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh23_G  (
    .I0(N503),
    .I1(\cpu/a [20]),
    .I2(\cpu/a [22]),
    .O(N950)
  );
  MUXF5   \cpu/Sh4  (
    .I0(N951),
    .I1(N952),
    .S(\cpu/b [0]),
    .O(\cpu/Sh4_794 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh4_F  (
    .I0(\cpu/b [1]),
    .I1(\cpu/a [4]),
    .I2(\cpu/a [2]),
    .O(N951)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh4_G  (
    .I0(\cpu/b<1>1_952 ),
    .I1(\cpu/a [3]),
    .I2(\cpu/a [1]),
    .O(N952)
  );
  MUXF5   \cpu/Sh13  (
    .I0(N953),
    .I1(N954),
    .S(\cpu/b [0]),
    .O(\cpu/Sh13_775 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh13_F  (
    .I0(\cpu/b<1>1_952 ),
    .I1(\cpu/a [13]),
    .I2(\cpu/a [11]),
    .O(N953)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh13_G  (
    .I0(\cpu/b [1]),
    .I1(\cpu/a [12]),
    .I2(\cpu/a [10]),
    .O(N954)
  );
  MUXF5   \cpu/Sh12  (
    .I0(N955),
    .I1(N956),
    .S(\cpu/b [0]),
    .O(\cpu/Sh12_774 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh12_F  (
    .I0(\cpu/b [1]),
    .I1(\cpu/a [12]),
    .I2(\cpu/a [10]),
    .O(N955)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \cpu/Sh12_G  (
    .I0(\cpu/b<1>1_952 ),
    .I1(\cpu/a [11]),
    .I2(\cpu/a [9]),
    .O(N956)
  );
  BUFG   \hexdisp1/clock_BUFG  (
    .I(\hexdisp1/clock1 ),
    .O(\hexdisp1/clock_2128 )
  );
  INV   \dbreset/Mcount_count_lut<0>_INV_0  (
    .I(\dbreset/count [0]),
    .O(\dbreset/Mcount_count_lut [0])
  );
  INV   \hexdisp1/Mcount_reset_count_lut<7>_INV_0  (
    .I(\hexdisp1/reset_count [7]),
    .O(\hexdisp1/Mcount_reset_count_lut [7])
  );
  INV   \hexdisp1/Mcount_reset_count_lut<6>_INV_0  (
    .I(\hexdisp1/reset_count [6]),
    .O(\hexdisp1/Mcount_reset_count_lut [6])
  );
  INV   \hexdisp1/Mcount_reset_count_lut<5>_INV_0  (
    .I(\hexdisp1/reset_count [5]),
    .O(\hexdisp1/Mcount_reset_count_lut [5])
  );
  INV   \hexdisp1/Mcount_reset_count_lut<4>_INV_0  (
    .I(\hexdisp1/reset_count [4]),
    .O(\hexdisp1/Mcount_reset_count_lut [4])
  );
  INV   \hexdisp1/Mcount_reset_count_lut<3>_INV_0  (
    .I(\hexdisp1/reset_count [3]),
    .O(\hexdisp1/Mcount_reset_count_lut [3])
  );
  INV   \hexdisp1/Mcount_reset_count_lut<2>_INV_0  (
    .I(\hexdisp1/reset_count [2]),
    .O(\hexdisp1/Mcount_reset_count_lut [2])
  );
  INV   \hexdisp1/Mcount_reset_count_lut<1>_INV_0  (
    .I(\hexdisp1/reset_count [1]),
    .O(\hexdisp1/Mcount_reset_count_lut [1])
  );
  INV   \cpu/Madd_npc_inc_Madd_lut<2>_INV_0  (
    .I(\cpu/npc [2]),
    .O(\cpu/Madd_npc_inc_Madd_lut [2])
  );
  INV   \cpu/msel_inv1_INV_0  (
    .I(\cpu/ctl/msel_986 ),
    .O(\cpu/msel_inv )
  );
  INV   \dpy/Mcount_vcount_lut<0>_INV_0  (
    .I(\dpy/vcount [0]),
    .O(\dpy/Mcount_vcount_lut [0])
  );
  INV   \dpy/Mcount_hcount_lut<0>_INV_0  (
    .I(\dpy/hcount [0]),
    .O(\dpy/Mcount_hcount_lut [0])
  );
  INV   \c1/clk_300Hz_cmp_eq0000_wg_lut<0>_INV_0  (
    .I(\c1/lfsr [5]),
    .O(\c1/clk_300Hz_cmp_eq0000_wg_lut [0])
  );
  INV   dbreset_not00001_INV_0 (
    .I(button_enter_IBUF_603),
    .O(dbreset_not0000)
  );
  INV   \dpy/en1_INV_0  (
    .I(\dpy/pcount_1893 ),
    .O(\dpy/en )
  );
  INV   \kbd/Mcount_wptr_xor<0>11_INV_0  (
    .I(\kbd/wptr [0]),
    .O(\kbd/Result [0])
  );
  INV   \kbd/Mcount_rptr_xor<0>11_INV_0  (
    .I(\kbd/rptr [0]),
    .O(\kbd/Result<0>1 )
  );
  INV   \hexdisp1/disp_clock1_INV_0  (
    .I(\hexdisp1/clock1 ),
    .O(disp_clock_OBUF_1663)
  );
  INV   \hexdisp1/Mcount_count_xor<0>11_INV_0  (
    .I(\hexdisp1/count [0]),
    .O(\hexdisp1/Result [0])
  );
  INV   \dpy/Mcount_v_xor<0>11_INV_0  (
    .I(\dpy/v [0]),
    .O(\dpy/Result<0>2 )
  );
  INV   \dbreset/count_not00011_INV_0  (
    .I(\dbreset/count_cmp_eq0000 ),
    .O(\dbreset/count_not0001 )
  );
  RAMB16_S9 #(
    .WRITE_MODE ( "WRITE_FIRST" ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT ( 9'h000 ),
    .SRVAL ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000007777777777 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h6666656565656565656564646464646464647700747269747877000000000000 ),
    .INIT_0A ( 256'h808080808080808080808080806F60F0F4606367676767676767666666666666 ),
    .INIT_0B ( 256'h6E61207777600020747420657780808080808080808080808080808080808080 ),
    .INIT_0C ( 256'h6362626262626262626161616161616161606060606060606077002E7777C400 ),
    .INIT_0D ( 256'h7767646077600080808080808080806F60F0E060777764C4606F636363636363 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'hD07BD07BD06760776477D07BD0E06F60606077E060646464C700000000000000 ),
    .INIT_11 ( 256'hC077C077C0E060777764A4E0F477E060F46077C07B9077E060C07B7BD07BD07B ),
    .INIT_12 ( 256'h000000000000000000007777607764776077776077A0E87764A47B60C077C077 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'hC064C07BD4C0607760C067C30000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h64606460646064606460646064606460646064606460646064606FC363646077 ),
    .INIT_17 ( 256'h6460646064606460646064606460646064606460646064606460646064606460 ),
    .INIT_18 ( 256'h6565656565656464646464646464606F607BD464C4606463C700006F64606460 ),
    .INIT_19 ( 256'h64C07BD4C067C067676377777777636767676767676766666666666666666565 ),
    .INIT_1A ( 256'h7BD4607BD064C364C364C3FF7764C0607764C47760770065746FC3C364606460 ),
    .INIT_1B ( 256'h60C36064C360C064A4A0E860B0B0F0E0C064C37BD0C07BD4C0677BD4C06460C0 ),
    .INIT_1C ( 256'hF0F880C064C364C364C367C3000000000000000000000000000000006FC360C3 ),
    .INIT_1D ( 256'h8064C364C364C367C36FC36083778064C36FC363C360C360C3607BC47760F0E0 ),
    .INIT_1E ( 256'h7C64C3002E756779720400006FC363C360C360C36080777BC4F87777E0C0C060 ),
    .INIT_1F ( 256'h0000000000000077C07BD077606077D0C0647704E00460000404600004C36004 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h64C3000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h000000000000000000006FC07BD07BD07BD07BD07BD07BD06FC360C47BD477D8 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'hC364C36FC360C360C360047C64C364C077D0C064F060C360047C64C364C364C3 ),
    .INIT_2C ( 256'hD87B777780616FC360C360C360047C64C364C077D0C060F060C360047C64C364 ),
    .INIT_2D ( 256'h00000077C360047C64C377D0048000047704C0607B90808077D8770477C0647B ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h00000000000000000000000000000000000000000000000000770464C0600000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \mem/m3  (
    .CLK(clock_50MHz),
    .EN(analyzer4_clock_OBUF_583),
    .SSR(analyzer1_data_0_OBUF_547),
    .WE(_and0000),
    .ADDR({ma[12], ma[11], ma[10], ma[9], ma[8], ma[7], ma[6], ma[5], ma[4], ma[3], ma[2]}),
    .DI({mdout[31], mdout[30], mdout[29], mdout[28], mdout[27], mdout[26], mdout[25], mdout[24]}),
    .DIP({analyzer1_data_0_OBUF_547}),
    .DO({ramout[31], ramout[30], ramout[29], ramout[28], ramout[27], ramout[26], ramout[25], ramout[24]}),
    .DOP({\NLW_mem/m3_DOP<0>_UNCONNECTED })
  );
  RAMB16_S9 #(
    .WRITE_MODE ( "WRITE_FIRST" ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT ( 9'h000 ),
    .SRVAL ( 9'h000 ),
    .INIT_00 ( 256'h000000000000000000000000000000000000000000000000000000FFFFFFFFFF ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h3F1FFFDFBF9F7F5F3F1FFFDFBF9F7F5F3F1FFF2E70652063659F000000000000 ),
    .INIT_0A ( 256'h00000000000000000000000000E00000001EBFDFBF9F7F5F3F1FFFDFBF9F7F5F ),
    .INIT_0B ( 256'h6F63749F9F1E006E63736C6C9F00000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h1FFFDFBF9F7F5F3F1FFFDFBF9F7F5F3F1FFFDFBF9F7F5F3F1FFF2E2E9F9F1E78 ),
    .INIT_0D ( 256'hFFFF1F1FE01F000000000000000000E00000001EFF9F1F001FFEDFBF9F7F5F3F ),
    .INIT_0E ( 256'h575109082B5F29282A265E25242340217E8C8B8A898887868584838281330000 ),
    .INIT_0F ( 256'h3E3C4D4E425643585A0A223A4C4B4A4847464453417C7D7B504F495559545245 ),
    .INIT_10 ( 256'h20E120E120FF5FFF1FE120E12000FE5F3F1FE1201F5F3F1FDE0093929190203F ),
    .INIT_11 ( 256'h1FFF1FFF1F425FE2FF3F212121E0025F2121FF21E240E242413FE2E120E120E1 ),
    .INIT_12 ( 256'h00000000000000000000FF9F1FFF1F9F1FFF9F1FFF2100FF3F21E23F1FFF1FFF ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h3F1F1FE120001F9F3F1F9DBD0000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h4140414041404140414041404140414041404140414041404140FCBD9D1F1F9F ),
    .INIT_17 ( 256'h4140414041404140414041404140414041404140414041404140414041404140 ),
    .INIT_18 ( 256'hBF9F7F5F3F1FFFDFBF9F7F5F3F1F1FFE1FE0001F001F1FFFDE0000FC41404140 ),
    .INIT_19 ( 256'h1F1FE12000E01FFFFFBFFF9FFF9FBFDFBF9F7F5F3F1FFFDFBF9F7F5F3F1FFFDF ),
    .INIT_1A ( 256'hE2413FE2405DBD3DBD1DBDFFFF030003FF0300E003FF007220FEDFBF203F203F ),
    .INIT_1B ( 256'h3DBD5D3FBD7D214140436341630042417F7DBDE2403FE24121E1E2412141413F ),
    .INIT_1C ( 256'h2101205F5DBD3DBD1DBD9DBD00000000000000000000000000000000FCBD1DBD ),
    .INIT_1D ( 256'h207DBD5DBD3DBD9DBDFCBD1D809F1C1DBDFCBD9DBD1DBD3DBD5DE2429F000000 ),
    .INIT_1E ( 256'h607DBD0079426E7461000000FCBD9DBD3DBD5DBD7D01FFE363429FE0027F2141 ),
    .INIT_1F ( 256'h00000000000000FF42E1209F025FE12063039F0000007F0000001F0000BD7D00 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h3DBD000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h00000000000000000000FC3FE120E120E120E120E120E120FCBD3D00E120E120 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'hBD3DBDFCBD3DBD5DBD7D00607DBD3F3FE2412102413FBD7D00607DBD5DBD3DBD ),
    .INIT_2C ( 256'h20E19F9FA93FFCBD3DBD5DBD7D00607DBD3F3FE2412102413FBD7D00607DBD5D ),
    .INIT_2D ( 256'h000000FFBD7D00607DBDE00300030000FF008404E1248960E1209F00FFA505E1 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h00000000000000000000000000000000000000000000000000FF001F001F0000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \mem/m2  (
    .CLK(clock_50MHz),
    .EN(analyzer4_clock_OBUF_583),
    .SSR(analyzer1_data_0_OBUF_547),
    .WE(_and0000),
    .ADDR({ma[12], ma[11], ma[10], ma[9], ma[8], ma[7], ma[6], ma[5], ma[4], ma[3], ma[2]}),
    .DI({mdout[23], mdout[22], mdout[21], mdout[20], mdout[19], mdout[18], mdout[17], mdout[16]}),
    .DIP({analyzer1_data_0_OBUF_547}),
    .DO({ramout[23], ramout[22], ramout[21], ramout[20], ramout[19], ramout[18], ramout[17], ramout[16]}),
    .DOP({\NLW_mem/m2_DOP<0>_UNCONNECTED })
  );
  RAMB16_S9 #(
    .WRITE_MODE ( "WRITE_FIRST" ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT ( 9'h000 ),
    .SRVAL ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000102030103 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h000000000000000000000000000000000000FF2E757464656E02000000000000 ),
    .INIT_0A ( 256'h0505050505050505050505060500050000FF0000000000000000000000000000 ),
    .INIT_0B ( 256'h696F610202FF006F756E616C0205050505050505050505050505050505050505 ),
    .INIT_0C ( 256'h00000000000000000000000000000000000000000000000000FF2E200202FF30 ),
    .INIT_0D ( 256'hFF060006FF06000C0D0D090609090D00060000FFFF0100000000000000000000 ),
    .INIT_0E ( 256'h777109083D2D30393837363534333231608C8B8A898887868584838281330000 ),
    .INIT_0F ( 256'h2E2C6D6E627663787A0A273B6C6B6A6867666473615C5D5B706F697579747265 ),
    .INIT_10 ( 256'h00000000000707FF070000FF0000000000000001FF000000000093929190202F ),
    .INIT_11 ( 256'h02000100040407FFFF061000000007070000FF000010FF000007FF0000000000 ),
    .INIT_12 ( 256'h00000000000000000000FF0100FF000100FF0100FF00FFFF0700000710000800 ),
    .INIT_13 ( 256'h00000000000000000000000F1100000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000001618000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h000A09000A000A000A00FF00091A1A0000000000000000000000000000000000 ),
    .INIT_16 ( 256'h000000000000000000000000000000000000000000000000000000FFFF0C0C00 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h000000000000000000000000000000000000000C000C00FF0000000000000000 ),
    .INIT_19 ( 256'h0D8CFF8C000080070700FEFFFEFF000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h008C0D0000FF00FF00FF008CFE000000FE0000FE00FE006569000F11000D000D ),
    .INIT_1B ( 256'hFFFFFF0DFFFF00001010FF001010000000FF0000008CFF8C0000FF8C00000080 ),
    .INIT_1C ( 256'h0000F800FF00FF00FF00FF000000000000000000000000000000000000FFFFFF ),
    .INIT_1D ( 256'hF8FF00FF00FF00FF0000FFFFF800F8FF0000FFFFFFFFFFFFFFFFFF00FF0E0000 ),
    .INIT_1E ( 256'hFFFF000A6B2069207400000F00FFFFFFFFFFFFFFFFF8FFFF0000FF0000000000 ),
    .INIT_1F ( 256'h00000000000000FF00FF00010011FF00000000000000112000001C0000FFFF00 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h00000F0000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'hFF00000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h00000000000000000000000000000000000000000000000000FFFF0000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0015001500000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h00FF0000FFFFFFFFFFFF00FFFF001500000000130015FFFF00FFFF00FF00FF00 ),
    .INIT_2C ( 256'h0000FFFFF81800FFFFFFFFFFFF00FFFF001500000000130015FFFF00FFFF00FF ),
    .INIT_2D ( 256'h000000FFFFFF00FEFF00FF0000F85900FF0000000028F8F8FF00FF00FF000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000001600 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h00000000000000000000000000000000000000000000000000FF001C001C0000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \mem/m1  (
    .CLK(clock_50MHz),
    .EN(analyzer4_clock_OBUF_583),
    .SSR(analyzer1_data_0_OBUF_547),
    .WE(_and0000),
    .ADDR({ma[12], ma[11], ma[10], ma[9], ma[8], ma[7], ma[6], ma[5], ma[4], ma[3], ma[2]}),
    .DI({mdout[15], mdout[14], mdout[13], mdout[12], mdout[11], mdout[10], mdout[9], mdout[8]}),
    .DIP({analyzer1_data_0_OBUF_547}),
    .DO({ramout[15], ramout[14], ramout[13], ramout[12], ramout[11], ramout[10], ramout[9], ramout[8]}),
    .DOP({\NLW_mem/m1_DOP<0>_UNCONNECTED })
  );
  RAMB16_S9 #(
    .WRITE_MODE ( "WRITE_FIRST" ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT ( 9'h000 ),
    .SRVAL ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000002103042C35 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000980000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h5854504C4844403C3834302C2824201C1814FF2E726E65705588000000000000 ),
    .INIT_0A ( 256'hCCCCCCCCCCCCCCCCCCCCCCB0CC004C021AFC948C8884807C7874706C6864605C ),
    .INIT_0B ( 256'h746C203218FC0069726967493BCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC ),
    .INIT_0C ( 256'h74706C6864605C5854504C4844403C3834302C2824201C1814FF2E212B11FC20 ),
    .INIT_0D ( 256'hC7E414E4EBE400D0402C4CE8303C2800C40207FCDB098C048C008C8884807C78 ),
    .INIT_0E ( 256'h1D150D66554E45463E3D362E25261E160E077809010A830B030C040605760000 ),
    .INIT_0F ( 256'h49413A31322A21221A5A524C4B423B33342B231B1C5D5B544D44433C352C2D24 ),
    .INIT_10 ( 256'h14205920120000F20002F0F6E0FF001C18140400F81C18140400726B7475294A ),
    .INIT_11 ( 256'h00050007000004D2D3E400FF080100040800F9040200E1FF0008E51358201120 ),
    .INIT_12 ( 256'h00000000000000000000313F14348C668C380714FB00FFC20400030400010003 ),
    .INIT_13 ( 256'h0000000000000000000000587800000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000006888000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h14CC5801CC7CCC0DCC14FC0458889C0000000000000000000000000000000000 ),
    .INIT_16 ( 256'h30302C2C2828242420201C1C1818141410100C0C08080404000000FCFC181405 ),
    .INIT_17 ( 256'h70706C6C6868646460605C5C5858545450504C4C4848444440403C3C38383434 ),
    .INIT_18 ( 256'h4844403C3834302C2824201C1814140014020018011814FC0400020078787474 ),
    .INIT_19 ( 256'h5030FC80040000040094517F5381948C8884807C7874706C6864605C5854504C ),
    .INIT_1A ( 256'h0D8050030AFC04FC04FC0430330001003700015A005C2168480058780420001C ),
    .INIT_1B ( 256'hFCFCFC50FCFC01000000FF0000000303FFFC040F0A30FC800400FB3004005000 ),
    .INIT_1C ( 256'h041C0008FC04FC04FC04FC044645444342413938373635343332313000FCFCFC ),
    .INIT_1D ( 256'h00FC04FC04FC04FC0400FCFC000400FC0400FCFCFCFCFCFCFCFCF801B110020F ),
    .INIT_1E ( 256'hF4FC040A6E2C70745301015400FCFCFCFCFCFCFCFC00F6FA01088F057F040400 ),
    .INIT_1F ( 256'h00000000000000FA04E60A6B0074F80A0400F002FF03743E01049C0A01FCFC05 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000E40000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'hFC04000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h00000000000000000000000001590355054F074909450B4100FCFC200161037A ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h647C007400000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h04FC0400FCFCFCFCFCFC06E7FC046800016401D80268FCFC05F7FC04FC04FC04 ),
    .INIT_2C ( 256'h20054AE0008400FCFCFCFCFCFC06CCFC046C00016401D8026CFCFC05D8FC04FC ),
    .INIT_2D ( 256'h000000DEFCFC061BFC04E50A02004101FA02040004000000FC20D702F8040007 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h000000000000000000000000000000000000000000000000000000000000F400 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h00000000000000000000000000000000000000000000000000FB079C019C0000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \mem/m0  (
    .CLK(clock_50MHz),
    .EN(analyzer4_clock_OBUF_583),
    .SSR(analyzer1_data_0_OBUF_547),
    .WE(_and0000),
    .ADDR({ma[12], ma[11], ma[10], ma[9], ma[8], ma[7], ma[6], ma[5], ma[4], ma[3], ma[2]}),
    .DI({mdout[7], mdout[6], mdout[5], mdout[4], mdout[3], mdout[2], mdout[1], mdout[0]}),
    .DIP({analyzer1_data_0_OBUF_547}),
    .DO({ramout[7], ramout[6], ramout[5], ramout[4], ramout[3], ramout[2], ramout[1], ramout[0]}),
    .DOP({\NLW_mem/m0_DOP<0>_UNCONNECTED })
  );
  RAMB16_S36_S36 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \cpu/Mram_regfile  (
    .CLKA(clock_50MHz),
    .CLKB(clock_50MHz),
    .ENA(analyzer4_clock_OBUF_583),
    .ENB(\cpu/msel_inv ),
    .SSRA(analyzer1_data_0_OBUF_547),
    .SSRB(analyzer1_data_0_OBUF_547),
    .WEA(\cpu/werf ),
    .WEB(analyzer1_data_0_OBUF_547),
    .ADDRA({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, \cpu/wa [4], \cpu/wa [3], 
\cpu/wa [2], \cpu/wa [1], \cpu/wa [0]}),
    .ADDRB({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, mdin[4], mdin[3], mdin[2], 
mdin[1], mdin[0]}),
    .DIA({\cpu/wd [31], \cpu/wd [30], \cpu/wd [29], \cpu/wd [28], \cpu/wd [27], \cpu/wd [26], \cpu/wd [25], \cpu/wd [24], \cpu/wd [23], \cpu/wd [22], 
\cpu/wd [21], \cpu/wd [20], \cpu/wd [19], \cpu/wd [18], \cpu/wd [17], \cpu/wd [16], \cpu/wd [15], \cpu/wd [14], \cpu/wd [13], \cpu/wd [12], 
\cpu/wd [11], \cpu/wd [10], \cpu/wd [9], \cpu/wd [8], \cpu/wd [7], \cpu/wd [6], \cpu/wd [5], \cpu/wd [4], \cpu/wd [3], \cpu/wd [2], \cpu/wd [1], 
\cpu/wd [0]}),
    .DIB({\NLW_cpu/Mram_regfile_DIB<31>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<30>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<29>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<28>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<27>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<26>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<25>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<24>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<23>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<22>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<21>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<20>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<19>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<18>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<17>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<16>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<15>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<14>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<13>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<12>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<11>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<10>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<9>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<8>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<7>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<6>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<5>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<4>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<3>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<2>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DIB<1>_UNCONNECTED , \NLW_cpu/Mram_regfile_DIB<0>_UNCONNECTED }),
    .DIPA({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547}),
    .DIPB({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547}),
    .DOA({\NLW_cpu/Mram_regfile_DOA<31>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<30>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<29>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<28>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<27>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<26>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<25>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<24>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<23>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<22>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<21>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<20>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<19>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<18>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<17>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<16>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<15>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<14>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<13>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<12>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<11>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<10>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<9>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<8>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<7>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<6>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<5>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<4>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<3>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<2>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOA<1>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_cpu/Mram_regfile_DOPA<3>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOPA<2>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOPA<1>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOPA<0>_UNCONNECTED }),
    .DOB({\cpu/_varindex0000 [31], \cpu/_varindex0000 [30], \cpu/_varindex0000 [29], \cpu/_varindex0000 [28], \cpu/_varindex0000 [27], 
\cpu/_varindex0000 [26], \cpu/_varindex0000 [25], \cpu/_varindex0000 [24], \cpu/_varindex0000 [23], \cpu/_varindex0000 [22], \cpu/_varindex0000 [21], 
\cpu/_varindex0000 [20], \cpu/_varindex0000 [19], \cpu/_varindex0000 [18], \cpu/_varindex0000 [17], \cpu/_varindex0000 [16], \cpu/_varindex0000 [15], 
\cpu/_varindex0000 [14], \cpu/_varindex0000 [13], \cpu/_varindex0000 [12], \cpu/_varindex0000 [11], \cpu/_varindex0000 [10], \cpu/_varindex0000 [9], 
\cpu/_varindex0000 [8], \cpu/_varindex0000 [7], \cpu/_varindex0000 [6], \cpu/_varindex0000 [5], \cpu/_varindex0000 [4], \cpu/_varindex0000 [3], 
\cpu/_varindex0000 [2], \cpu/_varindex0000 [1], \cpu/_varindex0000 [0]}),
    .DOPB({\NLW_cpu/Mram_regfile_DOPB<3>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOPB<2>_UNCONNECTED , \NLW_cpu/Mram_regfile_DOPB<1>_UNCONNECTED , 
\NLW_cpu/Mram_regfile_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S4_S18 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 4'h0 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 4'h0 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \dpy/b/mlo  (
    .CLKA(clock_50MHz),
    .CLKB(clock_50MHz),
    .ENA(analyzer4_clock_OBUF_583),
    .ENB(analyzer4_clock_OBUF_583),
    .SSRA(analyzer1_data_0_OBUF_547),
    .SSRB(analyzer1_data_0_OBUF_547),
    .WEA(analyzer1_data_0_OBUF_547),
    .WEB(_and0001),
    .ADDRA({\dpy/char_addr [11], \dpy/char_addr [10], \dpy/char_addr [9], \dpy/char_addr [8], \dpy/char_addr [7], \dpy/char_addr [6], 
\dpy/char_addr [5], \dpy/char_addr [4], \dpy/char_addr [3], \dpy/char_addr [2], \dpy/char_addr [1], \dpy/char_addr [0]}),
    .ADDRB({ma[11], ma[10], ma[9], ma[8], ma[7], ma[6], ma[5], ma[4], ma[3], ma[2]}),
    .DIA({\NLW_dpy/b/mlo_DIA<3>_UNCONNECTED , \NLW_dpy/b/mlo_DIA<2>_UNCONNECTED , \NLW_dpy/b/mlo_DIA<1>_UNCONNECTED , 
\NLW_dpy/b/mlo_DIA<0>_UNCONNECTED }),
    .DIB({mdout[27], mdout[26], mdout[25], mdout[24], mdout[19], mdout[18], mdout[17], mdout[16], mdout[11], mdout[10], mdout[9], mdout[8], mdout[3], 
mdout[2], mdout[1], mdout[0]}),
    .DIPB({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547}),
    .DOA({\dpy/char [3], \dpy/char [2], \dpy/char [1], \dpy/char [0]}),
    .DOB({dpyout[27], dpyout[26], dpyout[25], dpyout[24], dpyout[19], dpyout[18], dpyout[17], dpyout[16], dpyout[11], dpyout[10], dpyout[9], dpyout[8]
, dpyout[3], dpyout[2], dpyout[1], dpyout[0]}),
    .DOPB({\NLW_dpy/b/mlo_DOPB<1>_UNCONNECTED , \NLW_dpy/b/mlo_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S4_S18 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 4'h0 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 4'h0 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \dpy/b/mhi  (
    .CLKA(clock_50MHz),
    .CLKB(clock_50MHz),
    .ENA(analyzer4_clock_OBUF_583),
    .ENB(analyzer4_clock_OBUF_583),
    .SSRA(analyzer1_data_0_OBUF_547),
    .SSRB(analyzer1_data_0_OBUF_547),
    .WEA(analyzer1_data_0_OBUF_547),
    .WEB(_and0001),
    .ADDRA({\dpy/char_addr [11], \dpy/char_addr [10], \dpy/char_addr [9], \dpy/char_addr [8], \dpy/char_addr [7], \dpy/char_addr [6], 
\dpy/char_addr [5], \dpy/char_addr [4], \dpy/char_addr [3], \dpy/char_addr [2], \dpy/char_addr [1], \dpy/char_addr [0]}),
    .ADDRB({ma[11], ma[10], ma[9], ma[8], ma[7], ma[6], ma[5], ma[4], ma[3], ma[2]}),
    .DIA({\NLW_dpy/b/mhi_DIA<3>_UNCONNECTED , \NLW_dpy/b/mhi_DIA<2>_UNCONNECTED , \NLW_dpy/b/mhi_DIA<1>_UNCONNECTED , 
\NLW_dpy/b/mhi_DIA<0>_UNCONNECTED }),
    .DIB({mdout[31], mdout[30], mdout[29], mdout[28], mdout[23], mdout[22], mdout[21], mdout[20], mdout[15], mdout[14], mdout[13], mdout[12], mdout[7]
, mdout[6], mdout[5], mdout[4]}),
    .DIPB({analyzer1_data_0_OBUF_547, analyzer1_data_0_OBUF_547}),
    .DOA({\dpy/char [7], \dpy/char [6], \dpy/char [5], \dpy/char [4]}),
    .DOB({dpyout[31], dpyout[30], dpyout[29], dpyout[28], dpyout[23], dpyout[22], dpyout[21], dpyout[20], dpyout[15], dpyout[14], dpyout[13], 
dpyout[12], dpyout[7], dpyout[6], dpyout[5], dpyout[4]}),
    .DOPB({\NLW_dpy/b/mhi_DOPB<1>_UNCONNECTED , \NLW_dpy/b/mhi_DOPB<0>_UNCONNECTED })
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dpy/hsyncoff2  (
    .I0(\dpy/hcount [1]),
    .I1(\dpy/hcount [6]),
    .I2(\dpy/hcount [2]),
    .I3(\dpy/hcount [5]),
    .O(\dpy/hsyncoff1_1875 )
  );
  MUXF5   \dpy/hsyncoff_f5  (
    .I0(analyzer1_data_0_OBUF_547),
    .I1(\dpy/hsyncoff1_1875 ),
    .S(\dpy/N2 ),
    .O(\dpy/hsyncoff )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \hexdisp1/count_or000011  (
    .I0(\hexdisp1/count [1]),
    .I1(\hexdisp1/count [2]),
    .I2(\hexdisp1/count [0]),
    .I3(\hexdisp1/count [3]),
    .O(\hexdisp1/count_or00001 )
  );
  MUXF5   \hexdisp1/count_or00001_f5  (
    .I0(analyzer1_data_0_OBUF_547),
    .I1(\hexdisp1/count_or00001 ),
    .S(\hexdisp1/count [4]),
    .O(\hexdisp1/clock_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \hexdisp1/dot_index_mux0000<4>231  (
    .I0(\hexdisp1/dot_index [1]),
    .I1(\hexdisp1/dot_index [0]),
    .I2(\hexdisp1/dot_index [3]),
    .I3(\hexdisp1/dot_index [2]),
    .O(\hexdisp1/dot_index_mux0000<4>231_2199 )
  );
  MUXF5   \hexdisp1/dot_index_mux0000<4>23_f5  (
    .I0(analyzer4_clock_OBUF_583),
    .I1(\hexdisp1/dot_index_mux0000<4>231_2199 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/dot_index_mux0000<4>23 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \hexdisp1/Result<4>1  (
    .I0(\hexdisp1/count [2]),
    .I1(\hexdisp1/count [1]),
    .I2(\hexdisp1/count [0]),
    .I3(\hexdisp1/count [3]),
    .O(\hexdisp1/Result<4>2_2111 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hexdisp1/Result<4>2  (
    .I0(\hexdisp1/count [1]),
    .I1(\hexdisp1/count [2]),
    .I2(\hexdisp1/count [0]),
    .I3(\hexdisp1/count [3]),
    .O(\hexdisp1/Result<4>3 )
  );
  MUXF5   \hexdisp1/Result<4>_f5  (
    .I0(\hexdisp1/Result<4>3 ),
    .I1(\hexdisp1/Result<4>2_2111 ),
    .S(\hexdisp1/count [4]),
    .O(\hexdisp1/Result [4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hexdisp1/state_cmp_eq000011  (
    .I0(\hexdisp1/dot_index [2]),
    .I1(\hexdisp1/dot_index [1]),
    .I2(\hexdisp1/dot_index [0]),
    .I3(\hexdisp1/dot_index [3]),
    .O(\hexdisp1/state_cmp_eq00001 )
  );
  MUXF5   \hexdisp1/state_cmp_eq00001_f5  (
    .I0(analyzer1_data_0_OBUF_547),
    .I1(\hexdisp1/state_cmp_eq00001 ),
    .S(\hexdisp1/dot_index [4]),
    .O(\hexdisp1/N91 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hexdisp1/dot_index_mux0000<0>411  (
    .I0(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I1(\hexdisp1/dot_index [8]),
    .I2(\hexdisp1/dot_index [7]),
    .I3(\hexdisp1/dot_index [6]),
    .O(\hexdisp1/dot_index_mux0000<0>411_2182 )
  );
  MUXF5   \hexdisp1/dot_index_mux0000<0>41_f5  (
    .I0(analyzer1_data_0_OBUF_547),
    .I1(\hexdisp1/dot_index_mux0000<0>411_2182 ),
    .S(\hexdisp1/N96 ),
    .O(\hexdisp1/dot_index_mux0000<0>41 )
  );
  LUT4 #(
    .INIT ( 16'h4445 ))
  \hexdisp1/disp_data_out_mux0000781  (
    .I0(\hexdisp1/dot_index [5]),
    .I1(\hexdisp1/disp_data_out_mux000023_2162 ),
    .I2(\hexdisp1/dot_index [1]),
    .I3(\hexdisp1/Mmux__varindex0000_12_f6_2018 ),
    .O(\hexdisp1/disp_data_out_mux0000781_2164 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hexdisp1/disp_data_out_mux0000782  (
    .I0(\hexdisp1/dot_index [5]),
    .I1(\hexdisp1/Mmux__varindex0000_8_f7_2033 ),
    .O(\hexdisp1/disp_data_out_mux0000782_2165 )
  );
  MUXF5   \hexdisp1/disp_data_out_mux000078_f5  (
    .I0(\hexdisp1/disp_data_out_mux0000782_2165 ),
    .I1(\hexdisp1/disp_data_out_mux0000781_2164 ),
    .S(\hexdisp1/dot_index [2]),
    .O(\hexdisp1/disp_data_out_mux000078 )
  );
  LUT4 #(
    .INIT ( 16'hEE4C ))
  \hexdisp1/disp_data_out_mux00001691  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/disp_data_out_2156 ),
    .I2(\hexdisp1/state_FSM_FFd2_2240 ),
    .I3(\hexdisp1/disp_data_out_mux0000131_2158 ),
    .O(\hexdisp1/disp_data_out_mux0000169 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hexdisp1/disp_data_out_mux00001692  (
    .I0(\hexdisp1/state_FSM_FFd1_2239 ),
    .I1(\hexdisp1/disp_data_out_mux0000131_2158 ),
    .O(\hexdisp1/disp_data_out_mux00001691_2160 )
  );
  MUXF5   \hexdisp1/disp_data_out_mux0000169_f5  (
    .I0(\hexdisp1/disp_data_out_mux00001691_2160 ),
    .I1(\hexdisp1/disp_data_out_mux0000169 ),
    .S(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(\hexdisp1/disp_data_out_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \cpu/ctl/branch601  (
    .I0(\cpu/inst [29]),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/inst [30]),
    .O(\cpu/ctl/branch601_983 )
  );
  MUXF5   \cpu/ctl/branch60_f5  (
    .I0(\cpu/ctl/branch601_983 ),
    .I1(analyzer1_data_0_OBUF_547),
    .S(\cpu/inst [31]),
    .O(\cpu/ctl/branch60 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \cpu/rd1_cmp_eq00001  (
    .I0(\cpu/inst [17]),
    .I1(\cpu/inst [16]),
    .I2(\cpu/inst [19]),
    .I3(\cpu/inst [18]),
    .O(\cpu/rd1_cmp_eq00001_1228 )
  );
  MUXF5   \cpu/rd1_cmp_eq0000_f5  (
    .I0(analyzer1_data_0_OBUF_547),
    .I1(\cpu/rd1_cmp_eq00001_1228 ),
    .S(\cpu/inst [20]),
    .O(\cpu/rd1_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<24>1411  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(N208),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(\cpu/wd<24>1411_1448 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \cpu/wd<24>1412  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(N207),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .O(\cpu/wd<24>1412_1449 )
  );
  MUXF5   \cpu/wd<24>141_f5  (
    .I0(\cpu/wd<24>1412_1449 ),
    .I1(\cpu/wd<24>1411_1448 ),
    .S(\cpu/sr/shift_right<0>_bdd8 ),
    .O(\cpu/wd<24>141 )
  );
  LUT4 #(
    .INIT ( 16'h2F23 ))
  \hexdisp1/state_FSM_FFd3-In4211  (
    .I0(\hexdisp1/state_cmp_eq0001_2251 ),
    .I1(\hexdisp1/state_FSM_FFd2_2240 ),
    .I2(\hexdisp1/state_FSM_FFd1_2239 ),
    .I3(\hexdisp1/state_cmp_eq0000_2249 ),
    .O(\hexdisp1/state_FSM_FFd3-In421 )
  );
  MUXF5   \hexdisp1/state_FSM_FFd3-In421_f5  (
    .I0(\hexdisp1/state_FSM_FFd3-In421 ),
    .I1(analyzer1_data_0_OBUF_547),
    .S(\hexdisp1/state_FSM_FFd3_2244 ),
    .O(\hexdisp1/state_FSM_FFd3-In42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \cpu/wd<15>146_SW01  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/sr/shift_right<15>_bdd0 ),
    .O(\cpu/wd<15>146_SW0 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \cpu/wd<15>146_SW02  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/wd<14>98 ),
    .I2(\cpu/sr/shift_right<15>_bdd2 ),
    .I3(\cpu/wd<15>96_1375 ),
    .O(\cpu/wd<15>146_SW01_1370 )
  );
  MUXF5   \cpu/wd<15>146_SW0_f5  (
    .I0(\cpu/wd<15>146_SW01_1370 ),
    .I1(\cpu/wd<15>146_SW0 ),
    .S(\cpu/b [4]),
    .O(N433)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \hexdisp1/dot_index_mux0000<1>181  (
    .I0(\hexdisp1/dot_index [6]),
    .I1(\hexdisp1/N34 ),
    .I2(\hexdisp1/dot_index [5]),
    .I3(\hexdisp1/dot_index [7]),
    .O(\hexdisp1/dot_index_mux0000<1>181_2187 )
  );
  MUXF5   \hexdisp1/dot_index_mux0000<1>18_f5  (
    .I0(\hexdisp1/dot_index_mux0000<1>182 ),
    .I1(\hexdisp1/dot_index_mux0000<1>181_2187 ),
    .S(\hexdisp1/N91 ),
    .O(\hexdisp1/dot_index_mux0000<1>18 )
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \kbd/count_mux0000<1>1  (
    .I0(\kbd/ps2c_sync [1]),
    .I1(\kbd/count [2]),
    .I2(\kbd/count [1]),
    .I3(\kbd/count [0]),
    .O(\kbd/count_mux0000<1>1_2303 )
  );
  MUXF5   \kbd/count_mux0000<1>_f5  (
    .I0(analyzer1_data_0_OBUF_547),
    .I1(\kbd/count_mux0000<1>1_2303 ),
    .S(\kbd/ps2c_sync [2]),
    .O(\kbd/count_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/dot_index_mux0000<2>6911  (
    .I0(\hexdisp1/N74 ),
    .I1(N841),
    .O(\hexdisp1/dot_index_mux0000<2>691 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \hexdisp1/dot_index_mux0000<2>6912  (
    .I0(\hexdisp1/Maddsub_dot_index_share0000_cy [5]),
    .I1(\hexdisp1/state_cmp_eq0000_2249 ),
    .I2(\hexdisp1/N34 ),
    .I3(\hexdisp1/dot_index [6]),
    .O(\hexdisp1/dot_index_mux0000<2>6911_2192 )
  );
  MUXF5   \hexdisp1/dot_index_mux0000<2>691_f5  (
    .I0(\hexdisp1/dot_index_mux0000<2>6911_2192 ),
    .I1(\hexdisp1/dot_index_mux0000<2>691 ),
    .S(\hexdisp1/dot_index [7]),
    .O(\hexdisp1/dot_index_mux0000<2>69 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<14>74_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N818),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [14]),
    .O(\cpu/wd<14>74_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<14>74_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N817),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [14]),
    .O(\cpu/wd<14>74_SW01_1366 )
  );
  MUXF5   \cpu/wd<14>74_SW0_f5  (
    .I0(\cpu/wd<14>74_SW01_1366 ),
    .I1(\cpu/wd<14>74_SW0 ),
    .S(\cpu/b [14]),
    .O(N843)
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<15>73_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N794),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [15]),
    .O(\cpu/wd<15>73_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<15>73_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N793),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [15]),
    .O(\cpu/wd<15>73_SW01_1374 )
  );
  MUXF5   \cpu/wd<15>73_SW0_f5  (
    .I0(\cpu/wd<15>73_SW01_1374 ),
    .I1(\cpu/wd<15>73_SW0 ),
    .S(\cpu/b [15]),
    .O(N845)
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<11>73_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N800),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [11]),
    .O(\cpu/wd<11>73_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<11>73_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N799),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [11]),
    .O(\cpu/wd<11>73_SW01_1349 )
  );
  MUXF5   \cpu/wd<11>73_SW0_f5  (
    .I0(\cpu/wd<11>73_SW01_1349 ),
    .I1(\cpu/wd<11>73_SW0 ),
    .S(\cpu/N40 ),
    .O(N847)
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<12>74_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N809),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [12]),
    .O(\cpu/wd<12>74_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<12>74_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N808),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [12]),
    .O(\cpu/wd<12>74_SW01_1354 )
  );
  MUXF5   \cpu/wd<12>74_SW0_f5  (
    .I0(\cpu/wd<12>74_SW01_1354 ),
    .I1(\cpu/wd<12>74_SW0 ),
    .S(\cpu/N40 ),
    .O(N849)
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<13>74_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N815),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [13]),
    .O(\cpu/wd<13>74_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<13>74_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N814),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [13]),
    .O(\cpu/wd<13>74_SW01_1360 )
  );
  MUXF5   \cpu/wd<13>74_SW0_f5  (
    .I0(\cpu/wd<13>74_SW01_1360 ),
    .I1(\cpu/wd<13>74_SW0 ),
    .S(\cpu/N40 ),
    .O(N851)
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<6>74_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N803),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [6]),
    .O(\cpu/wd<6>74_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<6>74_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N802),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [6]),
    .O(\cpu/wd<6>74_SW01_1551 )
  );
  MUXF5   \cpu/wd<6>74_SW0_f5  (
    .I0(\cpu/wd<6>74_SW01_1551 ),
    .I1(\cpu/wd<6>74_SW0 ),
    .S(\cpu/N40 ),
    .O(N853)
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<4>74_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N806),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [4]),
    .O(\cpu/wd<4>74_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<4>74_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N805),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [4]),
    .O(\cpu/wd<4>74_SW01_1536 )
  );
  MUXF5   \cpu/wd<4>74_SW0_f5  (
    .I0(\cpu/wd<4>74_SW01_1536 ),
    .I1(\cpu/wd<4>74_SW0 ),
    .S(\cpu/N40 ),
    .O(N855)
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<5>74_SW01  (
    .I0(\cpu/wd_shift ),
    .I1(N812),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [5]),
    .O(\cpu/wd<5>74_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h1511 ))
  \cpu/wd<5>74_SW02  (
    .I0(\cpu/wd_shift ),
    .I1(N811),
    .I2(\cpu/wd_boole ),
    .I3(\cpu/pc_inc [5]),
    .O(\cpu/wd<5>74_SW01_1543 )
  );
  MUXF5   \cpu/wd<5>74_SW0_f5  (
    .I0(\cpu/wd<5>74_SW01_1543 ),
    .I1(\cpu/wd<5>74_SW0 ),
    .S(\cpu/N40 ),
    .O(N857)
  );
  LUT4 #(
    .INIT ( 16'h456D ))
  \cpu/wd<3>70_SW01  (
    .I0(\cpu/a [3]),
    .I1(\cpu/boole_and ),
    .I2(\cpu/b [3]),
    .I3(\cpu/N40 ),
    .O(\cpu/wd<3>70_SW0 )
  );
  MUXF5   \cpu/wd<3>70_SW0_f5  (
    .I0(\cpu/wd<3>70_SW01_1529 ),
    .I1(\cpu/wd<3>70_SW0 ),
    .S(\cpu/wd_boole ),
    .O(N865)
  );
  LUT4 #(
    .INIT ( 16'h456D ))
  \cpu/wd<2>71_SW01  (
    .I0(\cpu/a [2]),
    .I1(\cpu/boole_and ),
    .I2(\cpu/b [2]),
    .I3(\cpu/N40 ),
    .O(\cpu/wd<2>71_SW0 )
  );
  MUXF5   \cpu/wd<2>71_SW0_f5  (
    .I0(\cpu/wd<2>71_SW01_1502 ),
    .I1(\cpu/wd<2>71_SW0 ),
    .S(\cpu/wd_boole ),
    .O(N867)
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \cpu/ctl/wd_addsub  (
    .I0(\cpu/interrupt ),
    .I1(\cpu/inst [27]),
    .I2(\cpu/inst [29]),
    .I3(N81),
    .LO(N957),
    .O(\cpu/wd_addsub )
  );
  LUT4_D #(
    .INIT ( 16'h1030 ))
  \cpu/ctl/wd_cmp1  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [29]),
    .I2(\cpu/ctl/N6 ),
    .I3(\cpu/inst [26]),
    .LO(N958),
    .O(\cpu/wd_cmp )
  );
  LUT4_D #(
    .INIT ( 16'h02CE ))
  \cpu/ctl/asel_or0000  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/inst [31]),
    .I2(N86),
    .I3(N85),
    .LO(N959),
    .O(\cpu/ctl/asel_or0000_980 )
  );
  LUT4_D #(
    .INIT ( 16'h40C0 ))
  \cpu/ctl/wd_shift1  (
    .I0(\cpu/inst [26]),
    .I1(\cpu/ctl/N6 ),
    .I2(\cpu/inst [29]),
    .I3(\cpu/inst [27]),
    .LO(N960),
    .O(\cpu/wd_shift )
  );
  LUT4_D #(
    .INIT ( 16'h0200 ))
  \cpu/ctl/boole_and1  (
    .I0(\cpu/ctl/N13 ),
    .I1(\cpu/inst [26]),
    .I2(\cpu/interrupt ),
    .I3(\cpu/inst [31]),
    .LO(N961),
    .O(\cpu/boole_and )
  );
  LUT4_D #(
    .INIT ( 16'h0880 ))
  \cpu/ctl/shift_op1  (
    .I0(\cpu/inst [29]),
    .I1(\cpu/ctl/N6 ),
    .I2(\cpu/inst [26]),
    .I3(\cpu/inst [27]),
    .LO(N962),
    .O(\cpu/shift_op )
  );
  LUT4_D #(
    .INIT ( 16'h0800 ))
  \dpy/next_row_cmp_eq00001  (
    .I0(\dpy/v [3]),
    .I1(\dpy/v [0]),
    .I2(\dpy/v [2]),
    .I3(\dpy/v [1]),
    .LO(N963),
    .O(\dpy/next_row_cmp_eq0000 )
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \cpu/ctl/shift_sxt  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [26]),
    .I2(\cpu/interrupt ),
    .I3(N90),
    .LO(N964),
    .O(\cpu/shift_sxt )
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  \cpu/z12  (
    .I0(\cpu/_varindex0000 [6]),
    .I1(\cpu/_varindex0000 [7]),
    .I2(\cpu/_varindex0000 [8]),
    .I3(\cpu/_varindex0000 [9]),
    .LO(\cpu/z12_1579 )
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  \cpu/z101  (
    .I0(\cpu/_varindex0000 [25]),
    .I1(\cpu/_varindex0000 [26]),
    .I2(\cpu/_varindex0000 [27]),
    .I3(\cpu/_varindex0000 [28]),
    .LO(\cpu/z101_1577 )
  );
  LUT3_L #(
    .INIT ( 8'hF8 ))
  \cpu/z190  (
    .I0(\cpu/z76_1586 ),
    .I1(\cpu/z165_1582 ),
    .I2(\cpu/rd1_cmp_eq0000 ),
    .LO(\cpu/z )
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \cpu/npc_next<3>11  (
    .I0(\cpu/trap ),
    .I1(\cpu/interrupt ),
    .I2(\cpu/N95 ),
    .LO(N965),
    .O(\cpu/N33 )
  );
  LUT3_D #(
    .INIT ( 8'h08 ))
  \dpy/vreset11  (
    .I0(\dpy/vcount [0]),
    .I1(\dpy/vcount [1]),
    .I2(\dpy/vcount [5]),
    .LO(N966),
    .O(\dpy/N21 )
  );
  LUT3_D #(
    .INIT ( 8'h01 ))
  \dpy/rgb_or0000<0>114  (
    .I0(\dpy/hcount [5]),
    .I1(\dpy/hcount [6]),
    .I2(\dpy/hcount [1]),
    .LO(N967),
    .O(\dpy/N19 )
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \dpy/rgb_or0000<0>210  (
    .I0(\dpy/vcount [8]),
    .I1(\dpy/vcount [4]),
    .I2(\dpy/vcount [6]),
    .I3(\dpy/vcount [7]),
    .LO(N968),
    .O(\dpy/N23 )
  );
  LUT4_D #(
    .INIT ( 16'h0800 ))
  \dpy/hreset11  (
    .I0(\dpy/hcount [9]),
    .I1(\dpy/hcount [3]),
    .I2(\dpy/hcount [7]),
    .I3(\dpy/hcount [4]),
    .LO(N969),
    .O(\dpy/N22 )
  );
  LUT2_L #(
    .INIT ( 4'h4 ))
  \cpu/Sh4431  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .LO(\cpu/N51 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \cpu/Sh4421  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .LO(\cpu/N47 )
  );
  LUT4_D #(
    .INIT ( 16'h3210 ))
  \cpu/Sh391  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh7_806 ),
    .I3(\cpu/Sh3_789 ),
    .LO(N970),
    .O(\cpu/Sh39 )
  );
  LUT4_D #(
    .INIT ( 16'h3210 ))
  \cpu/Sh381  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh6_805 ),
    .I3(\cpu/Sh2_782 ),
    .LO(N971),
    .O(\cpu/Sh38 )
  );
  LUT4_D #(
    .INIT ( 16'h3210 ))
  \cpu/Sh371  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh5_804 ),
    .I3(\cpu/Sh1_771 ),
    .LO(N972),
    .O(\cpu/Sh37 )
  );
  LUT4_L #(
    .INIT ( 16'hFF2E ))
  \cpu/npc_next<2>16  (
    .I0(\cpu/npc_inc [2]),
    .I1(\cpu/interrupt ),
    .I2(ps2out[8]),
    .I3(\cpu/trap ),
    .LO(\cpu/npc_next<2>16_1150 )
  );
  LUT4_D #(
    .INIT ( 16'hF7FF ))
  \cpu/ctl/csel_SW0  (
    .I0(\cpu/inst [28]),
    .I1(\cpu/inst [30]),
    .I2(\cpu/inst [31]),
    .I3(\cpu/inst [29]),
    .LO(N973),
    .O(N113)
  );
  LUT4_D #(
    .INIT ( 16'h000E ))
  \cpu/ctl/csel  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [26]),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N974),
    .O(\cpu/asel )
  );
  LUT4_L #(
    .INIT ( 16'hA280 ))
  \cpu/wd<7>135  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<23>_bdd0 ),
    .I3(\cpu/wd<7>103_1553 ),
    .LO(\cpu/wd<7>135_1554 )
  );
  LUT4_L #(
    .INIT ( 16'hF888 ))
  \cpu/wd<3>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[3]),
    .I2(\cpu/addsub [3]),
    .I3(\cpu/N34 ),
    .LO(\cpu/wd<3>4_1526 )
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  \cpu/wd<3>15  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/N37 ),
    .I3(\cpu/Sh3_789 ),
    .LO(\cpu/wd<3>15_1524 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<11>191  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<11>_bdd37 ),
    .I2(\cpu/sr/shift_right<11>_bdd36 ),
    .LO(N975),
    .O(\cpu/sr/shift_right<11>_bdd29 )
  );
  LUT4_D #(
    .INIT ( 16'h888C ))
  \cpu/sr/shift_right<11>41  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b<0>1_940 ),
    .LO(N976),
    .O(\cpu/sr/shift_right<11>_bdd6 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<11>121  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<11>_bdd24 ),
    .I2(\cpu/sr/shift_right<11>_bdd23 ),
    .LO(N977),
    .O(\cpu/sr/shift_right<11>_bdd16 )
  );
  LUT2_L #(
    .INIT ( 4'h6 ))
  \cpu/Mxor_xb_Result<31>1  (
    .I0(\cpu/b [31]),
    .I1(\cpu/addsub_op ),
    .LO(\cpu/xb [31])
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh25_SW1  (
    .I0(\cpu/a [22]),
    .I1(\cpu/a [24]),
    .I2(\cpu/b [1]),
    .LO(N978),
    .O(N129)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh24_SW1  (
    .I0(\cpu/a [21]),
    .I1(\cpu/a [23]),
    .I2(\cpu/b<1>1_952 ),
    .LO(N979),
    .O(N132)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh21_SW1  (
    .I0(\cpu/a [18]),
    .I1(\cpu/a [20]),
    .I2(\cpu/b [1]),
    .LO(N980),
    .O(N141)
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/Sh21  (
    .I0(\cpu/b [0]),
    .I1(N138),
    .I2(N141),
    .LO(N981),
    .O(\cpu/Sh21_784 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh19_SW1  (
    .I0(\cpu/a [16]),
    .I1(\cpu/a [18]),
    .I2(\cpu/b<1>1_952 ),
    .LO(N982),
    .O(N147)
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/Sh17_SW1  (
    .I0(\cpu/a [16]),
    .I1(\cpu/a [14]),
    .I2(\cpu/b [1]),
    .LO(N983),
    .O(N153)
  );
  LUT3_D #(
    .INIT ( 8'hD8 ))
  \cpu/Sh16  (
    .I0(\cpu/b [0]),
    .I1(N156),
    .I2(N153),
    .LO(N984),
    .O(\cpu/Sh16_778 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<1>61  (
    .I0(\cpu/a [8]),
    .I1(\cpu/a [7]),
    .I2(\cpu/b [0]),
    .LO(N985),
    .O(\cpu/sr/shift_right<1>_bdd9 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<1>51  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<1>_bdd10 ),
    .I2(\cpu/sr/shift_right<1>_bdd9 ),
    .LO(N986),
    .O(\cpu/sr/shift_right<1>_bdd1 )
  );
  LUT3_D #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<13>91  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<11>_bdd24 ),
    .I2(\cpu/sr/shift_right<11>_bdd31 ),
    .LO(N987),
    .O(\cpu/sr/shift_right<13>_bdd14 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<13>71  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<11>_bdd23 ),
    .I2(\cpu/sr/shift_right<11>_bdd19 ),
    .LO(N988),
    .O(\cpu/sr/shift_right<13>_bdd10 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<13>61  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<11>_bdd18 ),
    .I2(\cpu/sr/shift_right<11>_bdd11 ),
    .LO(N989),
    .O(\cpu/sr/shift_right<13>_bdd9 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<13>101  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<11>_bdd36 ),
    .I2(\cpu/sr/shift_right<11>_bdd32 ),
    .LO(N990),
    .O(\cpu/sr/shift_right<13>_bdd15 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>71  (
    .I0(\cpu/a [28]),
    .I1(\cpu/a [27]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N991),
    .O(\cpu/sr/shift_right<11>_bdd11 )
  );
  LUT3_D #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<11>31  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<11>_bdd6 ),
    .I2(\cpu/sr/shift_right<11>_bdd7 ),
    .LO(N992),
    .O(\cpu/sr/shift_right<11>_bdd4 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>211  (
    .I0(\cpu/a [12]),
    .I1(\cpu/a [11]),
    .I2(\cpu/b [0]),
    .LO(N993),
    .O(\cpu/sr/shift_right<11>_bdd37 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>181  (
    .I0(\cpu/a [16]),
    .I1(\cpu/a [15]),
    .I2(\cpu/b [0]),
    .LO(N994),
    .O(\cpu/sr/shift_right<11>_bdd32 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<11>111  (
    .I0(\cpu/a [24]),
    .I1(\cpu/a [23]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N995),
    .O(\cpu/sr/shift_right<11>_bdd19 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<10>91  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<0>_bdd31 ),
    .I2(\cpu/sr/shift_right<0>_bdd27 ),
    .LO(N996),
    .O(\cpu/sr/shift_right<10>_bdd14 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/sr/shift_right<10>61  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<0>_bdd18 ),
    .I2(\cpu/sr/shift_right<0>_bdd12 ),
    .LO(N997),
    .O(\cpu/sr/shift_right<10>_bdd9 )
  );
  LUT3_D #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<10>121  (
    .I0(\cpu/b [1]),
    .I1(\cpu/sr/shift_right<0>_bdd40 ),
    .I2(\cpu/sr/shift_right<0>_bdd44 ),
    .LO(N998),
    .O(\cpu/sr/shift_right<10>_bdd19 )
  );
  LUT4_L #(
    .INIT ( 16'hF5E4 ))
  \cpu/wd<23>98  (
    .I0(\cpu/b [4]),
    .I1(\cpu/wd<23>76_1443 ),
    .I2(\cpu/Sh39 ),
    .I3(\cpu/wd<23>71_1442 ),
    .LO(\cpu/wd<23>98_1444 )
  );
  LUT4_L #(
    .INIT ( 16'hC8C0 ))
  \cpu/wd<23>157  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/N35 ),
    .I2(\cpu/wd<23>118_1438 ),
    .I3(\cpu/wd<23>135_1439 ),
    .LO(\cpu/wd<23>157_1440 )
  );
  LUT4_L #(
    .INIT ( 16'hFEFC ))
  \cpu/wd<27>164  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/wd<27>55_1472 ),
    .I2(\cpu/wd<27>109_1469 ),
    .I3(\cpu/wd<27>152_1470 ),
    .LO(\cpu/wd<27>164_1471 )
  );
  LUT4_L #(
    .INIT ( 16'hA820 ))
  \cpu/wd<31>77  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<15>_bdd0 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .LO(\cpu/wd<31>77_1518 )
  );
  LUT4_L #(
    .INIT ( 16'hF3E2 ))
  \cpu/wd<31>162  (
    .I0(\cpu/wd<31>97_1520 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh47 ),
    .I3(\cpu/wd<31>126_1514 ),
    .LO(\cpu/wd<31>162_1515 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh9_SW0  (
    .I0(\cpu/a [7]),
    .I1(\cpu/a [9]),
    .I2(\cpu/b [1]),
    .LO(N999),
    .O(N166)
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/Sh9_SW1  (
    .I0(\cpu/a [8]),
    .I1(\cpu/a [6]),
    .I2(\cpu/b [1]),
    .LO(N1000),
    .O(N167)
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/Sh9  (
    .I0(\cpu/b [0]),
    .I1(N166),
    .I2(N167),
    .LO(N1001),
    .O(\cpu/Sh9_808 )
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/Sh7_SW1  (
    .I0(\cpu/a [6]),
    .I1(\cpu/a [4]),
    .I2(\cpu/b<1>1_952 ),
    .LO(N1002),
    .O(N173)
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/Sh6_SW1  (
    .I0(\cpu/a [5]),
    .I1(\cpu/a [3]),
    .I2(\cpu/b [1]),
    .LO(N1003),
    .O(N176)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh5_SW1  (
    .I0(\cpu/a [2]),
    .I1(\cpu/a [4]),
    .I2(\cpu/b [1]),
    .LO(N1004),
    .O(N179)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh15_SW1  (
    .I0(\cpu/a [12]),
    .I1(\cpu/a [14]),
    .I2(\cpu/b<1>1_952 ),
    .LO(N1005),
    .O(N188)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  \cpu/Sh14_SW1  (
    .I0(\cpu/a [11]),
    .I1(\cpu/a [13]),
    .I2(\cpu/b<1>1_952 ),
    .LO(N191)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/Sh11_SW1  (
    .I0(\cpu/a [8]),
    .I1(\cpu/a [10]),
    .I2(\cpu/b<1>1_952 ),
    .LO(N1006),
    .O(N200)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<0>271  (
    .I0(\cpu/a [5]),
    .I1(\cpu/a [4]),
    .I2(\cpu/b [0]),
    .LO(N1007),
    .O(\cpu/sr/shift_right<0>_bdd50 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<0>261  (
    .I0(\cpu/a [7]),
    .I1(\cpu/a [6]),
    .I2(\cpu/b [0]),
    .LO(N1008),
    .O(\cpu/sr/shift_right<0>_bdd49 )
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/sr/shift_right<0>231  (
    .I0(\cpu/a [10]),
    .I1(\cpu/a [11]),
    .I2(\cpu/b [0]),
    .LO(N1009),
    .O(\cpu/sr/shift_right<0>_bdd44 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<0>211  (
    .I0(\cpu/a [13]),
    .I1(\cpu/a [12]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N1010),
    .O(\cpu/sr/shift_right<0>_bdd40 )
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/sr/shift_right<0>201  (
    .I0(\cpu/a [14]),
    .I1(\cpu/a [15]),
    .I2(\cpu/b [0]),
    .LO(N1011),
    .O(\cpu/sr/shift_right<0>_bdd39 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<0>171  (
    .I0(\cpu/a [17]),
    .I1(\cpu/a [16]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N1012),
    .O(\cpu/sr/shift_right<0>_bdd32 )
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/sr/shift_right<0>141  (
    .I0(\cpu/a [20]),
    .I1(\cpu/a [21]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N1013),
    .O(\cpu/sr/shift_right<0>_bdd27 )
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/sr/shift_right<0>101  (
    .I0(\cpu/a [24]),
    .I1(\cpu/a [25]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N1014),
    .O(\cpu/sr/shift_right<0>_bdd19 )
  );
  LUT4_L #(
    .INIT ( 16'hAA80 ))
  \cpu/wd<6>134  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<22>_bdd0 ),
    .I3(\cpu/wd<6>115_1546 ),
    .LO(\cpu/wd<6>134_1547 )
  );
  LUT4_L #(
    .INIT ( 16'hFEFC ))
  \cpu/wd<30>187  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/wd<30>55_1509 ),
    .I2(\cpu/wd<30>148_1506 ),
    .I3(\cpu/wd<30>176_1507 ),
    .LO(\cpu/wd<30>187_1508 )
  );
  LUT4_L #(
    .INIT ( 16'hF888 ))
  \cpu/wd<24>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[24]),
    .I2(\cpu/addsub [24]),
    .I3(\cpu/N34 ),
    .LO(\cpu/wd<24>4_1450 )
  );
  LUT4_L #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<18>122  (
    .I0(\cpu/N49 ),
    .I1(\cpu/wd<18>55_1394 ),
    .I2(\cpu/wd<18>89_1396 ),
    .I3(\cpu/wd<18>68_1395 ),
    .LO(\cpu/wd<18>122_1391 )
  );
  LUT4_L #(
    .INIT ( 16'hA820 ))
  \cpu/wd<16>144  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<0>_bdd0 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .LO(\cpu/wd<16>144_1378 )
  );
  LUT4_D #(
    .INIT ( 16'hFE10 ))
  \cpu/sr/shift_right<14>2  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/sr/shift_right<10>_bdd8 ),
    .I3(\cpu/sr/shift_right<10>_bdd4 ),
    .LO(N1015),
    .O(\cpu/sr/shift_right<14>_bdd0 )
  );
  LUT3_D #(
    .INIT ( 8'hCA ))
  \cpu/sr/shift_right<10>5_SW0  (
    .I0(\cpu/a [30]),
    .I1(\cpu/a [31]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N1016),
    .O(N210)
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \cpu/wd<13>86  (
    .I0(\cpu/shift_sxt ),
    .I1(\cpu/a [31]),
    .I2(\cpu/b [3]),
    .LO(N1017),
    .O(\cpu/wd<10>84 )
  );
  LUT4_L #(
    .INIT ( 16'hA0C0 ))
  \cpu/wd<1>89  (
    .I0(\cpu/a [4]),
    .I1(\cpu/a [3]),
    .I2(\cpu/b [1]),
    .I3(\cpu/b [0]),
    .LO(\cpu/wd<1>89_1412 )
  );
  LUT4_L #(
    .INIT ( 16'hF888 ))
  \cpu/wd<25>4  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(mdin[25]),
    .I2(\cpu/addsub [25]),
    .I3(\cpu/N34 ),
    .LO(\cpu/wd<25>4_1457 )
  );
  LUT4_L #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<17>122  (
    .I0(\cpu/N49 ),
    .I1(\cpu/wd<17>55_1387 ),
    .I2(\cpu/wd<17>89_1389 ),
    .I3(\cpu/wd<17>68_1388 ),
    .LO(\cpu/wd<17>122_1384 )
  );
  LUT4_L #(
    .INIT ( 16'h3320 ))
  \cpu/wd<29>186  (
    .I0(\cpu/wd<14>98 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<13>_bdd4 ),
    .I3(\cpu/wd<10>84 ),
    .LO(\cpu/wd<29>186_1487 )
  );
  LUT3_D #(
    .INIT ( 8'hD8 ))
  \cpu/sr/shift_right<17>31  (
    .I0(\cpu/b [2]),
    .I1(\cpu/sr/shift_right<13>_bdd6 ),
    .I2(\cpu/sr/shift_right<13>_bdd9 ),
    .LO(N1018),
    .O(\cpu/sr/shift_right<17>_bdd2 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \cpu/sr/shift_right<0>61  (
    .I0(\cpu/a [29]),
    .I1(\cpu/a [28]),
    .I2(\cpu/b<0>1_940 ),
    .LO(N1019),
    .O(\cpu/sr/shift_right<0>_bdd12 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \cpu/b<15>_SW0  (
    .I0(\cpu/N42 ),
    .I1(\cpu/asel ),
    .LO(N221)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  \cpu/b<14>_SW0  (
    .I0(\cpu/inst [12]),
    .I1(\cpu/inst [14]),
    .I2(\cpu/asel ),
    .LO(N224)
  );
  LUT4_D #(
    .INIT ( 16'h5444 ))
  \cpu/npc_next<3>211  (
    .I0(\cpu/ctl/msel_986 ),
    .I1(\cpu/interrupt ),
    .I2(\cpu/addsub [3]),
    .I3(\cpu/branch ),
    .LO(N1020),
    .O(\cpu/npc_next<3>21_1163 )
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  \cpu/wd<0>61  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/N37 ),
    .I3(\cpu/Sh ),
    .LO(\cpu/wd<0>61_1335 )
  );
  LUT4_L #(
    .INIT ( 16'h0200 ))
  \cpu/wd<0>325  (
    .I0(\cpu/ctl/N6 ),
    .I1(\cpu/addsub [0]),
    .I2(\cpu/addsub [1]),
    .I3(\cpu/wd<0>310_1321 ),
    .LO(\cpu/wd<0>325_1322 )
  );
  LUT3_L #(
    .INIT ( 8'h01 ))
  \cpu/wd<0>388  (
    .I0(\cpu/addsub [16]),
    .I1(\cpu/addsub [15]),
    .I2(\cpu/addsub [22]),
    .LO(\cpu/wd<0>388_1324 )
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  \cpu/wd<0>431  (
    .I0(\cpu/addsub [6]),
    .I1(\cpu/addsub [7]),
    .I2(\cpu/addsub [20]),
    .I3(\cpu/addsub [13]),
    .LO(\cpu/wd<0>431_1327 )
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  \cpu/wd<0>490  (
    .I0(\cpu/addsub [4]),
    .I1(\cpu/addsub [5]),
    .I2(\cpu/addsub [19]),
    .I3(\cpu/addsub [12]),
    .LO(\cpu/wd<0>490_1329 )
  );
  LUT3_L #(
    .INIT ( 8'h01 ))
  \cpu/wd<0>539  (
    .I0(\cpu/addsub [3]),
    .I1(\cpu/addsub [2]),
    .I2(\cpu/addsub [9]),
    .LO(\cpu/wd<0>539_1332 )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \cpu/wd<0>589  (
    .I0(\cpu/wd<0>561_1333 ),
    .I1(\cpu/wd<0>520_1331 ),
    .I2(\cpu/wd<0>400_1326 ),
    .I3(\cpu/wd<0>449_1328 ),
    .LO(\cpu/wd<0>589_1334 )
  );
  LUT4_D #(
    .INIT ( 16'h0302 ))
  \cpu/npc_next<31>8  (
    .I0(\cpu/interrupt ),
    .I1(\cpu/branch ),
    .I2(\cpu/ctl/msel_986 ),
    .I3(\cpu/trap ),
    .LO(N1021),
    .O(\cpu/npc_next<31>8_1158 )
  );
  LUT4_D #(
    .INIT ( 16'h88B8 ))
  \cpu/b<11>  (
    .I0(N232),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [11]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1022),
    .O(\cpu/b [11])
  );
  LUT4_D #(
    .INIT ( 16'h0200 ))
  \cpu/ctl/mem_next  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/interrupt ),
    .I2(\cpu/inst [31]),
    .I3(N279),
    .LO(N1023),
    .O(\cpu/ctl/mem_next_985 )
  );
  LUT4_L #(
    .INIT ( 16'hEA40 ))
  rd_ps2_and0000_norst11 (
    .I0(\cpu/msel_next ),
    .I1(\cpu/npc_next [4]),
    .I2(\cpu/npc_next [5]),
    .I3(N283),
    .LO(rd_ps2_and0000_norst11_2536)
  );
  LUT4_L #(
    .INIT ( 16'hFE02 ))
  \cpu/ctl/msel_next1_SW0  (
    .I0(\cpu/inst [24]),
    .I1(\cpu/ctl/msel_1_987 ),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/inst [14]),
    .LO(N341)
  );
  LUT4_L #(
    .INIT ( 16'hFE02 ))
  \cpu/ctl/msel_next1_SW1  (
    .I0(\cpu/inst [23]),
    .I1(\cpu/ctl/msel_1_987 ),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/inst [13]),
    .LO(N343)
  );
  LUT4_L #(
    .INIT ( 16'hFE02 ))
  \cpu/ctl/msel_next1_SW2  (
    .I0(\cpu/inst [22]),
    .I1(\cpu/ctl/msel_1_987 ),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/inst [12]),
    .LO(N345)
  );
  LUT4_D #(
    .INIT ( 16'h7DBE ))
  \kbd/fifo_empty3_SW1  (
    .I0(\kbd/wptr_2_1_2339 ),
    .I1(\kbd/wptr_0_1_2335 ),
    .I2(\kbd/rptr [0]),
    .I3(\kbd/rptr [2]),
    .LO(N1024),
    .O(N359)
  );
  LUT4_L #(
    .INIT ( 16'hD080 ))
  \cpu/wd<28>72  (
    .I0(\cpu/b [0]),
    .I1(N156),
    .I2(\cpu/N54 ),
    .I3(N153),
    .LO(\cpu/wd<28>72_1481 )
  );
  LUT4_L #(
    .INIT ( 16'hD080 ))
  \cpu/wd<29>72  (
    .I0(\cpu/b [0]),
    .I1(N153),
    .I2(\cpu/N54 ),
    .I3(N150),
    .LO(\cpu/wd<29>72_1492 )
  );
  LUT4_D #(
    .INIT ( 16'h88B8 ))
  \cpu/b<12>  (
    .I0(N275),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [12]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1025),
    .O(\cpu/b [12])
  );
  LUT3_D #(
    .INIT ( 8'h02 ))
  \cpu/Sh1  (
    .I0(\cpu/a [0]),
    .I1(\cpu/b [0]),
    .I2(\cpu/b [1]),
    .LO(N1026),
    .O(\cpu/Sh )
  );
  LUT4_L #(
    .INIT ( 16'hFFEC ))
  \cpu/wd<28>202  (
    .I0(\cpu/N49 ),
    .I1(\cpu/wd<28>55_1479 ),
    .I2(\cpu/wd<28>136_1476 ),
    .I3(N364),
    .LO(\cpu/wd<28>202_1477 )
  );
  LUT4_L #(
    .INIT ( 16'hAC0C ))
  \cpu/b<16>_SW2  (
    .I0(\cpu/inst [14]),
    .I1(\cpu/N42 ),
    .I2(\cpu/asel ),
    .I3(\cpu/bsel ),
    .LO(N366)
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \cpu/ctl/asel_and0000_SW0_SW0  (
    .I0(\dbreset/clean_1_1625 ),
    .I1(\cpu/npc [31]),
    .I2(\cpu/ctl/annul_978 ),
    .I3(\cpu/ctl/msel_1_987 ),
    .LO(N1027),
    .O(N369)
  );
  LUT4_D #(
    .INIT ( 16'h0203 ))
  \cpu/ctl/asel_and0000  (
    .I0(\dpy/irq_60Hz_1877 ),
    .I1(N369),
    .I2(power_on_reset),
    .I3(ps2out[8]),
    .LO(N1028),
    .O(\cpu/interrupt )
  );
  LUT4_L #(
    .INIT ( 16'hEEEC ))
  \cpu/wd<26>119_SW0  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/wd<26>55_1464 ),
    .I2(\cpu/wd<26>142_1462 ),
    .I3(\cpu/wd<19>131 ),
    .LO(N371)
  );
  LUT4_L #(
    .INIT ( 16'hFFEC ))
  \cpu/wd<29>213  (
    .I0(\cpu/N49 ),
    .I1(\cpu/wd<29>55_1490 ),
    .I2(\cpu/wd<29>136_1486 ),
    .I3(N373),
    .LO(\cpu/wd<29>213_1488 )
  );
  LUT4_D #(
    .INIT ( 16'h88B8 ))
  \cpu/b<5>  (
    .I0(N267),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [5]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1029),
    .O(\cpu/b [5])
  );
  LUT4_D #(
    .INIT ( 16'h88B8 ))
  \cpu/b<6>  (
    .I0(N269),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [6]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1030),
    .O(\cpu/b [6])
  );
  LUT4_D #(
    .INIT ( 16'h88B8 ))
  \cpu/b<13>  (
    .I0(N277),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [13]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1031),
    .O(\cpu/b [13])
  );
  LUT3_L #(
    .INIT ( 8'hFB ))
  \cpu/ctl/addsub_op_SW2  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [31]),
    .I2(\cpu/interrupt ),
    .LO(N417)
  );
  LUT4_D #(
    .INIT ( 16'hAABA ))
  \cpu/b<31>1  (
    .I0(\cpu/N42 ),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [31]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1032),
    .O(\cpu/b [31])
  );
  LUT4_L #(
    .INIT ( 16'hE040 ))
  \cpu/wd<31>98  (
    .I0(\cpu/b [0]),
    .I1(N144),
    .I2(\cpu/N54 ),
    .I3(N147),
    .LO(\cpu/wd<31>98_1521 )
  );
  LUT3_L #(
    .INIT ( 8'hBA ))
  \cpu/ctl/asel_and0000_SW0  (
    .I0(N369),
    .I1(\dpy/irq_60Hz_1877 ),
    .I2(ps2out[8]),
    .LO(N431)
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  rd_ps2_and0000_norst131_SW1 (
    .I0(ma[6]),
    .I1(ma[7]),
    .I2(ma[3]),
    .I3(ma[13]),
    .LO(N413)
  );
  LUT3_L #(
    .INIT ( 8'hDF ))
  rd_ps2_and0000_norst131_SW2_SW0 (
    .I0(ma[3]),
    .I1(ma[2]),
    .I2(rd_ps2_and0000_norst113_2538),
    .LO(N488)
  );
  LUT3_L #(
    .INIT ( 8'h80 ))
  rd_ps2_and0000_norst131_SW0_SW0 (
    .I0(ma[3]),
    .I1(ma[2]),
    .I2(rd_ps2_and0000_norst113_2538),
    .LO(N490)
  );
  LUT3_L #(
    .INIT ( 8'hEC ))
  \cpu/wd<19>146_SW0  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/wd<19>54_1402 ),
    .I2(\cpu/wd<19>137_1400 ),
    .LO(N497)
  );
  LUT4_L #(
    .INIT ( 16'hA280 ))
  \cpu/wd<0>208  (
    .I0(\cpu/shift_op ),
    .I1(\cpu/b [4]),
    .I2(\cpu/sr/shift_right<0>_bdd0 ),
    .I3(N499),
    .LO(\cpu/wd<0>208_1317 )
  );
  LUT4_D #(
    .INIT ( 16'hBB8B ))
  \cpu/Sh27_SW1_SW0  (
    .I0(N339),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [1]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1033),
    .O(N503)
  );
  LUT4_D #(
    .INIT ( 16'h0800 ))
  \cpu/b<15>11  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/ctl/bsel55_984 ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/inst [15]),
    .LO(N1034),
    .O(\cpu/N42 )
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \cpu/ctl/csel_SW1  (
    .I0(\cpu/inst [27]),
    .I1(\cpu/inst [26]),
    .LO(N1035),
    .O(N541)
  );
  LUT4_D #(
    .INIT ( 16'hABA8 ))
  \cpu/rd2_cmp_eq0000_SW0  (
    .I0(N285),
    .I1(power_on_reset),
    .I2(N553),
    .I3(N440),
    .LO(N1036),
    .O(N249)
  );
  LUT3_L #(
    .INIT ( 8'h7F ))
  \dpy/next_row<2>_SW2  (
    .I0(\dpy/next_row_cmp_eq0000 ),
    .I1(\dpy/row [1]),
    .I2(\dpy/row [0]),
    .LO(N557)
  );
  LUT3_L #(
    .INIT ( 8'h7F ))
  \dpy/next_row<5>_SW2  (
    .I0(\dpy/next_row_cmp_eq0000 ),
    .I1(\dpy/Madd_next_row_addsub0000_cy [3]),
    .I2(\dpy/row [4]),
    .LO(N559)
  );
  LUT4_D #(
    .INIT ( 16'hC0CA ))
  \cpu/a<31>1  (
    .I0(\cpu/_varindex0000 [31]),
    .I1(\cpu/pc_inc [31]),
    .I2(\cpu/asel ),
    .I3(\cpu/rd1_cmp_eq0000 ),
    .LO(N1037),
    .O(\cpu/a [31])
  );
  LUT2_L #(
    .INIT ( 4'h7 ))
  \dpy/next_row<1>_SW0  (
    .I0(\dpy/next_row_cmp_eq0000 ),
    .I1(\dpy/row [0]),
    .LO(N587)
  );
  LUT2_L #(
    .INIT ( 4'h7 ))
  \dpy/next_row<4>_SW0  (
    .I0(\dpy/next_row_cmp_eq0000 ),
    .I1(\dpy/Madd_next_row_addsub0000_cy [3]),
    .LO(N589)
  );
  LUT4_L #(
    .INIT ( 16'h0800 ))
  \dpy/next_row<3>_SW0  (
    .I0(\dpy/next_row_cmp_eq0000 ),
    .I1(\dpy/hreset_1872 ),
    .I2(\dpy/vcount_and0000 ),
    .I3(N591),
    .LO(N110)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<2>_SW0  (
    .I0(\cpu/inst [2]),
    .I1(N593),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1038),
    .O(N259)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<3>_SW0  (
    .I0(\cpu/inst [3]),
    .I1(N595),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1039),
    .O(N257)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<4>_SW2  (
    .I0(\cpu/inst [4]),
    .I1(N597),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1040),
    .O(N265)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<5>_SW2  (
    .I0(\cpu/inst [5]),
    .I1(N599),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1041),
    .O(N267)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<6>_SW2  (
    .I0(\cpu/inst [6]),
    .I1(N601),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1042),
    .O(N269)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<7>_SW0  (
    .I0(\cpu/inst [7]),
    .I1(N603),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1043),
    .O(N244)
  );
  LUT4_D #(
    .INIT ( 16'h555D ))
  \cpu/rd2<1>1_SW0  (
    .I0(\cpu/inst [1]),
    .I1(N541),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1044),
    .O(N339)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<8>_SW2  (
    .I0(\cpu/inst [8]),
    .I1(N626),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1045),
    .O(N271)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<9>_SW2  (
    .I0(\cpu/inst [9]),
    .I1(N628),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1046),
    .O(N273)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<10>_SW0  (
    .I0(\cpu/inst [10]),
    .I1(N630),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1047),
    .O(N234)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<11>_SW0  (
    .I0(\cpu/inst [11]),
    .I1(N632),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1048),
    .O(N232)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<12>_SW2  (
    .I0(\cpu/inst [12]),
    .I1(N634),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1049),
    .O(N275)
  );
  LUT4_D #(
    .INIT ( 16'hAAAC ))
  \cpu/b<13>_SW2  (
    .I0(\cpu/inst [13]),
    .I1(N636),
    .I2(\cpu/interrupt ),
    .I3(N113),
    .LO(N1050),
    .O(N277)
  );
  LUT3_L #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<13>14_SW0  (
    .I0(\cpu/npc_inc [13]),
    .I1(\cpu/npc_next<13>5_1100 ),
    .I2(\cpu/N33 ),
    .LO(N289)
  );
  LUT3_L #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<7>14_SW0  (
    .I0(\cpu/npc_inc [7]),
    .I1(\cpu/npc_next<7>5_1175 ),
    .I2(\cpu/N33 ),
    .LO(N301)
  );
  LUT4_L #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<10>73  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh42_797 ),
    .I3(\cpu/wd<10>55_1342 ),
    .LO(\cpu/wd<10>73_1343 )
  );
  LUT4_L #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<8>73  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh40_795 ),
    .I3(\cpu/wd<8>55_1561 ),
    .LO(\cpu/wd<8>73_1562 )
  );
  LUT4_L #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<9>73  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh41_796 ),
    .I3(\cpu/wd<9>55_1567 ),
    .LO(\cpu/wd<9>73_1568 )
  );
  LUT4_L #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<22>118  (
    .I0(\cpu/wd_shift ),
    .I1(\cpu/shift_op ),
    .I2(\cpu/wd<22>98_1436 ),
    .I3(\cpu/wd<22>55_1433 ),
    .LO(\cpu/wd<22>118_1430 )
  );
  LUT4_L #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<20>118  (
    .I0(\cpu/wd_shift ),
    .I1(\cpu/shift_op ),
    .I2(\cpu/wd<20>98_1420 ),
    .I3(\cpu/wd<20>55_1417 ),
    .LO(\cpu/wd<20>118_1414 )
  );
  LUT4_L #(
    .INIT ( 16'hFF20 ))
  \cpu/wd<21>118  (
    .I0(\cpu/wd_shift ),
    .I1(\cpu/shift_op ),
    .I2(\cpu/wd<21>98_1428 ),
    .I3(\cpu/wd<21>55_1425 ),
    .LO(\cpu/wd<21>118_1422 )
  );
  LUT4_L #(
    .INIT ( 16'hFFF8 ))
  \cpu/wd<26>87_SW0  (
    .I0(\cpu/N54 ),
    .I1(\cpu/Sh14_776 ),
    .I2(N659),
    .I3(\cpu/wd<26>71_1465 ),
    .LO(N652)
  );
  LUT4_L #(
    .INIT ( 16'hFD20 ))
  \cpu/ctl/mem_next_SW3_G  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/inst_31_1_1020 ),
    .I2(N387),
    .I3(\cpu/inst [15]),
    .LO(N682)
  );
  LUT4_L #(
    .INIT ( 16'hFD20 ))
  \cpu/ctl/mem_next_SW5_G  (
    .I0(\cpu/inst [30]),
    .I1(\cpu/inst_31_1_1020 ),
    .I2(N385),
    .I3(\cpu/inst [11]),
    .LO(N686)
  );
  LUT4_L #(
    .INIT ( 16'hEB30 ))
  \cpu/wd<23>55_SW0  (
    .I0(\cpu/N40 ),
    .I1(\cpu/boole_and ),
    .I2(\cpu/b [23]),
    .I3(\cpu/a [23]),
    .LO(N749)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<19>54_SW0  (
    .I0(\cpu/a [19]),
    .I1(\cpu/b [19]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N751)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<7>54_SW0  (
    .I0(\cpu/a [7]),
    .I1(\cpu/b [7]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N753)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<27>55_SW0  (
    .I0(\cpu/a [27]),
    .I1(\cpu/b [27]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N755)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<22>55_SW0  (
    .I0(\cpu/a [22]),
    .I1(\cpu/b [22]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N757)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<30>55_SW0  (
    .I0(\cpu/a [30]),
    .I1(\cpu/b [30]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N759)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<10>55_SW0  (
    .I0(\cpu/a [10]),
    .I1(\cpu/b [10]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N761)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<8>55_SW0  (
    .I0(\cpu/a [8]),
    .I1(\cpu/b [8]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N763)
  );
  LUT4_L #(
    .INIT ( 16'hEB30 ))
  \cpu/wd<24>55_SW0  (
    .I0(\cpu/N40 ),
    .I1(\cpu/boole_and ),
    .I2(\cpu/b [24]),
    .I3(\cpu/a [24]),
    .LO(N765)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<18>55_SW0  (
    .I0(\cpu/a [18]),
    .I1(\cpu/b [18]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N767)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<16>55_SW0  (
    .I0(\cpu/a [16]),
    .I1(\cpu/b [16]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N769)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<26>55_SW0  (
    .I0(\cpu/a [26]),
    .I1(\cpu/b [26]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N771)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<20>55_SW0  (
    .I0(\cpu/a [20]),
    .I1(\cpu/b [20]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N773)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<28>55_SW0  (
    .I0(\cpu/a [28]),
    .I1(\cpu/b [28]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N775)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<9>55_SW0  (
    .I0(\cpu/a [9]),
    .I1(\cpu/b [9]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N777)
  );
  LUT4_L #(
    .INIT ( 16'hEB30 ))
  \cpu/wd<25>55_SW0  (
    .I0(\cpu/N40 ),
    .I1(\cpu/boole_and ),
    .I2(\cpu/b [25]),
    .I3(\cpu/a [25]),
    .LO(N779)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<21>55_SW0  (
    .I0(\cpu/a [21]),
    .I1(\cpu/b [21]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N781)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<17>55_SW0  (
    .I0(\cpu/a [17]),
    .I1(\cpu/b [17]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N783)
  );
  LUT4_L #(
    .INIT ( 16'hAE86 ))
  \cpu/wd<29>55_SW0  (
    .I0(\cpu/a [29]),
    .I1(\cpu/b [29]),
    .I2(\cpu/boole_and ),
    .I3(\cpu/N40 ),
    .LO(N785)
  );
  LUT3_L #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<15>14_SW0  (
    .I0(\cpu/npc_inc [15]),
    .I1(\cpu/npc_next<15>5_1106 ),
    .I2(\cpu/N33 ),
    .LO(N313)
  );
  LUT3_L #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<12>14_SW0  (
    .I0(\cpu/npc_inc [12]),
    .I1(\cpu/npc_next<12>5_1097 ),
    .I2(\cpu/N33 ),
    .LO(N291)
  );
  LUT3_L #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<11>14_SW0  (
    .I0(\cpu/npc_inc [11]),
    .I1(\cpu/npc_next<11>5_1094 ),
    .I2(\cpu/N33 ),
    .LO(N293)
  );
  LUT3_L #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<10>14_SW0  (
    .I0(\cpu/npc_inc [10]),
    .I1(\cpu/npc_next<10>5_1091 ),
    .I2(\cpu/N33 ),
    .LO(N295)
  );
  LUT3_L #(
    .INIT ( 8'h13 ))
  \cpu/npc_next<9>14_SW0  (
    .I0(\cpu/npc_inc [9]),
    .I1(\cpu/npc_next<9>5_1181 ),
    .I2(\cpu/N33 ),
    .LO(N297)
  );
  LUT4_D #(
    .INIT ( 16'hFDFF ))
  \cpu/npc_next<31>16  (
    .I0(\cpu/ctl/branch46_981 ),
    .I1(\cpu/ctl/msel_986 ),
    .I2(\cpu/interrupt ),
    .I3(\cpu/ctl/branch60 ),
    .LO(N1051),
    .O(\cpu/npc_next<31>16_1157 )
  );
  LUT4_D #(
    .INIT ( 16'h0200 ))
  \cpu/wd<10>131  (
    .I0(\cpu/inst [29]),
    .I1(\cpu/inst [26]),
    .I2(\cpu/inst [27]),
    .I3(\cpu/ctl/N6 ),
    .LO(N1052),
    .O(\cpu/N49 )
  );
  LUT3_L #(
    .INIT ( 8'hFE ))
  \cpu/wd<28>157_SW0_SW0  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/b [4]),
    .LO(N787)
  );
  LUT4_D #(
    .INIT ( 16'h0020 ))
  \cpu/npc_next<3>0  (
    .I0(\cpu/npc_inc [3]),
    .I1(\cpu/interrupt ),
    .I2(\cpu/N95 ),
    .I3(\cpu/trap ),
    .LO(N1053),
    .O(\cpu/npc_next<3>0_1161 )
  );
  LUT4_L #(
    .INIT ( 16'h7BBF ))
  \cpu/wd<31>39_SW0  (
    .I0(\cpu/boole_and ),
    .I1(\cpu/wd_boole ),
    .I2(\cpu/b [31]),
    .I3(\cpu/a [31]),
    .LO(N796)
  );
  LUT4_L #(
    .INIT ( 16'h3210 ))
  \cpu/wd<20>71  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh20_783 ),
    .I3(\cpu/Sh16_778 ),
    .LO(\cpu/wd<20>71_1418 )
  );
  LUT4_L #(
    .INIT ( 16'h6240 ))
  \cpu/wd<28>71  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh20_783 ),
    .I3(\cpu/Sh24_786 ),
    .LO(\cpu/wd<28>71_1480 )
  );
  LUT4_L #(
    .INIT ( 16'h6240 ))
  \cpu/wd<29>71  (
    .I0(\cpu/b [2]),
    .I1(\cpu/b [3]),
    .I2(\cpu/Sh21_784 ),
    .I3(\cpu/Sh25_787 ),
    .LO(\cpu/wd<29>71_1491 )
  );
  LUT4_L #(
    .INIT ( 16'hF2F0 ))
  \cpu/wd<1>63  (
    .I0(\cpu/wd_boole ),
    .I1(\cpu/wd_shift ),
    .I2(\cpu/wd<1>61_1410 ),
    .I3(N822),
    .LO(\cpu/wd<1>63_1411 )
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  \cpu/wd<19>67  (
    .I0(\cpu/b [4]),
    .I1(\cpu/b [2]),
    .I2(\cpu/Sh3_789 ),
    .I3(\cpu/b [3]),
    .LO(\cpu/wd<19>67_1403 )
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  \cpu/wd<16>68  (
    .I0(\cpu/b [4]),
    .I1(\cpu/b [2]),
    .I2(\cpu/Sh ),
    .I3(\cpu/b [3]),
    .LO(\cpu/wd<16>68_1381 )
  );
  LUT4_L #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<14>74  (
    .I0(N843),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh46 ),
    .I3(\cpu/N49 ),
    .LO(\cpu/wd<14>74_1364 )
  );
  LUT4_L #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<15>73  (
    .I0(N845),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh47 ),
    .I3(\cpu/N49 ),
    .LO(\cpu/wd<15>73_1372 )
  );
  LUT4_L #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<11>73  (
    .I0(N847),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh43_798 ),
    .I3(\cpu/N49 ),
    .LO(\cpu/wd<11>73_1347 )
  );
  LUT4_L #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<12>74  (
    .I0(N849),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh44 ),
    .I3(\cpu/N49 ),
    .LO(\cpu/wd<12>74_1352 )
  );
  LUT4_L #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<13>74  (
    .I0(N851),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh45 ),
    .I3(\cpu/N49 ),
    .LO(\cpu/wd<13>74_1358 )
  );
  LUT4_L #(
    .INIT ( 16'hF2F0 ))
  \cpu/wd<4>74  (
    .I0(\cpu/N49 ),
    .I1(\cpu/b [4]),
    .I2(N855),
    .I3(\cpu/Sh36 ),
    .LO(\cpu/wd<4>74_1534 )
  );
  LUT4_L #(
    .INIT ( 16'hBAAA ))
  \cpu/wd<5>74  (
    .I0(N857),
    .I1(\cpu/b [4]),
    .I2(\cpu/Sh37 ),
    .I3(\cpu/N49 ),
    .LO(\cpu/wd<5>74_1541 )
  );
  LUT3_L #(
    .INIT ( 8'hF1 ))
  \cpu/wd<2>71  (
    .I0(\cpu/wd_shift ),
    .I1(N867),
    .I2(\cpu/wd<2>15_1497 ),
    .LO(\cpu/wd<2>71_1500 )
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/ctl/mem_next_SW01  (
    .I0(N279),
    .I1(\cpu/inst [14]),
    .I2(N672),
    .LO(N1054),
    .O(N403)
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/ctl/mem_next_SW11  (
    .I0(N279),
    .I1(\cpu/inst [13]),
    .I2(N674),
    .LO(N1055),
    .O(N405)
  );
  LUT3_D #(
    .INIT ( 8'hE4 ))
  \cpu/ctl/mem_next_SW21  (
    .I0(N279),
    .I1(\cpu/inst [12]),
    .I2(N676),
    .LO(N1056),
    .O(N407)
  );
  LUT4_D #(
    .INIT ( 16'h4474 ))
  \cpu/b<1>1_1  (
    .I0(N339),
    .I1(\cpu/bsel ),
    .I2(\cpu/_varindex0001 [1]),
    .I3(\cpu/rd2_cmp_eq0000_1229 ),
    .LO(N1057),
    .O(\cpu/b<1>1_952 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \hexdisp1/Mshreg_control_30  (
    .A0(analyzer1_data_0_OBUF_547),
    .A1(analyzer1_data_0_OBUF_547),
    .A2(analyzer4_clock_OBUF_583),
    .A3(analyzer1_data_0_OBUF_547),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .CLK(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/control[23] ),
    .Q(\hexdisp1/Mshreg_control_30_2078 )
  );
  FDE   \hexdisp1/control_30  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/Mshreg_control_30_2078 ),
    .Q(\hexdisp1/control_301_2139 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \hexdisp1/Mshreg_control_22  (
    .A0(analyzer1_data_0_OBUF_547),
    .A1(analyzer1_data_0_OBUF_547),
    .A2(analyzer4_clock_OBUF_583),
    .A3(analyzer1_data_0_OBUF_547),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .CLK(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/control[15] ),
    .Q(\hexdisp1/Mshreg_control_22_2077 )
  );
  FDE   \hexdisp1/control_22  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/Mshreg_control_22_2077 ),
    .Q(\hexdisp1/control_221_2135 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \hexdisp1/Mshreg_control_14  (
    .A0(analyzer1_data_0_OBUF_547),
    .A1(analyzer1_data_0_OBUF_547),
    .A2(analyzer4_clock_OBUF_583),
    .A3(analyzer1_data_0_OBUF_547),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .CLK(\hexdisp1/clock_2128 ),
    .D(\hexdisp1/control[7] ),
    .Q(\hexdisp1/Mshreg_control_14_2076 )
  );
  FDE   \hexdisp1/control_14  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/Mshreg_control_14_2076 ),
    .Q(\hexdisp1/control_141_2131 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \hexdisp1/Mshreg_control_6  (
    .A0(analyzer1_data_0_OBUF_547),
    .A1(analyzer1_data_0_OBUF_547),
    .A2(analyzer4_clock_OBUF_583),
    .A3(analyzer1_data_0_OBUF_547),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .CLK(\hexdisp1/clock_2128 ),
    .D(analyzer1_data_0_OBUF_547),
    .Q(\hexdisp1/Mshreg_control_6_2079 )
  );
  FDE   \hexdisp1/control_6  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/Mshreg_control_6_2079 ),
    .Q(\hexdisp1/control_61_2143 )
  );
  INV   \hexdisp1/dot_index_mux0000<1>182_INV_0  (
    .I(\hexdisp1/N34 ),
    .O(\hexdisp1/dot_index_mux0000<1>182 )
  );
  INV   \cpu/wd<3>70_SW02_INV_0  (
    .I(\cpu/pc_inc [3]),
    .O(\cpu/wd<3>70_SW01_1529 )
  );
  INV   \cpu/wd<2>71_SW02_INV_0  (
    .I(\cpu/pc_inc [2]),
    .O(\cpu/wd<2>71_SW01_1502 )
  );
  FDSE   \hexdisp1/dreset_shift1  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(analyzer1_data_0_OBUF_547),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/dreset_shift1_2220 )
  );
  FDSE   \hexdisp1/dreset_shift2  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/dreset_shift1_2220 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/dreset_shift2_2221 )
  );
  FDSE   \hexdisp1/dreset_shift3  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/dreset_shift2_2221 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/dreset_shift3_2222 )
  );
  FDSE   \hexdisp1/dreset_shift4  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/dreset_shift3_2222 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/dreset_shift4_2223 )
  );
  FDSE   \hexdisp1/dreset_shift5  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/dreset_shift4_2223 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/dreset_shift5_2224 )
  );
  FDSE   \hexdisp1/dreset_shift6  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/dreset_shift5_2224 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/dreset_shift6_2225 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/control_141  (
    .I0(\hexdisp1/control_141_2131 ),
    .I1(\hexdisp1/dreset_shift6_2225 ),
    .O(\hexdisp1/control_1411 )
  );
  FDSE   \hexdisp1/control_142  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_1411 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/control_142_2133 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/control_221  (
    .I0(\hexdisp1/control_221_2135 ),
    .I1(\hexdisp1/dreset_shift6_2225 ),
    .O(\hexdisp1/control_2211 )
  );
  FDSE   \hexdisp1/control_222  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_2211 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/control_222_2137 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/control_301  (
    .I0(\hexdisp1/control_301_2139 ),
    .I1(\hexdisp1/dreset_shift6_2225 ),
    .O(\hexdisp1/control_3011 )
  );
  FDSE   \hexdisp1/control_302  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_3011 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/control_302_2141 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hexdisp1/control_61  (
    .I0(\hexdisp1/control_61_2143 ),
    .I1(\hexdisp1/dreset_shift6_2225 ),
    .O(\hexdisp1/control_611 )
  );
  FDSE   \hexdisp1/control_62  (
    .C(\hexdisp1/clock_2128 ),
    .CE(\hexdisp1/state_cmp_eq0006 ),
    .D(\hexdisp1/control_611 ),
    .S(\hexdisp1/dreset ),
    .Q(\hexdisp1/control_62_2145 )
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

