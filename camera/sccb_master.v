`default_nettype none;

module sccb_master{
				   input clk,
				   input sccb_clk,
				   input start;
				   input reset,
				   input [6:0] slave_addr,
				   input [7:0] reg_addr,
				   input [7:0] data,
				   input rw, // read = 1, write = 0
				   inout wire sdiod, // tristate when bus is idle
				   output wire sdioc, // 1 when bus is idle (100kHz); data latched on falling edge of clock
				   output reg chip_select, // active low, 1 when bus is idle
				   output reg done
				   };
						
	reg [5:0] state;
	reg sdiod_out;
	reg [2:0] count;
	reg [6:0] latched_slave_addr;
	reg [7:0] latched_reg_addr;
	reg [7:0] latched_data;
	reg [7:0] read_data;
	reg latched_rw;
	reg sdioc_enable = 0;
	
	assign sdioc = (~sdioc_enable) ? 1 : ~sccb_clk;
	
	localparam IDLE = 0;
	localparam START = 1;
	localparam REG_ADDR = 2;
	localparam ID_ADDR = 3;
	localparam DATA_READ = 4;
	localparam DATA_WRITE = 5;
	localparam DNC_1 = 6;
	localparam DNC_2 = 7;
	localparam DNC_3 = 8;
	localparam STOP = 9;
	
	always @(*) begin
		if (~latched_rw) begin
			assign sdiod = sdiod_out;
		end
	end
	
	// SDIOC driver
	always @(negedge clk) begin // delay clock by half a cycle
		if (reset) begin
			sdioc_enable <= 0;
		end
		else begin
			if (state == IDLE || state == START || state == STOP) sdioc_enable <= 0;
			else sdioc_enable <= 1;
		end
	end
	
	// SDIOD driver
	always @(posedge clk) begin
		if (reset) begin
			sdioc <= 1;
			sdiod_out <= Z;
			chip_select <= 1;
			done <= 0;
		end
		
		else begin
			case (state)
				IDLE: begin
					sdiod_out <= Z;
					chip_select <= 1;
					done <= 0;
					if (start) begin
						state <= START;
						latched_slave_addr <= slave_addr;
						latched_reg_addr <= reg_addr;
						latched_data <= data;
						latched_rw <= rw;
					end
					else state <= IDLE;
				end
				
				START: begin
					sdiod_out <= 1;
					chip_select <= 0;
					state <= latched_rw ? REG_ADDR : ID_ADDR;
					count <= latched_rw ? 7 ? 6;
				end
				
				// three-phase write
				ID_ADDR: begin
					sdiod_out <= latched_slave_addr[count];
					if (count == 0) state <= DNC_1;
					else count <= count - 1;
				end
				
				// don't care bit for three-phase write
				DNC_1: begin
					sdiod_out <= 0;
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
					sdiod_out <= Z;
					state <= STOP;
				end
				
				STOP: begin
					sdiod_out <= 1;
					state <= IDLE;
					chip_select <= 1;
					done <= 1;
				end
				
			endcase
		end
	end
endmodule
