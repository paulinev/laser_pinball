`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:18:06 11/26/2014 
// Design Name: 
// Module Name:    laser_projector_full 
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
module laser_projector_full(
	input wire clk, 
	input wire reset,
	input wire [7:0] dip_sw,
	input wire paddle_l,
	input wire paddle_r, //in case no accelerometers
	output wire [2:0] laser_rgb,
	output wire dac_miso,
	output wire dac_csn,
	output wire dac_latchn,
	output wire dac_sclk 
	//going to add camera stuff later
    );
	
	wire mwe_physics, mwe_laser;
	wire [30:0] irq_addr_physics, irq_addr_laser;
	
	wire [31:0] ma_physics,mdout_physics;
	wire [31:0] ma_laser, mdout_laser;
	
	reg [31:0] mdin_physics, mdin_laser;
	
	
	beta2 cpu_physics(clk, reset, irq_physics, irq_addr_physics, 
								ma_physics,mdin_physics, mdout_physics, mwe_physics);
								
	beta2 cpu_laser(clk, reset, irq_laser, irq_addr_laser, 
								ma_laser, mdin_laser, mdout_laser, mwe_laser);
								
	//decode memory addresses
	
	
	//read data 
	
	
	//select mdin
	
	
	
								
	


endmodule
