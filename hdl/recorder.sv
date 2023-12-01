`timescale 1ns / 1ps
`default_nettype none


module  recorder(
  input wire clk_in,
  input wire rst_in,
  input wire signed [7:0] audio_in,
  input wire record_in,
  input wire audio_valid_in,
  output logic signed [7:0] single_out,
  output logic signed [7:0] echo_out
  );
  //your code here
  logic signed [7:0] rcrd_out_a;
  logic [15:0] add_a;
  logic [7:0] echo_1;
  logic [7:0] echo_2;
  logic state;
  logic prev_state;
  logic [15:0] max_add;
  logic [7:0] bleghl;
  logic [3:0] echo;
  logic [15:0] true_add;


  //we've included an instance of a dual port RAM for you:
  //how you use it is up to you.
  xilinx_true_dual_port_read_first_2_clock_ram #(
    .RAM_WIDTH(8),
    .RAM_DEPTH(65536))
    audio_buffer (
    .addra(add_a),
    .clka(clk_in),
    .wea(record_in&&audio_valid_in),
    .dina(audio_in),
    .ena(1'b1),
    .regcea(1'b1),
    .rsta(rst_in),
    .douta(rcrd_out_a),
    .addrb(70000),
    .dinb(0),
    .clkb(clk_in),
    .web(1'b0),
    .enb(1'b1),
    .rstb(rst_in),
    .regceb(1'b1),
    .doutb(bleghl)
  );

  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      single_out <= 8'b0;
      echo_out <= 8'b0;
      echo_1 <= 8'b0;
      echo_2 <= 8'b0;
      add_a <= 16'b0;
      echo <= 0;
      true_add <= 16'b0;
    end else begin
      prev_state <= state;
      state <= record_in;
      if (state != prev_state) begin
        max_add <= add_a;
        add_a <= 16'b0;
      end else if (record_in&& audio_valid_in) begin
        add_a <= add_a + 1;
      end else if (~record_in && audio_valid_in) begin
        add_a <= (add_a + 1 == max_add) ? 0 : add_a+1;
        //true_add <= (add_a + 1 == max_add) ? 0 : add_a+1;
        //true_add <= add_a;
        single_out <= rcrd_out_a;
        echo_out <= rcrd_out_a + echo_1 + echo_2;
        echo <= 5;
      end else if (~record_in && ~audio_valid_in) begin
        if(add_a >= 1499 && echo == 5) begin
          true_add <= add_a;
          add_a <= add_a - 1499;
          echo <= 4;
        end else if (echo == 4) begin
          echo <= 3;
        end else if(echo == 3) begin
          echo_1 <= rcrd_out_a >>> 1;
          if (true_add >= 2999) begin
            add_a <= add_a - 1500;
            echo <= 2;
          end else begin
            echo <= 0;
            add_a <= true_add;
          end
        end else if (echo == 2) begin
          echo <= 1;
        end else if(echo == 1) begin
          echo_2 <= rcrd_out_a >>> 2;
          echo <=0;
          add_a <= true_add;
        end
      end
    end
  end
endmodule
`default_nettype wire

