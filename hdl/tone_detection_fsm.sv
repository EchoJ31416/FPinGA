`timescale 1ns / 1ps
`default_nettype none
module  tone_detection_fsm(
            input wire clk_in,
            input wire rst_in,
            input wire external_valid,
            input wire valid_in_signal, // FFT out valid in - begins reporting data at this point
            input wire fft_last, // FFT out last
            input wire recording_length, // Length of recording in clock cycles to space signals evenly
            input signed wire [31:0] fft_data,
            output logic [2:0] tone_ident,
            output logic ready_signal,
            output logic valid_signal,
  );

logic signed [31:0] fft_data_reg_1, fft_data_reg_2, fft_data_reg_3, fft_data_reg_4;
logic signed [32:0] change_1, change_2, change_3; // Used to keep track of change in frequencies, ignore overflow bit
logic signed [61:0] quo_1, quo_2, quo_3; // quotients to calculate signidicant changes
logic [2:0] tone; // Used to store changes  
logic [1:0] fft_counter; // Used to count how many FFTs have occured
logic [31:0] cycle_counter; // Used to count how many cycles have passed
logic ready_to_div; // Used to trigger division module

typedef enum {IDLE=0, CAPTURE=1, CALCULATE=2, REPORT=2} state;
// Will only run four fourier transforms to meet goal
// Don't forget to implement division to ensure that you have a considerable change in tone.
// Arbitrarily determine 20 percent change as a viable difference


always_ff @(posedge clk_in)begin
  if (rst_in)begin
    ready_signal <= 1;
    valid_signal <= 0;
    fft_counter <= 0;
    fft_data_reg_1 <= 0;
    fft_data_reg_1 <= 0;
    fft_data_reg_1 <= 0;
    tone <= 0;
    cycle_counter <= 0;
    ready_to_div <= 0;
    state <= IDLE;
  end else begin
    cycle_counter <= cycle_counter + 1;
    if (valid_in_signal && fft_last && valid_in_signal && external_valid)begin
      state <= CAPTURE;
      ready_signal <= 0;     
    end else begin
      if (cycle_counter == fft_length)begin
        ready_signal <= 1; // Pipelining is really going to hurt on this one
      end if (ff_counter == 2'd3)begin 
        state <= CALCULATE; // Check pipelining on this one
      end else begin
        case(state)
        IDLE: begin 
          if (valid_in_signal && fft_last && valid_in_signal && external_valid)begin
            state <= CAPTURE;
            ready_signal <= 0;  
          end
        end
        CAPTURE: begin
          fft_data_reg_4 <= fft_data_reg_3;
          fft_data_reg_3 <= fft_data_reg_2;
          fft_data_reg_2 <= fft_data_reg_1;
          fft_data_reg_1 <= fft_data;
        end 
        CALCULATE: begin
          change_3 <= (fft_data_reg_4 - fft_data_reg_3) * 31'd100; // May be very inefficient, revise
          change_2 <= (fft_data_reg_3 - fft_data_reg_2) * 31'd100; // Consider using bitshift twice, then multiply
          change_1 <= (fft_data_reg_2 - fft_data_reg_1) * 31'd100; 
          ready_to_div <= 1; 
          
          state <= REPORT;
          // Make changes 6 bits, 11 00 01, fall, neutral, rise.
        end
        REPORT: begin
          ready_to_div <= 0;
          tone <= 0; //FIX
          valid_signal <= 1; // No need to reset since it's a one-time calculation
          ready_signal <= 0;
          // Fill with logic to identify tone
        end
        endcase
      end
    end
  end
end

always_comb begin // FIX ASAP!
  case(tone)
  3'b000: tone_ident = 3'b000; 
  3'b000: tone_ident = 3'b001;
  3'b000: tone_ident = 3'b010;
  3'b000: tone_ident = 3'b100;
  default: tone_ident = 3'b000;
  endcase
end

div_gen_0 first_div(
    .aclk(clk_in)
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(fft_data_reg_1),
    .s_axis_dividend_tdata(change_1),
    .m_axis_dout_tvalid(),
    .m_axis_dout_tdata(quo_1)
  );
  div_gen_0 second_div(
    .aclk(clk_in)
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(fft_data_reg_2),
    .s_axis_dividend_tdata(change_2),
    .m_axis_dout_tvalid(),
    .m_axis_dout_tdata(quo_2)
  );
  div_gen_0 third_div(
    .aclk(clk_in)
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(fft_data_reg_3),
    .s_axis_dividend_tdata(change_3),
    .m_axis_dout_tvalid(),
    .m_axis_dout_tdata(quo_3)
  );

endmodule
`default_nettype wire


/*
 always_ff @(posedge clk_in)begin
    if (rst_in)begin
      state <= IDLE;
      code_out <= 0;
      new_code_out <= 0;
      error_out <= 0;
      intermediate_code <= 0;
      found_32 <= 0;
    end else begin
      case (state)
      IDLE: begin
        if (signal_in == 0) begin
            state <= SL;
            new_code_out <= 0;
            found_32 <= 0;
        end 
      end
      SL: begin
        if (signal_in == 1 && signal_counter <= (SBD + MARGIN) && signal_counter >= (SBD - MARGIN))begin
            state <= SH;
        end else if (signal_counter > (SBD + MARGIN))begin
            state <= IDLE;
            error_out <= 3'b001;
        end else if (signal_counter < (SBD - MARGIN) && signal_in == 1)begin
            state <= IDLE;
            error_out <= 3'b010;
        end
      end
      SH: begin
        if (signal_in == 0 && signal_counter <= (SSD + MARGIN) && signal_counter >= (SSD - MARGIN))begin
            state <= DL;
        end else if (signal_in == 0 && signal_counter < (SSD - MARGIN))begin
            state <= IDLE;
            error_out <= 3'b011;
        end else if (signal_counter > (SSD + MARGIN))begin
            state <= IDLE;
            error_out <= 3'b100;
        end
      end
      DL: begin
        if (signal_in == 1 && signal_counter <= (BBD + MARGIN) && signal_counter >= (BBD - MARGIN))begin
            state <= DH;
        end else if (signal_in == 1 && signal_counter < (BBD - MARGIN))begin
            state <= IDLE;
            error_out <= 3'b100;
        end else if (signal_counter > (BBD + MARGIN))begin
            state <= IDLE;
            error_out <= 3'b101;
        end
      end
      DH: begin
        if (signal_in == 0 && signal_counter <= (BSD0 + MARGIN) && signal_counter >= (BSD0 - MARGIN))begin
            state <= F0;
        end else if (signal_in == 0 && signal_counter <= (BSD1 + MARGIN) && signal_counter >= (BSD1 - MARGIN))begin
            state <= F1;
        end else if (signal_in == 0 && signal_counter < (BSD0 - MARGIN))begin
            state <= IDLE;
            error_out <= 3'b110;
        end else if (signal_counter > (BSD1 + MARGIN))begin
            state <= IDLE;
            error_out <= 3'b111;
        end
      end
      F0: begin
        state <= CHECK;
        intermediate_code <= {intermediate_code, 1'b0};
        found_32 <= found_32 + 1;
      end
      F1: begin
        state <= CHECK;
        intermediate_code <= {intermediate_code, 1'b1};
        found_32 <= found_32 + 1;
      end
      CHECK: begin
        if (found_32 == 31'd32)begin
            state <= DATA;
        end else begin
            state <= DL;
            error_out <= 3'b101;
        end
      end
      DATA: begin
        state <= IDLE;
        code_out <= intermediate_code;
        new_code_out <= 1;
      end
      endcase 
    end
  end 
endmodule
*/
