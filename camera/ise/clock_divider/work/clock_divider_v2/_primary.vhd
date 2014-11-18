library verilog;
use verilog.vl_types.all;
entity clock_divider_v2 is
    generic(
        delay           : integer := 1000
    );
    port(
        reset           : in     vl_logic;
        ref_clk         : in     vl_logic;
        clk_out         : out    vl_logic
    );
end clock_divider_v2;
