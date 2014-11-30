`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:18:06 11/26/2014 
// Design Name: 
// Module Name:    laser_projector_full 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module laser_projector_full(
	input wire clk, 
	input wire reset,
	input wire [7:0] dip_sw,
	input wire paddle_l,
	input wire paddle_r, //in case no accelerometers
	output wire [2:0] laser_rgb,
	output wire dac_mosi,
	output wire dac_csn,
	output wire dac_latchn,
	output wire dac_sclk,
	output wire [7:0] debug_led
    );
	
	//wires for physics beta
	wire mwe_physics;
	wire irq_physics;
	wire [30:0] xadr_physics;
	wire [31:0] ma_physics;
	wire [31:0] mdin_physics;
	wire [31:0] mdout_physics;
	//memory mapped devices for physics beta
	wire [31:0] ram_dout_physics;
	wire [31:0] IO_dout_physics;
	wire [31:0] shared_read_dout_physics;
	wire [31:0] shared_write_dout_physics;
	//selects for multiplexing the buss
	wire [2:0] read_select_physics;
	wire sel_ram_physics;
	wire sel_IO_physics;
	wire sel_read_shared_physics;
	wire sel_write_shared_physics;
	
	
	//wires for laser beta
	wire mwe_laser;
	wire irq_laser;
	wire [30:0] xadr_laser;
	wire [31:0] ma_laser;
	wire [31:0] mdin_laser;
	wire [31:0] mdout_laser;
	//memory mapped devices for laser beta
	wire [31:0] ram_dout_laser;
	wire [31:0] IO_dout_laser;
	wire [31:0] shared_read_dout_laser;
	wire [31:0] shared_write_dout_laser;
	//selects for multiplexing the buss for laser beta
	wire [2:0] read_select_laser;
	wire sel_ram_laser;
	wire sel_IO_laser;
	wire sel_read_shared_laser;
	wire sel_write_shared_laser;	
	
	wire [31:0] IO_port;
	assign debug_led = IO_port[23:16];
	
	//memory mdin is data into beta
	//memory mdout is data from beta to be written
		//jakes beta
		
	assign xadr_physics = 31'b0;
	//assign irq_physics = 1'b0;
	//irq is now from timer!
	
	beta2 cpu_physics(
	.clk(clk),
	.reset(reset), 
	.irq(irq_physics), 
	.xadr(xadr_physics),
	.ma(ma_physics), 
	.mdin(mdin_physics), 
	.mdout(mdout_physics), 
	.mwe(mwe_physics)
	);
								
	//16k mem
	//14 bits wide, takes beta [15:2] because memory is byte aligned
	physics_beta_mem physics_beta_ram (
	.clka(clk), 
	.dina(mdout_physics), 
	.addra(ma_physics[15:2]),
	.wea(mwe_physics && sel_ram_physics),	
	.douta(ram_dout_physics) 
	); 
	
	//decode data adress for reads
	beta_addr_decode physics_decode (
	.addr(ma_physics), 
	.sel_ram(sel_ram_physics), 
	.sel_IO(sel_IO_physics),
	.sel_read_shared(sel_read_shared_physics), 
	.sel_write_shared(sel_write_shared_physics),
	.read_select(read_select_physics)
	);
	
	//select mdin for beta
	beta_read_decode physics_read_decode (
	.clk(clk), 
	.read_select(read_select_physics), 
	.ram_dout(ram_dout_physics),
	.IO_dout(IO_dout_physics), 
	.shared_read_dout(shared_read_dout_physics), 
	.shared_write_dout(shared_write_dout_physics),
	.beta_mdin(mdin_physics)
	);
	
	//memory mapped IO for physics beta
	mapped_IO physics_beta_IO (
    .clk(clk), 
    .addr(ma_physics), 
    .din(mdout_physics), 
    .mwe(mwe_physics & sel_IO_physics), 
    .in_port_a({24'b0,dip_sw}), 
    .in_port_b({30'b0,paddle_l,paddle_r}), 
    .dout(IO_dout_physics), 
    .out_port_a(), 
    .out_port_b(), 
    .spi_miso(1'b0), 
    .spi_csn(), 
    .spi_sclk(), 
    .spi_mosi(),
	 .irq(irq_physics)
    );
	
	//interface between camera fsm(host) and physics_beta (client)
	memory_share physics_shared_memory (
    .clk(clk), 
    .mwe_host(0), //need to add camera interface
    .mwe_client(mwe_physics&&sel_read_shared_physics), 
    .host_addr(32'b0), //no camera yet
    .client_addr(ma_physics), 
    .host_din(32'b0), //no camera yet
    .client_din(mdout_physics), //input to memory, output of beta
    .host_dout(), //no camera yet
    .client_dout(shared_read_dout_physics)
    );
	
	
	//westons beta					
	beta2 cpu_laser(
	.clk(clk), 
	.reset(reset), 
	.irq(1'b0), 
	.xadr(31'b0), 
	.ma(ma_laser), 
	.mdin(mdin_laser),
	.mdout(mdout_laser),
	.mwe(mwe_laser)
	);
	
	//16k mem
	//14 bits wide, takes beta [15:2] because memory is byte aligned
	hardware_beta_mem laser_beta_ram	(
	.clka(clk),
	.dina(mdout_laser), 
	.addra(ma_laser[15:2]), 
	.wea(mwe_laser&&sel_ram_laser),
	.douta(ram_dout_laser) 
	);
	
	//decode memory addresses
	beta_addr_decode laser_decode (
	.addr(ma_laser),
	.sel_ram(sel_ram_laser), 
	.sel_IO(sel_IO_laser),
	.sel_read_shared(sel_read_shared_laser), 
	.sel_write_shared(sel_write_shared_laser),
	.read_select(read_select_laser)
	);
											
	
	//write data back
	beta_read_decode laser_read_decode (
	.clk(clk),
	.read_select(read_select_laser),
	.ram_dout(ram_dout_laser),
	.IO_dout(IO_dout_laser),
	.shared_read_dout(shared_read_dout_laser), 
	.shared_write_dout(shared_write_dout_laser),
	.beta_mdin(mdin_laser)
	);
	
	//memory mapped IO for laser beta
	mapped_IO laser_beta_IO (
    .clk(clk), 
    .addr(ma_laser), 
    .din(mdout_laser), 
    .mwe(mwe_laser & sel_IO_laser), 
    .in_port_a({24'b0,dip_sw}), 
    .in_port_b(32'b0), 
    .dout(IO_dout_laser), 
    .out_port_a(IO_port), 
    .out_port_b({dac_latchn, laser_rgb}), 
    .spi_miso(1'b0), 
    .spi_csn(dac_csn), 
    .spi_sclk(dac_sclk), 
    .spi_mosi(dac_mosi),
	 .irq()
    );

	//laser_beta is client, physics_beta is host
	memory_share laser_shared_memory (
    .clk(clk), 
    .mwe_host(mwe_physics&&sel_write_shared_physics), 
    .mwe_client(mwe_laser&&sel_read_shared_laser), 
    .host_addr(ma_physics), 
    .client_addr(ma_laser), 
    .host_din(mdout_physics), //input to memory out of beta
    .client_din(mdout_laser), 
    .host_dout(shared_write_dout_physics), 
    .client_dout(shared_read_dout_laser)
    );
	 
endmodule
