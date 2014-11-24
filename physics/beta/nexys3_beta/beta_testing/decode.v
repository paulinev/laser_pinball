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
      //6'b1?0010: begin   // MUL, MULC
      //             asel = 0; bsel = opcode[4]; csel = 0;
      //             wd_mult = 1;
      //           end
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
