`timescale 1ns / 1ps
`default_nettype none

module fft_tb();

  logic clk_in;
  logic rst_in;

  logic [31:0] fft_data;
  logic [31:0] fft_out_data;

  logic fft_valid; // used by the external master to signal that it is able to provide data (critical in pipelining)
  logic fft_last; // asserted by the external master on the last sample of the frame (can be used to regulate flow of data)
  logic fft_ready; // used by the core to signal that it is ready to accept data (can be used to begin recording)
  logic fft_out_last; // asserted by the core on the last sample of the frame (will begin reporting data)
  logic fft_out_valid; // asserted by the core to signal that it is able to provide status data
  logic fft_out_ready; // asserted by the external slave to signal that it is ready to accept data (critical in pipelining)

  logic [7:0] audio_data;
  logic [10:0] fft_data_count;

  
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

  always begin  
      #10;
      fft_data = {audio_data,8'b0};
      fft_data_count = fft_data_count + 1;    
      fft_last = (fft_data_count == 2047); 
  end

  initial begin
    $dumpfile("fft_tb.vcd"); 
    $dumpvars(0,fft_tb);
    $display("Starting Sim");
    clk_in = 0;
    rst_in = 0;
    #10;
    // Reset all variables
    rst_in = 1;
    #5;
    fft_valid = 0;
    fft_data = 0;
    fft_last = 0;
    fft_ready = 0;
    fft_out_data = 0;
    fft_out_last = 0;
    fft_out_valid = 0;
    fft_out_ready = 0;
    fft_data_count = 0;    
    #10;
    // Begin Test
    #10;
    rst_in = 0; 
    /*
    for (int i = 0; i<100000; i=i+1)begin // Begin FFT Analysis
      if (fft_last)begin
        audio_valid_in = 0;
        dummy = i;
      end else if (audio_valid_in) begin
        audio_data = i; 
      end else begin
        audio_data = 0;
        if (i == dummy*2) begin // Switch with conditions for FFT to finish calculating
          audio_valid_in = 1;
        end
      end
      #5; // Check clock cycling
    end
    */

    for (int i = 0; i<33333; i=i+1)begin // Begin FFT Analysis
      if (fft_last)begin
        fft_out_ready = 1; // Check - holds last value of fft if not ready to get in more data! This is good! Control, FFT calculations
        fft_valid = 1; // Without valid in, FFT don't work.
      end
      audio_data = 8'b1111_1111; 
      #5; // Check clock cycling
    end
    for (int i = 0; i<33333; i=i+1)begin // Begin FFT Analysis
      audio_data = 8'b0000_1111; 
      #5; // Check clock cycling
    end
    for (int i = 0; i<33333; i=i+1)begin // Begin FFT Analysis
      audio_data = 8'b1000_1111; 
      #5; // Check clock cycling
    end

    $display("Simulation finished");
    $finish;
  end
endmodule
`default_nettype wire
