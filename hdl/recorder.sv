`timescale 1ns / 1ps
`default_nettype none
module  recorder(
  input wire clk_in,
  input wire rst_in,
  input wire signed [7:0] audio_in,
  input wire record_in,
  input wire audio_valid_in,
  output logic signed [7:0] single_out
  );

  logic [15:0] w_address;
  logic [15:0] r_address;
  logic [15:0] cycle_delay;
  logic [15:0] delay;

  logic [15:0] single_address;
  
  logic signed [7:0] out;
  logic signed [7:0] single;

  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      echo_out <= 0;
      w_address <= 0;
      r_address <= 0;
      single_address <= 0;
      cycle_delay <= 0;
      delay <= 0;
    end else begin
      if (record_in && audio_valid_in)begin // Writing
        w_address <= w_address + 1;
      end else begin
        if (audio_valid_in) begin // Reading current
          single_address <= single_address + 1;
          cycle_delay <= 1;
        end else if (cycle_delay == 1 && delay != 1)begin
          r_address <= single_address;    
          cycle_delay <= cycle_delay + 1;
          single <= out;
        end else if (cycle_delay == 2 && (single_address>3000)) begin
          r_address <= single_address - 3000;
          cycle_delay <= cycle_delay + 1;
          single <= out;
        end else if (cycle_delay == 3) begin
          r_address <= single_address - 1500; 
          cycle_delay <= cycle_delay + 1;
        end else if (cycle_delay == 4)begin
          cycle_delay <= cycle_delay + 1;
        end
      end
    end
    single_out <= single;
  end
  
  xilinx_true_dual_port_read_first_2_clock_ram #(
    .RAM_WIDTH(8),
    .RAM_DEPTH(65536))
    audio_buffer (
    // Writing
    .addra(w_address),
    .clka(clk_in),
    .wea(record_in&&audio_valid_in),
    .dina(audio_in),
    .ena(1'b1),
    .regcea(1'b1),
    .rsta(rst_in),
    .douta(),
    // Reading
    .addrb(r_address), 
    .dinb(),
    .clkb(clk_in),
    .web(1'b0),
    .enb(1'b1),
    .rstb(rst_in),
    .regceb(1'b1),
    .doutb(out)
  );
endmodule
`default_nettype wire