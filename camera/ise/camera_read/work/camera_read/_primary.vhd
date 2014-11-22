library verilog;
use verilog.vl_types.all;
entity camera_read is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        vsync           : in     vl_logic;
        href            : in     vl_logic;
        pclk            : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0);
        pixel_done      : out    vl_logic;
        frame_done      : out    vl_logic
    );
end camera_read;
