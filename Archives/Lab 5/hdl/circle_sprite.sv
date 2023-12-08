module circle_sprite #(
  parameter RADIUS=64, COLOR=24'hFF_FF_FF)(
  input wire clk_in,
  input wire rst_in,
  input wire [10:0] hcount_in,
  input wire [9:0] vcount_in,
  input wire [10:0] x_in,
  input wire [9:0]  y_in,
  output logic [7:0] red_out,
  output logic [7:0] green_out,
  output logic [7:0] blue_out);
 
  logic in_sprite;
  // assign in_sprite = (((hcount_in - x_in) ** 2 + (vcount_in - y_in) ** 2 <= RADIUS ** 2));

  logic [11:0] xint;
  logic [10:0] yint;
  always_ff @(posedge clk_in)begin

    if (hcount_in > x_in)begin
      xint <= hcount_in - x_in;
      if (vcount_in > y_in)begin
        yint <= vcount_in - y_in;
      end else begin
        yint <= y_in - vcount_in;
      end
    end else begin
      xint <= x_in - hcount_in;
      if (vcount_in > y_in)begin
        yint <= vcount_in - y_in;
      end else begin
        yint <= y_in - vcount_in;
      end
    end
    in_sprite <= (xint ** 2 + yint ** 2 <= RADIUS ** 2);
  end
  

  always_comb begin
    if (in_sprite)begin
      red_out = COLOR[23:0];
      green_out = COLOR[23:0];
      blue_out = COLOR[23:0];
    end else begin
      red_out = 0;
      green_out = 0;
      blue_out = 0;
    end
  end
endmodule