`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:38 12/02/2014
// Design Name:   wb_i2c_controller
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/wb_controller_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wb_i2c_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wb_controller_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] din;
	reg [31:0] addr;
	reg start;
	reg wren;

	// Outputs
	wire [31:0] dout;
	wire done;

	// Bidirs
	wire scl;
	wire sda;
	pullup(scl);
	pullup(sda);

	// Instantiate the Unit Under Test (UUT)
	wb_i2c_controller uut (
		.clk(clk), 
		.reset(reset), 
		.din(din), 
		.addr(addr), 
		.start(start), 
		.wren(wren), 
		.dout(dout), 
		.done(done), 
		.scl(scl), 
		.sda(sda)
	);
	always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		din = 0;
		addr = 0;
		start = 0;
		wren = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		reset = 0;
		#10
		
		din = 8'h20; //initilize clk div PER
		addr = 0;
		wren = 1;
		start = 1;
		#10;
		start = 0;
		#100;
		
		din = 8'h00; //initilize clk div PER
		addr = 1;
		wren = 1;
		start = 1;
		#10;
		start = 0;
		#100;
		
		din = 50; //readback
		addr = 0;
		wren = 0;
		start = 1;
		#10;
		start = 0;
		#80;
		
		
		addr = 02; //control register is reg #2
		din = 8'b1000_0000; //enable the thing
		start = 1;
		wren = 1;
		#10;
		start = 0;
		#80;
		
		din = 0; //readback
		addr = 2;
		wren = 0;
		start = 1;
		#10;
		start = 0;
		#80;
		
		
		addr = 03; //transmit reg
		din = 8'b0111_0010; //new transmit reg
		start = 1; 
		wren = 1;
		#10;
		start = 0;
		#80;
		
		
		din = 8'b1001_0000; //send data
		addr = 4;
		wren = 1;
		start = 1;
		#10;
		start = 0;
		#80;
		
		
		din = 0; //read status register
		addr = 4;
		wren = 0;
		start = 1;
		#10;
		start = 0;
		#80;
        
		// Add stimulus here

	end
      
endmodule

