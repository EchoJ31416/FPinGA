`timescale 1ns / 1ps
`default_nettype none // prevents system from inferring an undeclared logic (good practice)
module spi_tx
       #(   parameter DATA_WIDTH = 8,
            parameter DATA_PERIOD = 100
        )
        ( input wire clk_in,
          input wire rst_in,
          input wire [DATA_WIDTH-1:0] data_in,
          input wire trigger_in,
          output logic data_out,
          output logic data_clk_out,
          output logic sel_out
        );
  logic mode;
  localparam PERIOD = (DATA_PERIOD % 2 == 1) ? (DATA_PERIOD - 1): DATA_PERIOD;
  logic[31:0] count;
  logic[31:0] clock_counter;
  logic [DATA_WIDTH-1:0] data_buffer;
  always_ff @(posedge clk_in)begin
    if (rst_in == 1) begin
        sel_out <= 1;
        data_clk_out <= 0;
        data_out <= 0;
        mode <= 0;
        count <= 1;
        clock_counter <= 1;
        data_buffer <= 0;
        // Add any other variables that you are using in here 
    end else begin
        // All my jazz here
        if (mode == 1)begin
            clock_counter <= clock_counter + 1;
            if (count <= DATA_WIDTH)begin
                sel_out <= 0;
                if (clock_counter % (((PERIOD)/2)) == 0)begin
                  if (data_clk_out == 1)begin
                        count <= count + 1;
                        data_out <= data_buffer[DATA_WIDTH - 1 - count];
                        data_clk_out <= 0;
                    end else begin
                        data_clk_out <= 1;
                    end
                end 
            end else begin
                mode <= 0;
                data_out <= 0;
                count <= 1;
                sel_out <= 1;
            end
        end else begin
            if (trigger_in == 1)begin
                data_buffer <= data_in;
                sel_out <= 0;
                mode <= 1;
                count <= 1;
                data_out <= data_in[DATA_WIDTH-1];
            end else begin
                sel_out <= 1;
            end
        end 
    end
   end
endmodule
`default_nettype wire // prevents system from inferring an undeclared logic (good practice)