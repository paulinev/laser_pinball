`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:09 11/15/2014 
// Design Name: 
// Module Name:    galvo_update_rate 
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
module galvo_update_rate #(parameter SLOW = 3600, MED1= 2500, MED2 = 2000, FAST = 1700)
	(
    input clk, //designed for 27MHz*2 clock
    input [1:0] setting,
    output reg strobe_out = 0
    );
	 
	reg [11:0] counter = 0;
	
	always@(posedge clk)
	begin
	
	strobe_out <= counter == 0 ? 1 : 0;
	case(setting)
	
	0: begin//slow speed
		counter <= counter >= SLOW ? 0 : counter +1;
	end
	
	1: begin //MED1 speed
		counter <= counter >= MED1 ? 0 : counter +1;
	end
	
	2: begin //MED2 speed
		counter <= counter >= MED2 ? 0 : counter +1;
	end
	
	3: begin //FAST speed
		counter <= counter >= FAST ? 0 : counter +1;
	end
	endcase
	
	end
endmodule
