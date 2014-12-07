`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:53 12/02/2014 
// Design Name: 
// Module Name:    vga_drive 
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
//taken from 6.111 lab and altered for lower resolution
//need to make this double the vclock
module vga_drive(
				input vclock, //twice the pixel clock
            output wire [9:0] hcount,    // pixel number on current line
            output wire [9:0] vcount,	 // line number
            output reg vsync = 0,
				output reg hsync = 0,
				output reg blank = 0
				);

   // horizontal: 800 pixels total
   // display 640 pixels per line
   reg hblank = 0;
	reg vblank = 0;
	reg [10:0] vcount_d = 0;
	reg [10:0] hcount_d = 0;
	assign vcount = vcount_d[10:1];
	assign hcount = hcount_d[10:1];
	
	
   wire hsyncon,hsyncoff,hreset,hblankon;
	
   assign hblankon = (hcount_d == (639*2)); //blank after display width    
   assign hsyncon = (hcount_d == (655*2)); // active video + front porch
   assign hsyncoff = (hcount_d == (751*2)); //active video + front portch + sync
   assign hreset = (hcount_d == (799*2)); //plus back porch

   // vertical: 806 lines total
   // display 480 lines
   wire vsyncon,vsyncoff,vreset,vblankon;
   assign vblankon = hreset & (vcount_d == (479*2));    
   assign vsyncon = hreset & (vcount_d == (489*2));
   assign vsyncoff = hreset & (vcount_d == (491*2));
   assign vreset = hreset & (vcount_d == (524*2));

   // sync and blanking
   wire next_hblank,next_vblank;
   assign next_hblank = hreset ? 0 : hblankon ? 1 : hblank;
   assign next_vblank = vreset ? 0 : vblankon ? 1 : vblank;
   always @(posedge vclock) begin
      hcount_d <= hreset ? 0 : hcount_d + 1;
      hblank <= next_hblank;
      hsync <= hsyncon ? 0 : hsyncoff ? 1 : hsync;  // active low

      vcount_d <= hreset ? (vreset ? 0 : vcount_d + 2) : vcount_d;
      vblank <= next_vblank;
      vsync <= vsyncon ? 0 : vsyncoff ? 1 : vsync;  // active low

      blank <= next_vblank | (next_hblank & ~hreset);
   end
endmodule

