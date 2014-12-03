`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:27 12/03/2014 
// Design Name: 
// Module Name:    i2c_configure_reg 
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
//simple FSM to write one reg value to an I2C device.
module i2c_configure_reg(
	input wire clk,
	input reset, //reset on signal going high
	input wire start,
	input wire [7:0] write_reg,
	input wire [7:0] write_id,
	input wire [7:0] write_data,
	output reg done = 0,
	inout scl,
	inout sda
    );

	 reg [7:0] i2c_clock_div = 8'h55; //low for testing
	 //parameter device_id = 8'hEC; //video ic
	 reg [7:0] device_reg = 8'b1_0100001;//8'h21; //vga passthrough// 8'h48; //test pattern reg
	 //first bit of address has to be one?
	 reg [7:0] device_data = 8'b0000_1001; //vga passthrough//8'b00011001; //color bars!
	 reg [7:0] device_id = 8'hEC;
	 
	 reg [7:0] i2c_din = 0;
	 reg [2:0] i2c_addr = 0;
	 reg i2c_start = 0;
	 reg i2c_we = 0;
	 
	 wire [7:0] i2c_dout;
	 wire i2c_done;
	 
	 
	 
	 wb_i2c_controller video_bus (
    .clk(clk), 
    .reset(reset), 
    .din(i2c_din), 
    .addr(i2c_addr), 
    .start(i2c_start), 
    .wren(i2c_we), 
    .dout(i2c_dout), 
    .done(i2c_done), 
    .scl(scl), 
    .sda(sda)
    );
	 
	 
	 //controller ID is 0x76
	 reg [4:0] FSM_state = 0;
	 
	 always@(posedge clk)
	 begin
	 
	 case(FSM_state)
	 
	 0: begin //start
	 FSM_state <= start ? 1 : 0;
	 done <= 0;
	 device_id <= write_id; //latch inputs
	 device_reg <= write_reg;
	 device_data <= write_data;
	 
	 
	 end
	 
	 1: begin //configure I2C block clk divider
	 FSM_state <= 2;
	 i2c_addr <= 0;
	 i2c_din <= i2c_clock_div;
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 2: begin //wait for bus to free
	 FSM_state <= i2c_done ? 3 : 2;
	 i2c_start <= 0;
	 end
	 
	 3: begin //high bit of clk div
	 FSM_state <= 4;
	 i2c_addr <= 1;
	 i2c_din <= 0;
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 4: begin //wait for bus to free
	 FSM_state <= i2c_done ? 5 : 4;
	 i2c_start <= 0;
	 end
	 
	 5: begin //enable i2c
	 FSM_state <= 6;
	 i2c_addr <= 2;
	 i2c_din <= 8'b1000_0000;
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 6: begin //wait for bus to free
	 FSM_state <= i2c_done ? 7 : 6;
	 i2c_start <= 0;
	 end
	 
	 7: begin //set device address for write
	 FSM_state <= 8;
	 i2c_addr <= 3;
	 i2c_din <= device_id;
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 8: begin //wait for bus to free
	 FSM_state <= i2c_done ? 9 : 8;
	 i2c_start <= 0;
	 end
	 
	 9: begin //send device address
	 FSM_state <= 10;
	 i2c_addr <= 4; //command reg
	 i2c_din <= 8'b1001_0000; //start enable, write to slave
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 10: begin //wait for bus to free
	 FSM_state <= i2c_done ? 11 : 10;
	 i2c_start <= 0;
	 end
	 
	 11: begin //read status reg to see if TIP flag has negated
	 FSM_state <= 12;
	 i2c_addr <= 4; //status reg
	 i2c_din <= 0;
	 i2c_start <= 1;
	 i2c_we <= 0; //read
	 end
	 
	 12: begin //wait for bus to free
	 FSM_state <= i2c_done ? 13 : 12;
	 i2c_start <= 0;
	 end
	 
	 13: begin //check TIP flag
	 FSM_state <= i2c_dout[1] ? 11 : 14;
	 end
	 
	 14: begin //set device register for write
	 FSM_state <= 15;
	 i2c_addr <= 3;
	 i2c_din <= {device_reg};
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 15: begin //wait for bus to free
	 FSM_state <= i2c_done ? 16 : 15;
	 i2c_start <= 0;
	 end
	 
	 16: begin //send data
	 FSM_state <= 17;
	 i2c_addr <= 4; //command reg
	 i2c_din <= 8'b0001_0000; //no start, write to slave
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 17: begin //wait for bus to free
	 FSM_state <= i2c_done ? 18 : 17;
	 i2c_start <= 0;
	 end
	 
	 18: begin //read status reg to see if TIP flag has negated
	 FSM_state <= 19;
	 i2c_addr <= 4; //status reg
	 i2c_din <= 0;
	 i2c_start <= 1;
	 i2c_we <= 0; //read
	 end
	 
	 19: begin //wait for bus to free
	 FSM_state <= i2c_done ? 20 : 19;
	 i2c_start <= 0;
	 end
	 
	 20: begin //check TIP flag
	 FSM_state <= i2c_dout[1] ? 18 : 21;
	 end
	 
	 21: begin //set device data for write
	 FSM_state <= 22;
	 i2c_addr <= 3;
	 i2c_din <= {device_data};
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 22: begin //wait for bus to free
	 FSM_state <= i2c_done ? 23 : 22;
	 i2c_start <= 0;
	 end
	 
	 23: begin //send data
	 FSM_state <= 24;
	 i2c_addr <= 4; //command reg
	 i2c_din <= 8'b0101_0000; //end, write to slave
	 i2c_start <= 1;
	 i2c_we <= 1;
	 end
	 
	 24: begin //wait for bus to free
	 FSM_state <= i2c_done ? 25 : 24;
	 i2c_start <= 0;
	 end
	 
	 25: begin //read status reg to see if TIP flag has negated
	 FSM_state <= 26;
	 i2c_addr <= 4; //status reg
	 i2c_din <= 0;
	 i2c_start <= 1;
	 i2c_we <= 0; //read
	 end
	 
	 26: begin //wait for bus to free
	 FSM_state <= i2c_done ? 27 : 26;
	 i2c_start <= 0;
	 end
	 
	 27: begin //check TIP flag
	 FSM_state <= i2c_dout[1] ? 25 : 28;
	 end
	 
	 28: begin //all done!
	 FSM_state <= 0;
	 i2c_start <= 0;
	 done <=1;
	 end 
	 endcase
	 end
endmodule
