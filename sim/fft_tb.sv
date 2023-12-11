`timescale 1ns / 1ps
`default_nettype none

module fft_tb();

  logic clk_in;
  logic rst_in;

  logic fft_valid;
  logic [7:0] audio_data;
  logic [31:0] fft_data;
  logic fft_last;
  logic fft_ready;
  logic [31:0] fft_out_data;
  logic fft_out_last;
  logic fft_out_valid;
  logic fft_out_ready;


  xfft_1 fft(
    .aclk(clk_in),
    .s_axis_data_tvalid(fft_valid), .s_axis_data_tdata(fft_data),
    .s_axis_data_tlast(fft_last), .s_axis_data_tready(fft_ready), 
    .s_axis_config_tdata(0), .s_axis_config_tvalid(0), .s_axis_config_tready(),
    .m_axis_data_tdata(fft_out_data), .m_axis_data_tvalid(fft_out_valid),
    .m_axis_data_tlast(fft_out_last), .m_axis_data_tready(fft_out_ready),
    .event_frame_started(), .event_tlast_unexpected(), .event_tlast_missing(),
    .event_data_in_channel_halt(), .event_data_out_channel_halt());

  always begin // 100 MHz clock
      #5; 
      clk_in = !clk_in;
  end

  initial begin
    $dumpfile("fft_tb.vcd"); 
    $dumpvars(0,fft_tb);
    $display("Starting Sim");
    rst_in = 0;
    #10;
    rst_in = 1;
    fft_valid = 0;
    fft_data = 0;
    fft_last = 0;
    fft_ready = 0;
    fft_out_data = 0;
    fft_out_last = 0;
    fft_out_valid = 0;
    fft_out_ready = 0;
    audio_data = 0;
    #10;

    rst_in = 0;
    fft_valid = 1;
    fft_last = 1;

    for (int i = 0; i<10000; i=i+1)begin
      fft_data = i;
      #10;
    end

    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
