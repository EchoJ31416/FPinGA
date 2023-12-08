`timescale 1ns / 1ps
`default_nettype none

`ifdef SYNTHESIS
`define FPATH(X) `"X`"
`else /* ! SYNTHESIS */
`define FPATH(X) `"data/X`"
`endif  /* ! SYNTHESIS */

module image_sprite_2 #(
  parameter WIDTH=256, HEIGHT=512) (
  input wire pixel_clk_in,
  input wire pop,
  input wire rst_in,
  input wire [10:0] x_in, hcount_in,
  input wire [9:0]  y_in, vcount_in,
  output logic [7:0] red_out,
  output logic [7:0] green_out,
  output logic [7:0] blue_out
  );



      // calculate rom address
    logic [$clog2(WIDTH*HEIGHT)-1:0] image_addr;
    logic [10:0] hcount_pipe;
    logic [9:0] vcount_pipe;

    pipeline #(.WIDTH(11), .DEPTH(4)) 
      h_count (.clk_in(pixel_clk_in),
        .rst_in(rst_in),
        .val_in(hcount_in),
        .val_out(hcount_pipe));
    pipeline #(.WIDTH(10), .DEPTH(4)) 
      v_count (.clk_in(pixel_clk_in),
        .rst_in(rst_in),
        .val_in(vcount_in),
        .val_out(vcount_pipe));


    always_comb begin
      if (pop)begin
        image_addr = (hcount_in - x_in) + ((vcount_in - y_in) * WIDTH) + (WIDTH*WIDTH);
      end else begin
        image_addr = (hcount_in - x_in) + ((vcount_in - y_in) * WIDTH);
      end  
    end
    

    logic in_sprite;
    assign in_sprite = ((hcount_pipe >= x_in && hcount_pipe < (x_in + WIDTH)) &&
                      (vcount_pipe >= y_in && vcount_pipe < (y_in + WIDTH)));

    logic [31:0] palette_address;
    logic [23:0] rgb;

    // Modify the module below to use your BRAMs!
    assign red_out =    in_sprite ? rgb[23:16] : 0;
    assign green_out =  in_sprite ? rgb[15:8] : 0;
    assign blue_out =   in_sprite ? rgb[7:0]  : 0;


    //  Xilinx Single Port Read First RAM
    xilinx_single_port_ram_read_first #(
      .RAM_WIDTH(8),                       // Specify RAM data width
      .RAM_DEPTH(WIDTH*HEIGHT),                     // Specify RAM depth (number of entries)
      .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
      .INIT_FILE(`FPATH(image_2.mem))          // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) image (
      .addra(image_addr),     // Address bus, width determined from RAM_DEPTH
      .dina(0),       // RAM input data, width determined from RAM_WIDTH
      .clka(pixel_clk_in),       // Clock
      .wea(0),         // Write enable
      .ena(1),         // RAM Enable, for additional power savings, disable port when not in use
      .rsta(rst_in),       // Output reset (does not affect memory contents)
      .regcea(1),   // Output register enable
      .douta(palette_address)      // RAM output data, width determined from RAM_WIDTH
    );

    xilinx_single_port_ram_read_first #(
      .RAM_WIDTH(24),                       // Specify RAM data width
      .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
      .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
      .INIT_FILE(`FPATH(palette_2.mem))          // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) palette (
      .addra(palette_address),     // Address bus, width determined from RAM_DEPTH
      .dina(0),       // RAM input data, width determined from RAM_WIDTH
      .clka(pixel_clk_in),       // Clock
      .wea(0),         // Write enable
      .ena(1),         // RAM Enable, for additional power savings, disable port when not in use
      .rsta(rst_in),       // Output reset (does not affect memory contents)
      .regcea(1),   // Output register enable
      .douta(rgb)      // RAM output data, width determined from RAM_WIDTH
    );

endmodule
`default_nettype none

