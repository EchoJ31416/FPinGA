`timescale 1ns / 1ps
`default_nettype none
module pdm(
            input wire clk_in,
            input wire rst_in,
            input wire signed [7:0] level_in,
            input wire tick_in,
            output logic pdm_out
  );
  logic signed [7:0] level;
  logic signed [8:0] sum;
  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      level <= 8'b0;
      sum <= 9'b0;
    end else begin
      if (tick_in)begin
        sum <= level_in + sum - level;
      end
    end
  end
  always_comb begin
    if (~sum[8])begin
          level = 8'b0111_1111;
        end else begin
          level = 8'b1000_0000;
        end
  end
  assign pdm_out = ~level[7]; //replace with your code.
endmodule
`default_nettype wire