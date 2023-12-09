`timescale 1ns / 1ps
`default_nettype none
module  tone_detection_fsm(
            input wire clk_in,
            input wire rst_in,
            input wire [15:0] fft_data,
            output logic [2:0] tone_ident,
            output logic ready_signal
  );

logic [15:0] fft_data_0;
logic [15:0] fft_data_1;
logic [15:0] fft_data_2;
logic [15:0] fft_data_3;

always_ff @(posedge clk_in)begin
  if (rst_in)begin
    // Replace with all variables
  end else begin  
    // Replace with logic
  end
end

always_comb begin
  tone_ident = 3'b000;
end

endmodule
`default_nettype wire

