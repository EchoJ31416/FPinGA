`timescale 1ns / 1ps
`default_nettype none

module fsm_tb();

  logic clk_in;
  logic rst_in;
  logic [15:0] fft_in; // Only analyzing real part of FFT datas
  logic [2:0] tone_identifier;
  logic ready;

  tone_detection_fsm fsm(
            .clk_in(clk_in),
            .rst_in(rst_in),
            .fft_data(fft_in),
            .tone_ident(tone_identifier),
            .ready_signal(ready)
  );

  always begin
      #5;  // 100 MHz clock
      clk_in = !clk_in;
  end

  initial begin
    $dumpfile("fsm_tb.vcd");
    $dumpvars(0,fsm_tb);
    $display("Starting Sim");
    clk_in = 0;
    rst_in = 0;
    tone_identifier = 0;
    ready = 0;
    fft_in = 0; 
    #10;
    rst_in = 1;
    #10;
    rst_in = 0;
    for (int i = 0; i<10000; i=i+1)begin // How frequently does the FFT report data?
      fft_in = i;
      #10;
    end

    for (int i = 0; i<10000; i= i+ 1)begin // How frequently does the FFT report data?
      audio_valid_in = 1;
      #10;
      audio_valid_in = 0;
      #60;
    end
    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
