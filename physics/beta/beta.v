///////////////////////////////////////////////////////////////////////////////
//
//	2-stage pipelined Beta (one bidirectional memory port) [cjt]
//
///////////////////////////////////////////////////////////////////////////////

module beta2(clk,reset,irq,xadr,ma,mdin,mdout,mwe);
  input clk,reset,irq;
  input [30:0] xadr;
  output [31:0] ma,mdout;
  input [31:0] mdin;
  output mwe;

  // beta2 registers
  reg [31:0] npc = 0;
  reg [31:0] pc_inc = 0;
  reg [31:0] inst = 0;
  reg [4:0] rc_save = 0;  // needed for second cycle on LD,LDR

  // internal buses
  wire [31:0] rd1,rd2,wd;
  wire [31:0] a,b,xb,c,addsub,cmp,shift,boole,mult;

  // control signals
  wire wasel,werf,z,asel,bsel,csel;
  wire addsub_op,cmp_lt,cmp_eq,shift_op,shift_sxt,boole_and,boole_or;
  wire wd_addsub,wd_cmp,wd_shift,wd_boole,wd_mult;
  wire msel,msel_next,branch,trap,interrupt;

  // pc
  wire [31:0] npc_inc,npc_next;
  assign npc_inc = npc + 4;
  assign npc_next = reset ? 32'h80000000 :
                    msel ? npc :
                    branch ? {npc[31] & addsub[31],addsub[30:2],2'b00} :
                    trap ? 32'h80000004 :
                    interrupt ? {1'b1,xadr} :
                    {npc[31],npc_inc[30:0]};
  always @ (posedge clk) begin
    npc <= npc_next;   // logic for msel handled above
    if (!msel) pc_inc <= {npc[31],npc_inc[30:0]};
  end

  // instruction reg
  always @ (posedge clk) if (!msel) inst <= mdin;

  // control logic
  decode ctl(.clk(clk),.reset(reset),.irq(irq & !npc[31]),.z(z),
             .opcode(inst[31:26]),
             .asel(asel),.bsel(bsel),.csel(csel),.wasel(wasel),
             .werf(werf),.msel(msel),.msel_next(msel_next),.mwe(mwe),
             .addsub_op(addsub_op),.cmp_lt(cmp_lt),.cmp_eq(cmp_eq),
             .shift_op(shift_op),.shift_sxt(shift_sxt),
             .boole_and(boole_and),.boole_or(boole_or),
             .wd_addsub(wd_addsub),.wd_cmp(wd_cmp),
             .wd_shift(wd_shift),.wd_boole(wd_boole),.wd_mult(wd_mult),
             .branch(branch),.trap(trap),.interrupt(interrupt));
                  
  // register file
  wire [4:0] wa;
  always @ (posedge clk) if (!msel) rc_save <= inst[25:21];
  assign wa = msel ? rc_save : wasel ? 5'd30 : inst[25:21];

  regfile rf(inst[20:16],rd1,inst[15:11],rd2,inst[25:21],mdout,
                 wa,wd,clk,werf);

  assign z = ~| rd1;   // used in BEQ/BNE instructions

  // alu
  assign a = asel ? pc_inc : rd1;
  assign b = bsel ? c : rd2;
  assign c = csel ? {{14{inst[15]}},inst[15:0],2'b00} :
                    {{16{inst[15]}},inst[15:0]};

  wire addsub_n,addsub_v,addsub_z;
  assign xb = {32{addsub_op}} ^ b;
  assign addsub = a + xb + addsub_op;
  assign addsub_n = addsub[31];
  assign addsub_v = (addsub[31] & ~a[31] & ~xb[31]) |
                    (~addsub[31] & a[31] & xb[31]);
  assign addsub_z = ~| addsub;

  assign cmp[31:1] = 0;
  assign cmp[0] = (cmp_lt & (addsub_n ^ addsub_v)) | (cmp_eq & addsub_z);

  //commented in to add multiply to beta
  mul32 mpy(a,b,mult);

  wire [31:0] shift_right;
  // Verilog >>> operator not synthesized correctly, so do it by hand
  shift_right sr(shift_sxt,a,b[4:0],shift_right);
  assign shift = shift_op ? shift_right : a << b[4:0];

  assign boole = boole_and ? (a & b) : boole_or ? (a | b) : a ^ b;

  // result mux, listed in order of speed (slowest first)
  assign wd = msel ? mdin :
              wd_cmp ? cmp :
              wd_addsub ? addsub :
              wd_mult ? mult :
              wd_shift ? shift :
              wd_boole ? boole :
              pc_inc;

  // assume synchronous external memory
  assign ma = msel_next ? {npc[31],addsub[30:0]} : npc_next;
endmodule

///////////////////////////////////////////////////////////////////////////////
//
//	3-port register file
//
///////////////////////////////////////////////////////////////////////////////

// Beta register file: 32 registers of 32 bits
// R31 always reads as 0
// 3 read ports, 1 write port
module regfile(ra1,rd1,ra2,rd2,ra3,rd3,wa,wd,clk,werf);
  input [4:0] ra1,ra2,ra3,wa;
  output [31:0] rd1,rd2,rd3;
  input [31:0] wd;
  input clk,werf;

  (* ram_style = "distributed" *)
  reg [31:0] regfile[31:0];
  //this may be required for simulation?
  integer i; initial for (i = 0; i < 32; i = i + 1) regfile[i] = 32'h0;

  assign rd1 = regfile[ra1];
  assign rd2 = regfile[ra2];
  assign rd3 = regfile[ra3];

  always @ (posedge clk)
    if (werf && wa != 31) regfile[wa] <= wd;

endmodule

///////////////////////////////////////////////////////////////////////////////
//
//	Instruction decode (inst => datapath control signals)
//
///////////////////////////////////////////////////////////////////////////////

//added multiply to beta! 
module decode(clk,reset,irq,z,opcode,
              asel,bsel,csel,wasel,werf,msel,msel_next,mwe,
              addsub_op,cmp_lt,cmp_eq,
              shift_op,shift_sxt,boole_and,boole_or,
              wd_addsub,wd_cmp,wd_shift,wd_boole,wd_mult,
	      branch,trap,interrupt);
  input clk,reset,irq,z;
  input [5:0] opcode;
  output asel,bsel,csel,wasel,werf,msel,msel_next,mwe;
  output addsub_op,shift_op,shift_sxt,cmp_lt,cmp_eq,boole_and,boole_or;
  output wd_addsub,wd_cmp,wd_shift,wd_boole,wd_mult;
  output branch,trap,interrupt;

  reg asel,bsel,csel,wasel,mem_next;
  reg addsub_op,shift_op,shift_sxt,cmp_lt,cmp_eq,boole_and,boole_or;
  reg wd_addsub,wd_cmp,wd_shift,wd_boole,wd_mult;
  reg branch,trap,interrupt;

  // a little bit of state...
  reg annul,msel,mwrite;

  always @ (opcode or z or annul or msel or irq or reset)
  begin
    // initial assignments for all control signals
    asel = 1'hx;
    bsel = 1'hx;
    csel = 1'hx;
    addsub_op = 1'hx;
    shift_op = 1'hx;
    shift_sxt = 1'hx;
    cmp_lt = 1'hx;
    cmp_eq = 1'hx;
    boole_and = 1'hx;
    boole_or = 1'hx;

    wasel = 0;
    mem_next = 0;

    wd_addsub = 0;
    wd_cmp = 0;
    wd_shift = 0;
    wd_boole = 0;
    wd_mult = 0;

    branch = 0;
    trap = 0;
    interrupt = 0;

    if (irq && !reset && !annul && !msel) begin
      interrupt = 1;
      wasel = 1;
    end else casez (opcode)
      6'b011000: begin   // LD
                   asel = 0; bsel = 1; csel = 0;
                   addsub_op = 0;
		   mem_next = 1;
                 end
      6'b011001: begin   // ST
                   asel = 0; bsel = 1; csel = 0;
                   addsub_op = 0;
		   mem_next = 1;
                 end
      6'b011011: begin   // JMP
                   asel = 0; bsel = 1; csel = 0;
                   addsub_op = 0;
                   branch = !annul && !msel;
                 end
      6'b011101: begin   // BEQ
                   asel = 1; bsel = 1; csel = 1;
                   addsub_op = 0;
                   branch = !annul && !msel && z;
                 end
      6'b011110: begin   // BNE
                   asel = 1; bsel = 1; csel = 1;
                   addsub_op = 0;
                   branch = !annul && !msel && ~z;
                 end
      6'b011111: begin   // LDR
                   asel = 1; bsel = 1; csel = 1;
                   addsub_op = 0;
		   mem_next = 1;
                 end
      6'b1?0000: begin   // ADD, ADDC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   addsub_op = 0;
                   wd_addsub = 1;
                 end
      6'b1?0001: begin   // SUB, SUBC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   addsub_op = 1;
                   wd_addsub = 1;
                 end
	  //commented in to enable multiply
      6'b1?0010: begin   // MUL, MULC
                   asel = 0; bsel = opcode[4]; csel = 0;
                  wd_mult = 1;
                end
      6'b1?0100: begin   // CMPEQ, CMPEQC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   addsub_op = 1;
		   cmp_eq = 1; cmp_lt = 0;
                   wd_cmp = 1;
                 end
      6'b1?0101: begin   // CMPLT, CMPLTC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   addsub_op = 1;
		   cmp_eq = 0; cmp_lt = 1;
                   wd_cmp = 1;
                 end
      6'b1?0110: begin   // CMPLE, CMPLEC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   addsub_op = 1;
		   cmp_eq = 1; cmp_lt = 1;
                   wd_cmp = 1;
                 end
      6'b1?1000: begin   // AND, ANDC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   boole_and = 1; boole_or = 0;
                   wd_boole = 1;
                 end
      6'b1?1001: begin   // OR, ORC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   boole_and = 0; boole_or = 1;
                   wd_boole = 1;
                 end
      6'b1?1010: begin   // XOR, XORC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   boole_and = 0; boole_or = 0;
                   wd_boole = 1;
                 end
      6'b1?1100: begin   // SHL, SHLC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   shift_op = 0;
                   wd_shift = 1;
                 end
      6'b1?1101: begin   // SHR, SHRC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   shift_op = 1; shift_sxt = 0;
                   wd_shift = 1;
                 end
      6'b1?1110: begin   // SRA, SRAC
                   asel = 0; bsel = opcode[4]; csel = 0;
                   shift_op = 1; shift_sxt = 1;
                   wd_shift = 1;
                 end
      default:   begin   // illegal opcode
                   trap = !annul && !msel; wasel = 1;
                 end
    endcase
  end

  // state
  wire msel_next = !reset && !annul && mem_next && !msel;
  wire mwrite_next = msel_next && opcode==6'b011001;
 
  always @ (posedge clk)
  begin
    annul <= !reset && (trap || branch || interrupt);
    msel <= msel_next;
    mwrite <= mwrite_next;
  end

  assign mwe = mwrite_next;   // assume synchronous memory
  assign werf = msel ? !mwrite : (!annul & !mem_next);
endmodule

///////////////////////////////////////////////////////////////////////////////
//
//	32-bit signed/unsiged right shift
//
///////////////////////////////////////////////////////////////////////////////

module shift_right(sxt,a,b,shift_right);
  input sxt;
  input [31:0] a;
  input [4:0] b;
  output [31:0] shift_right;

  wire [31:0] w,x,y,z;
  wire sin;7FFF

  assign sin = sxt & a[31];
  assign w = b[0] ? {sin,a[31:1]} : a;
  assign x = b[1] ? {{2{sin}},w[31:2]} : w;
  assign y = b[2] ? {{4{sin}},x[31:4]} : x;
  assign z = b[3] ? {{8{sin}},y[31:8]} : y;
  assign shift_right = b[4] ? {{16{sin}},z[31:16]} : z;
endmodule


//modification to beta: add 32 bit multiply
//mul32 mpy(a,b,mult);

module mul32(a,b, mult);
	input  wire [31:0] a;
	input  wire [31:0] b;
	output wire [31:0] mult;
	assign mult = {multi_out[31:0]};
	
	//
	wire [64:0] mult_out;
	assign mult_out = a*b;
	
endmodule
	
	