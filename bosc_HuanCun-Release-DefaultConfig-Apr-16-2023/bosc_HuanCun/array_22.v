module array_22(
  input  [9:0] RW0_addr,
  input        RW0_en,
  input        RW0_clk,
  input        RW0_wmode,
  input  [6:0] RW0_wdata_0,
  output [6:0] RW0_rdata_0
);
  wire [9:0] array_22_ext_RW0_addr;
  wire  array_22_ext_RW0_en;
  wire  array_22_ext_RW0_clk;
  wire  array_22_ext_RW0_wmode;
  wire [6:0] array_22_ext_RW0_wdata;
  wire [6:0] array_22_ext_RW0_rdata;
  array_22_ext array_22_ext (
    .RW0_addr(array_22_ext_RW0_addr),
    .RW0_en(array_22_ext_RW0_en),
    .RW0_clk(array_22_ext_RW0_clk),
    .RW0_wmode(array_22_ext_RW0_wmode),
    .RW0_wdata(array_22_ext_RW0_wdata),
    .RW0_rdata(array_22_ext_RW0_rdata)
  );
  assign array_22_ext_RW0_clk = RW0_clk;
  assign array_22_ext_RW0_en = RW0_en;
  assign array_22_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_22_ext_RW0_rdata;
  assign array_22_ext_RW0_wmode = RW0_wmode;
  assign array_22_ext_RW0_wdata = RW0_wdata_0;
endmodule

