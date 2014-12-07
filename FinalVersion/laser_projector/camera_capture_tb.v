`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:02:12 12/04/2014
// Design Name:   camera_capture
// Module Name:   /home/wbraun/laser_pinball/laser/Beta_hardware/laser_projector/camera_capture_tb.v
// Project Name:  laser_projector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: camera_capture
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module camera_capture_tb;

	// Inputs
	reg camera_clk;
	reg start;
	reg camera_vsync;
	reg camera_href;
	reg [7:0] camera_dout;

	// Outputs
	wire mem_request;
	wire mem_we;
	wire [18:0] mem_addr;
	wire [15:0] mem_din;
	wire done;
	
	reg [9:0] i = 0;
	reg [9:0] z = 0;


	// Instantiate the Unit Under Test (UUT)
	camera_capture uut (
		.camera_clk(camera_clk), 
		.start(start), 
		.camera_vsync(camera_vsync), 
		.camera_href(camera_href), 
		.camera_dout(camera_dout), 
		.mem_request(mem_request), 
		.mem_we(mem_we), 
		.mem_addr(mem_addr), 
		.mem_din(mem_din), 
		.done(done)
	);
	always #5 camera_clk=~camera_clk;
	initial begin
		// Initialize Inputs
		camera_clk = 0;
		start = 0;
		camera_vsync = 0;
		camera_href = 0;
		camera_dout = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		

		// Wait 100 ns for global reset to finish
		#100;
		start = 1;
		#10;
		start = 0;
		#10
		camera_vsync= 1;
		#20;
		camera_vsync = 0;
		#20;
		camera_href = 0;
		
		for (z= 0; z<480; z=z+1)begin
		#20;
		camera_href = 1;
		
		for (i = 0; i < 20; i = i +1) begin //mini line
		camera_dout = i[7:0];
		#10;
		camera_dout = 0;
		#10;
		end
		camera_dout = 0;
		#50;
      end
        
		// Add stimulus here

	end
      
endmodule

