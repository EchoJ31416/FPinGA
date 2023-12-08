`timescale 1ns / 1ps
`default_nettype none


module spi_rx_tb();
  localparam DATA_WIDTH = 16;

  logic clk_in;
  logic rst_in;
  logic [15:0] data_in;
  logic trigger_in;

  logic data_out, data_clk_out, sel_out;

  logic new_data_out;

  logic [DATA_WIDTH-1:0] rx_out;

  logic s_data_out;
  logic s_data_clk_out;
  logic s_sel_out;




  //why tf would I rewrite the logic for a SPI transmitter?
  //reuse your working SPI_TX module here to then test your
  //spi rx module
  
  spi_tx #(.DATA_WIDTH(DATA_WIDTH), .DATA_PERIOD(10)) uut
                  ( .clk_in(clk_in), .rst_in(rst_in),
                    .data_in(data_in),
                    .trigger_in(trigger_in),
                    .data_out(data_out),
                    .sel_out(sel_out),
                    .data_clk_out(data_clk_out));
  //run the signals through three synchronizers
  //this isn't needed, but included here to make sure the
  //synchronizers are working correctly.
  synchronizer s1
        ( .clk_in(clk_in),
          .rst_in(rst_in),
          .us_in(data_out),
          .s_out(s_data_out));
  synchronizer s2
        ( .clk_in(clk_in),
          .rst_in(rst_in),
          .us_in(data_clk_out),
          .s_out(s_data_clk_out));
  synchronizer s3
        ( .clk_in(clk_in),
          .rst_in(rst_in),
          .us_in(sel_out),
          .s_out(s_sel_out));
  // SPI_RX.
  spi_rx #(.DATA_WIDTH(DATA_WIDTH)) uut2
                  ( .clk_in(clk_in), .rst_in(rst_in),
                    .data_clk_in(s_data_clk_out),
                    .data_in(s_data_out),
                    .sel_in(s_sel_out),
                    .data_out(rx_out),
                    .new_data_out(new_data_out));

  always begin
      #5;  //every 5 ns switch...so period of clock is 10 ns...100 MHz clock
      clk_in = !clk_in;
  end
  //initial block...this is our test simulation
  initial begin
    $dumpfile("spi.vcd"); //file to store value change dump (vcd)
    $dumpvars(0,spi_rx_tb);
    $display("Starting Sim"); //print nice message at start
    clk_in = 0;
    rst_in = 0;
    trigger_in = 0;
    data_in = 16'hBEEF; //16 long message, 2-wide bit duration
    #10;
    rst_in = 1;
    #10;
    rst_in = 0;
    #500;
    trigger_in = 1;
    #10;
    trigger_in = 0;
    $display("data_in = %16b ",data_in);
    $display("trig data clk");
    for(int i=0; i<300; i=i+1)begin
      $display("%b   %b    %b",trigger_in, data_out, data_clk_out);
      #10;
    end
    data_in = 16'hFEED;
    trigger_in = 1;
    #10;
    trigger_in = 0;
    $display("trig data clk");
    for(int i=0; i<300; i=i+1)begin
      $display("%b   %b    %b",trigger_in, data_out, data_clk_out);
      #10;
    end
    $display("Finishing Sim"); //print nice message at end
    $finish;
  end
endmodule
module  synchronizer #(parameter SYNC_DEPTH = 2
                    ) (   input wire clk_in,
                          input wire rst_in,
                          input wire us_in, //unsync_in
                          output logic s_out); //sync_out

  logic [SYNC_DEPTH-1:0] sync;

  always_ff @(posedge clk_in)begin
    if (rst_in)begin
      sync <= {(SYNC_DEPTH){us_in}};
    end else begin
      sync[SYNC_DEPTH-1] <= us_in;
      for (int i=1; i<SYNC_DEPTH; i= i+1)begin
        sync[i-1] <= sync[i];
      end
    end
  end
  assign s_out = sync[0];
endmodule
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
`default_nettype wire

