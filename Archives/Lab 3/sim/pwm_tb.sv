`timescale 1ns / 1ps
`default_nettype none

module pwm_tb;

  //make logics for inputs and outputs!
  logic clk_in;
  logic rst_in;
  logic [7:0] level_in;
  logic pwm_out;

  pwm pwm (.clk_in(clk_in),
            .rst_in(rst_in),
            .level_in(level_in),
            .pwm_out(pwm_out));
  always begin
    #5;  //every 5 ns switch...so period of clock is 10 ns...100 MHz clock
    clk_in = !clk_in;
  end

  //initial block...this is our test simulation
  initial begin
    $dumpfile("pwb.vcd"); //file to store value change dump (vcd)
    $dumpvars(0,pwm_tb); //store everything at the current level and below
    $display("Starting Sim"); //print nice message
    clk_in = 0; //initialize clk (super important)
    rst_in = 0; //initialize rst (super important)

    level_in = 100; //add different cases

    #10  //wait a little bit of time at beginning
    rst_in = 1; //reset system
    #10; //hold high for a few clock cycles
    rst_in=0;
    for (int i = 0; i<3000; i= i+1)begin
      //$display(pwm_out);
      #10;
    end
    level_in = 255; 
    for (int i = 0; i<3000; i= i+1)begin
      //$display(pwm_out);
      #10;
    end
    $finish;

  end
endmodule //counter_tb

`default_nettype wire
