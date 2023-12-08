`timescale 1ns / 1ps
`default_nettype none // prevents system from inferring an undeclared logic (good practice)
 
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
`default_nettype wire