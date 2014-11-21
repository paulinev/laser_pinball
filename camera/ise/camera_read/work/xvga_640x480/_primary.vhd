library verilog;
use verilog.vl_types.all;
entity xvga_640x480 is
    port(
        vclock          : in     vl_logic;
        hcount          : out    vl_logic_vector(9 downto 0);
        vcount          : out    vl_logic_vector(9 downto 0);
        vsync           : out    vl_logic;
        hsync           : out    vl_logic;
        blank           : out    vl_logic
    );
end xvga_640x480;
