`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:39 11/11/2014 
// Design Name: 
// Module Name:    projector_interface 
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

//internal interface: x[11:0],y[11:0],color[2:0], reserved[4:0]
module projector_interface(
    input wire clk,
	 input wire reset, 
	 input wire update, //projector update frequency
	 input wire[31:0] data_in,
	 input wire [1:0] control, 
	 output reg frame_done = 0,//for realtime frame playback
	 output reg [11:0] DAC_x = 0,
	 output reg [11:0] DAC_y = 0,
	 output reg DAC_start = 0,
    output reg [2:0] laser_rgb = 0
    );
	 
	 wire [10:0] ILDA_rom_addr; 
	 wire [31:0] ILDA_rom_data;
	 wire [31:0] ILDA_command; 
	 reg rom_next =0;
	 
	 
	 
	 ILDA_rom test_pattern_rom(.addra(ILDA_rom_addr), .clka(clk), .douta(ILDA_rom_data));
	 
	 rom_playback ilda_playback(.clk(clk), .next(rom_next),
										.rom_dout(ILDA_rom_data), .rom_address(ILDA_rom_addr), 
										.out_data(ILDA_command));
	 
	 //I should have all modules running at the same time then mux the outputs
	always@(posedge clk)
		begin
		
		DAC_start <= update; //strobe DAC_start on update
		rom_next <= update;
		
		case(control) //select for what to project
		
		0: begin //project from pathfinding module
			
		
		end
		
		1: begin //project camera cal pattern
		
		
		end
		
		2: begin //project ILDA test pattern
			if (update)
			begin
				DAC_x <= ILDA_command[31:20];
				DAC_y <= ILDA_command[19:8];
				laser_rgb <= ILDA_command[7:5];
			end
		end
		
		3: begin //reserved
		
		end
		
		endcase
	end


endmodule
