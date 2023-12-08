	`timescale 1ns / 1ps
`default_nettype none // prevents system from inferring an undeclared logic (good practice)
 
module top_level(
  input wire clk_100mhz, //
  input wire [15:0] sw, //all 16 input slide switches
  input wire [3:0] btn, //all four momentary button switches
  output logic [15:0] led, //16 green output LEDs (located right above switches)
  output logic [3:0] ss0_an,//anode control for upper four digits of seven-seg display
  output logic [3:0] ss1_an,//anode control for lower four digits of seven-seg display
  output logic [6:0] ss0_c, //cathode controls for the segments of upper four digits
  output logic [6:0] ss1_c, //cathod controls for the segments of lower four digits
  output logic [2:0] rgb0, //rgb led
  output logic [2:0] rgb1, //rgb led
  input wire [7:0] pmodb //input I/O used for IR input (part 1)
  );
 
  //Comment out these constant assigns for part 2
  /*
  assign rgb1= 0;
  assign rgb0 = 0;
 */
  //Uncomment for the part 2:
  
  logic [7:0] rgb [0:2]; //three 8 bit rgb signals (used to control RGB signal)
  logic [2:0] rgb_pwm; //three one bit pwm signals to drive the LEDs
  assign rgb1 = rgb_pwm; //drive the LEDs:
  assign rgb0 = rgb_pwm; //same thing (do for both RGB LEDs)
  //Make three instances of the PWM module, one for red, green, and blue, each
  generate
    genvar i;
    for (i=0; i<3; i=i+1)begin
      pwm mpwm
          (.clk_in(clk_100mhz),
           .rst_in(sys_rst),
           .level_in(rgb[i]),
           .pwm_out(rgb_pwm[i])
          );
    end
  endgenerate

 
  //global reset:
  logic sys_rst;
  assign sys_rst = btn[0];
 
  //7-segment display-related concepts:
  logic [31:0] val_to_display; //either the spi data or the btn_count data (default)
  logic [6:0] ss_c; //used to grab output cathode signal for 7s leds
 
  seven_segment_controller mssc(.clk_in(clk_100mhz),
                                .rst_in(sys_rst),
                                .val_in(val_to_display),
                                .cat_out(ss_c),
                                .an_out({ss0_an, ss1_an}));
  assign ss0_c = ss_c; //control upper four digit's cathodes!
  assign ss1_c = ss_c; //same as above but for lower four digits!
 
  logic ir_signal; //incoming infrared signal (already demodulated)
  logic ir_signal_clean; //synchronize incoming infrared to avoid bugs from setup/hold violations
  assign ir_signal = pmodb[3]; //link to pmodb[3]
 
  synchronizer s1
        ( .clk_in(clk_100mhz),
          .rst_in(sys_rst),
          .us_in(ir_signal),
          .s_out(ir_signal_clean));
 
  //infrared decoder
  logic [31:0] code;
  logic [2:0] error;
  logic [3:0] ir_state;
  logic [2:0] locked_error;
  logic new_code;
 
  //for debugging:
  //~clean: led[0] will flash when signal coming in
  //locked_error[2:0]: led[3:1] will display error_out from fsm
  //ir_state[3:0]: led[7:4] will display current state of FSM
  assign led = {ir_state,locked_error,~ir_signal_clean};
 
  ir_decoder mid (  .clk_in(clk_100mhz),
                    .rst_in(sys_rst),
                    .signal_in(ir_signal_clean),
                    .code_out(code),
                    .state_out(ir_state),
                    .error_out(error),
                    .new_code_out(new_code));
 
  //code to grab new full code when indicated by module!
  //code to grab and display any errors that you may generate!
  always_ff @(posedge clk_100mhz)begin
    val_to_display <= sys_rst?0:new_code?code:val_to_display;
    locked_error <= sys_rst?0:|error?error:locked_error;
  end
 
  //Feel free to uncomment and use this part below for the last part of checkoff 02:
  always_ff @(posedge clk_100mhz)begin
    if(sys_rst)begin
      rgb[0] <= 1;
      rgb[1] <= 1;
      rgb[2] <= 1;
    end else if (new_code == 1)begin
        if (code == 32'h57E31EE1 && ((rgb[0] + 5) <= 255))begin
          // R increase
          rgb[0] <= rgb[0] + 5;
          
        end else if (code == 32'h57E32CD3 && ((rgb[0] - 5) >= 0) && (rgb[0] >= 5))begin
          // R decrease
          rgb[0] <= rgb[0] - 5;

        end else if (code == 32'h57E31FE0 && ((rgb[0] + 1) <= 255))begin
          // R gradual increase
          rgb[0] <= rgb[0] + 1;

        end else if (code == 32'h57E32DD2 && ((rgb[0] - 1) >= 0) && (rgb[0] >= 5))begin
          // R gradual decrease
          rgb[0] <= rgb[0] - 1;
              
        end else if (code == 32'h57E346B9 && ((rgb[1] + 5) <= 255))begin
          // B increase
          rgb[1] <= rgb[1] + 5;

        end else if (code == 32'h57E332CD && ((rgb[1] - 5) >= 0) && (rgb[1] >= 5))begin
          // B decrease
          rgb[1] <= rgb[1] - 5;

        end else if (code == 32'h57E34768 && ((rgb[1] + 1) <= 255))begin
          // G gradual increase
          rgb[1] <= rgb[1] + 1;

        end else if (code == 32'h57E333CC && ((rgb[1] - 1) >= 0) && (rgb[1] >= 5))begin
          // G gradual decrease
          rgb[1] <= rgb[1] - 1;
              
        end else if (code == 32'h57E38679 && ((rgb[2] + 5) <= 255))begin
          // B increase
          rgb[2] <= rgb[2] + 5;

        end else if (code == 32'h57E3AA55 && ((rgb[2] - 5) >= 0) && (rgb[2] >= 5))begin
          // B decrease
          rgb[2] <= rgb[2] - 5;

        end else if (code == 32'h57E38778 && ((rgb[2] + 1) <= 255))begin
          // B gradual increase
          rgb[2] <= rgb[2] + 1;

        end else if (code == 32'h57E3AB54 && ((rgb[2] - 1) >= 0) && (rgb[2] >= 5))begin
          // B gradual decrease
          rgb[2] <= rgb[2] - 1;
        end
    end else begin
      rgb[0] <= rgb[0]; 
      rgb[1] <= rgb[1]; 
      rgb[2] <= rgb[2];
    end
    end
endmodule // top_level
`default_nettype wire