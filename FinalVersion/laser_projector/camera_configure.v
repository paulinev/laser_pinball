`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:58:39 12/03/2014 
// Design Name: 
// Module Name:    camera_configure 
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
module camera_configure(
input wire clk,
	input wire reset, //reset on signal going high
	input wire start,
	inout scl,
	inout sda
    );
	 
	 parameter device_id = 8'h42; //camera address for writes
	 parameter rom_locations = 26; 
	 
	 wire [7:0] write_reg;
	 wire [7:0] write_data;
	 reg [4:0] FSM_state = 0;
	 
	 wire done;
	 
	 reg start_write = 0;
	 reg [5:0] rom_addr = 0;
	 
	 
	 i2c_configure_reg camera_i2c (
    .clk(clk), 
    .reset(reset), 
    .start(start_write), 
    .write_reg(write_reg), 
    .write_id(device_id), 
    .write_data(write_data), 
    .done(done), 
    .scl(scl), 
    .sda(sda)
    );
	 
	 camera_setup_rom config_rom (
	 .clk(clk),
    .addr(rom_addr), 
    .register(write_reg), 
    .value(write_data)
    );

	 
	 always@(posedge clk)
	 begin
	 case(FSM_state)
	 
	 0: begin //start
	 FSM_state <= start ? 1 : 0;
	 start_write <= 0;
	 rom_addr <= 0;
	 end
	 
	 1: begin //check rom value, give time for rom load
	 FSM_state <= (rom_addr>=rom_locations) ? 5 : 2;
	 end
	 
	 2: begin //start I2C
	 FSM_state <= 3; 
	 start_write <= 1;
	 end
	 
	 3: begin //wait for end
	 FSM_state <= done ? 4 : 3;
	 end
	 
	 4: begin 
	 FSM_state <= 1;
	 rom_addr <= rom_addr +1;
	 end
	 
	 5: begin //end state
	 FSM_state <= 0;
	 end
	 endcase
	 end
	 
	 
	 /*
	 always@(posedge clk)
	 begin
	 case(FSM_state)

		0: begin //start
		FSM_state <= start ? 1 : 0;
		start_write <= 0;
		end

		1: begin //internet magic?
		FSM_state <= 2;
		write_id <= device_id;
		//write_reg <= 8'h11; //clk setup
		write_reg <= 8'hB0;
		write_data <= 8'h84;
		//write_data <= 8'b1000_0000; //enable pll
		start_write <= 1;
		end
		
		2: begin //wait for finish
		FSM_state <= done ? 3 : 2;
		start_write <= 0;
		end
		
		3: begin //output image format
		FSM_state <= 4;
		write_id <= device_id;
		write_reg <= 8'h12; //COM7
		write_data <= 8'b0000_0100; //rgb output
		//write_data <= 8'b0000_0110; //color bar
		start_write <= 1;
		end
		
		4: begin //wait for finish
		FSM_state <= done ? 5 : 4;
		start_write <= 0;
		end
		
		
		5: begin //output image format
		FSM_state <= 6;
		write_id <= device_id;
		write_reg <= 8'h40; //COM15
		//write_data <= 8'b1111_0000; //RGB555 format
		write_data <= 8'b1101_0000; //RGB565
		start_write <= 1;
		end
		
	6: begin //wait for finish 
		FSM_state <= done ? 7 :6;
		start_write <= 0;
		end
		
	7: begin //flip image 
		FSM_state <= 8;
		write_id <= device_id;
		write_reg <= 8'h1E; //MVFP
		write_data <= 8'b0001_0000; //flip vertically
		start_write <= 1;
		end
		
	8: begin //wait for finish
		FSM_state <= done ? 11 :8;
		start_write <= 0;
		end
		
	9: begin //test pattern y
		FSM_state <= 10;
		write_id <= device_id;
		write_reg <= 8'h71; //COM15
		write_data <= 8'h35; //8 bar color bar
		start_write <= 1;
		end
		
	10: begin //wait for finish
		FSM_state <= done ? 11:10;
		start_write <= 0;
		end
	11: begin //return to start
		FSM_state <= 0;
		end
		
		
		endcase
		end
		*/ 
		


endmodule
