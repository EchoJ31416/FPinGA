`timescale 1ns / 1ps
`default_nettype none

module tm_choice_tb();
  
  logic [7:0] data_in;
  logic [8:0] qm_out;
  tm_choice uut(.data_in(8'b1111_1110), .qm_out(qm_out));
  //initial block...this is our test simulation
  initial begin
    $display("Starting Sim"); //print nice message at start
    $dumpvars(1,tm_choice_tb);
    $display("qm_out");
    $finish;
  end
endmodule
`default_nettype wire
