`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:50 11/28/2014 
// Design Name: 
// Module Name:    system_timer 
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
module system_timer(
	clk,
	count_in,
	count_out,
	clear_overflow,
	irq_enable,
	irq,
	mwe,
	overflow
    );
	//relative addresses:
	//0: count_set(write)
	//4: current_count
	//8: overflow_flag
	//C: 
	
	input wire clk;
	input wire [31:0] count_in;
	input wire clear_overflow;
	input wire irq_enable;
	input wire mwe;
	output reg [31:0] count_out = 32'h00_00_FF_FF;
	output reg irq = 0;
	output reg overflow = 0; 
	reg mwe_ = 0; 
	
	always@(posedge clk)
	begin
	mwe_ <= mwe; //delay by one clk to allow load of new count_in
		
		if(mwe_) //settings beging changed, reset everything
		begin
			irq <= 0;
			count_out <= count_in;
			overflow <= 0;
		end
		else
		begin 
			irq <= ((count_out==0)&&irq_enable) ? 1 : 0;
			count_out <= (count_out==0) ? count_in : count_out-1;
			if (clear_overflow)
			begin
				overflow <= 0;
			end
			else
			begin
				overflow <= (count_out==0) ? 1 : overflow;
			end
		end
	end

endmodule
