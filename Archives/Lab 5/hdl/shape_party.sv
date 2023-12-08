module shape_party(
  input wire clk_in, //
  input wire rst_in,
  input wire [10:0] hcount_in,
  input wire [9:0] vcount_in,
  input wire nf_in,
  input wire [3:0] b_con_in,
  input wire [3:0] c_con_in,
  output logic [7:0] red_out,
  output logic [7:0] green_out,
  output logic [7:0] blue_out
  );
  localparam BOX_DIM = 128;
  localparam CIRC_RAD = 64;
 
  logic [7:0] box_r, box_g, box_b;
  logic [7:0] circle_r, circle_g, circle_b;
  logic [7:0] shapes_r, shapes_g, shapes_b;
 
  logic [10:0] box_x;
  logic [9:0] box_y;
  logic [10:0] circle_x;
  logic [9:0] circle_y;
 
  block_sprite #(
  .WIDTH(BOX_DIM), .HEIGHT(BOX_DIM),.COLOR(24'hFF_7F_00))
  bs(
    .hcount_in(hcount_in),
    .vcount_in(vcount_in),
    .x_in(box_x),
    .y_in(box_y),
    .red_out(box_r),
    .green_out(box_g),
    .blue_out(box_b));
 
  circle_sprite #(
  .RADIUS(CIRC_RAD),.COLOR(24'hFF_FF_FF))
  cs(
    .clk_in(clk_in),
    .rst_in(rst_in),
    .hcount_in(hcount_in),
    .vcount_in(vcount_in),
    .x_in(circle_x),
    .y_in(circle_y),
    .red_out(circle_r),
    .green_out(circle_g),
    .blue_out(circle_b));
 
  localparam MOVE_AMT = 5; //amount to move per frame

  //Instructions:
  /*
  Create two sprites:
  * One rectangle with H and W 128 pixels
  * One circle with radius of 64 pixels
  * The two sprites should be able to move around the screen
    using four bits of input directions.  How you use them is up to you.
  * The sprites should not be able to move off the edge of the screen.
  * The sprites are allowed to collide/overlap. How you handle that is up
    to you.
  */

  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      box_x <= 200;
      box_y <= 360;
      circle_x <= 1000; 
      circle_y <= 360;
    end else if (nf_in)begin
        if (c_con_in[0]) begin
          if ((circle_x + CIRC_RAD) >= 1279) begin
            circle_x <= circle_x;
          end else begin
            circle_x <= circle_x + MOVE_AMT;
          end
        end else if (c_con_in[1]) begin
          if ((circle_x) <= CIRC_RAD) begin
            circle_x <= circle_x;
          end else begin
            circle_x <= circle_x - MOVE_AMT;
          end 
        end else if (c_con_in[2]) begin     
          if ((circle_y + CIRC_RAD) >= 719) begin
            circle_y <= circle_y;
          end else begin
            circle_y <= circle_y + MOVE_AMT;
          end   
        end else if (c_con_in[3]) begin
          if ((circle_y) <= CIRC_RAD) begin
            circle_y <= circle_y;
          end else begin
            circle_y <= circle_y - MOVE_AMT;
          end 
        end else if (b_con_in[0]) begin
          if (box_x + BOX_DIM >= 1279) begin
            box_x <= box_x;
          end else begin
            box_x <= box_x + MOVE_AMT;
          end
        end else if (b_con_in[1]) begin
          if (box_x <= 0) begin
            box_x <= box_x;
          end else begin
            box_x <= box_x - MOVE_AMT;
          end
        end else if (b_con_in[2]) begin
          if (box_y + BOX_DIM >= 719) begin
            box_y <= box_y;
          end else begin
            box_y <= box_y + MOVE_AMT;
          end
        end else if (b_con_in[3]) begin
          if (box_y <= 0) begin
            box_y <= box_y;
          end else begin
            box_y <= box_y - MOVE_AMT;
          end
        end     
      end
    end
  always_comb begin
    red_out = circle_r + box_r;
    green_out = circle_g + box_g;
    blue_out = circle_b + box_b;
  end
   
endmodule //shape_party