`default_nettype none;

module i2c_master(input clk,
				  input sccb_clk, // 100kHz
				  input reset,
				  input start,
				  input [6:0] addr;
				  input [7:0] data;
				  output reg i2c_sda,
				  output wire i2c_scl
				  output wire ready;
				  );
	// data latches on rising edge of clock
	// only pulse clock when data or addresses are being transmitted
	
	reg [7:0] state;
	reg [7:0] count;
	reg [6:0] latched_addr;
	reg [7:0] latched_data;
	reg i2c_scl_enable = 0;
	
	assign i2c_scl = (~i2c_scl_enable) ? 1 : ~sccb_clk;
	// ready is high when master is idle, low when communicating
	assign ready = (reset == 0 && state == IDLE) ? 1 : 0;
	
	// define states
	localparam IDLE = 0;
	localparam START = 1;
	localparam ADDRESS = 2;
	localparam RW = 3;
	localparam WAIT_ACK = 4;
	localparam DATA = 5;
	localparam STOP = 6;
	localparam WAIT_ACK_2 = 7;
	
	// SCL driver
	always @(negedge clk) begin // delay clock by half a cycle
		if (reset) begin
			i2c_scl_enable <= 0;
		end
		else begin
			if (state == IDLE || state == START || state == STOP) i2c_scl_enable <= 0;
			else i2c_scl_enable <= 1;
		end
	end
	
	always @(posedge clk) begin
	
		if (reset) begin
			state <= IDLE;
			i2c_sda <= 1;
			count <= 8'b0;
		end
		
		else begin
			// SDA state machine
			case(state)
				IDLE: begin
					i2c_sda <= 1;
					if (start) begin
						state <= START;
						latched_addr <= addr;
						latched_data <= data;
					end
					else state <= IDLE;
				end
				
				START: begin
					i2c_sda <= 0;
					state <= ADDRESS;
					count <= 6;
				end
				
				ADDRESS: begin
					i2c_sda <= latched_addr[count];
					if (count == 0) state <= DATA;
					else count <= count - 1;
				end
				
				RW: begin
					i2c_sda <= 0; //write
					state <= WAIT_ACK;
				end
				
				WAIT_ACK: begin
					state <= DATA;
					count <= 7;
				end
				
				DATA: begin
					i2c_sda <= latched_data[count];
					if (count == 0) state <= WAIT_ACK_2;
					else count <= count - 1;
				end
				
				WAIT_ACK_2: begin
					state <= STOP;
				end
				
				STOP: begin
					i2c_sda <= 1;
					state <= IDLE;
				end
				
			endcase
		end
	end
	
endmodule

// test
// just clock it, instantiate divider for i2c_clk

// Clock divider for instantiation
	//wire i2c_clk;
	//i2c_clk1 i2c_clk_divider(.ref_clk(clk), .rst(rst), .i2c_clk(i2c_clk));
	
