module array_18(
  input  [6:0] RW0_addr,
  input        RW0_en,
  input        RW0_clk,
  input        RW0_wmode,
  input  [3:0] RW0_wdata_0,
  input  [3:0] RW0_wdata_1,
  input  [3:0] RW0_wdata_2,
  input  [3:0] RW0_wdata_3,
  input  [3:0] RW0_wdata_4,
  input  [3:0] RW0_wdata_5,
  input  [3:0] RW0_wdata_6,
  input  [3:0] RW0_wdata_7,
  input  [3:0] RW0_wdata_8,
  input  [3:0] RW0_wdata_9,
  output [3:0] RW0_rdata_0,
  output [3:0] RW0_rdata_1,
  output [3:0] RW0_rdata_2,
  output [3:0] RW0_rdata_3,
  output [3:0] RW0_rdata_4,
  output [3:0] RW0_rdata_5,
  output [3:0] RW0_rdata_6,
  output [3:0] RW0_rdata_7,
  output [3:0] RW0_rdata_8,
  output [3:0] RW0_rdata_9,
  input        RW0_wmask_0,
  input        RW0_wmask_1,
  input        RW0_wmask_2,
  input        RW0_wmask_3,
  input        RW0_wmask_4,
  input        RW0_wmask_5,
  input        RW0_wmask_6,
  input        RW0_wmask_7,
  input        RW0_wmask_8,
  input        RW0_wmask_9
);
  wire [6:0] array_18_ext_RW0_addr;
  wire  array_18_ext_RW0_en;
  wire  array_18_ext_RW0_clk;
  wire  array_18_ext_RW0_wmode;
  wire [39:0] array_18_ext_RW0_wdata;
  wire [39:0] array_18_ext_RW0_rdata;
  wire [9:0] array_18_ext_RW0_wmask;
  wire [19:0] _GEN_6 = {RW0_wdata_9,RW0_wdata_8,RW0_wdata_7,RW0_wdata_6,RW0_wdata_5};
  wire [19:0] _GEN_7 = {RW0_wdata_4,RW0_wdata_3,RW0_wdata_2,RW0_wdata_1,RW0_wdata_0};
  wire [4:0] _GEN_14 = {RW0_wmask_9,RW0_wmask_8,RW0_wmask_7,RW0_wmask_6,RW0_wmask_5};
  wire [4:0] _GEN_15 = {RW0_wmask_4,RW0_wmask_3,RW0_wmask_2,RW0_wmask_1,RW0_wmask_0};
  array_18_ext array_18_ext (
    .RW0_addr(array_18_ext_RW0_addr),
    .RW0_en(array_18_ext_RW0_en),
    .RW0_clk(array_18_ext_RW0_clk),
    .RW0_wmode(array_18_ext_RW0_wmode),
    .RW0_wdata(array_18_ext_RW0_wdata),
    .RW0_rdata(array_18_ext_RW0_rdata),
    .RW0_wmask(array_18_ext_RW0_wmask)
  );
  assign array_18_ext_RW0_clk = RW0_clk;
  assign array_18_ext_RW0_en = RW0_en;
  assign array_18_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = array_18_ext_RW0_rdata[3:0];
  assign RW0_rdata_1 = array_18_ext_RW0_rdata[7:4];
  assign RW0_rdata_2 = array_18_ext_RW0_rdata[11:8];
  assign RW0_rdata_3 = array_18_ext_RW0_rdata[15:12];
  assign RW0_rdata_4 = array_18_ext_RW0_rdata[19:16];
  assign RW0_rdata_5 = array_18_ext_RW0_rdata[23:20];
  assign RW0_rdata_6 = array_18_ext_RW0_rdata[27:24];
  assign RW0_rdata_7 = array_18_ext_RW0_rdata[31:28];
  assign RW0_rdata_8 = array_18_ext_RW0_rdata[35:32];
  assign RW0_rdata_9 = array_18_ext_RW0_rdata[39:36];
  assign array_18_ext_RW0_wmode = RW0_wmode;
  assign array_18_ext_RW0_wdata = {_GEN_6,_GEN_7};
  assign array_18_ext_RW0_wmask = {_GEN_14,_GEN_15};
endmodule

