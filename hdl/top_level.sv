`timescale 1ns / 1ps
`default_nettype none

module top_level(
  input wire clk_100mhz,
  input wire [15:0] sw, //all 16 input slide switches
  input wire [3:0] btn, //all four momentary button switches
  output logic [15:0] led, //16 green output LEDs (located right above switches)
  output logic [2:0] rgb0, //rgb led
  output logic [2:0] rgb1, //rgb led
  output logic [3:0] ss0_an,//anode control for upper four digits of seven-seg display
  output logic [3:0] ss1_an,//anode control for lower four digits of seven-seg display
  output logic [6:0] ss0_c, //cathode controls for the segments of upper four digits
  output logic [6:0] ss1_c, //cathod controls for the segments of lower four digits
  output logic mic_clk, //microphone clock
  input wire  mic_data //microphone data
  );

  // For debugging
  assign led = sw;

  // Turn off RGB leds (active high):
  assign rgb1= 0;
  assign rgb0 = 0;

  // System reset
  logic sys_rst;
  assign sys_rst = btn[0];

  // Clock magic
  logic clk_m;
  logic clk_0;
  
  //audio_clk_wiz macw (.clk_in(clk_100mhz), .clk_out(clk_m)); //98.3MHz - How will this affect the FFT?
  assign clk_0 = clk_100mhz; // Consider changing
  assign clk_m = clk_100mhz; // Consider changing

  assign clk_0 = clk_m; // Consider changing
  //assign clk_m = clk_100mhz; // Consider changing

  // Seven segment for display - REPLACE WITH HDMI SECTION IN THE FUTURE
  logic [31:0] val_to_display; // value of number to display using 7s
  logic [6:0] ss_c; // used to grab output cathode signal for 7s leds

  seven_segment_controller display(.clk_in(clk_0),
                                .rst_in(sys_rst),
                                .val_in(val_to_display),
                                .cat_out(ss_c),
                                .an_out({ss0_an, ss1_an}));

  assign ss0_c = ss_c; // control upper four digit's cathodes
  assign ss1_c = ss_c; // control lower four digits cathodes

  // Record Trigger
  logic record; // signal used to trigger recording
  debouncer rec_deb(  .clk_in(clk_m),
                      .rst_in(sys_rst),
                      .dirty_in(btn[1]),
                      .clean_out(record));
                      
  // Audio Filter
    // Logic for controlling microphone associated modules:
  logic [8:0] m_clock_counter; // used for counting for mic clock generation
  logic audio_sample_valid; // single-cycle enable for samples at ~12 kHz (approx)
  logic signed [7:0] mic_audio; // audio from microphone 8 bit unsigned at 12 kHz


  
    // Logic for interfacing with the microphone and generating 3.072 MHz signals
  logic [7:0] pdm_tally;
  logic [8:0] pdm_counter;
  localparam PDM_COUNT_PERIOD = 32; // do not change
  localparam NUM_PDM_SAMPLES = 256; // number of pdm in downsample/decimation/average
  logic old_mic_clk; // prior mic clock for edge detection
  logic sampled_mic_data; // one bit grabbed/held values of mic
  logic pdm_signal_valid; // single-cycle signal at 3.072 MHz indicating pdm steps
  assign pdm_signal_valid = mic_clk && ~old_mic_clk;
    // Logic to produce 25 MHz step signal for PWM module
  logic [1:0] pwm_counter;
  logic pwm_step; //single-cycle pwm step
  assign pwm_step = (pwm_counter==2'b11);
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

  // Recorder
  logic [7:0] single_audio; // recorder output
  logic valid_audio; // used to indicate that recording is finished to begin FFT pipeline

  //////////////////// rESETTING sYSTEM DOES NOT DO ANYTHING TO MEMORY 
  recorder recorder(
    .clk_in(clk_m), // system clock
    .rst_in(sys_rst),// global reset
    .record_in(record), // button indicating whether to record or not
    .audio_valid_in(audio_sample_valid), // 12 kHz audio sample valid signal
    .audio_in(mic_audio), // 8 bit signed data from microphone
    .single_out(single_audio), // played back audio (8 bit signed at 12 kHz)
    .finish(valid_audio)
  );

  // Length determination for FFT spacing
  logic [2:0] tone_ident; // three-bit identifier used throughout top level
  logic [61:0] div_out; // intermediate value
  logic [31:0] fft_length; // length of fft duration in clock cycles

  div_gen_0 fft_spacing(
    .aclk(clk_0),
    .s_axis_divisor_tvalid(1),
    .s_axis_dividend_tvalid(1),
    .s_axis_divisor_tdata(32'd4),
    .s_axis_dividend_tdata(fft_length),
    
    .m_axis_dout_tvalid(),
    .m_axis_dout_tdata(div_out)
  );

  // Select Functional Mode - UPDATE AS CAPACITIES IMPROVE
  logic [2:0] mode, mode_0, mode_1, mode_2, mode_3;
  assign mode_0 = 2'b00; // Standby mode 
  assign mode_1 = 2'b01; // Tone Identifying Mode - must activate before recording
  assign mode_2 = 2'b10; // Randomized Practice Mode
  assign mode_3 = 2'b11; // Challenge Mode
    
  always_comb begin
    if (sw[0])begin
      mode = mode_1;
    end else if (sw[1])begin
      mode = mode_2;
    end else if (sw[2])begin
      mode = mode_3;
    end else begin
      mode = mode_0;
    end 
  end

  // FFT  
  logic fft_valid; // used by the external master to signal that it is able to provide data (critical in pipelining)
  logic fft_last; // asserted by the external master on the last sample of the frame (can be used to regulate flow of data)
  logic fft_ready; // used by the core to signal that it is ready to accept data (can be used to begin recording)
  logic fft_out_last; // asserted by the core on the last sample of the frame (will begin reporting data on falling edge)
  logic fft_out_valid; // asserted by the core to signal that it is able to provide status data (begins reporting data on rising edge)
  logic fft_out_ready; // asserted by the external slave to signal that it is ready to accept data (ready from the fsm)
  logic [31:0] fft_data; // unprocessed sample data
  logic [31:0] fft_out_data; // carries processed sample data - [31:16] real, [15:0] imaginary

    // CONTROL FLOW OF DATA - Pipelining on Testbench results
  logic [10:0] fft_data_count; // Used to count frames for FFT
  assign fft_data = {single_audio, 8'b0};
  
  always_ff @(posedge clk_0)begin  
    if (record)begin
      fft_length = fft_length + 1;
    end if (valid_audio && (single_audio != 0))begin    
      if (fft_last && fft_out_ready)begin
        fft_valid <= 1;
      end if (fft_out_valid && !fft_out_ready && fft_out_data != 0)begin
        fft_valid <= 0;
      end 
      fft_data_count <= fft_data_count + 1;    
      fft_last <= (fft_data_count == 2047); 
    end else begin    
      fft_valid = 0;  
    end 
  end

    // Transform length of 1024, Frequency of 100 MHz, Data throughput of 50 Msps
  xfft_1 fft(
   .aclk(clk_0),
   .s_axis_data_tvalid(fft_valid), .s_axis_data_tdata(fft_data),
   .s_axis_data_tlast(fft_last), .s_axis_data_tready(fft_ready), 
   .s_axis_config_tdata(0), .s_axis_config_tvalid(0), .s_axis_config_tready(),
   .m_axis_data_tdata(fft_out_data), .m_axis_data_tvalid(fft_out_valid),
   .m_axis_data_tlast(fft_out_last), .m_axis_data_tready(fft_out_ready),
   .event_frame_started(), .event_tlast_unexpected(), .event_tlast_missing(),
   .event_data_in_channel_halt(), .event_data_out_channel_halt());

  // Tone Checking Finite State Machine
  logic tone_valid; // asserted when valid tone is returned by fsm
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

  // Logic to Change Display Data - CHANGE WITH STATE MACHINE FOR MORE ADVANCED VERSIONS
  // UPDATE WITH HDMI WHEN WE PROVE FOURIER WORKS
  localparam FIRST = 3'b000; // variable to store 1st tone identifier
  localparam SECOND = 3'b001; // variable to store 2nd tone identifier
  localparam THIRD = 3'b010; // variable to store 3rd tone identifier
  localparam FOURTH = 3'b100; // variable to store 4th tone identifier

  localparam MEM_OUT = 3'b101; // variable to indicate recording ran out of memory, user must restart system

  // 
  logic freeze; // Signal to hold display, counterintuitive - 1 == don't freeze, 0 == freeze display
  logic hold;

  always_ff @(posedge clk_0)begin
    // Add reset 
    if (sys_rst)begin
      freeze <= 1;
      hold <= 0;
    end if(freeze)begin
     // If completed, will continue to check modes to display, will not freeze last display
      if (mode == mode_1)begin
        if (hold)begin
          val_to_display <= 32'hBEAD; 
          if(tone_valid)begin // Check mode == mode_0 - FREEZE
            case(tone_ident)
              FIRST: val_to_display <= 32'd1;   
              SECOND: val_to_display <= 32'd2;
              THIRD: val_to_display <= 32'd3;
              FOURTH: val_to_display <= 32'd4;
              MEM_OUT: val_to_display <= 32'd5; // May never be triggered since there is no existing memory check
              default: val_to_display <= 32'd0; // Indicates that no tone identifier was created
            endcase 
            freeze <= 0;
          end
        end else if (valid_audio == 1)begin // used to store valid-audio signal
          hold <= 1;
        end else if (valid_audio == 0 && hold == 0)begin // hold is undefined, so not triggering anything
          if (record)begin
            val_to_display <= 32'hC0DE; // Used in debugging -- will reset at some point
          end else begin
            val_to_display <= 32'hFEED; // ready to accept data
          end
        end
      end else begin
        val_to_display <= 32'hDEAD; // Indicates pipeline never made it
      end
    end
  end
endmodule // top_level
`default_nettype wire
///////////////// Debugin Notes /////////////////
// FFT valid is generated
// valid_audio is also generated
