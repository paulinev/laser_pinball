`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:54:14 11/14/2014
// Design Name:   rom_playback
// Module Name:   /afs/athena.mit.edu/user/w/b/wbraun/Private/6_111/FinalProject/galvo_drive/project_ise/galvo_drive/rom_playback_tb.v
// Project Name:  galvo_drive
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rom_playback
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rom_playback_tb;

	// Inputs
	reg clk;
	reg next;
	wire [31:0] rom_dout;

	// Outputs
	wire [10:0] rom_address;
	wire [31:0] out_data;

	// Instantiate the Unit Under Test (UUT)
	rom_playback uut (
		.clk(clk), 
		.next(next), 
		.rom_dout(rom_dout), 
		.rom_address(rom_address), 
		.out_data(out_data)
	);
	
	ILDA_rom test_pattern_rom(.addra(rom_address), .clka(clk), .douta(rom_dout));
	
	always #5 clk=!clk;
	always begin
	next =1;
	#10;
	next = 0;
	#40;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		next = 0;
		//rom_dout = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
        
		// Add stimulus here

	end
      
endmodule

