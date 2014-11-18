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
    input clk, // SCCB clock - 100kHz
    input start,
    input reset,
    input [6:0] slave_addr, // ID address
    input [7:0] reg_addr, // sub-address
    input [7:0] data, // write data
    input rw, // read-write flag
    inout wire sdiod, // bidirectional data bus
    output wire sdioc, // data sampled at rising edge of clock
    output reg cs, // camera doesn't have this so i'm not being picky about its timing
	 output reg [7:0] data_out, // data from read
    output reg done
    );
	 
	reg [3:0] state = 0;
	reg sdiod_out;
	reg [2:0] count;
	reg [6:0] latched_slave_addr;
	reg [7:0] latched_reg_addr;
	reg [7:0] latched_data;
	reg latched_rw;
	reg sdioc_enable = 0;
	reg two_phase_write_done = 0;
	
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
	assign sdiod = (latched_rw & two_phase_write_done & state == DATA_READ) ? 1'bZ : sdiod_out;
	
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
					state <= ID_ADDR; // all transmissions start by sending ID address
					count <= 6; // 7 bits of ID 
				end
				
				// three-phase write
				ID_ADDR: begin
					sdiod_out <= latched_slave_addr[count]; // transmit ID address
					if (count == 0) state <= RW; // go to rw flag
					else count <= count - 1;
				end
				
				RW: begin
					sdiod_out <= two_phase_write_done & latched_rw; // transmit read-write
					state <= DNC_1;
				end
				
				// don't care bit for ID to sub-address transition
				DNC_1: begin
					sdiod_out <= 0; // master must drive at logical zero
					//sdiod_out <= 1'bZ;
					state <= two_phase_write_done ? DATA_READ : REG_ADDR;
					count <= 7;
				end
				
				REG_ADDR: begin
					sdiod_out <= latched_reg_addr[count];
					if (count == 0) state <= DNC_2;
					else count <= count - 1;
				end
				
				// don't care bit for phase 2
				DNC_2: begin
					sdiod_out <= 1; // master must assert as 1 during read cycle; don't care for write
					state <= latched_rw ? ID_ADDR : DATA_WRITE;
					count <= latched_rw ? 6 : 7;
					two_phase_write_done <= latched_rw;
				end
				
				DATA_READ: begin
					data_out[count] <= sdiod;
					if (count == 0) state <= DNC_3;
					else count <= count - 1;
				end
				
				DATA_WRITE: begin
					sdiod_out <= latched_data[count];
					if (count == 0) state <= DNC_3;
					else count <= count - 1;
				end
				
				// don't care bit for phase two/three
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
