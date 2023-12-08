`timescale 1ns / 1ps
`default_nettype none
 
module  pwm
          (input wire clk_in,
            input wire rst_in,
            input wire [7:0] level_in,
            output logic pwm_out
          );
  //your code here
  logic [31:0] counter;
  always_ff @(posedge clk_in)begin
    if (rst_in) begin
        counter <= 0;
        pwm_out <= 0;
    end else begin
        counter <= counter + 1;
        if (counter == 31'd256 - level_in)begin
            pwm_out <= 1;
        end else if (counter == 31'd256)begin
            pwm_out <= 0;
            counter <= 0;
        end
    end
  end
endmodule
 
`default_nettype wire