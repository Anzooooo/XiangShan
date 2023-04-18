module Arbiter_14(
  input        io_in_0_valid,
  input        io_in_0_bits_uop_ctrl_rfWen,
  input        io_in_0_bits_uop_ctrl_fpWen,
  input  [5:0] io_in_0_bits_uop_pdest,
  input        io_in_0_bits_uop_robIdx_flag,
  input  [4:0] io_in_0_bits_uop_robIdx_value,
  output       io_in_1_ready,
  input        io_in_1_valid,
  input        io_in_1_bits_uop_cf_exceptionVec_2,
  input        io_in_1_bits_uop_cf_exceptionVec_3,
  input        io_in_1_bits_uop_cf_exceptionVec_8,
  input        io_in_1_bits_uop_cf_exceptionVec_9,
  input        io_in_1_bits_uop_cf_exceptionVec_11,
  input        io_in_1_bits_uop_ctrl_rfWen,
  input        io_in_1_bits_uop_ctrl_fpWen,
  input        io_in_1_bits_uop_ctrl_flushPipe,
  input  [5:0] io_in_1_bits_uop_pdest,
  input        io_in_1_bits_uop_robIdx_flag,
  input  [4:0] io_in_1_bits_uop_robIdx_value,
  output       io_in_2_ready,
  input        io_in_2_valid,
  input        io_in_2_bits_uop_cf_exceptionVec_2,
  input        io_in_2_bits_uop_cf_exceptionVec_3,
  input        io_in_2_bits_uop_cf_exceptionVec_8,
  input        io_in_2_bits_uop_cf_exceptionVec_9,
  input        io_in_2_bits_uop_cf_exceptionVec_11,
  input        io_in_2_bits_uop_ctrl_rfWen,
  input        io_in_2_bits_uop_ctrl_fpWen,
  input        io_in_2_bits_uop_ctrl_flushPipe,
  input  [5:0] io_in_2_bits_uop_pdest,
  input        io_in_2_bits_uop_robIdx_flag,
  input  [4:0] io_in_2_bits_uop_robIdx_value,
  output       io_out_valid,
  output       io_out_bits_uop_cf_exceptionVec_2,
  output       io_out_bits_uop_cf_exceptionVec_3,
  output       io_out_bits_uop_cf_exceptionVec_8,
  output       io_out_bits_uop_cf_exceptionVec_9,
  output       io_out_bits_uop_cf_exceptionVec_11,
  output       io_out_bits_uop_ctrl_rfWen,
  output       io_out_bits_uop_ctrl_fpWen,
  output       io_out_bits_uop_ctrl_flushPipe,
  output [5:0] io_out_bits_uop_pdest,
  output       io_out_bits_uop_robIdx_flag,
  output [4:0] io_out_bits_uop_robIdx_value
);
  wire  _GEN_6 = io_in_1_valid ? io_in_1_bits_uop_cf_exceptionVec_2 : io_in_2_bits_uop_cf_exceptionVec_2; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_7 = io_in_1_valid ? io_in_1_bits_uop_cf_exceptionVec_3 : io_in_2_bits_uop_cf_exceptionVec_3; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_12 = io_in_1_valid ? io_in_1_bits_uop_cf_exceptionVec_8 : io_in_2_bits_uop_cf_exceptionVec_8; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_13 = io_in_1_valid ? io_in_1_bits_uop_cf_exceptionVec_9 : io_in_2_bits_uop_cf_exceptionVec_9; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_15 = io_in_1_valid ? io_in_1_bits_uop_cf_exceptionVec_11 : io_in_2_bits_uop_cf_exceptionVec_11; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_58 = io_in_1_valid ? io_in_1_bits_uop_ctrl_rfWen : io_in_2_bits_uop_ctrl_rfWen; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_59 = io_in_1_valid ? io_in_1_bits_uop_ctrl_fpWen : io_in_2_bits_uop_ctrl_fpWen; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_63 = io_in_1_valid ? io_in_1_bits_uop_ctrl_flushPipe : io_in_2_bits_uop_ctrl_flushPipe; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [5:0] _GEN_90 = io_in_1_valid ? io_in_1_bits_uop_pdest : io_in_2_bits_uop_pdest; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_92 = io_in_1_valid ? io_in_1_bits_uop_robIdx_flag : io_in_2_bits_uop_robIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [4:0] _GEN_93 = io_in_1_valid ? io_in_1_bits_uop_robIdx_value : io_in_2_bits_uop_robIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  grant_2 = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  assign io_in_1_ready = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  assign io_in_2_ready = ~(io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  assign io_out_valid = ~grant_2 | io_in_2_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_uop_cf_exceptionVec_2 = io_in_0_valid ? 1'h0 : _GEN_6; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_3 = io_in_0_valid ? 1'h0 : _GEN_7; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_8 = io_in_0_valid ? 1'h0 : _GEN_12; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_9 = io_in_0_valid ? 1'h0 : _GEN_13; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_11 = io_in_0_valid ? 1'h0 : _GEN_15; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_rfWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_rfWen : _GEN_58; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_fpWen : _GEN_59; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_flushPipe = io_in_0_valid ? 1'h0 : _GEN_63; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_pdest = io_in_0_valid ? io_in_0_bits_uop_pdest : _GEN_90; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_robIdx_flag = io_in_0_valid ? io_in_0_bits_uop_robIdx_flag : _GEN_92; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_robIdx_value = io_in_0_valid ? io_in_0_bits_uop_robIdx_value : _GEN_93; // @[Arbiter.scala 141:26 143:19]
endmodule

