library verilog;
use verilog.vl_types.all;
entity debounce is
    generic(
        DELAY           : integer := 270000
    );
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        noisy           : in     vl_logic;
        clean           : out    vl_logic
    );
end debounce;
