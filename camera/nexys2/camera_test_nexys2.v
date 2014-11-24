///////////////////////////////////////////////////////////////////////////////
//
// Pushbutton Debounce Module
//
///////////////////////////////////////////////////////////////////////////////

module debounce (input reset, clock, noisy,
                 output reg clean);

   reg [19:0] count;
   reg new;

   always @(posedge clock)
     if (reset) begin new <= noisy; clean <= noisy; count <= 0; end
     else if (noisy != new) begin new <= noisy; count <= 0; end
     else if (count == 650000) clean <= new;
     else count <= count+1;

endmodule

///////////////////////////////////////////////////////////////////////////////
//
// Seven-segment driver module
//
///////////////////////////////////////////////////////////////////////////////

module segdisplay(clk,enable,value,anodes,segments,tick);
  parameter SIMULATE = 0;
  input clk,enable;
  input [15:0] value;
  output [3:0] anodes;
  output [7:0] segments;
  output tick;

  reg [15:0] latched_value;

  /* replaced by LFSR below
  parameter CLKHZ = 50000000;
  reg [27:0] clk_divider;
  reg tick;
  always @ (posedge clk)
  begin
    tick <= clk_divider == (CLKHZ/1000 - 2);
    clk_divider <= tick ? 0 : clk_divider+1;
  end
  */

  // Build a clock divider using an LFSR -- it should be smaller/faster
  // than the counter commented out above.

  // 50Mhz/(2^17 - 1) = ~300Hz => 75Hz refresh rate for each of the 4 digits.
  // 17-bit LFSR with period of 2^17 - 1 (see Xilinx App Note 52).  Use
  // XNOR feedback so that lock-up state is all ones instead of all
  // zeroes since the register will be zero on power-up.
  reg [17:1] lfsr;
  always @ (posedge clk) lfsr <= {lfsr[16:1],~(lfsr[17] ^ lfsr[14])};
  wire tick = SIMULATE | lfsr==0;   // decode a specific state (doesn't matter which one)

  // cycle through the 4 digits
  reg [1:0] display;
  always @ (posedge clk) if (tick) display <= display + 1;

  // latch value to be displayed at the start of each cycle
  always @ (posedge clk) if (tick && display==3) latched_value <= value;
 
  reg [3:0] digit,anodes;
  reg [7:0] segments;
  always @ (enable or display or latched_value) begin
    // select hex digit from latched value (digit)
    // turn on appropriate digit of display (anodes)
    if (enable)
      case (display)
      0: begin digit = latched_value[3:0]; anodes = 4'b1110; end
      1: begin digit = latched_value[7:4]; anodes = 4'b1101; end
      2: begin digit = latched_value[11:8]; anodes = 4'b1011; end
      3: begin digit = latched_value[15:12]; anodes = 4'b0111; end
      endcase
    else anodes = 4'b1111;
  end

  // hex digit -> 7-segment display
  // segments[0] = top segment (a)
  // segments[1] = top right segment (b)
  // segments[2] = bottom right segment (c)
  // segments[3] = bottom segment (d)
  // segments[4] = bottom left segment (e)
  // segments[5] = top left segment (f)
  // segments[6] = middle segment (g)
  // segments[7] = decimal point
  always @ (digit) begin
    case (digit)
    4'h0: segments[6:0] = ~7'b0111111;
    4'h1: segments[6:0] = ~7'b0000110;
    4'h2: segments[6:0] = ~7'b1011011;
    4'h3: segments[6:0] = ~7'b1001111;
    4'h4: segments[6:0] = ~7'b1100110;
    4'h5: segments[6:0] = ~7'b1101101;
    4'h6: segments[6:0] = ~7'b1111101;
    4'h7: segments[6:0] = ~7'b0000111;
    4'h8: segments[6:0] = ~7'b1111111;
    4'h9: segments[6:0] = ~7'b1100111;
    4'hA: segments[6:0] = ~7'b1110111;
    4'hB: segments[6:0] = ~7'b1111100;
    4'hC: segments[6:0] = ~7'b1011000;
    4'hD: segments[6:0] = ~7'b1011110;
    4'hE: segments[6:0] = ~7'b1111001;
    4'hF: segments[6:0] = ~7'b1110001;
    endcase
    segments[7] = ~1'b0;  // decimal point
  end

endmodule

///////////////////////////////////////////////////////////////////////////////
//
// Camera test module
//
///////////////////////////////////////////////////////////////////////////////

