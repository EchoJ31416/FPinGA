`timescale 1ns / 1ps
`default_nettype none

module top_level_tb();

  logic clk_in;
  logic [15:0] switch;
  logic [3:0] button;
  logic [15:0] switch;
  logic audio_in;

  top_level instantiation(
          .clk_100mhz(clk_in), // clk_in
          .sw(switch), //all 16 input slide switches [15:0]
          .btn(button), //all four momentary button switches [3:0] 
          .led(), //16 green output LEDs (located right above switches) VOID
          .rgb0(), //rgb led VOID
          .rgb1(), //rgb led VOID
          .ss0_an(), //anode control for upper four digits of seven-seg display VOID
          .ss1_an(),//anode control for lower four digits of seven-seg display VOID
          .ss0_c(), //cathode controls for the segments of upper four digits VOID
          .ss1_c(), //cathod controls for the segments of lower four digits VOID
          .mic_clk(), //microphone clock VOID
          .mic_data(audio_in) //microphone data
  );


  always begin
      #5;  // 100 MHz clock
      clk_in = !clk_in;
      audio_in = !audio_in; // Random noise from recorder - update for better representation
  end 

  initial begin
    $dumpfile("top_level_tb.vcd");
    $dumpvars(0,top_level_tb);
    $display("Starting Sim");
    clk_in = 0;
    switch = 0;
    button = 0;
    switch = 0;
    audio_in = 0;
    #10; 
    button[0] = 1; //RESET
    #10; 
    button[0] = 0;
    for (int i = 0; i<1000; i=i+1)begin // Wait
      #10;
    end
    switch[0] = 1; // Set to mode 0 - tone identification
    for (int i = 0; i<10000; i=i+1)begin // Wait
      button[1] = 1; // Begin recording
      #10;
    end
    button[1] = 0; // Stop recording
    for (int i = 0; i<100000; i=i+1)begin // Wait
      // Let the system behave
      #10;
    end

    /*
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
    fft_length = 32'd6250;

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
    */
    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
