`timescale 1ns / 1ps
`default_nettype none
module  tone_detection_fsm(
            input wire clk_in,
            input wire rst_in,
            input wire external_valid,
            input wire valid_in_signal, // FFT out valid in - begins reporting data at this point
            input wire fft_last, // FFT out last
            input wire recording_length, // Length of recording in clock cycles to space signals evenly
            input wire signed [31:0] fft_data,
            output logic [2:0] tone_ident,
            output logic ready_signal,
            output logic valid_signal
  );

logic signed [31:0] fft_data_reg_1, fft_data_reg_2, fft_data_reg_3, fft_data_reg_4;
logic signed [32:0] change_1, change_2, change_3; // Used to keep track of change in frequencies, ignore overflow bit
logic signed [61:0] quo_1, quo_2, quo_3; // quotients to calculate signidicant changes
logic [5:0] tone; // Used to store changes (3 packets of 2 bits corresponding to a change - a one in the first place indicates a negative change, a zero in the first place indicates a positive change)
logic [10:0] fft_counter; // Used to count how many FFTs have occured
logic [31:0] cycle_counter; // Used to count how many cycles have passed
logic ready_to_div; // Used to trigger division module
localparam SIGNIFICANT = 32'd20; // Used to determine if there is a significant change in tone
typedef enum {IDLE=0, CAPTURE=1, CALCULATE=2, REPORT=3} fsm_state;
// Will only run four fourier transforms to meet goal
// Don't forget to implement division to ensure that you have a considerable change in tone.
// Arbitrarily determine 20 percent change as a notable difference in frequency
fsm_state state;
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
    if (valid_in_signal && external_valid)begin // Never triggered
      state <= CAPTURE;
      ready_signal <= 0;     
    end else begin
      if (cycle_counter >= recording_length)begin // Not being triggered - not synthesized
        ready_signal <= 1; // Pipelining is really going to hurt on this one
        cycle_counter <= 0; // May prove issue due to double assignment
      end if (fft_counter == 2'd3 && state == IDLE)begin 
        state <= CALCULATE; // Check pipelining on this one
        cycle_counter <= cycle_counter + 1;
      end else begin
        cycle_counter <= cycle_counter + 1;
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
          state <= IDLE;
          fft_counter <= fft_counter + 1;
        end 
        CALCULATE: begin
          change_3 <= (fft_data_reg_4 - fft_data_reg_3) * 31'd100; // May be very inefficient, revise
          change_2 <= (fft_data_reg_3 - fft_data_reg_2) * 31'd100; // Consider using bitshift twice, then multiply
          change_1 <= (fft_data_reg_2 - fft_data_reg_1) * 31'd100; 
          state <= REPORT;
        end
        REPORT: begin
          if ((quo_1 != 0) && (quo_2 != 0) && (quo_3 != 0))begin // Make changes 6 bits, 11 00 01, fall, neutral, rise.
            if (quo_1 >= SIGNIFICANT)begin
              if (change_1[31] == 1)begin // How to determine if a change is negative? Good question - fix this logic to represent that
                tone[1:0] <= 2'b11;
              end else begin
                tone[1:0] <= 2'b01;
              end
            end else begin
              tone[1:0] <= 2'b00;
            end if (quo_2 >= SIGNIFICANT)begin
              if (change_2[31] == 1)begin // How to determine if a change is negative? Good question - fix this logic to represent that
                tone[1:0] <= 2'b11;
              end else begin
                tone[1:0] <= 2'b01;
              end
            end else begin
              tone[3:2] <= 2'b00;
            end if (quo_3 >= SIGNIFICANT)begin
              if (change_3[31] == 1)begin // How to determine if a change is negative? Good question - fix this logic to represent that
                tone[1:0] <= 2'b11;
              end else begin
                tone[1:0] <= 2'b01;
              end
            end else begin
              tone[5:4] <= 2'b00;
            end
            valid_signal <= 1; // No need to reset since it's a one-time calculation
            ready_signal <= 0;
          end
        end
        endcase
      end
    end
  end
end

  localparam FIRST = 3'b000; // variable to store 1st tone identifier
  localparam SECOND = 3'b001; // variable to store 2nd tone identifier
  localparam THIRD = 3'b010; // variable to store 3rd tone identifier
  localparam FOURTH = 3'b100; // variable to store 4th tone identifier

always_comb begin // Currently incapable of determining more effective system, edge cases can be used to asses accuracy in future
  case(tone)
  // Definitive cases
  6'b00_00_00: tone_ident = 3'b000; // Neutral
  6'b01_01_01: tone_ident = 3'b001; // Rising
  6'b11_01_01: tone_ident = 3'b010; // Undulating
  6'b11_00_01: tone_ident = 3'b010; // Undulating
  6'b11_11_11: tone_ident = 3'b100; // Falling  
  // Neutral edge cases
  6'b11_00_00: tone_ident = 3'b000;
  6'b00_11_00: tone_ident = 3'b000;
  6'b00_00_11: tone_ident = 3'b000;
  6'b01_00_00: tone_ident = 3'b000;
  6'b00_01_00: tone_ident = 3'b000;
  6'b00_00_01: tone_ident = 3'b000;
  // Falling edge cases
  6'b11_11_00: tone_ident = 3'b100;
  6'b11_11_01: tone_ident = 3'b100;
  6'b00_11_11: tone_ident = 3'b100;
  6'b11_00_11: tone_ident = 3'b100;
  // Rising edge cases
  6'b01_01_00: tone_ident = 3'b001;
  6'b01_01_11: tone_ident = 3'b001;
  6'b00_01_01: tone_ident = 3'b001;
  6'b01_00_01: tone_ident = 3'b001;
  default: tone_ident = 3'b111; // you messed up
  endcase
end

div_gen_0 first_div(
    .aclk(clk_in),
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(fft_data_reg_1),
    .s_axis_dividend_tdata(change_1[31:0]),
    .m_axis_dout_tvalid(),
    .m_axis_dout_tdata(quo_1)
  );
  div_gen_0 second_div(
    .aclk(clk_in),
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(fft_data_reg_2),
    .s_axis_dividend_tdata(change_2[31:0]),
    .m_axis_dout_tvalid(),
    .m_axis_dout_tdata(quo_2)
  );
  div_gen_0 third_div(
    .aclk(clk_in),
    .s_axis_divisor_tvalid(1),
    .s_axis_divisor_tdata(fft_data_reg_3),
    .s_axis_dividend_tdata(change_3[31:0]),
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
