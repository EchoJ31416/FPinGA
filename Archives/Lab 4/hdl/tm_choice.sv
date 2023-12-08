module tm_choice (
  input wire [7:0] data_in,
  output logic [8:0] qm_out
  );
  logic [7:0] counter;
  logic [8:0] intermediate;
  always_comb begin  
    qm_out[0] = data_in[0];
    counter = 0;
    for (int i = 0; i < 8; i++) begin
        if (data_in[i] == 1)begin
            counter ++ ;            
        end
    end
    if (counter > 4 || (counter == 4 && data_in[0] == 0))begin
        for (int i = 0; i < 8; i++ ) begin
            qm_out[i+1] = ~(data_in[i+1] ^ qm_out[i]);
        end
        qm_out[8] = 0;   
    end else begin
        for (int i = 0; i < 8; i++ ) begin
            qm_out[i+1] = (data_in[i+1] ^ qm_out[i]);
        end
        qm_out[8] = 1;     
    end
end
endmodule