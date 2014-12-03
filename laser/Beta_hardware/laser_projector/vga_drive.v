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
module vga_drive(input vclock,
            output reg [9:0] hcount = 0,    // pixel number on current line
            output reg [9:0] vcount = 0,	 // line number
            output reg vsync = 0,
				output reg hsync = 0,
				output reg blank = 0
				);

   // horizontal: 800 pixels total
   // display 640 pixels per line
   reg hblank = 0;
	reg vblank = 0;
   wire hsyncon,hsyncoff,hreset,hblankon;
   assign hblankon = (hcount == 639); //blank after display width    
   assign hsyncon = (hcount == 655); // active video + front porch
   assign hsyncoff = (hcount == 751); //active video + front portch + sync
   assign hreset = (hcount == 799); //plus back porch

   // vertical: 806 lines total
   // display 480 lines
   wire vsyncon,vsyncoff,vreset,vblankon;
   assign vblankon = hreset & (vcount == 479);    
   assign vsyncon = hreset & (vcount == 490);
   assign vsyncoff = hreset & (vcount == 492);
   assign vreset = hreset & (vcount == 523);

   // sync and blanking
   wire next_hblank,next_vblank;
   assign next_hblank = hreset ? 0 : hblankon ? 1 : hblank;
   assign next_vblank = vreset ? 0 : vblankon ? 1 : vblank;
   always @(posedge vclock) begin
      hcount <= hreset ? 0 : hcount + 1;
      hblank <= next_hblank;
      hsync <= hsyncon ? 0 : hsyncoff ? 1 : hsync;  // active low

      vcount <= hreset ? (vreset ? 0 : vcount + 1) : vcount;
      vblank <= next_vblank;
      vsync <= vsyncon ? 0 : vsyncoff ? 1 : vsync;  // active low

      blank <= next_vblank | (next_hblank & ~hreset);
   end
endmodule

