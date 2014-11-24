module vga(clk,hsync,vsync,rgb,irq_60Hz,irq_clear,mwe,maddr,mdin,mdout,blank,
	   pixel_clk);
  input clk;     // 50Mhz
  output hsync;
  output vsync;
  output [2:0] rgb;
  output irq_60Hz;
  input irq_clear;
  output blank;
  output pixel_clk;

  input mwe;
  input [9:0] maddr;     // access to character buffer
  input [31:0] mdin;
  output [31:0] mdout;

  // pixel clock: 25Mhz = 40ns (clk/2)
  reg pcount;		 // used to generate pixel clock
  wire en = (pcount == 0);
  always @ (posedge clk) pcount <= ~pcount;
  wire pixel_clk = ~en;

  //****************************************************************
  //****************************************************************
  //***
  //***  Sync and Blanking Signals
  //***
  //****************************************************************
  //****************************************************************

  reg irq_60Hz;
  reg hsync,vsync,hblank,vblank;
  reg [9:0] hcount;      // pixel number on current line
  reg [9:0] vcount;	 // line number

  // horizontal: 794 pixels = 31.76us
  // display 640 pixels per line
  wire hsyncon,hsyncoff,hreset,hblankon;
  assign hblankon = en & (hcount == 639);    
  assign hsyncon = en & (hcount == 652);
  assign hsyncoff = en & (hcount == 746);
  assign hreset = en & (hcount == 793);

  // vertical: 528 lines = 16.77us
  // display 480 lines
  wire vsyncon,vsyncoff,vreset,vblankon;
  assign vblankon = hreset & (vcount == 479);    
  assign vsyncon = hreset & (vcount == 492);
  assign vsyncoff = hreset & (vcount == 494);
  assign vreset = hreset & (vcount == 527);

  // sync and blanking
  always @(posedge clk) begin
    hcount <= en ? (hreset ? 0 : hcount + 1) : hcount;
    hblank <= hreset ? 0 : hblankon ? 1 : hblank;
    hsync <= hsyncon ? 0 : hsyncoff ? 1 : hsync;   // hsync is active low

    vcount <= hreset ? (vreset ? 0 : vcount + 1) : vcount;
    vblank <= vreset ? 0 : vblankon ? 1 : vblank;
    vsync <= vsyncon ? 0 : vsyncoff ? 1 : vsync;   // vsync is active low

    // 60Hz interrupt requested at start of vertical retrace.
    // irq is reset by access to penultimate word in cmem
    if (hreset && vreset) irq_60Hz <= 1;
    else if (irq_clear) irq_60Hz <= 0;
  end

  wire blank = vblank | hblank;

  //****************************************************************
  //****************************************************************
  //***
  //***  80 x 40 character display (8 x 12 characters)
  //***
  //****************************************************************
  //****************************************************************

  reg [6:0] column;    // 0 .. 79
  reg [5:0] row;       // 0 .. 39
  reg [3:0] v;         // 0 .. 11
  reg [2:0] h;         // 0 .. 7

  wire [6:0] next_column = hreset ? 0 :
                           h == 7 ? column+1 :
                           column;
  wire [5:0] next_row = hreset ? (vreset ? 0 : (v == 11) ? row+1 : row) : row;

  always @ (posedge clk)
  if (en) begin
    h <= hreset ? 0 : h+1;
    if (hreset) v <= (vreset || v == 11) ? 0 : v+1;
    column <= next_column;
    row <= next_row;
  end

  // look up character in 80x40 buffer.  Use next_row and next_column
  // so that synchronous memory can get started at beginning of pixel
  wire [11:0] char_addr = next_row*80 + next_column;
  wire [7:0] char;
  xcmem b(.addra(char_addr),.clka(clk),.douta(char),
	  .addrb(maddr),.clkb(clk),.dinb(mdin),.doutb(mdout),.web(mwe));

  // look up raster row from font rom.  Since we're using the 2x clock
  // this will happen halfway thru the pixel and the raster data can
  // be latched at the beginning of the next pixel.
  reg reverse;
  always @ (posedge clk) reverse <= char[7];
  wire [10:0] font_addr = char[6:0]*12 + v;    // 12 bytes per character
  wire [7:0] font_byte;

  xfont f(font_addr,clk,font_byte);
  wire [2:0] f_pixel = (font_byte[7 - h] ^ reverse) ? 7 : 0;

  //****************************************************************
  //****************************************************************
  //***
  //***  Pixel logic
  //***
  //****************************************************************
  //****************************************************************

   wire [2:0] borderpix = (hcount==0|hcount==639|vcount==0|vcount==479) ? 7:0;

  reg [2:0] rgb;
  always @(posedge clk) if (en) begin
//    if (vblank | (hblank & ~hreset))    // blanking => black
//      rgb <= 0;
//    else
      rgb <= f_pixel | borderpix;
  end

endmodule

