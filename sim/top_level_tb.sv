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
    // .recording_length(length), // Length of address - corroborated by testbench
    .finish(valid_audio)
  );

  div_gen_0 fft_spacing(
    .aclk(clk_0),
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(32'd4),
    .s_axis_dividend_tdata(fft_length),
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
     .fft_last(fft_last),
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
  // FIX THE AUDIO FILTERS MATE
   // Audio Filter
    // Logic for controlling microphone associated modules:
  logic [8:0] m_clock_counter; // used for counting for mic clock generation
  logic signed [7:0] mic_audio; // audio from microphone 8 bit unsigned at 12 kHz
    // Logic for interfacing with the microphone and generating 3.072 MHz signals
  logic mic_data;
  logic [7:0] pdm_tally;
  logic [8:0] pdm_counter;
  localparam PDM_COUNT_PERIOD = 32; // do not change
  localparam NUM_PDM_SAMPLES = 256; // number of pdm in downsample/decimation/average
  logic old_mic_clk; // prior mic clock for edge detection
  logic mic_clk;
  logic sampled_mic_data; // one bit grabbed/held values of mic
  logic pdm_signal_valid; // single-cycle signal at 3.072 MHz indicating pdm steps
  //assign pdm_signal_valid = mic_clk && ~old_mic_clk;
    // Logic to produce 25 MHz step signal for PWM module
  logic [1:0] pwm_counter;
  logic pwm_step; //single-cycle pwm step
  //assign pwm_step = (pwm_counter==2'b11);
  /*
  always_ff @(posedge clk_m)begin
    pwm_counter <= pwm_counter+1;
  end
    // Generate clock signal for microphone - microphone signal at ~3.072 MHz
  always_ff @(posedge clk_m)begin
    mic_clk <= m_clock_counter < PDM_COUNT_PERIOD/2;
    m_clock_counter <= (m_clock_counter==PDM_COUNT_PERIOD-1)?0:m_clock_counter+1;
    old_mic_clk <= mic_clk;
  end
    // Generate audio signal (samples at ~12 kHz)
  always_ff @(posedge clk_m)begin
    if(record)begin
      audio_sample_valid <= 1;
    end if (pdm_signal_valid)begin
      sampled_mic_data    <= mic_data;
      pdm_counter         <= (pdm_counter==NUM_PDM_SAMPLES)?0:pdm_counter + 1;
      pdm_tally           <= (pdm_counter==NUM_PDM_SAMPLES)?mic_data
                                                            :pdm_tally+mic_data;
      audio_sample_valid  <= (pdm_counter==NUM_PDM_SAMPLES);
      mic_audio           <= (pdm_counter==NUM_PDM_SAMPLES)?{~pdm_tally[7],pdm_tally[6:0]}
                                                            :mic_audio;
    end else begin
      audio_sample_valid <= 0;
    end
  end
*/

  always begin
      #5;  // 100 MHz clock
      clk_0 = !clk_0;
      pdm_signal_valid = mic_clk && ~old_mic_clk;
      pwm_step = (pwm_counter==2'b11);
  end 

  always begin // INSERT ALL SEQUENTIAL LOGIC IN HERE
      #10; // on each clock cycle
      pwm_counter <= pwm_counter+1;
      mic_clk <= m_clock_counter < PDM_COUNT_PERIOD/2;
      m_clock_counter <= (m_clock_counter==PDM_COUNT_PERIOD-1)?0:m_clock_counter+1;
      old_mic_clk <= mic_clk;
      if (record)begin
        fft_length = fft_length + 1; // Ensure you add this to the top level
      end
      if (valid_audio)begin                 //  Valid audio instead of always on changes it, valid_audio
        if (fft_last && fft_out_ready)begin
          fft_valid <= 1;
        end if (fft_out_valid && !fft_out_ready && fft_out_data != 0)begin
          fft_valid <= 0;
        end 
        fft_data <= {single_audio, 8'b0};
        fft_data_count <= fft_data_count + 1;    
        fft_last <= (fft_data_count == 2047); 
      end else begin    
        fft_valid = 0;  
      end 
      
      if(record)begin
        audio_sample_valid <= 1;
      end if (pdm_signal_valid)begin
        sampled_mic_data    <= mic_data;
        pdm_counter         <= (pdm_counter==NUM_PDM_SAMPLES)?0:pdm_counter + 1;
        pdm_tally           <= (pdm_counter==NUM_PDM_SAMPLES)?mic_data
                                                            :pdm_tally+mic_data;
        audio_sample_valid  <= (pdm_counter==NUM_PDM_SAMPLES);
        mic_audio           <= (pdm_counter==NUM_PDM_SAMPLES)?{~pdm_tally[7],pdm_tally[6:0]}
                                                            :mic_audio;
      end else begin
        audio_sample_valid <= 0;
      end
  end 

  initial begin
    $dumpfile("top_level_tb.vcd");
    $dumpvars(0,top_level_tb);
    $display("Starting Sim");
    /////////////////////// Reset Variables ///////////////////////
    length = 0; // length of recording in clock cycles
    valid_audio = 0; // used to indicate that recording is finished to begin FFT pipeline
    tone_ident = 3'b111; // three-bit identifier used throughout top level
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
    audio_sample_valid = 0;
    /////////////////////// Unknown Region ///////////////////////
    sys_rst = 1;
    #10;
    sys_rst = 0;
    record = 1;
    
    for (int i = 0; i<10000; i=i+1)begin
      mic_data = i;
      #10;
    end
    record = 0;

    /*
    Uncomment for working code
    for (int i = 0; i<10000; i=i+1)begin // Wait
      audio_sample_valid = 1; // You will have to keep this in your module!!! CHECK IT OUT!
      #10;
      audio_sample_valid = 0;
      #60;
    end
    for (int i = 0; i<10000; i=i+1)begin // Wait
      audio_sample_valid = 1; // You will have to keep this in your module!!! CHECK IT OUT!
      #10;
      audio_sample_valid = 0;
      #60;
    end
    */
    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
