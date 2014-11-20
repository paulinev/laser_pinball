`timescale 1 ns / 100 ps

module simulate();

    reg clk;
    reg reset_in;
    wire [3:0] anodes;
    wire [7:0] segments;
    wire hsync,vsync;
    wire [2:0] rgb;
    reg ps2d,ps2c;

// Instantiate the UUT
    beta2demo uut (
        .clk(clk), 
        .reset_in(reset_in), 
        .anodes(anodes), 
        .segments(segments),
	.hsync(hsync),
	.vsync(vsync),
	.rgb(rgb),
	.ps2d(ps2d),
	.ps2c(ps2c)
        );
//    defparam uut.SIMULATE = 1;

   initial begin
     clk = 0;
     forever #10 clk = ~clk;
   end

   initial begin
     reset_in = 1;
     #100 reset_in = 0;
   end

   initial begin
     ps2d = 0;
     ps2c = 0;
   end
endmodule

