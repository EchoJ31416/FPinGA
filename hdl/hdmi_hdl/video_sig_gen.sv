module video_sig_gen
#(
  parameter ACTIVE_H_PIXELS = 1280,
  parameter H_FRONT_PORCH = 110,
  parameter H_SYNC_WIDTH = 40,
  parameter H_BACK_PORCH = 220,
  parameter ACTIVE_LINES = 720,
  parameter V_FRONT_PORCH = 5,
  parameter V_SYNC_WIDTH = 5,
  parameter V_BACK_PORCH = 20)
(
  input wire clk_pixel_in,
  input wire rst_in,
  output logic [$clog2(TOTAL_PIXELS)-1:0] hcount_out,
  output logic [$clog2(TOTAL_LINES)-1:0] vcount_out,
  output logic vs_out,
  output logic hs_out,
  output logic ad_out,
  output logic nf_out,
  output logic [5:0] fc_out);

  localparam TOTAL_PIXELS = ACTIVE_H_PIXELS + H_FRONT_PORCH + H_SYNC_WIDTH + H_BACK_PORCH; 
  localparam TOTAL_LINES = ACTIVE_LINES + V_FRONT_PORCH + V_SYNC_WIDTH + V_BACK_PORCH;

  always_ff @(posedge clk_pixel_in)begin
    nf_out <= 0;
    if (rst_in)begin
        hcount_out <= 0;
        vcount_out <= 0;
        vs_out <= 0;
        hs_out <= 0;
        fc_out <= 0;  
        nf_out <= 0; // May cause problems
        ad_out <= 0;
    end else begin   
        if (ad_out == 1)begin
            hcount_out <= hcount_out + 1;
            hs_out <= 0;
            vs_out <= 0;
            if (hcount_out == ACTIVE_H_PIXELS-1)begin
                ad_out <= 0;
            end

        end else begin
                
            if (vcount_out == (ACTIVE_LINES) && hcount_out == (ACTIVE_H_PIXELS - 1))begin
                fc_out <= fc_out + 1;
                nf_out <= 1;
                hcount_out <= hcount_out + 1; 

            end else if (hcount_out == (TOTAL_PIXELS-1) && vcount_out == (TOTAL_LINES-1) || (hcount_out == 0 && vcount_out == 0))begin // Reset for new frame
                hcount_out <= 0;
                vcount_out <= 0;
                ad_out <= 1;
            


            end else if (hcount_out == (TOTAL_PIXELS-1))begin // Start new line
                vcount_out <= vcount_out + 1; 
                hcount_out <= 0;

                if (vcount_out < ACTIVE_LINES-1) begin
                    ad_out <= 1;
                end else if ((ACTIVE_LINES + V_FRONT_PORCH - 2) < vcount_out && vcount_out < (ACTIVE_LINES + V_FRONT_PORCH + V_SYNC_WIDTH-1))begin
                    vs_out <= 1; // Check for errors, please
                end else if (vcount_out == (ACTIVE_LINES + V_FRONT_PORCH + V_SYNC_WIDTH)-1) begin
                    vs_out <= 0;
                end else if (vcount_out == ACTIVE_LINES && hcount_out == ACTIVE_H_PIXELS)begin
                    ad_out <= 0;
                end



            end else begin // Check for synch periods
                hcount_out <= hcount_out + 1;
                if ((ACTIVE_H_PIXELS + H_FRONT_PORCH - 2) < hcount_out && hcount_out < (ACTIVE_H_PIXELS + H_FRONT_PORCH + H_SYNC_WIDTH-1))begin
                    hs_out <= 1;
                end else if (hcount_out == (ACTIVE_H_PIXELS + H_FRONT_PORCH + H_SYNC_WIDTH - 1)) begin
                    hs_out <= 0;
                end
            end


        end
    end 
  end

endmodule
