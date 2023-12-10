`timescale 1ns / 1ps
`default_nettype none
module  tone_detection_fsm(
            input wire clk_in,
            input wire rst_in,
            input wire valid_in_signal,
            input wire fft_last,
            input wire [31:0] fft_data,
            output logic [2:0] tone_ident,
            output logic ready_signal,
            output logic valid_signal
  );

logic [16:0] fft_data_reg_1; // First bit 0 indicates positive, 1 indicates negative
logic [16:0] fft_data_reg_2; // First bit 0 indicates positive, 1 indicates negative
logic [16:0] change; // Used to keep track of change in frequencies
logic [16:0]

typedef enum {IDLE=0, CALC=1, REPORT=2} state;
always_ff @(posedge clk_in)begin
  if (rst_in)begin
    ready_signal <= 1;
    valid_signal <= 0;
    // Replace with all variables
  end else begin
    if (valid_in_signal && fft_last)begin
      fft_data_reg_1 <= {0 , fft_data[31:16]};
      ready_signal <= 0;      
      state <= IDLE;
    end else begin
      case(state)
      IDLE: begin 
        fft_data_reg_2 <= fft_data_reg_1;
        state <= CALC;
      end
      CALC: begin
        change <= (fft_data_reg_1 - fft_data_reg_2);
      end
      REPORT: begin
        // FIll
      end
      endcase
    end
  end
end

always_comb begin
  case(tone)
  default: tone_ident = 3'b000;
  endcase
end

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