module camera_test_nexys2(

	input clk, // 50MHz clock
		
	input [7:0] JA, // camera output signals (href, vsync, pclk) 
	input [7:0] JB, // camera output data
	
	output [7:0] JC, // SCCB pins
	
	input [3:0] btn, // reset button
	
	output [7:0] Led, // LEDs
	
	output [2:0] vgaRed, vgaGreen, // VGA signals
	output [1:0] vgaBlue,
	output Hsync, Vsync,
	
	output clock_25mhz, // camera drivers
	inout sdiod,
	output sdioc,
	output xclk,
	output sccb_clk,
	
	output [6:0] seg,
	output dp,
	output [3:0] an
	
);

	// Generic assigns
	assign JC = 0;
	assign vgaRed = 0;
	assign vgaGreen = 0;
	assign vgaBlue = 0;
	assign Hsync = 0;
	assign Vsync = 0;
	assign sdoid = 0;
	
	// 7-segment display driver
	wire tick;
	module segdisplay(
		.clk(clock_25mhz),
		.enable(0),
		.value(4'hABCD),
		.anodes(an),
		.segments({dp, seg[6:0]},
		.tick(tick));
	
	// Clock dividers
	wire clock_25mhz_unbuf, clock_25mhz;
	   DCM vgaclk #(.C_CLKFX_MULTIPLY(1), .C_CLKFX_DIVIDE(2), .C_CLK_FEEDBACK("NONE"),
					.C_CLKIN_PERIOD(20))
				   (.CLKIN(clk),.CLKFX(clock_25mhz_unbuf));
	   BUFG vgaclk2(.O(clock_25mhz),.I(clock_25mhz_unbuf));
	   
	assign xclk = clock_25mhz;
	   
	wire clock_100khz_unbuf, clock_100khz;
	   DCM sccbclk #(.C_CLKFX_MULTIPLY(1), .C_CLKFX_DIVIDE(500), .C_CLK_FEEDBACK("NONE"),
					.C_CLKIN_PERIOD(20), .C_PHASE_SHIFT(90))
				   (.CLKIN(clk),.CLKFX(clock_100khz_unbuf));
	   BUFG sccbclk2(.O(clock_100khz),.I(clock_100khz_unbuf));
	   
	assign sccb_clk = clock_100khz;
	   
	// Reset generation
	wire reset;
	  SRL16 reset_sr(.D(1'b0), .CLK(clock_25mhz), .Q(reset),
					 .A0(1'b1), .A1(1'b1), .A2(1'b1), .A3(1'b1));
	  defparam reset_sr.INIT = 16'hFFFF;
	  
	// Code for camera test
	// Debounce inputs
	wire global_reset, rst;
		debounce sys_reset(.reset(reset), .clock(clock_25mhz), .noisy(~btn[0]),
						   .clean(global_reset));
		assign rst = global_reset | reset;
		
	/* Wire up camera inputs/drivers
	wire sioc;
	BUFG sioc_buf (.O(sioc), .I(JA[0]));
	
	wire siod;
	assign siod = JA[1];
	
	wire vsync_in;
	assign vsync_in = JA[2];
	
	wire href_in;
	assign href_in = JA[3];
	
	wire pclk;
	BUFG pclk_buf (.O(pclk), .I(JA[4]));
	
	wire xclk;
	BUFG clk_buf (.O(JA[5]), .I(clock_25mhz));
	
	wire [7:0] camera_in;
	assign camera_in = JB[7:0];
	
	wire camera_pwr, camera_gnd;
	assign camera_power = JA[5];
	assign JA[5] = 1'b1;
	
	assign camera_gnd = JA[6];
	assign JA[6] = 1'b0;
	
// Instantiate camera reader
	wire [31:0] pixel_out;
	wire pixel_done, frame_done;
	camera_read read (
		.reset(rst), 
		.clk(clock_25mhz), 
		.vsync(vsync_in), 
		.href(href_in), 
		.pclk(pclk), 
		.data_in(camera_in), 
		.data_out(pixel_out), 
		.pixel_done(pixel_done), 
		.frame_done(frame_done)
	);

// Instantiate camera save
	wire we;
	wire [18:0] addr;
	wire [7:0] save_pixel_out;
	assign led = {we, 7'b1};
	camera_save frame_buffer(
		.clk(~pclk),
		.reset(rst),
		.pixel_done(pixel_done),
		.data_in(pixel_out),
		.frame_done(frame_done),
		.pixel_out(save_pixel_out),
		.addr(addr),
		.we(we)
	);
	
// Generate VGA signals
	VgaRefComp vgadrive(
		.CLK_25MHz(clock_25mhz),
		.CLK_40MHz(clk),
		.RESOLUTION(0),
		.RST(rst),
		.BLANK(blank),
		.HCOUNT(hcount),
		.HS(hs),
		.VCOUNT(vcount),
		.VS(vs)
	);
	
	assign Hsync = hs;
	assign Vsync = vs;
	
	assign vgaRed = bram_out[7:5];
	assign vgaGreen = bram_out[7:5];
	assign vgaBlue = bram_out[7:6]; */
	
	assign Led = 2'hAA;

endmodule
	
	
	
	   
	