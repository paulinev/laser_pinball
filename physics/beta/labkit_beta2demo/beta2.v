module beta2(clk,reset,irq,xadr,ma,mdin,mdout,mwe);
  input clk,reset,irq;
  input [30:0] xadr;
  output [31:0] ma,mdout;
  input [31:0] mdin;
  output mwe;

  // beta2 registers
  reg [31:0] regfile[31:0];
  reg [31:0] npc,pc_inc;
  reg [31:0] inst;
  reg [4:0] rc_save;  // needed for second cycle on LD,LDR

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
  wire [4:0] ra1,ra2,wa;
  always @ (posedge clk) if (!msel) rc_save <= inst[25:21];
  assign ra1 = inst[20:16];
  assign ra2 = msel_next ? inst[25:21] : inst[15:11];
  assign wa = msel ? rc_save : wasel ? 5'd30 : inst[25:21];
  assign rd1 = (ra1 == 31) ? 0 : regfile[ra1];         // read port 1
  assign rd2 = (ra2 == 31) ? 0 : regfile[ra2];         // read port 2
  always @ (posedge clk) if (werf) regfile[wa] <= wd;  // write port

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

  //mul32 mpy(a,b,mult);

  wire [31:0] shift_right;
  // Verilog >>> operator not synthesized correctly, so do it by hand
  shift_right sr(shift_sxt,a,b[4:0],shift_right);
  assign shift = shift_op ? shift_right : a << b[4:0];

  assign boole = boole_and ? (a & b) : boole_or ? (a | b) : a ^ b;

  // result mux, listed in order of speed (slowest first)
  assign wd = msel ? mdin :
              wd_cmp ? cmp :
              wd_addsub ? addsub :
              //wd_mult ? mult :
              wd_shift ? shift :
              wd_boole ? boole :
              pc_inc;

  // assume synchronous external memory
  assign ma = msel_next ? {npc[31],addsub[30:0]} : npc_next;
  assign mdout = rd2;
endmodule
