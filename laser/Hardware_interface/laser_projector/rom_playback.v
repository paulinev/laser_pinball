`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:49:44 11/13/2014 
// Design Name: 
// Module Name:    rom_playback 
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
module rom_playback #(parameter LOG_ROM_SIZE=11)
	(
		input clk,
		input next,
		input [31:0] rom_dout,
		output reg [(LOG_ROM_SIZE-1):0] rom_address = 0,
		output reg [31:0] out_data = 0
	);

	//ILDA_rom test_pattern_rom(.ADDRA(), .CLKA(), .DOUTA());
	//end of frame is indicated by last 4 (reserve) bits all being high
	reg [2:0] FSM_state = 0;

	always@(posedge clk)
	begin
	
		case(FSM_state)
		
		0: begin //idle state
			FSM_state <= next ? 1 : 0;
			rom_address <= next ? rom_address+1 : rom_address;
		end
		
		1: begin //data out from rom on next clock cycle 
			FSM_state <= (rom_dout[4:0] == 5'b11111) ? 3 : 2;
			//check for end of frame
		end
		
		2: begin //not end of frame
			FSM_state <= 0; //return to start
			out_data <= rom_dout; 
		end
		
		3: begin //end of frame reached
			FSM_state <= 4;
			rom_address <= 0; 
		end
		
		4: begin //read rom with new address
			FSM_state <= 0; //return 
			out_data <= rom_dout;
		end
		endcase
	end
endmodule
