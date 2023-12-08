module parity_checker #(parameter WIDTH = 8)
                        (  input wire[WIDTH-1:0] data_in,
                        output logic parity_out);                 
  logic [WIDTH-1:0] counter;                      
  always_comb begin   
    int i;
    counter = 0;
    for (i = 0; i < WIDTH; i = i + 1)begin
      if (data_in[i] == 1) begin
        counter = counter + 1;
      end
    end
    if (counter % 2 == 0) begin
      parity_out = 1'b1;
    end else begin
      parity_out = 1'b0;
    end
  end

endmodule

