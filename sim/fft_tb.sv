`timescale 1ns / 1ps
`default_nettype none

module fft_tb();

  logic clk_in;
  logic rst_in;
  logic fft_valid;
  logic fft_data;
  logic fft_last;
  logic fft_ready;
  logic [31:0] fft_out_data;
  logic [31:0] fft_out_last;
  logic [31:0] audio_data;

  xfft_1 fft(
    .aclk(clk_in),
    .s_axis_daa_tvalid(fft_valid),
    .s_axis_data_tdata(fft_data),
    .s_axis_data_tlast(fft_last),
    .s_axis_data_tready(fft_ready),
    .s_axis_config_tdata(0),
    .s_axis_config_tvalid(0),
    .m_axis_data_tdata(fft_out_data),
    .m_axis_data_tlast(fft_out_last)
  );

  always begin
      #5;  //every 5 ns switch...so period of clock is 10 ns...100 MHz clock
      clk_in = !clk_in;
  end
  //initial block...this is our test simulation
  initial begin
    $dumpfile("fft_tb.vcd"); //file to store value change dump (vcd)
    $dumpvars(0,fft_tb);
    $display("Starting Sim"); //print nice message at start
    rst_in = 0;
    #10;
    rst_in = 1;
    fft_valid = 0;
    fft_last = 0;
    fft_ready = 0;
    fft_out_data = 0;
    fft_out_last = 0;
    audio_data = 0;
    #10;

    rst_in = 0;
    fft_valid = 1;
    fft_last = 1;

    for (int i = 0; i<10000; i=i+1)begin
      audio_data = i;
      #10;
    end

    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
