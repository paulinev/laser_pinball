library verilog;
use verilog.vl_types.all;
entity camera_save is
    generic(
        LOGSIZE         : integer := 19;
        WIDTH           : integer := 8
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pixel_done      : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        frame_done      : in     vl_logic;
        addr            : out    vl_logic_vector(18 downto 0);
        we              : out    vl_logic;
        pixel_out       : out    vl_logic_vector(7 downto 0)
    );
end camera_save;
