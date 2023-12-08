`timescale 1ns / 1ps
`default_nettype none
module ir_decoder
       #( parameter SBD  = 900_000, //sync burst duration
          parameter SSD  = 450_000, //sync silence duration
          parameter BBD = 60_000, //bit burst duration
          parameter BSD0 = 60_000, //bit silence duration (for 0)
          parameter BSD1 = 160_000, //bit silence duration (for 1)
          parameter MARGIN = 20_000 //The +/- of your signals
        )
        ( input wire clk_in, //clock in (100MHz)
          input wire rst_in, //reset in
          input wire signal_in, //signal in
          output logic [31:0] code_out, //where to place 32 bit code once captured
          output logic new_code_out, //single-cycle indicator that new code is present!
          output logic [2:0] error_out, //output error codes for debugging
          output logic [3:0] state_out //current state out (helpful for debugging)
        );
  logic [31:0] signal_counter;
  logic [31:0] intermediate_code;
  logic [31:0] found_32;
  typedef enum {IDLE=0, SL=1, SH=2, DL=3, DH=4, F0=5, F1=6, CHECK=7, DATA=8} ir_state;
  current_counter mcc( .clk_in(clk_in),
                        .rst_in(rst_in),
                        .signal_in(signal_in),
                        .tally_out(signal_counter));
  ir_state state;
  assign state_out = state;
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

module current_counter
  ( input wire clk_in, //clock in
    input wire rst_in, //reset in
    input wire signal_in, //signal to be monitored
    output logic [31:0] tally_out //tally of how many cycles signal in has been at its current value
  );
  logic old_sig;
  always_ff @(posedge clk_in)begin
    old_sig <= signal_in;
    if (rst_in) begin
        tally_out <= 0;
    end else begin
        if (old_sig != signal_in)begin
            tally_out <= 0;
        end else begin
            tally_out <= tally_out + 1;
        end
    end
  end
endmodule
`default_nettype none