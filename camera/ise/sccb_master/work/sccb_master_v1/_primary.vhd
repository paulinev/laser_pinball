library verilog;
use verilog.vl_types.all;
entity sccb_master_v1 is
    port(
        clk             : in     vl_logic;
        start           : in     vl_logic;
        reset           : in     vl_logic;
        slave_addr      : in     vl_logic_vector(6 downto 0);
        reg_addr        : in     vl_logic_vector(7 downto 0);
        data            : in     vl_logic_vector(7 downto 0);
        rw              : in     vl_logic;
        sdiod           : inout  vl_logic;
        sdioc           : out    vl_logic;
        cs              : out    vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0);
        done            : out    vl_logic
    );
end sccb_master_v1;
