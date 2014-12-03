`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:40 12/02/2014
// Design Name:   i2c_master_top
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/i2c_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: i2c_master_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module i2c_tb;

	// Inputs
	reg wb_clk_i;
	reg wb_rst_i;
	reg arst_i;
	reg [2:0] wb_adr_i;
	reg [7:0] wb_dat_i;
	reg wb_we_i;
	reg wb_stb_i;
	reg wb_cyc_i;
	reg scl_pad_i;
	reg sda_pad_i;

	// Outputs
	wire [7:0] wb_dat_o;
	wire wb_ack_o;
	wire wb_inta_o;
	wire scl_pad_o;
	wire scl_padoen_o;
	wire sda_pad_o;
	wire sda_padoen_o;

	// Instantiate the Unit Under Test (UUT)
	i2c_master_top uut (
		.wb_clk_i(wb_clk_i), 
		.wb_rst_i(wb_rst_i), 
		.arst_i(arst_i), 
		.wb_adr_i(wb_adr_i), 
		.wb_dat_i(wb_dat_i), 
		.wb_dat_o(wb_dat_o), 
		.wb_we_i(wb_we_i), 
		.wb_stb_i(wb_stb_i), 
		.wb_cyc_i(wb_cyc_i), 
		.wb_ack_o(wb_ack_o), 
		.wb_inta_o(wb_inta_o), 
		.scl_pad_i(scl_pad_i), 
		.scl_pad_o(scl_pad_o), 
		.scl_padoen_o(scl_padoen_o), 
		.sda_pad_i(sda_pad_i), 
		.sda_pad_o(sda_pad_o), 
		.sda_padoen_o(sda_padoen_o)
	);
	always #5 wb_clk_i=~wb_clk_i;
	initial begin
		// Initialize Inputs
		wb_clk_i = 0;
		wb_rst_i = 0;
		arst_i = 1;
		wb_adr_i = 0;
		wb_dat_i = 0;
		wb_we_i = 0;
		wb_stb_i = 0;
		wb_cyc_i = 0;
		scl_pad_i = 0;
		sda_pad_i = 0;
		#5;
		// Wait 100 ns for global reset to finish
		#100;
		wb_rst_i= 1;
		#10;
		wb_cyc_i = 1; //always keep this asserted
		wb_rst_i = 0; 
		#40;
      wb_stb_i = 1; //set clk div
		wb_adr_i= 3'h0;
		wb_dat_i = 2;
		wb_we_i = 1; 
		#10;
		
		#10; 
		wb_stb_i = 1; //enable
		wb_adr_i= 3'h1;
		wb_dat_i = 16'h80;
		wb_we_i = 1; 
		#10;
		#10;
		wb_stb_i = 1; //send data
		wb_adr_i= 3'h2;
		wb_dat_i = {8'b11101101,8'b1001_0000}; 
		wb_we_i = 1; 
		#10;
		#10;
		wb_stb_i = 1; //check for ack
		wb_adr_i= 3'h03;
		wb_dat_i = 16'h00;
		wb_we_i = 0; 
		
	
		
		// Add stimulus here

	end
      
endmodule

