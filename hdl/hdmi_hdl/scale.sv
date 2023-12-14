`timescale 1ns / 1ps
`default_nettype none
module scale(
  input wire [1:0] scale_in,
  input wire [10:0] hcount_in,
  input wire [9:0] vcount_in,
  output logic [10:0] scaled_hcount_out,
  output logic [9:0] scaled_vcount_out,
  output logic valid_addr_out
);
  //always just default to scale 1
  //(you need to update/modify this to spec)!

  always_comb begin
    case(scale_in)
      2'b00: begin
        scaled_vcount_out = vcount_in;
        scaled_hcount_out = hcount_in;
        valid_addr_out = hcount_in <240 && vcount_in <320;
      end
      2'b01: begin
        scaled_vcount_out = vcount_in;
        scaled_hcount_out = hcount_in;
        valid_addr_out = 0;
      end
      2'b10: begin
        scaled_vcount_out = vcount_in/2;
        scaled_hcount_out = hcount_in/4;
        valid_addr_out = hcount_in <960 && vcount_in <640;
      end
      2'b11: begin
        scaled_vcount_out = vcount_in/2;
        scaled_hcount_out = hcount_in/2;
        valid_addr_out = hcount_in <480 && vcount_in <640;
      end
      default: begin
        valid_addr_out = hcount_in <240 && vcount_in <320;
        scaled_hcount_out = hcount_in;
        scaled_vcount_out = vcount_in;
      end 
    endcase    
  end
endmodule
`default_nettype wire

