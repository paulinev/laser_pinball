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
	
	//output [2:0] vgaRed, vgaGreen, // VGA signals
	//output [1:0] vgaBlue,
	//output Hsync, Vsync,
	
	inout sdiod, // camera drivers
	output sdioc,
	output xclk,
	output sccb_clk,
	
	output [6:0] seg,
	output dp,
	output [3:0] an
	
);

	// Generic assigns
	assign JC = 0;
	//assign vgaRed = 0;
	//assign vgaGreen = 0;
	//assign vgaBlue = 0;
	//assign Hsync = 0;
	//assign Vsync = 0;
	assign sdoid = 0;
	
	// Clock dividers
	wire clock_25mhz_unbuf, clock_25mhz; // actually 10mhz because i am a terrible persion
	
		DCM vgaclk(.CLKIN(clk),.CLKFX(clock_25mhz_unbuf));
		// synthesis attribute CLKFX_DIVIDE of vgaclk is 10
		// synthesis attribute CLKFX_MULTIPLY of vgaclk is 2
		// synthesis attribute CLK_FEEDBACK of vgaclk is NONE
		// synthesis attribute CLKIN_PERIOD of vgaclk is 20
	   BUFG vgaclk2(.O(clock_25mhz),.I(clock_25mhz_unbuf));
	   
	assign xclk = clock_25mhz;
	   
	wire clock_100khz_unbuf, clock_100khz; // not slow enough, don't want to worry about it now
	   DCM sccbclk(.CLKIN(clk),.CLKFX(clock_100khz_unbuf));
		// synthesis attribute CLKFX_DIVIDE of sccbclk is 25
		// synthesis attribute CLKFX_MULTIPLY of sccbclk is 2
		// synthesis attribute CLK_FEEDBACK of sccbclk is NONE
		// synthesis attribute CLKIN_PERIOD of sccbclk is 20
		// synthesis attribute PHASE_SHIFT of sccbclk is 90
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
		
	
	// 7-segment display driver
	wire tick;
	segdisplay hexdisp(
		.clk(clock_25mhz),
		.enable(0),
		.value('hABCD),
		.anodes(an),
		.segments({dp, seg[6:0]}),
		.tick(tick)
	);
		
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
	
	
	
	   
	