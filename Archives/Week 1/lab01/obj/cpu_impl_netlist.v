// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 17:52:10 2023
// Host        : DESKTOP-M3QN9GM running 64-bit major release  (build 9200)
// Command     : write_verilog -force obj/cpu_impl_netlist.v -mode timesim -sdf_anno true
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "9a1b4a0b" *) 
(* NotValidForBitStream *)
module top_level
   (sw,
    btn,
    led,
    rgb0,
    rgb1,
    ss0_an,
    ss1_an,
    ss0_c,
    ss1_c);
  input [15:0]sw;
  input [3:0]btn;
  output [15:0]led;
  output [2:0]rgb0;
  output [2:0]rgb1;
  output [3:0]ss0_an;
  output [3:0]ss1_an;
  output [6:0]ss0_c;
  output [6:0]ss1_c;

  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire [2:0]rgb0;
  wire [2:0]rgb1;
  wire [3:0]ss0_an;
  wire [6:0]ss0_c;
  wire [6:0]ss0_c_OBUF;
  wire [3:0]ss1_an;
  wire [6:0]ss1_c;
  wire [6:0]ss1_c_OBUF;
  wire [15:0]sw;

initial begin
 $sdf_annotate("cpu_impl_netlist.sdf",,,,"tool_control");
end
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  OBUF \rgb0_OBUF[0]_inst 
       (.I(1'b1),
        .O(rgb0[0]));
  OBUFT \rgb0_OBUF[1]_inst 
       (.I(1'b0),
        .O(rgb0[1]),
        .T(1'b1));
  OBUFT \rgb0_OBUF[2]_inst 
       (.I(1'b0),
        .O(rgb0[2]),
        .T(1'b1));
  OBUFT \rgb1_OBUF[0]_inst 
       (.I(1'b0),
        .O(rgb1[0]),
        .T(1'b1));
  OBUFT \rgb1_OBUF[1]_inst 
       (.I(1'b0),
        .O(rgb1[1]),
        .T(1'b1));
  OBUF \rgb1_OBUF[2]_inst 
       (.I(1'b1),
        .O(rgb1[2]));
  OBUF \ss0_an_OBUF[0]_inst 
       (.I(1'b0),
        .O(ss0_an[0]));
  OBUF \ss0_an_OBUF[1]_inst 
       (.I(1'b0),
        .O(ss0_an[1]));
  OBUF \ss0_an_OBUF[2]_inst 
       (.I(1'b0),
        .O(ss0_an[2]));
  OBUF \ss0_an_OBUF[3]_inst 
       (.I(1'b0),
        .O(ss0_an[3]));
  OBUF \ss0_c_OBUF[0]_inst 
       (.I(ss0_c_OBUF[0]),
        .O(ss0_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4814)) 
    \ss0_c_OBUF[0]_inst_i_1 
       (.I0(led_OBUF[5]),
        .I1(led_OBUF[4]),
        .I2(led_OBUF[6]),
        .I3(led_OBUF[7]),
        .O(ss0_c_OBUF[0]));
  OBUF \ss0_c_OBUF[1]_inst 
       (.I(ss0_c_OBUF[1]),
        .O(ss0_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB680)) 
    \ss0_c_OBUF[1]_inst_i_1 
       (.I0(led_OBUF[5]),
        .I1(led_OBUF[4]),
        .I2(led_OBUF[7]),
        .I3(led_OBUF[6]),
        .O(ss0_c_OBUF[1]));
  OBUF \ss0_c_OBUF[2]_inst 
       (.I(ss0_c_OBUF[2]),
        .O(ss0_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h80C2)) 
    \ss0_c_OBUF[2]_inst_i_1 
       (.I0(led_OBUF[5]),
        .I1(led_OBUF[6]),
        .I2(led_OBUF[7]),
        .I3(led_OBUF[4]),
        .O(ss0_c_OBUF[2]));
  OBUF \ss0_c_OBUF[3]_inst 
       (.I(ss0_c_OBUF[3]),
        .O(ss0_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8294)) 
    \ss0_c_OBUF[3]_inst_i_1 
       (.I0(led_OBUF[5]),
        .I1(led_OBUF[4]),
        .I2(led_OBUF[6]),
        .I3(led_OBUF[7]),
        .O(ss0_c_OBUF[3]));
  OBUF \ss0_c_OBUF[4]_inst 
       (.I(ss0_c_OBUF[4]),
        .O(ss0_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h04DC)) 
    \ss0_c_OBUF[4]_inst_i_1 
       (.I0(led_OBUF[5]),
        .I1(led_OBUF[4]),
        .I2(led_OBUF[6]),
        .I3(led_OBUF[7]),
        .O(ss0_c_OBUF[4]));
  OBUF \ss0_c_OBUF[5]_inst 
       (.I(ss0_c_OBUF[5]),
        .O(ss0_c[5]));
  LUT4 #(
    .INIT(16'h4B02)) 
    \ss0_c_OBUF[5]_inst_i_1 
       (.I0(led_OBUF[5]),
        .I1(led_OBUF[6]),
        .I2(led_OBUF[7]),
        .I3(led_OBUF[4]),
        .O(ss0_c_OBUF[5]));
  OBUF \ss0_c_OBUF[6]_inst 
       (.I(ss0_c_OBUF[6]),
        .O(ss0_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1805)) 
    \ss0_c_OBUF[6]_inst_i_1 
       (.I0(led_OBUF[5]),
        .I1(led_OBUF[4]),
        .I2(led_OBUF[7]),
        .I3(led_OBUF[6]),
        .O(ss0_c_OBUF[6]));
  OBUF \ss1_an_OBUF[0]_inst 
       (.I(1'b0),
        .O(ss1_an[0]));
  OBUF \ss1_an_OBUF[1]_inst 
       (.I(1'b0),
        .O(ss1_an[1]));
  OBUF \ss1_an_OBUF[2]_inst 
       (.I(1'b0),
        .O(ss1_an[2]));
  OBUF \ss1_an_OBUF[3]_inst 
       (.I(1'b0),
        .O(ss1_an[3]));
  OBUF \ss1_c_OBUF[0]_inst 
       (.I(ss1_c_OBUF[0]),
        .O(ss1_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4814)) 
    \ss1_c_OBUF[0]_inst_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[2]),
        .I3(led_OBUF[3]),
        .O(ss1_c_OBUF[0]));
  OBUF \ss1_c_OBUF[1]_inst 
       (.I(ss1_c_OBUF[1]),
        .O(ss1_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB680)) 
    \ss1_c_OBUF[1]_inst_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[3]),
        .I3(led_OBUF[2]),
        .O(ss1_c_OBUF[1]));
  OBUF \ss1_c_OBUF[2]_inst 
       (.I(ss1_c_OBUF[2]),
        .O(ss1_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h80C2)) 
    \ss1_c_OBUF[2]_inst_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[2]),
        .I2(led_OBUF[3]),
        .I3(led_OBUF[0]),
        .O(ss1_c_OBUF[2]));
  OBUF \ss1_c_OBUF[3]_inst 
       (.I(ss1_c_OBUF[3]),
        .O(ss1_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8294)) 
    \ss1_c_OBUF[3]_inst_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[2]),
        .I3(led_OBUF[3]),
        .O(ss1_c_OBUF[3]));
  OBUF \ss1_c_OBUF[4]_inst 
       (.I(ss1_c_OBUF[4]),
        .O(ss1_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h04DC)) 
    \ss1_c_OBUF[4]_inst_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[2]),
        .I3(led_OBUF[3]),
        .O(ss1_c_OBUF[4]));
  OBUF \ss1_c_OBUF[5]_inst 
       (.I(ss1_c_OBUF[5]),
        .O(ss1_c[5]));
  LUT4 #(
    .INIT(16'h4B02)) 
    \ss1_c_OBUF[5]_inst_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[2]),
        .I2(led_OBUF[3]),
        .I3(led_OBUF[0]),
        .O(ss1_c_OBUF[5]));
  OBUF \ss1_c_OBUF[6]_inst 
       (.I(ss1_c_OBUF[6]),
        .O(ss1_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1805)) 
    \ss1_c_OBUF[6]_inst_i_1 
       (.I0(led_OBUF[1]),
        .I1(led_OBUF[0]),
        .I2(led_OBUF[3]),
        .I3(led_OBUF[2]),
        .O(ss1_c_OBUF[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(led_OBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(led_OBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(led_OBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(led_OBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(led_OBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(led_OBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(led_OBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(led_OBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(led_OBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(led_OBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(led_OBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(led_OBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(led_OBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(led_OBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(led_OBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(led_OBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
