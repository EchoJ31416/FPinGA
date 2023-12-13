`timescale 1ns / 1ps
`default_nettype none

module top_level_tb();
  ///////////////////////////////////// REGION OF INTEREST /////////////////////////////////////
  // Variables
  logic [7:0] single_audio; // recorder output
  logic [31:0] length; // length of recording in clock cycles
  logic valid_audio; // used to indicate that recording is finished to begin FFT pipeline
  logic [2:0] tone_ident; // three-bit identifier used throughout top level
  logic [61:0] div_out; // intermediate value
  logic [31:0] fft_length; // length of fft duration in clock cycles
  logic fft_valid; // used by the external master to signal that it is able to provide data (critical in pipelining)
  logic fft_last; // asserted by the external master on the last sample of the frame (can be used to regulate flow of data)
  logic fft_ready; // used by the core to signal that it is ready to accept data (can be used to begin recording)
  logic fft_out_last; // asserted by the core on the last sample of the frame (will begin reporting data on falling edge)
  logic fft_out_valid; // asserted by the core to signal that it is able to provide status data (begins reporting data on rising edge)
  logic fft_out_ready; // asserted by the external slave to signal that it is ready to accept data (ready from the fsm)
  logic [31:0] fft_data; // unprocessed sample data
  logic [31:0] fft_out_data; // carries processed sample data - [31:16] real, [15:0] imaginary
  logic [10:0] fft_data_count; // Used to count frames for FFT
  logic tone_valid; // asserted when valid tone is returned by fsm
  logic sys_rst;
  logic clk_0;
  logic record;
  logic audio_sample_valid;
  logic [7:0] mic_audio;

  recorder recorder(
    .clk_in(clk_0), // - FIX, will actually be a little bit slower
    .rst_in(sys_rst),// global reset
    .record_in(record), // button indicating whether to record or not
    .audio_valid_in(audio_sample_valid), // 12 kHz audio sample valid signal
    .audio_in(mic_audio), // 8 bit signed data from microphone
    .single_out(single_audio), // played back audio (8 bit signed at 12 kHz)
    .recording_length(length), // Length of address - corroborated by testbench
    .finish(valid_audio)
  );


  assign fft_length = div_out[61:32]; // rounded number of clock cycles between each FFT

  div_gen_0 fft_spacing(
    .aclk(clk_0),
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(32'd4),
    .s_axis_dividend_tdata(length),
    .m_axis_dout_tvalid(),
    .m_axis_dout_tdata(div_out)
  );

  xfft_1 fft(
   .aclk(clk_0),
   .s_axis_data_tvalid(fft_valid), .s_axis_data_tdata(fft_data),
   .s_axis_data_tlast(fft_last), .s_axis_data_tready(fft_ready), 
   .s_axis_config_tdata(0), .s_axis_config_tvalid(0), .s_axis_config_tready(),
   .m_axis_data_tdata(fft_out_data), .m_axis_data_tvalid(fft_out_valid),
   .m_axis_data_tlast(fft_out_last), .m_axis_data_tready(fft_out_ready),
   .event_frame_started(), .event_tlast_unexpected(), .event_tlast_missing(),
   .event_data_in_channel_halt(), .event_data_out_channel_halt());

  tone_detection_fsm tone_detection(
     .valid_in_signal(fft_out_valid),
     .fft_last(fft_out_last),
     .clk_in(clk_0),
     .rst_in(sys_rst),
     .fft_data(fft_out_data),
     .tone_ident(tone_ident),
     .ready_signal(fft_out_ready),
     .valid_signal(tone_valid),
     .recording_length(fft_length),
     .external_valid(fft_valid)
  );  
  ///////////////////////////////////// Simulation Start /////////////////////////////////////

  always begin
      #5;  // 100 MHz clock
      clk_0 = !clk_0;
  end 

  always begin // INSERT ALL SEQUENTIAL LOGIC IN HERE
      #10; // on each clock cycle
      if (valid_audio)begin    
        if (fft_last && fft_out_ready)begin
          fft_valid <= 1;
        end if (fft_out_valid == 1  && fft_out_data != 0)begin
          fft_valid <= 0;
        end 
        fft_data <= {single_audio, 8'b0};
        fft_data_count <= fft_data_count + 1;    
        fft_last <= (fft_data_count == 2047); 
      end else begin    
        fft_valid = 0;  
      end
  end 

  initial begin
    $dumpfile("top_level_tb.vcd");
    $dumpvars(0,top_level_tb);
    $display("Starting Sim");
    /////////////////////// Reset Variables ///////////////////////
    single_audio = 0; // recorder output
    length = 0; // length of recording in clock cycles
    valid_audio = 0; // used to indicate that recording is finished to begin FFT pipeline
    tone_ident = 0; // three-bit identifier used throughout top level
    div_out = 0; // intermediate value
    fft_length = 0; // length of fft duration in clock cycles
    fft_valid = 0; // used by the external master to signal that it is able to provide data (critical in pipelining)
    fft_last = 0; // asserted by the external master on the last sample of the frame (can be used to regulate flow of data)
    fft_ready = 0; // used by the core to signal that it is ready to accept data (can be used to begin recording)
    fft_out_last = 0; // asserted by the core on the last sample of the frame (will begin reporting data on falling edge)
    fft_out_valid = 0; // asserted by the core to signal that it is able to provide status data (begins reporting data on rising edge)
    fft_out_ready = 0; // asserted by the external slave to signal that it is ready to accept data (ready from the fsm)
    fft_data = 0; // unprocessed sample data
    fft_out_data = 0; // carries processed sample data - [31:16] real, [15:0] imaginary
    fft_data_count = 0; // Used to count frames for FFT
    tone_valid = 0; // asserted when valid tone is returned by fsm
    mic_audio = 0;
    sys_rst = 0;
    clk_0 = 0;
    record = 0;
    /////////////////////// Unknown Region ///////////////////////
    sys_rst = 1;
    #10;
    sys_rst = 0;
    record = 1;
    for (int i = 0; i<10000; i=i+1)begin
      mic_audio = i;
      audio_sample_valid = 1;
      #10;
    end
    record = 0;
    audio_sample_valid = 0;
    for (int i = 0; i<1000; i=i+1)begin // Wait
      #10;
    end
    // Set to mode 0 - tone identification
    for (int i = 0; i<10000; i=i+1)begin // Wait
      #10;
    end
    for (int i = 0; i<100000; i=i+1)begin // Wait
      // Let the system behave - ADD NOTHING
      #10;
    end
    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
