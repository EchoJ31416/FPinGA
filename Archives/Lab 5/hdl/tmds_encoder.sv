module tmds_encoder(
  input wire clk_in,
  input wire rst_in,
  input wire [7:0] data_in,  // video data (red, green or blue)
  input wire [1:0] control_in, //for blue set to {vs,hs}, else will be 0
  input wire ve_in,  // video data enable, to choose between control or video signal
  output logic [9:0] tmds_out
);

  logic [8:0] q_m;
  //you can assume a functioning (version of tm_choice for you.)
  tm_choice mtm(
    .data_in(data_in),
    .qm_out(q_m));

  logic [4:0] tally;
  logic [8:0] counter;

  always_comb begin
    counter = q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7];
  end

  always_ff @(posedge clk_in)begin
    if (rst_in)begin
        tally <= 0;
        tmds_out <= 0;    

    end else if (ve_in) begin
        if (tally == 0 || (counter == (8-counter)))begin
            tmds_out[9] <= ~q_m[8];
            tmds_out[8] <= q_m[8];
            tmds_out[7:0] <= (q_m[8] ? q_m[7:0] : ~q_m[7:0]);

            if (q_m[8] == 0)begin
                tally <= tally + (8 - counter - counter);
            end else begin
                tally <= tally + (counter - (8 - counter));
            end

        end else begin
            if ((tally[4] == 0 && counter > (8-counter)) || (tally[4] > 0 && counter < (8-counter)))begin
            tmds_out[9] <= 1;
            tmds_out[8] <= q_m[8];
            tmds_out[7:0] <= ~q_m[7:0];
            tally <= tally + {q_m[8], 1'b0} + (8 - counter - counter);


            end else begin
            tmds_out[9] <= 0;
            tmds_out[8] <= q_m[8];
            tmds_out[7:0] <= q_m[7:0];
            tally <= tally - {~q_m[8], 1'b0} + (counter - (8-counter));
            end
        end

    end else if (ve_in == 0) begin
        tally <= 0;
        if (control_in == 2'b00) begin
            tmds_out <= 10'b1101010100;
        end else if (control_in == 2'b01) begin
            tmds_out <= 10'b0010101011;
        end else if (control_in == 2'b10) begin
            tmds_out <= 10'b0101010100;
        end else if (control_in == 2'b11) begin
            tmds_out <= 10'b1010101011;
        end
    end
  end

endmodule //end tmds_encoder
