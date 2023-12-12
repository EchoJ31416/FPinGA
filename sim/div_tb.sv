`timescale 1ns / 1ps
`default_nettype none

module div_tb();

  logic clk_in;
  logic rst_in;
  logic signed [31:0] fft_data_reg_1; // used by the external master to signal that it is able to provide data (critical in pipelining)
  logic signed [31:0] change_1; // asserted by the external master on the last sample of the frame (can be used to regulate flow of data)
  logic signed [61:0] sig_1; // used by the external master to signal that it is able to provide data (critical in pipelining)  
  logic signed [31:0] out_actual;
  logic val;
  div_gen_0 testing_div(
    .aclk(clk_in),
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(fft_data_reg_1),
    .s_axis_dividend_tdata(change_1),
    .m_axis_dout_tvalid(val),
    .m_axis_dout_tdata(sig_1));

  always begin // 100 MHz clock
      #5; 
      clk_in = !clk_in;
      out_actual = sig_1[61:32];
  end

  initial begin
    $dumpfile("div_tb.vcd"); 
    $dumpvars(0,div_tb);
    $display("Starting Sim");
    clk_in = 0;
    rst_in = 0;
    out_actual = 0;
    #10;
    // Reset all variables
    rst_in = 1;
    #5;
    
    #10;
    // Begin Test
    #10;
    rst_in = 0; 
    
    
    for (int i = 0; i<10000; i=i+1)begin // Begin FFT Analysis
     #5; // Check clock cycling
     change_1 = 32'b1111_1111_1111_1111;
     fft_data_reg_1 = 32'b0000_0000_1001;
    end
    for (int i = 0; i<10000; i=i+1)begin // Begin FFT Analysis
      change_1 = 32'd9;
      fft_data_reg_1 = 32'd3;
      #5; // Check clock cycling
    end
    for (int i = 0; i<10000; i=i+1)begin // Begin FFT Analysis
      change_1 = 32'd1 * 32'd100;
      fft_data_reg_1 = 32'd5;
      #5; // Check clock cycling
    end

    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire