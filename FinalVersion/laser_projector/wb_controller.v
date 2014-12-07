`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:03 12/02/2014 
// Design Name: 
// Module Name:    wb_controller 
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
//wrapper for the I2C wishbone bus interface
module wb_i2c_controller(
	input wire clk,
	input wire reset,
	input wire [7:0] din,
	input wire [2:0] addr,
	input wire start,
	input wire wren, //write enable
	output reg [31:0] dout = 0,
	output reg done = 0,
	inout wire scl,
	inout wire sda
    );
	 
	 reg [3:0] FSM_state = 0;
	 reg [31:0] din_l = 0;
	 reg [31:0] addr_l = 0;
	 reg wren_l = 0;
	 reg bus_select = 0;

	 wire scl_pad_i;
	 wire scl_pad_o;
	 wire scl_padoen_oe;
	 
	 wire sda_pad_i;
	 wire sda_pad_o;
	 wire sda_padoen_oe;
	 
	 
	 //assign bi-directional IO
	 assign scl = scl_padoen_oe ? 1'bz : scl_pad_o;
	 assign sda = sda_padoen_oe ? 1'bz : sda_pad_o;
	 assign scl_pad_i = scl;
	 assign sda_pad_i = sda;
	 
	 reg [3:0] i2c_addr = 0;
	 reg [7:0] i2c_din = 0;
	 reg i2c_we = 0;
	 
	 wire [7:0] i2c_dout;
	 
	 wire ack_o;
	 
	 i2c_master_top i2c_plz (
    .wb_clk_i(clk), //system clk
    .wb_rst_i(reset), //active high 
    .arst_i(1'b1),  //active low reset
    .wb_adr_i(i2c_addr), //adress input 
    .wb_dat_i(i2c_din), //data input
    .wb_dat_o(i2c_dout), //data output 
    .wb_we_i(i2c_we),  //write enable
    .wb_stb_i(bus_select),  //wishbone enable?, should be 1?
    .wb_cyc_i(1'b1),  //valid buss cycle, should be 1?
    .wb_ack_o(ack_o), //??
    .wb_inta_o(), // interupt
    .scl_pad_i(scl_pad_i), //input //SPI inputs and outputs
    .scl_pad_o(scl_pad_o), //output
    .scl_padoen_o(scl_padoen_oe), //output enable
    .sda_pad_i(sda_pad_i), //input 
    .sda_pad_o(sda_pad_o), //output
    .sda_padoen_o(sda_padoen_oe) //output enable
    );
	 
	 
	 
	 always@(posedge clk)
	 begin
	 
	 case(FSM_state)
	 
	 0: begin //idle state 
		FSM_state <= start ? 1 :0; //wait for start signal
		din_l <= din;
		addr_l <= addr; //latch things
		wren_l <= wren; 		
		done <= 0;
	 end
	 
	 
	 1: begin //set address 
		FSM_state <= 2;
		i2c_addr <= addr_l[3:0]; //set address
		i2c_we <= wren_l; //set we
		i2c_din <= din_l[15:0]; //set din for write
		bus_select <= 1; //select the i2c block
	end
	
	2: begin //wait one clock cycle for it to process
		FSM_state <= 3;
	end
	
	3: begin //read data, deassert bus select
		FSM_state <= 0; //return to start
		bus_select <= 0; //deselect device
		i2c_we <= 0; //deassert we
		dout <= i2c_dout; 
		done <=1; //done!
	end
	endcase
	end
	
		
	 


endmodule
