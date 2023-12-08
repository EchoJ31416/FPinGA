`timescale 1ns / 1ps
`default_nettype none // prevents system from inferring an undeclared logic (good practice)

module top_level(
  input wire clk_100mhz,
  input wire [15:0] sw, //all 16 input slide switches
  input wire uart_rxd, //the specified variable (no clue what it does as I write this)
  output logic [15:0] led, //16 green output LEDs (located right above switches)
  output logic uart_txd //main output (again, I don't know what this does yet)
  );

  logic clk;
  assign led = sw; //for debugging
  assign clk = clk_100mhz; //change soon?
  
  logic trigger;
  logic [31:0] counter;

  // Logic block to create 10 kHz Trigger
  always_ff @(posedge clk)begin
    if (counter == 32'd10000)begin
      trigger <= 1;
      counter <= 0;
    end else begin
      trigger <= 0;
      counter <= counter + 1;
    end
  end

  logic [31:0] val1_in;
  logic [31:0] val2_in;
  logic [31:0] val3_out;
  logic [31:0] val4_out;
  logic [31:0] val1_int; // Intermediate values
  logic [31:0] val2_int; // Intermediate values
  logic [31:0] val1_div; // Intermediate values
  logic [31:0] val2_div; // Intermediate values
  logic [31:0] val1_inv; // Intermediate values
  logic [31:0] val2_inv; // Intermediate values
  logic [31:0] mult_0_res;
  logic [31:0] mult_1_res;
  logic mult_0_valid;
  logic mult_1_valid;
  logic adder_ready;
  logic adder_valid;
  logic inverse_ready;
  logic inverse_valid;

  always_comb begin
    if (sw[0])begin
      val1_in = val1_inv;
      val2_in = val2_inv;
    end else begin
      val1_in = val1_div;
      val2_in = val2_div;
    end
  end

  always_ff @(posedge clk)begin // Check for valid signals
    if (adder_valid)begin
      val1_inv <= val1_int;
    end if(inverse_valid)begin
      val2_inv <= val2_int;
    end
  end 
  
  divider #(.WIDTH(32)) divider_inst (.clk_in(clk),
                .rst_in(0),
                .dividend_in(val4_out),
                .divisor_in(val3_out),
                .data_valid_in(trigger),
                .quotient_out(val1_div),
                .remainder_out(val2_div),
                .data_valid_out(),
                .error_out(),
                .busy_out());

  floating_point_0 mult_0 
        ( .s_axis_a_tdata(val4_out),
          .s_axis_a_tready(),
          .s_axis_a_tvalid(trigger),
          .s_axis_b_tdata(val4_out),
          .s_axis_b_tready(),
          .s_axis_b_tvalid(trigger),
          .aclk(clk),
          .m_axis_result_tdata(mult_0_res),
          .m_axis_result_tready(adder_ready),
          .m_axis_result_tvalid(mult_0_valid));

  floating_point_0 mult_1 
        ( .s_axis_a_tdata(val3_out),
          .s_axis_a_tready(),
          .s_axis_a_tvalid(trigger),
          .s_axis_b_tdata(val3_out),
          .s_axis_b_tready(),
          .s_axis_b_tvalid(trigger),
          .aclk(clk),
          .m_axis_result_tdata(mult_1_res),
          .m_axis_result_tready(adder_ready),
          .m_axis_result_tvalid(mult_1_valid));

  adder add 
        ( .s_axis_a_tdata(mult_0_res),
          .s_axis_a_tready(adder_ready),
          .s_axis_a_tvalid(mult_0_valid),
          .s_axis_b_tdata(mult_1_res),
          .s_axis_b_tready(),
          .s_axis_b_tvalid(mult_1_valid),
          .aclk(clk),
          .m_axis_result_tdata(val1_int),
          .m_axis_result_tready(inverse_ready),
          .m_axis_result_tvalid(adder_valid));
        
  floating_point_1 inverse
       ( .s_axis_a_tdata(val1_int),
         .s_axis_a_tready(inverse_ready),
         .s_axis_a_tvalid(adder_valid),
         .aclk(clk),
         .m_axis_result_tdata(val2_int),
         .m_axis_result_tready(1),
         .m_axis_result_tvalid(inverse_valid));

  manta manta_inst (
    .clk(clk),
    .rx(uart_rxd),
    .tx(uart_txd),
    .val1_in(val1_in), 
    .val2_in(val2_in), 
    .val3_out(val3_out), 
    .val4_out(val4_out));

endmodule
`default_nettype wire
