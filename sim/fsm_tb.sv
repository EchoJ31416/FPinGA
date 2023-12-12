`timescale 1ns / 1ps
`default_nettype none

module fsm_tb();

  logic clk_in;
  logic rst_in;
  logic fft_out_valid;
  logic fft_out_last;
  logic [31:0] fft_out_data;
  logic [2:0] tone_ident;
  logic fft_out_ready;
  logic tone_valid;
  logic fft_valid;
  logic [31:0] fft_length;
  logic [10:0] fft_data_count;

  tone_detection_fsm tone_detection(
     .valid_in_signal(fft_out_valid),
     .fft_last(fft_out_last),
     .clk_in(clk_in),
     .rst_in(rst_in),
     .fft_data(fft_out_data),
     .tone_ident(tone_ident),
     .ready_signal(fft_out_ready),
     .valid_signal(tone_valid),
     .recording_length(fft_length),
     .external_valid(fft_valid)
  );  

  always begin
      #5;  // 100 MHz clock
      clk_in = !clk_in;
  end

  always begin
    #10;  
    if (1)begin    
      if (fft_out_last && fft_out_ready)begin
        fft_valid = 1;
        fft_out_valid <= 1;
      end if (fft_out_valid == 1  && fft_out_data != 0)begin
        fft_valid = 0;
        fft_out_valid = 0;
      end 
      fft_data_count = fft_data_count + 1;    
      fft_out_last = (fft_data_count == 2047); 
    end else begin    
      fft_valid = 0;  
    end 
  end

  initial begin
    $dumpfile("fsm_tb.vcd");
    $dumpvars(0,fsm_tb);
    $display("Starting Sim");
    clk_in = 0;
    rst_in = 0;
    fft_out_valid = 0;
    fft_out_last = 0;
    fft_out_data = 0;
    tone_ident = 0;
    fft_out_ready = 0;
    tone_valid = 0;
    fft_valid = 0;
    fft_data_count = 0;
    #10;
    rst_in = 1;
    #10;
    rst_in = 0;
    fft_length = 6250;

    for (int i = 0; i<10000; i=i+1)begin
      fft_out_data = 32'b1111_1111_1111;
      #10;
    end
    for (int i = 0; i<5000; i= i+ 1)begin 
      fft_out_data = 32'b1111_0000_1111;
      #10;
    end
    for (int i = 0; i<10000; i= i+ 1)begin 
      fft_out_data = 32'b0000_0000_1111;
      #10;
    end
    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
