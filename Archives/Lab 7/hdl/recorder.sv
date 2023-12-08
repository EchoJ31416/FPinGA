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

  logic [15:0] w_address;
  logic [15:0] r_address;
  logic [15:0] cycle_delay;
  logic [15:0] delay;

  logic [15:0] single_address;
  
  logic signed [7:0] out;
  logic signed [7:0] single;
  logic signed [7:0] echo_1;
  logic signed [7:0] echo_2;

  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      echo_out <= 0;
      w_address <= 0;
      r_address <= 0;
      single_address <= 0;
      cycle_delay <= 0;
      echo_1 <= 0;
      echo_2 <= 0;
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
          echo_1 <= out>>>2;
        end else if (cycle_delay == 4)begin
          cycle_delay <= cycle_delay + 1;
          echo_2 <= out>>>1;
        end
      end
    end
    single_out <= single;
    echo_out <= single + echo_1 + echo_2;
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

/*
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
  logic [15:0] w_address;
  logic [15:0] r_address;
  logic [15:0] echo_address;
  logic [7:0] echo_port;
  logic echo_ready;
  logic signed [7:0] out;
  logic signed [7:0] echo_1;
  logic signed [7:0] echo_2;
  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      echo_out <= 0;
      w_address <= 0;
      r_address <= 0;
      echo_1 <= 0;
      echo_2 <= 0;
      echo_ready <= 0;
    end else begin
      if (record_in)begin // Writing
        if (audio_valid_in)begin
          w_address <= w_address + 1;
        end 
      end else if (audio_valid_in) begin // Reading current
        if (r_address <= w_address) begin
          r_address <= r_address + 1;
          echo_ready <= 0;
        end 
      end else if (r_address - 3000 != 0)begin // Reading before
        if (~echo_ready)begin
          echo_address <= r_address - 3000;
          echo_ready <= 1;
        end else begin
          echo_address <= r_address - 1500;
          echo_1 <= echo_port>>>2;
        end
        echo_2 <= echo_port>>>1; 
      end
    end
    single_out <= out;
    echo_out <= out + echo_1 + echo_2;
  end
  //we've included an instance of a dual port RAM for you:
  //how you use it is up to you.
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

 xilinx_true_dual_port_read_first_2_clock_ram #(
    .RAM_WIDTH(8),
    .RAM_DEPTH(65536))
    echo_one (
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
    .addrb(echo_address), 
    .dinb(),
    .clkb(clk_in),
    .web(1'b0),
    .enb(1'b1),
    .rstb(rst_in),
    .regceb(1'b1),
    .doutb(echo_port)
  );
endmodule
`default_nettype wire


*/