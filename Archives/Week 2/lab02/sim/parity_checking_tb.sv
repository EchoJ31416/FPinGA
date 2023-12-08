module parity_tb;
 
  /* logics for inputs and outputs */
  logic clk_in;
  logic rst_in;
  logic data_in;
  logic parity_out;  /* be sure this is the right bit width! */
 
  parity_checker  #(.WIDTH(13)) my_counter
                            ( .data_in(13'b0001000111011),
                              .parity_out(parity_out));
 
  /* An always block in simulation **always** runs in the background.
   * This is useful to simulate a clock for sequential testbenches:
   *	- every 5ns, make clk be !clk
   */
  /* Finally, the actual test */
  initial begin
 
    /* Set up GTKWave output
     *
     * We would like to dump the results of this simulation
     * to the waveform file "counter.vcd" - change this if you
     * would like.
     *
     * We would like to show variables from the module
     * 'simple_counter_tb'. If you are dumping variables from
     * a different module, be sure to change this to the name
     * of the module you're trying to examine.
     *
     * That zero there means "dump all the variables from this
     * module plus anything it instantiates"
     */
    $dumpfile("results.vcd");
    $dumpvars(0, parity_tb);
    #100;
    $display("%b",parity_out);
    $finish;
  end
endmodule /* simple_counter_tb */