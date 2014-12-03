`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:00 12/02/2014 
// Design Name: 
// Module Name:    vga_setup 
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
module vga_setup(
	input wire clk,
	input wire reset, //reset on signal going high
	input wire start,
	inout scl,
	inout sda
    );
	 
	 parameter device_id = 8'hEC;
	 
	// reg [7:0] write_id;
	 reg [7:0] write_reg;
	 reg [7:0] write_data;
	 reg [7:0] write_id;
	 reg [4:0] FSM_state = 0;
	 
	 wire done;
	 
	 reg start_write = 0;
	
	 
	 
	 i2c_configure_reg instance_name (
    .clk(clk), 
    .reset(reset), 
    .start(start_write), 
    .write_reg(write_reg), 
    .write_id(write_id), 
    .write_data(write_data), 
    .done(done), 
    .scl(scl), 
    .sda(sda)
    );
	 
	 always@(posedge clk)
	 begin
	 case(FSM_state)

		0: begin //start
		FSM_state <= start ? 1 : 0;
		start_write <= 0;
		end

		1: begin //configure clk mode reg
		FSM_state <= 2;
		write_id <= device_id;
		write_reg <= 8'h9C; //clk setup
		write_data <= 8'h01; //clk is at pixel frequency
		start_write <= 1;
		end
		
		2: begin //wait for finish
		FSM_state <= done ? 3 : 2;
		start_write <= 0;
		end
		
		3: begin //input data format
		FSM_state <= 4;
		write_id <= device_id;
		write_reg <= 8'h9F; //input data format
		write_data <= 8'b1000_0000; //Vsync, Hsync are active loq
		start_write <= 1;
		end
		
		4: begin //wait for finish
		FSM_state <= done ? 5 : 4;
		start_write <= 0;
		end
		
		5: begin //VGA bypass mode
		FSM_state <= 6;
		write_id <= device_id;
		write_reg <= 8'hA1; //input data format
		write_data <= 8'b0000_1001; //enable sync outputs, VGA bypass enabled
		start_write <= 1;
		end
		
		6: begin //wait for finish
		FSM_state <= done ? 7 : 6;
		start_write <= 0;
		end
		
		7: begin //power enable
		FSM_state <= 8;
		write_id <= device_id;
		write_reg <= 8'hc9; //power register
		write_data <= 8'b0000_0000; //negate FPD
		start_write <= 1;
		end
		
		
		8: begin //wait for finish
		FSM_state <= done ? 9 : 8;
		start_write <= 0;
		end
		
		9: begin //return to start
		FSM_state <= 0;
		end
		endcase
		end

	endmodule
