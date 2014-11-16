module i2c_clock_divider(
						 input rst,
						 input ref_clk,
						 output reg i2c_clk
						 );
	
	parameter delay = 1000;
	
	//100MHz to 100kHz, not sure what the Virtex 5 is
	reg [9:0] count = 0;
	
	initial i2c_clk = 0;
	
	always @(posedge ref_clk) begin
		
		if (count == ((delay/2)-1)) begin // constant division, evaluated at compile time
			i2c_clk <= ~ i2c_clk;
			count = 0;
		end
		else count = count + 1;
	end
endmodule
