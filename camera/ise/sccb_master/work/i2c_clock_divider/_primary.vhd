library verilog;
use verilog.vl_types.all;
entity i2c_clock_divider is
    generic(
        delay           : integer := 1000
    );
    port(
        rst             : in     vl_logic;
        ref_clk         : in     vl_logic;
        i2c_clk         : out    vl_logic
    );
end i2c_clock_divider;
