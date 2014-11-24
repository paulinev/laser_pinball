module ps2(clk,reset,watchdog,ps2c,ps2d,fifo_rd,fifo_data,fifo_empty,fifo_overflow);
  input clk,reset,watchdog,ps2c,ps2d;
  input fifo_rd;
  output [7:0] fifo_data;
  output fifo_empty;
  output fifo_overflow;

  reg [3:0] count;      // count incoming data bits
  reg [9:0] shift;      // accumulate incoming data bits

  reg [7:0] fifo[7:0];   // 8 element data fifo
  reg fifo_overflow;
  reg [2:0] wptr,rptr;   // fifo write and read pointers

  wire [2:0] wptr_inc = wptr + 1;

  assign fifo_empty = (wptr == rptr);
  assign fifo_data = fifo[rptr];

  // synchronize PS2 clock to local clock and look for falling edge
  reg [2:0] ps2c_sync;
  always @ (posedge clk) ps2c_sync <= {ps2c_sync[1:0],ps2c};
  wire sample = ps2c_sync[2] & ~ps2c_sync[1];

  reg timeout;
  always @ (posedge clk) begin
    if (reset) begin
      count <= 0;
      wptr <= 0;
      rptr <= 0;
      timeout <= 0;
      fifo_overflow <= 0;
    end else if (sample) begin
      // order of arrival: 0,8 bits of data (LSB first),odd parity,1
      if (count==10) begin
        // just received what should be the stop bit
        if (shift[0]==0 && ps2d==1 && (^shift[9:1])==1) begin
          fifo[wptr] <= shift[8:1];
          wptr <= wptr_inc;
	  fifo_overflow <= fifo_overflow | (wptr_inc == rptr);
        end
        count <= 0;
        timeout <= 0;
      end else begin
        shift <= {ps2d,shift[9:1]};
        count <= count + 1;
      end
    end else if (watchdog && count!=0) begin
      if (timeout) begin
        // second tick of watchdog while trying to read PS2 data
	count <= 0;
        timeout <= 0;
      end else timeout <= 1;
    end

    // bump read pointer if we're done with current value.
    // Read also resets the overflow indicator
    if (fifo_rd && !fifo_empty) begin
      rptr <= rptr + 1;
      fifo_overflow <= 0;
    end
  end
endmodule
