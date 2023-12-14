`timescale 1ns / 1ps
`default_nettype none

module center_of_mass (
                         input wire clk_in,
                         input wire rst_in,
                         input wire [10:0] x_in,
                         input wire [9:0]  y_in,
                         input wire valid_in,
                         input wire tabulate_in,
                         output logic [10:0] x_out,
                         output logic [9:0] y_out,
                         output logic valid_out);

  logic [31:0] x_count;
  logic [31:0] y_count;
  logic [31:0] total;
  logic [10:0] x_int;
  logic [9:0] y_int;
  logic [2:0] x_state;
  logic [2:0] y_state;
  logic [1:0] x_ready;
  logic [1:0] y_ready;
  logic x_fin;
  logic y_fin;
  logic tab;
  
  assign x_ready = x_state[0] == 1 && x_state[1] == 0 && x_state[2] == 0;
  assign y_ready = y_state[0] == 1 && y_state[1] == 0 && y_state[2] == 0;

  divider #(.WIDTH(32)) x_sum (.clk_in(clk_in),
                .rst_in(rst_in),
                .dividend_in(x_count),
                .divisor_in(total),
                .data_valid_in(tab),
                .quotient_out(x_int),
                .data_valid_out(x_state[0]),
                .error_out(x_state[1]),
                .busy_out(x_state[2]));
  divider #(.WIDTH(32)) y_sum (.clk_in(clk_in),
                .rst_in(rst_in),
                .dividend_in(y_count),
                .divisor_in(total),
                .data_valid_in(tab),
                .quotient_out(y_int),
                .data_valid_out(y_state[0]),
                .error_out(y_state[1]),
                .busy_out(y_state[2]));

  always_ff @(posedge clk_in)begin
    valid_out <= 0;
    x_out <= 0;       
    y_out <= 0;
    if (rst_in)begin
      x_out <= 0;
      y_out <= 0;
      x_count <= 0;
      y_count <= 0;
      total <= 0;
      x_fin <= 0;
      y_fin <= 0;
      tab <= 0;
    end else begin
      case(tab)
       1'b0: begin // Not Tabulating
        if(valid_in)begin
          y_count <= y_count + y_in;
          x_count <= x_count + x_in;
          total <= total + 1;
        end if (tabulate_in && (y_count > 0 || x_count > 0))begin
          tab <= 1;
        end
       end
       1'b1: begin // Tabulating
        if (x_count + y_count == 0)begin
          valid_out <= 0;
        end else if (x_fin && y_fin)begin
          valid_out <= 1;
          x_out <= x_int;       
          y_out <= y_int;
          x_count <= 0;
          y_count <= 0;
          x_fin <= 0;
          y_fin <= 0;
          total <= 0; 
          tab <= 0; 
        end else begin      // Check conditions on waveform
          if (x_ready)begin
            x_fin <= 1;
          end if (y_ready)begin
            y_fin <= 1;
          end
        end
       end
      endcase
      end
    end

/*

 always_ff @(posedge clk_in)begin
    valid_out <= 0;
    if (rst_in)begin
      x_out <= 0;
      y_out <= 0;
      x_count <= 0;
      y_count <= 0;
      total <= 0;
    end else begin
      if(valid_in)begin
          y_count <= y_count + y_in;
          x_count <= x_count + x_in;
          total <= total + 1;
        end
      end if (tabulate_in)begin
        if (x_ready[0])begin
          x_ready[1] <= 1;
        end 
        if (y_ready[0])begin
          y_ready[1] <= 1;
        end 
        
        if (x_count + y_count == 0)begin
          valid_out <= 0;
        end else if (x_ready[1] && y_ready[1])begin
          valid_out <= 1;
          x_out <= x_int;       
          y_out <= y_int;
          x_count <= 0;
          y_count <= 0;
          total <= 0;   
          y_ready[1] <= 0;
        end
      end
    end   
    */
endmodule
`default_nettype wire
