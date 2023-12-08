module alu(input wire [7:0] d0_in,
          input wire [15:8] d1_in,
          input wire [2:0] sel_in,
          output logic [15:0] res_out,
          output logic  gt_out,
          output logic eq_out);

   //  YOUR CODE HERE
   always_comb begin
        eq_out = 2'b0;
        gt_out = 2'b0;
        if (d0_in == d1_in) begin
            eq_out = 1'b1; 
        end if (d1_in > d0_in) begin
            gt_out = 1'b1;
        end
        case(sel_in)
            3'b000 : res_out = d1_in + d0_in;
            3'b001 : res_out = d1_in - d0_in;
            3'b010 : res_out = d1_in * d0_in; 
            3'b011 : res_out = d1_in / d0_in;
            3'b100 : res_out = d1_in % d0_in;
            3'b101 : res_out = d1_in & d0_in;
            3'b110 : res_out = d1_in | d0_in;
            3'b111 : res_out = d1_in ^ d0_in;
            default : res_out = 0;
        endcase
   end
endmodule