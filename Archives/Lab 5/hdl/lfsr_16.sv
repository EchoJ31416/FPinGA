module lfsr_16 (input wire clk_in, input wire rst_in,
                    input wire [15:0] seed_in,
                    output logic [15:0] q_out);
    logic [15:0] Q_intermediate;
    logic [15:0] Q_intermediate_2;
    always_ff @(posedge clk_in)begin
        if (rst_in) begin
            Q_intermediate <= seed_in;
            Q_intermediate_2 <= seed_in;
        end else begin

            Q_intermediate[0] <= Q_intermediate[15];
            Q_intermediate[1] <= Q_intermediate[0];

            Q_intermediate[2] <= ^{Q_intermediate[1], Q_intermediate[15]};

            Q_intermediate[3] <= Q_intermediate[2];
            Q_intermediate[4] <= Q_intermediate[3];
            Q_intermediate[5] <= Q_intermediate[4];
            Q_intermediate[6] <= Q_intermediate[5];
            Q_intermediate[7] <= Q_intermediate[6];
            Q_intermediate[8] <= Q_intermediate[7];
            Q_intermediate[9] <= Q_intermediate[8];
            Q_intermediate[10] <= Q_intermediate[9];
            Q_intermediate[11] <= Q_intermediate[10];
            Q_intermediate[12] <= Q_intermediate[11];
            Q_intermediate[13] <= Q_intermediate[12];
            
            Q_intermediate[14] <= Q_intermediate[13];
            Q_intermediate[15] <= ^{Q_intermediate[14], Q_intermediate[15]};

        end
    end
    always_comb begin 
        q_out = Q_intermediate;
    end
endmodule




