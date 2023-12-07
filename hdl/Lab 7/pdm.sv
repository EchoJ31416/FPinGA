`timescale 1ns / 1ps
`default_nettype none


module pdm(
            input wire clk_in,
            input wire rst_in,
            input wire signed [7:0] level_in,
            input wire tick_in,
            output logic pdm_out
  );

  logic signed [7:0] error;
  logic signed [8:0] error_big;

  assign error = pdm_out ? 127: -128;
  assign pdm_out = (error_big >= 0) ? 1: 0;

  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      error_big <= 8'b0;
    end else begin
      if (tick_in)begin
        //error <= pdm_out ? (error + (level_in - 1)) : (error -(level_in));
        //error <= pdm_out ? error - 128 - level_in: error  -level_in;
        error_big = error_big + level_in - error;
      end
    end
  end

endmodule


`default_nettype wire
