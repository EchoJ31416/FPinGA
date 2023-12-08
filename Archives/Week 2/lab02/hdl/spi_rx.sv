`timescale 1ns / 1ps
`default_nettype none // prevents system from inferring an undeclared logic (good practice)
module spi_rx
       #(  parameter DATA_WIDTH = 8
        )
        ( input wire clk_in,
          input wire rst_in,
          input wire data_in,
          input wire data_clk_in,
          input wire sel_in,
          output logic [DATA_WIDTH-1:0] data_out,
          output logic new_data_out
        );
  //your code here
  logic [31:0] counter;
  logic old_click;
  always_ff @(posedge clk_in)begin
    old_click <= data_clk_in;
    if (rst_in == 1)begin
        new_data_out <= 0;
        data_out <= 0;
        counter <= 0;
    end else begin
        new_data_out <= 0;
        if (sel_in == 1)begin
            data_out <= 0;
        end else begin
            if (counter < DATA_WIDTH) begin
                if (data_clk_in == 1)begin
                    if (old_click == 0) begin
                        data_out <= {data_out[DATA_WIDTH-2:0] , data_in};  
                        counter <= counter + 1;      
                        end 
                end 
            end else begin
                        new_data_out <= 1;
                        counter <= 0;
                end
            end
            end                                                      
        end

endmodule
`default_nettype wire // prevents system from inferring an undeclared logic (good practice)
