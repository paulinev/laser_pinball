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
