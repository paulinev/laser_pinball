`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:31 11/17/2014 
// Design Name: 
// Module Name:    sccb_master_v1 
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
module sccb_master_v1(
    input clk,
    input start,
    input reset,
    input [6:0] slave_addr,
    input [7:0] reg_addr,
    input [7:0] data,
    input rw,
    inout wire sdiod,
    output wire sdioc,
    output reg cs,
    output reg done
    );
	 
	reg [3:0] state = 0;
	reg sdiod_out;
	reg [2:0] count;
	reg [6:0] latched_slave_addr;
	reg [7:0] latched_reg_addr;
	reg [7:0] latched_data;
	reg [7:0] read_data;
	reg latched_rw;
	reg sdioc_enable = 0;
	
	localparam IDLE = 0;
	localparam START = 1;
	localparam REG_ADDR = 2;
	localparam ID_ADDR = 3;
	localparam DATA_READ = 4;
	localparam DATA_WRITE = 5;
	localparam DNC_1 = 6;
	localparam DNC_2 = 7;
	localparam DNC_3 = 8;
	localparam STOP_1 = 9;
	localparam STOP_2 = 11;
	localparam RW = 10;
	
	assign sdioc = (~sdioc_enable) ? 1 : ~clk;
	assign sdiod = (latched_rw) ? 1'bZ : sdiod_out;
	
	// SDIOC driver
	always @(negedge clk) begin // delay clock by half a cycle
		if (reset) begin
			sdioc_enable <= 0;
		end
		else begin
			if (state == IDLE || state == START || state == STOP_1 || state == STOP_2) sdioc_enable <= 0;
			else sdioc_enable <= 1;
		end
	end
	
	// SDIOD driver
	always @(posedge clk) begin
		if (reset) begin
			sdiod_out <= 1'bZ;
			cs <= 1;
			done <= 0;
		end
		
		else begin
			case (state)
				IDLE: begin
					sdiod_out <= 1'bZ;
					cs <= 1;
					done <= 0;
					if (start) begin
						state <= START;
						sdiod_out <= 1;
						latched_slave_addr <= slave_addr;
						latched_reg_addr <= reg_addr;
						latched_data <= data;
						latched_rw <= rw;
					end
					else state <= IDLE;
				end
				
				START: begin
					sdiod_out <= 0;
					cs <= 0;
					state <= latched_rw ? REG_ADDR : ID_ADDR;
					count <= latched_rw ? 8 : 6;
				end
				
				// three-phase write
				ID_ADDR: begin
					sdiod_out <= latched_slave_addr[count];
					if (count == 0) state <= RW;
					else count <= count - 1;
				end
				
				RW: begin
					sdiod_out <= latched_rw;
					state <= DNC_1;
				end
				
				// don't care bit for three-phase write
				DNC_1: begin
					//sdiod_out <= 0;
					sdiod_out <= 1'bZ;
					state <= REG_ADDR;
					count <= 7;
				end
				
				REG_ADDR: begin
					sdiod_out <= latched_reg_addr[count];
					if (count == 0) state <= DNC_2;
					else count <= count - 1;
				end
				
				// don't care bit for second phase of three-phase write
				DNC_2: begin
					sdiod_out <= 1;
					state <= latched_rw ? DATA_READ : DATA_WRITE;
					count <= 7;
				end
				
				DATA_READ: begin
					read_data[count] <= sdiod;
					if (count == 0) state <= DNC_3;
					else count <= count - 1;
				end
				
				DATA_WRITE: begin
					sdiod_out <= latched_data[count];
					if (count == 0) state <= DNC_3;
					else count <= count - 1;
				end
				
				// don't care bit for third phase of write cycle
				DNC_3: begin
					sdiod_out <= 1'bZ;
					state <= STOP_1;
				end
				
				STOP_1: begin
					sdiod_out <= 0;
					state <= STOP_2;
				end
				
				STOP_2: begin
					sdiod_out <= 1;
					state <= IDLE;
				end
				
			endcase
		end
	end
endmodule
