// build an 80x24 character memory with two ports:
// * one is 8 bits wide (and read-only) for use by the video refresh circuitry
// * one is 32 bits wide for use by the CPU
module xcmem(addra,clka,douta,addrb,clkb,dinb,doutb,web);
   input [11:0] addra;
   input clka;
   output [7:0] douta;
   input [9:0] addrb;
   input clkb;
   input [31:0] dinb;
   output [31:0] doutb;
   input web;

   // use 2 BRAMs
   // port A: 4K x 4
   // port B: 1K x 16
   RAMB16_S4_S18 mlo(.CLKA(clka),.ADDRA(addra),.DOA(douta[3:0]),
                     .WEA(1'b0),.ENA(1'b1),.SSRA(1'b0),
                     .CLKB(clkb),.ADDRB(addrb),
                     .DIB({dinb[27:24],dinb[19:16],dinb[11:8],dinb[3:0]}),
                     .DOB({doutb[27:24],doutb[19:16],doutb[11:8],doutb[3:0]}),
                     .WEB(web),.ENB(1'b1),.SSRB(1'b0),.DIPB(2'b0)
                     ),
                 mhi(.CLKA(clka),.ADDRA(addra),.DOA(douta[7:4]),
		     .WEA(1'b0),.ENA(1'b1),.SSRA(1'b0),
                     .CLKB(clkb),.ADDRB(addrb),
                     .DIB({dinb[31:28],dinb[23:20],dinb[15:12],dinb[7:4]}),
                     .DOB({doutb[31:28],doutb[23:20],doutb[15:12],doutb[7:4]}),
                     .WEB(web),.ENB(1'b1),.SSRB(1'b0),.DIPB(2'b0)
                  );

endmodule // xcmem
