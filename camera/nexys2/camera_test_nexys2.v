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
	assign JC[6:0] = 7'b0;
	//assign vgaRed = 0;
	//assign vgaGreen = 0;
	//assign vgaBlue = 0;
	//assign Hsync = 0;
	//assign Vsync = 0;
	//assign sdoid = 1;
	//assign sioc = 1;
	
	// Clock dividers
	wire clock_25mhz_unbuf, clock_25mhz; 	
		DCM vgaclk(.CLKIN(clk),.CLKFX(clock_25mhz_unbuf));
		// synthesis attribute CLKFX_DIVIDE of vgaclk is 4
		// synthesis attribute CLKFX_MULTIPLY of vgaclk is 2
		// synthesis attribute CLK_FEEDBACK of vgaclk is NONE
		// synthesis attribute CLKIN_PERIOD of vgaclk is 20
	   BUFG vgaclk2(.O(clock_25mhz),.I(clock_25mhz_unbuf));
	   
	// This needs to be 100kHz but I can't get it that slow in one shot;
	// also SCCB is not my priority right now.
	wire clock_10mhz_unbuf, clock_10mhz;
	DCM sccbclk(.CLKIN(clk),.CLKFX(clock_10mhz_unbuf));
		// synthesis attribute CLKFX_DIVIDE of sccbclk is 10
		// synthesis attribute CLKFX_MULTIPLY of sccbclk is 2
		// synthesis attribute CLK_FEEDBACK of sccbclk is NONE
		// synthesis attribute CLKIN_PERIOD of sccbclk is 20
		// synthesis attribute PHASE_SHIFT of sccbclk is 0
		// synthesis attribute CLKOUT_PHASE_SHIFT of sccbclk is NONE
	   BUFG sccbclk2(.O(clock_10mhz),.I(clock_10mhz_unbuf));
	   
	assign sccb_clk = clock_10mhz;
	assign xclk = clock_25mhz;
	   
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
		
	
	// 7-segment display driver, not working, not sure why.
	wire tick;
	segdisplay hexdisp(
		.clk(clock_25mhz),
		.enable(0),
		.value(4'h0abc),
		.anodes(an),
		.segments({dp, seg[6:0]}),
		.tick(tick)
	);
		
	// Wire up camera inputs/drivers
	//wire sdioc;
	//BUFG sioc_buf (.O(sioc), .I(JA[0]));
	
	//wire sdiod;
	//assign siod = JA[1];
	
	wire vsync_in;
	assign vsync_in = JA[3];
	
	wire href_in;
	assign href_in = JA[4];
	
	wire pclk;
	assign pclk = JA[5];
	
	BUFG clk_buf (.O(JC[7]), .I(xclk));
	
	wire [7:0] camera_in;
	assign camera_in = JB[7:0];
	
	
// Generate VGA display signals
	wire [9:0] vcount, hcount;
	wire vsync_out, hsync_out, blank_out;	
	
		// Something about this is unhappy. Unclear.
/*// Generate VGA signals
	VgaRefComp vgadrive(
		.CLK_25MHz(clock_25mhz),
		.CLK_40MHz(clk),
		.RESOLUTION(0),
		.RST(rst),
		.BLANK(blank),
		.HCOUNT(hcount),
		.HS(hsync_out),
		.VCOUNT(vcount),
		.VS(vsync_out)
	);
	
	assign Hsync = hs;
	assign Vsync = vs;
	
	assign vgaRed = bram_out[7:5];
	assign vgaGreen = bram_out[7:5];
	assign vgaBlue = bram_out[7:6]; */
	
// Instantiate camera reader
	wire [31:0] pixel_out;
	wire [18:0] addr_write, addr_read;
	wire [1:0] count;
	wire pixel_done, running, frame_done;
	camera_read read (
		.reset(rst), 
		.vsync(vsync_in),
		.vsync_vga(vsync_out),
		.blank_vga(blank_out),
		.href(href_in), 
		.pclk(pclk), 
		.data_in(camera_in), 
		.data_out(pixel_out), 
		.pixel_done(pixel_done), 
		.frame_done(frame_done),
		.addr_write(addr_write),
		.addr_read(addr_read),
		.count(count),
		.running(running)
	);

	// You're going to have to instantiate this with the Xilinx memory tool
	wire [5:0] bram_out;
	dual_port_bram fbuf(
		.clka(pclk),
		.dina(pixel_out[5:0]),
		.addra(addr_write),
		.wea(pixel_done),
		.clkb(pclk),
		.addrb(addr_read),
		.doutb(bram_out)
	);

	

	
	assign Led = {we, pixel_done, frame_done, pclk, 4'b0};
	

endmodule
	
	
	
	   
	