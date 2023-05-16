module TLBFA_1(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input         io_sfence_bits_rs2,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_sfence_bits_asid,
  input  [15:0] io_csr_satp_asid,
  output        io_rreq_0_ready,
  input         io_rreq_0_valid,
  input  [26:0] io_rreq_0_bits_vpn,
  output        io_rreq_1_ready,
  input         io_rreq_1_valid,
  input  [26:0] io_rreq_1_bits_vpn,
  output        io_rreq_3_ready,
  input         io_rreq_3_valid,
  input  [26:0] io_rreq_3_bits_vpn,
  output        io_rresp_0_valid,
  output        io_rresp_0_bits_hit,
  output [23:0] io_rresp_0_bits_ppn_0,
  output        io_rresp_0_bits_perm_0_pf,
  output        io_rresp_0_bits_perm_0_af,
  output        io_rresp_0_bits_perm_0_a,
  output        io_rresp_0_bits_perm_0_u,
  output        io_rresp_0_bits_perm_0_x,
  output        io_rresp_1_valid,
  output        io_rresp_1_bits_hit,
  output [23:0] io_rresp_1_bits_ppn_0,
  output        io_rresp_1_bits_perm_0_pf,
  output        io_rresp_1_bits_perm_0_af,
  output        io_rresp_1_bits_perm_0_a,
  output        io_rresp_1_bits_perm_0_u,
  output        io_rresp_1_bits_perm_0_x,
  output        io_rresp_3_valid,
  output        io_rresp_3_bits_hit,
  output [23:0] io_rresp_3_bits_ppn_0,
  output        io_rresp_3_bits_perm_0_pf,
  output        io_rresp_3_bits_perm_0_af,
  output        io_rresp_3_bits_perm_0_a,
  output        io_rresp_3_bits_perm_0_u,
  output        io_rresp_3_bits_perm_0_x,
  input         io_wvalid,
  input         io_wwayIdx,
  input  [26:0] io_wdata_entry_tag,
  input  [23:0] io_wdata_entry_ppn,
  input         io_wdata_entry_perm_d,
  input         io_wdata_entry_perm_a,
  input         io_wdata_entry_perm_g,
  input         io_wdata_entry_perm_u,
  input         io_wdata_entry_perm_x,
  input         io_wdata_entry_perm_w,
  input         io_wdata_entry_perm_r,
  input  [1:0]  io_wdata_entry_level,
  input         io_wdata_pf,
  input         io_wdata_af,
  output        io_access_0_touch_ways_valid,
  output        io_access_0_touch_ways_bits,
  output        io_access_1_touch_ways_valid,
  output        io_access_1_touch_ways_bits,
  output        io_access_2_touch_ways_valid,
  output        io_access_2_touch_ways_bits,
  output        io_access_3_touch_ways_valid,
  output        io_access_3_touch_ways_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
`endif // RANDOMIZE_REG_INIT
  reg  v_0; // @[TLBStorage.scala 100:18]
  reg  v_1; // @[TLBStorage.scala 100:18]
  reg [17:0] entries_0_tag; // @[TLBStorage.scala 101:20]
  reg [15:0] entries_0_asid; // @[TLBStorage.scala 101:20]
  reg  entries_0_level; // @[TLBStorage.scala 101:20]
  reg [14:0] entries_0_ppn; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_pf; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_af; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_d; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_a; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_g; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_u; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_x; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_w; // @[TLBStorage.scala 101:20]
  reg  entries_0_perm_r; // @[TLBStorage.scala 101:20]
  reg [17:0] entries_1_tag; // @[TLBStorage.scala 101:20]
  reg [15:0] entries_1_asid; // @[TLBStorage.scala 101:20]
  reg  entries_1_level; // @[TLBStorage.scala 101:20]
  reg [14:0] entries_1_ppn; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_pf; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_af; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_d; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_a; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_g; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_u; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_x; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_w; // @[TLBStorage.scala 101:20]
  reg  entries_1_perm_r; // @[TLBStorage.scala 101:20]
  wire  _vpn_reg_T = io_rreq_0_ready & io_rreq_0_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg; // @[Reg.scala 16:16]
  wire [1:0] _refill_mask_T = 2'h1 << io_wwayIdx; // @[OneHot.scala 57:35]
  wire [1:0] refill_mask = io_wvalid ? _refill_mask_T : 2'h0; // @[TLBStorage.scala 113:26]
  wire  hitVec_asid_hit = entries_0_asid == io_csr_satp_asid; // @[MMUBundle.scala 160:59]
  wire  hitVec_tag_match_hi = entries_0_tag[17:9] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 166:52]
  wire  hitVec_tag_match_mi = entries_0_tag[8:0] == io_rreq_0_bits_vpn[17:9]; // @[MMUBundle.scala 167:44]
  wire  hitVec_tag_match = hitVec_tag_match_hi & (entries_0_level | hitVec_tag_match_mi); // @[MMUBundle.scala 168:36]
  wire  _hitVec_T_2 = hitVec_asid_hit & hitVec_tag_match; // @[MMUBundle.scala 169:16]
  wire  hitVec__0 = _hitVec_T_2 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 114:139]
  wire  hitVec_asid_hit_1 = entries_1_asid == io_csr_satp_asid; // @[MMUBundle.scala 160:59]
  wire  hitVec_tag_match_hi_1 = entries_1_tag[17:9] == io_rreq_0_bits_vpn[26:18]; // @[MMUBundle.scala 166:52]
  wire  hitVec_tag_match_mi_1 = entries_1_tag[8:0] == io_rreq_0_bits_vpn[17:9]; // @[MMUBundle.scala 167:44]
  wire  hitVec_tag_match_1 = hitVec_tag_match_hi_1 & (entries_1_level | hitVec_tag_match_mi_1); // @[MMUBundle.scala 168:36]
  wire  _hitVec_T_6 = hitVec_asid_hit_1 & hitVec_tag_match_1; // @[MMUBundle.scala 169:16]
  wire  hitVec__1 = _hitVec_T_6 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 114:139]
  reg  hitVecReg__0; // @[Reg.scala 16:16]
  reg  hitVecReg__1; // @[Reg.scala 16:16]
  reg  io_rresp_0_valid_REG; // @[TLBStorage.scala 121:26]
  wire [1:0] _io_rresp_0_bits_hit_T = {hitVecReg__0,hitVecReg__1}; // @[Cat.scala 31:58]
  wire  _io_rresp_0_bits_hit_T_1 = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 122:37]
  wire [8:0] _io_rresp_0_bits_ppn_0_ppn_res_T_4 = entries_0_level ? vpn_reg[17:9] : entries_0_ppn[8:0]; // @[MMUBundle.scala 208:12]
  wire [23:0] io_rresp_0_bits_ppn_0_ppn_res = {entries_0_ppn[14:9],_io_rresp_0_bits_ppn_0_ppn_res_T_4,vpn_reg[8:0]}; // @[Cat.scala 31:58]
  wire [8:0] _io_rresp_0_bits_ppn_0_ppn_res_T_10 = entries_1_level ? vpn_reg[17:9] : entries_1_ppn[8:0]; // @[MMUBundle.scala 208:12]
  wire [23:0] io_rresp_0_bits_ppn_0_ppn_res_1 = {entries_1_ppn[14:9],_io_rresp_0_bits_ppn_0_ppn_res_T_10,vpn_reg[8:0]}
    ; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_0_bits_ppn_0_xs_0 = hitVecReg__0 ? io_rresp_0_bits_ppn_0_ppn_res : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_0_bits_ppn_0_xs_1 = hitVecReg__1 ? io_rresp_0_bits_ppn_0_ppn_res_1 : 24'h0; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_pf = hitVecReg__0 & entries_0_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_af = hitVecReg__0 & entries_0_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_d = hitVecReg__0 & entries_0_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_a = hitVecReg__0 & entries_0_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_g = hitVecReg__0 & entries_0_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_u = hitVecReg__0 & entries_0_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_x = hitVecReg__0 & entries_0_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_w = hitVecReg__0 & entries_0_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_0_r = hitVecReg__0 & entries_0_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_pf = hitVecReg__1 & entries_1_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_af = hitVecReg__1 & entries_1_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_d = hitVecReg__1 & entries_1_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_a = hitVecReg__1 & entries_1_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_g = hitVecReg__1 & entries_1_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_u = hitVecReg__1 & entries_1_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_x = hitVecReg__1 & entries_1_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_w = hitVecReg__1 & entries_1_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_0_bits_perm_0_xs_1_r = hitVecReg__1 & entries_1_perm_r; // @[ParallelMux.scala 64:44]
  wire [6:0] io_rresp_0_bits_perm_0_lo = {io_rresp_0_bits_perm_0_xs_0_w,io_rresp_0_bits_perm_0_xs_0_r,2'h0,3'h0}; // @[ParallelMux.scala 36:46]
  wire [13:0] _io_rresp_0_bits_perm_0_T = {io_rresp_0_bits_perm_0_xs_0_pf,io_rresp_0_bits_perm_0_xs_0_af,
    io_rresp_0_bits_perm_0_xs_0_d,io_rresp_0_bits_perm_0_xs_0_a,io_rresp_0_bits_perm_0_xs_0_g,
    io_rresp_0_bits_perm_0_xs_0_u,io_rresp_0_bits_perm_0_xs_0_x,io_rresp_0_bits_perm_0_lo}; // @[ParallelMux.scala 36:46]
  wire [6:0] io_rresp_0_bits_perm_0_lo_1 = {io_rresp_0_bits_perm_0_xs_1_w,io_rresp_0_bits_perm_0_xs_1_r,2'h0,3'h0}; // @[ParallelMux.scala 36:57]
  wire [13:0] _io_rresp_0_bits_perm_0_T_1 = {io_rresp_0_bits_perm_0_xs_1_pf,io_rresp_0_bits_perm_0_xs_1_af,
    io_rresp_0_bits_perm_0_xs_1_d,io_rresp_0_bits_perm_0_xs_1_a,io_rresp_0_bits_perm_0_xs_1_g,
    io_rresp_0_bits_perm_0_xs_1_u,io_rresp_0_bits_perm_0_xs_1_x,io_rresp_0_bits_perm_0_lo_1}; // @[ParallelMux.scala 36:57]
  wire [13:0] _io_rresp_0_bits_perm_0_T_2 = _io_rresp_0_bits_perm_0_T | _io_rresp_0_bits_perm_0_T_1; // @[ParallelMux.scala 36:53]
  wire [1:0] _io_access_0_touch_ways_bits_T = {hitVecReg__1,hitVecReg__0}; // @[OneHot.scala 22:45]
  wire  _vpn_reg_T_1 = io_rreq_1_ready & io_rreq_1_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_1; // @[Reg.scala 16:16]
  wire  hitVec_tag_match_hi_2 = entries_0_tag[17:9] == io_rreq_1_bits_vpn[26:18]; // @[MMUBundle.scala 166:52]
  wire  hitVec_tag_match_mi_2 = entries_0_tag[8:0] == io_rreq_1_bits_vpn[17:9]; // @[MMUBundle.scala 167:44]
  wire  hitVec_tag_match_2 = hitVec_tag_match_hi_2 & (entries_0_level | hitVec_tag_match_mi_2); // @[MMUBundle.scala 168:36]
  wire  _hitVec_T_12 = hitVec_asid_hit & hitVec_tag_match_2; // @[MMUBundle.scala 169:16]
  wire  hitVec_1_0 = _hitVec_T_12 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 114:139]
  wire  hitVec_tag_match_hi_3 = entries_1_tag[17:9] == io_rreq_1_bits_vpn[26:18]; // @[MMUBundle.scala 166:52]
  wire  hitVec_tag_match_mi_3 = entries_1_tag[8:0] == io_rreq_1_bits_vpn[17:9]; // @[MMUBundle.scala 167:44]
  wire  hitVec_tag_match_3 = hitVec_tag_match_hi_3 & (entries_1_level | hitVec_tag_match_mi_3); // @[MMUBundle.scala 168:36]
  wire  _hitVec_T_16 = hitVec_asid_hit_1 & hitVec_tag_match_3; // @[MMUBundle.scala 169:16]
  wire  hitVec_1_1 = _hitVec_T_16 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 114:139]
  reg  hitVecReg_1_0; // @[Reg.scala 16:16]
  reg  hitVecReg_1_1; // @[Reg.scala 16:16]
  reg  io_rresp_1_valid_REG; // @[TLBStorage.scala 121:26]
  wire [1:0] _io_rresp_1_bits_hit_T = {hitVecReg_1_0,hitVecReg_1_1}; // @[Cat.scala 31:58]
  wire  _io_rresp_1_bits_hit_T_1 = |_io_rresp_1_bits_hit_T; // @[TLBStorage.scala 122:37]
  wire [8:0] _io_rresp_1_bits_ppn_0_ppn_res_T_4 = entries_0_level ? vpn_reg_1[17:9] : entries_0_ppn[8:0]; // @[MMUBundle.scala 208:12]
  wire [23:0] io_rresp_1_bits_ppn_0_ppn_res = {entries_0_ppn[14:9],_io_rresp_1_bits_ppn_0_ppn_res_T_4,vpn_reg_1[8:0]}; // @[Cat.scala 31:58]
  wire [8:0] _io_rresp_1_bits_ppn_0_ppn_res_T_10 = entries_1_level ? vpn_reg_1[17:9] : entries_1_ppn[8:0]; // @[MMUBundle.scala 208:12]
  wire [23:0] io_rresp_1_bits_ppn_0_ppn_res_1 = {entries_1_ppn[14:9],_io_rresp_1_bits_ppn_0_ppn_res_T_10,vpn_reg_1[8:0
    ]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_1_bits_ppn_0_xs_0 = hitVecReg_1_0 ? io_rresp_1_bits_ppn_0_ppn_res : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_1_bits_ppn_0_xs_1 = hitVecReg_1_1 ? io_rresp_1_bits_ppn_0_ppn_res_1 : 24'h0; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_pf = hitVecReg_1_0 & entries_0_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_af = hitVecReg_1_0 & entries_0_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_d = hitVecReg_1_0 & entries_0_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_a = hitVecReg_1_0 & entries_0_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_g = hitVecReg_1_0 & entries_0_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_u = hitVecReg_1_0 & entries_0_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_x = hitVecReg_1_0 & entries_0_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_w = hitVecReg_1_0 & entries_0_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_0_r = hitVecReg_1_0 & entries_0_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_pf = hitVecReg_1_1 & entries_1_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_af = hitVecReg_1_1 & entries_1_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_d = hitVecReg_1_1 & entries_1_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_a = hitVecReg_1_1 & entries_1_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_g = hitVecReg_1_1 & entries_1_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_u = hitVecReg_1_1 & entries_1_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_x = hitVecReg_1_1 & entries_1_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_w = hitVecReg_1_1 & entries_1_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_1_bits_perm_0_xs_1_r = hitVecReg_1_1 & entries_1_perm_r; // @[ParallelMux.scala 64:44]
  wire [6:0] io_rresp_1_bits_perm_0_lo = {io_rresp_1_bits_perm_0_xs_0_w,io_rresp_1_bits_perm_0_xs_0_r,2'h0,3'h0}; // @[ParallelMux.scala 36:46]
  wire [13:0] _io_rresp_1_bits_perm_0_T = {io_rresp_1_bits_perm_0_xs_0_pf,io_rresp_1_bits_perm_0_xs_0_af,
    io_rresp_1_bits_perm_0_xs_0_d,io_rresp_1_bits_perm_0_xs_0_a,io_rresp_1_bits_perm_0_xs_0_g,
    io_rresp_1_bits_perm_0_xs_0_u,io_rresp_1_bits_perm_0_xs_0_x,io_rresp_1_bits_perm_0_lo}; // @[ParallelMux.scala 36:46]
  wire [6:0] io_rresp_1_bits_perm_0_lo_1 = {io_rresp_1_bits_perm_0_xs_1_w,io_rresp_1_bits_perm_0_xs_1_r,2'h0,3'h0}; // @[ParallelMux.scala 36:57]
  wire [13:0] _io_rresp_1_bits_perm_0_T_1 = {io_rresp_1_bits_perm_0_xs_1_pf,io_rresp_1_bits_perm_0_xs_1_af,
    io_rresp_1_bits_perm_0_xs_1_d,io_rresp_1_bits_perm_0_xs_1_a,io_rresp_1_bits_perm_0_xs_1_g,
    io_rresp_1_bits_perm_0_xs_1_u,io_rresp_1_bits_perm_0_xs_1_x,io_rresp_1_bits_perm_0_lo_1}; // @[ParallelMux.scala 36:57]
  wire [13:0] _io_rresp_1_bits_perm_0_T_2 = _io_rresp_1_bits_perm_0_T | _io_rresp_1_bits_perm_0_T_1; // @[ParallelMux.scala 36:53]
  wire [1:0] _io_access_1_touch_ways_bits_T = {hitVecReg_1_1,hitVecReg_1_0}; // @[OneHot.scala 22:45]
  wire  _vpn_reg_T_3 = io_rreq_3_ready & io_rreq_3_valid; // @[Decoupled.scala 50:35]
  reg [26:0] vpn_reg_3; // @[Reg.scala 16:16]
  wire  hitVec_tag_match_hi_6 = entries_0_tag[17:9] == io_rreq_3_bits_vpn[26:18]; // @[MMUBundle.scala 166:52]
  wire  hitVec_tag_match_mi_6 = entries_0_tag[8:0] == io_rreq_3_bits_vpn[17:9]; // @[MMUBundle.scala 167:44]
  wire  hitVec_tag_match_6 = hitVec_tag_match_hi_6 & (entries_0_level | hitVec_tag_match_mi_6); // @[MMUBundle.scala 168:36]
  wire  _hitVec_T_32 = hitVec_asid_hit & hitVec_tag_match_6; // @[MMUBundle.scala 169:16]
  wire  hitVec_3_0 = _hitVec_T_32 & v_0 & ~refill_mask[0]; // @[TLBStorage.scala 114:139]
  wire  hitVec_tag_match_hi_7 = entries_1_tag[17:9] == io_rreq_3_bits_vpn[26:18]; // @[MMUBundle.scala 166:52]
  wire  hitVec_tag_match_mi_7 = entries_1_tag[8:0] == io_rreq_3_bits_vpn[17:9]; // @[MMUBundle.scala 167:44]
  wire  hitVec_tag_match_7 = hitVec_tag_match_hi_7 & (entries_1_level | hitVec_tag_match_mi_7); // @[MMUBundle.scala 168:36]
  wire  _hitVec_T_36 = hitVec_asid_hit_1 & hitVec_tag_match_7; // @[MMUBundle.scala 169:16]
  wire  hitVec_3_1 = _hitVec_T_36 & v_1 & ~refill_mask[1]; // @[TLBStorage.scala 114:139]
  reg  hitVecReg_3_0; // @[Reg.scala 16:16]
  reg  hitVecReg_3_1; // @[Reg.scala 16:16]
  reg  io_rresp_3_valid_REG; // @[TLBStorage.scala 121:26]
  wire [1:0] _io_rresp_3_bits_hit_T = {hitVecReg_3_0,hitVecReg_3_1}; // @[Cat.scala 31:58]
  wire  _io_rresp_3_bits_hit_T_1 = |_io_rresp_3_bits_hit_T; // @[TLBStorage.scala 122:37]
  wire [8:0] _io_rresp_3_bits_ppn_0_ppn_res_T_4 = entries_0_level ? vpn_reg_3[17:9] : entries_0_ppn[8:0]; // @[MMUBundle.scala 208:12]
  wire [23:0] io_rresp_3_bits_ppn_0_ppn_res = {entries_0_ppn[14:9],_io_rresp_3_bits_ppn_0_ppn_res_T_4,vpn_reg_3[8:0]}; // @[Cat.scala 31:58]
  wire [8:0] _io_rresp_3_bits_ppn_0_ppn_res_T_10 = entries_1_level ? vpn_reg_3[17:9] : entries_1_ppn[8:0]; // @[MMUBundle.scala 208:12]
  wire [23:0] io_rresp_3_bits_ppn_0_ppn_res_1 = {entries_1_ppn[14:9],_io_rresp_3_bits_ppn_0_ppn_res_T_10,vpn_reg_3[8:0
    ]}; // @[Cat.scala 31:58]
  wire [23:0] io_rresp_3_bits_ppn_0_xs_0 = hitVecReg_3_0 ? io_rresp_3_bits_ppn_0_ppn_res : 24'h0; // @[ParallelMux.scala 64:44]
  wire [23:0] io_rresp_3_bits_ppn_0_xs_1 = hitVecReg_3_1 ? io_rresp_3_bits_ppn_0_ppn_res_1 : 24'h0; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_pf = hitVecReg_3_0 & entries_0_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_af = hitVecReg_3_0 & entries_0_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_d = hitVecReg_3_0 & entries_0_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_a = hitVecReg_3_0 & entries_0_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_g = hitVecReg_3_0 & entries_0_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_u = hitVecReg_3_0 & entries_0_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_x = hitVecReg_3_0 & entries_0_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_w = hitVecReg_3_0 & entries_0_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_0_r = hitVecReg_3_0 & entries_0_perm_r; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_pf = hitVecReg_3_1 & entries_1_perm_pf; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_af = hitVecReg_3_1 & entries_1_perm_af; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_d = hitVecReg_3_1 & entries_1_perm_d; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_a = hitVecReg_3_1 & entries_1_perm_a; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_g = hitVecReg_3_1 & entries_1_perm_g; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_u = hitVecReg_3_1 & entries_1_perm_u; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_x = hitVecReg_3_1 & entries_1_perm_x; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_w = hitVecReg_3_1 & entries_1_perm_w; // @[ParallelMux.scala 64:44]
  wire  io_rresp_3_bits_perm_0_xs_1_r = hitVecReg_3_1 & entries_1_perm_r; // @[ParallelMux.scala 64:44]
  wire [6:0] io_rresp_3_bits_perm_0_lo = {io_rresp_3_bits_perm_0_xs_0_w,io_rresp_3_bits_perm_0_xs_0_r,2'h0,3'h0}; // @[ParallelMux.scala 36:46]
  wire [13:0] _io_rresp_3_bits_perm_0_T = {io_rresp_3_bits_perm_0_xs_0_pf,io_rresp_3_bits_perm_0_xs_0_af,
    io_rresp_3_bits_perm_0_xs_0_d,io_rresp_3_bits_perm_0_xs_0_a,io_rresp_3_bits_perm_0_xs_0_g,
    io_rresp_3_bits_perm_0_xs_0_u,io_rresp_3_bits_perm_0_xs_0_x,io_rresp_3_bits_perm_0_lo}; // @[ParallelMux.scala 36:46]
  wire [6:0] io_rresp_3_bits_perm_0_lo_1 = {io_rresp_3_bits_perm_0_xs_1_w,io_rresp_3_bits_perm_0_xs_1_r,2'h0,3'h0}; // @[ParallelMux.scala 36:57]
  wire [13:0] _io_rresp_3_bits_perm_0_T_1 = {io_rresp_3_bits_perm_0_xs_1_pf,io_rresp_3_bits_perm_0_xs_1_af,
    io_rresp_3_bits_perm_0_xs_1_d,io_rresp_3_bits_perm_0_xs_1_a,io_rresp_3_bits_perm_0_xs_1_g,
    io_rresp_3_bits_perm_0_xs_1_u,io_rresp_3_bits_perm_0_xs_1_x,io_rresp_3_bits_perm_0_lo_1}; // @[ParallelMux.scala 36:57]
  wire [13:0] _io_rresp_3_bits_perm_0_T_2 = _io_rresp_3_bits_perm_0_T | _io_rresp_3_bits_perm_0_T_1; // @[ParallelMux.scala 36:53]
  wire [1:0] _io_access_3_touch_ways_bits_T = {hitVecReg_3_1,hitVecReg_3_0}; // @[OneHot.scala 22:45]
  wire  _GEN_12 = ~io_wwayIdx | v_0; // @[TLBStorage.scala 100:18 141:{25,25}]
  wire  _GEN_13 = io_wwayIdx | v_1; // @[TLBStorage.scala 100:18 141:{25,25}]
  wire  _entries_level_T_1 = ~io_wdata_entry_level[0]; // @[MMUBundle.scala 189:47]
  wire [6:0] _ptePerm_T = {io_wdata_entry_perm_d,io_wdata_entry_perm_a,io_wdata_entry_perm_g,
    io_wdata_entry_perm_u,io_wdata_entry_perm_x,io_wdata_entry_perm_w,io_wdata_entry_perm_r}; // @[MMUBundle.scala 87:47]
  wire  ptePerm_r = _ptePerm_T[0]; // @[MMUBundle.scala 87:47]
  wire  ptePerm_w = _ptePerm_T[1]; // @[MMUBundle.scala 87:47]
  wire  ptePerm_x = _ptePerm_T[2]; // @[MMUBundle.scala 87:47]
  wire  ptePerm_u = _ptePerm_T[3]; // @[MMUBundle.scala 87:47]
  wire  ptePerm_g = _ptePerm_T[4]; // @[MMUBundle.scala 87:47]
  wire  ptePerm_a = _ptePerm_T[5]; // @[MMUBundle.scala 87:47]
  wire  ptePerm_d = _ptePerm_T[6]; // @[MMUBundle.scala 87:47]
  reg  refill_wayIdx_reg; // @[TLBStorage.scala 149:34]
  reg  REG; // @[TLBStorage.scala 150:16]
  wire  sfenceHit_asid_hit = entries_0_asid == io_sfence_bits_asid; // @[MMUBundle.scala 160:59]
  wire  sfenceHit_tag_match_hi = entries_0_tag[17:9] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 166:52]
  wire  sfenceHit_tag_match_mi = entries_0_tag[8:0] == io_sfence_bits_addr[29:21]; // @[MMUBundle.scala 167:44]
  wire  sfenceHit_tag_match = sfenceHit_tag_match_hi & (entries_0_level | sfenceHit_tag_match_mi); // @[MMUBundle.scala 168:36]
  wire  sfenceHit_0 = sfenceHit_asid_hit & sfenceHit_tag_match; // @[MMUBundle.scala 169:16]
  wire  sfenceHit_asid_hit_1 = entries_1_asid == io_sfence_bits_asid; // @[MMUBundle.scala 160:59]
  wire  sfenceHit_tag_match_hi_1 = entries_1_tag[17:9] == io_sfence_bits_addr[38:30]; // @[MMUBundle.scala 166:52]
  wire  sfenceHit_tag_match_mi_1 = entries_1_tag[8:0] == io_sfence_bits_addr[29:21]; // @[MMUBundle.scala 167:44]
  wire  sfenceHit_tag_match_1 = sfenceHit_tag_match_hi_1 & (entries_1_level | sfenceHit_tag_match_mi_1); // @[MMUBundle.scala 168:36]
  wire  sfenceHit_1 = sfenceHit_asid_hit_1 & sfenceHit_tag_match_1; // @[MMUBundle.scala 169:16]
  assign io_rreq_0_ready = 1'h1; // @[TLBStorage.scala 98:24]
  assign io_rreq_1_ready = 1'h1; // @[TLBStorage.scala 98:24]
  assign io_rreq_3_ready = 1'h1; // @[TLBStorage.scala 98:24]
  assign io_rresp_0_valid = io_rresp_0_valid_REG; // @[TLBStorage.scala 121:16]
  assign io_rresp_0_bits_hit = |_io_rresp_0_bits_hit_T; // @[TLBStorage.scala 122:37]
  assign io_rresp_0_bits_ppn_0 = io_rresp_0_bits_ppn_0_xs_0 | io_rresp_0_bits_ppn_0_xs_1; // @[ParallelMux.scala 36:53]
  assign io_rresp_0_bits_perm_0_pf = _io_rresp_0_bits_perm_0_T_2[13]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_af = _io_rresp_0_bits_perm_0_T_2[12]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_a = _io_rresp_0_bits_perm_0_T_2[10]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_u = _io_rresp_0_bits_perm_0_T_2[8]; // @[ParallelMux.scala 36:73]
  assign io_rresp_0_bits_perm_0_x = _io_rresp_0_bits_perm_0_T_2[7]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_valid = io_rresp_1_valid_REG; // @[TLBStorage.scala 121:16]
  assign io_rresp_1_bits_hit = |_io_rresp_1_bits_hit_T; // @[TLBStorage.scala 122:37]
  assign io_rresp_1_bits_ppn_0 = io_rresp_1_bits_ppn_0_xs_0 | io_rresp_1_bits_ppn_0_xs_1; // @[ParallelMux.scala 36:53]
  assign io_rresp_1_bits_perm_0_pf = _io_rresp_1_bits_perm_0_T_2[13]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_af = _io_rresp_1_bits_perm_0_T_2[12]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_a = _io_rresp_1_bits_perm_0_T_2[10]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_u = _io_rresp_1_bits_perm_0_T_2[8]; // @[ParallelMux.scala 36:73]
  assign io_rresp_1_bits_perm_0_x = _io_rresp_1_bits_perm_0_T_2[7]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_valid = io_rresp_3_valid_REG; // @[TLBStorage.scala 121:16]
  assign io_rresp_3_bits_hit = |_io_rresp_3_bits_hit_T; // @[TLBStorage.scala 122:37]
  assign io_rresp_3_bits_ppn_0 = io_rresp_3_bits_ppn_0_xs_0 | io_rresp_3_bits_ppn_0_xs_1; // @[ParallelMux.scala 36:53]
  assign io_rresp_3_bits_perm_0_pf = _io_rresp_3_bits_perm_0_T_2[13]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_af = _io_rresp_3_bits_perm_0_T_2[12]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_a = _io_rresp_3_bits_perm_0_T_2[10]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_u = _io_rresp_3_bits_perm_0_T_2[8]; // @[ParallelMux.scala 36:73]
  assign io_rresp_3_bits_perm_0_x = _io_rresp_3_bits_perm_0_T_2[7]; // @[ParallelMux.scala 36:73]
  assign io_access_0_touch_ways_valid = REG | io_rresp_0_valid & _io_rresp_0_bits_hit_T_1; // @[TLBStorage.scala 132:29 150:30 153:31]
  assign io_access_0_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_0_touch_ways_bits_T[1]; // @[TLBStorage.scala 133:28 150:30 154:30]
  assign io_access_1_touch_ways_valid = REG | io_rresp_1_valid & _io_rresp_1_bits_hit_T_1; // @[TLBStorage.scala 132:29 150:30 153:31]
  assign io_access_1_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_1_touch_ways_bits_T[1]; // @[TLBStorage.scala 133:28 150:30 154:30]
  assign io_access_2_touch_ways_valid = REG; // @[TLBStorage.scala 132:29 150:30 153:31]
  assign io_access_2_touch_ways_bits = REG & refill_wayIdx_reg; // @[TLBStorage.scala 133:28 150:30 154:30]
  assign io_access_3_touch_ways_valid = REG | io_rresp_3_valid & _io_rresp_3_bits_hit_T_1; // @[TLBStorage.scala 132:29 150:30 153:31]
  assign io_access_3_touch_ways_bits = REG ? refill_wayIdx_reg : _io_access_3_touch_ways_bits_T[1]; // @[TLBStorage.scala 133:28 150:30 154:30]
  always @(posedge clock) begin
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 182:14]
        entries_0_tag <= io_wdata_entry_tag[26:9]; // @[MMUBundle.scala 182:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 183:15]
        entries_0_asid <= io_csr_satp_asid; // @[MMUBundle.scala 183:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 185:22]
        entries_0_level <= _entries_level_T_1; // @[MMUBundle.scala 185:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 191:14]
        entries_0_ppn <= io_wdata_entry_ppn[23:9]; // @[MMUBundle.scala 191:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 88:13]
        entries_0_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 88:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 89:13]
        entries_0_perm_af <= io_wdata_af; // @[MMUBundle.scala 89:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 90:12]
        entries_0_perm_d <= ptePerm_d; // @[MMUBundle.scala 90:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 91:12]
        entries_0_perm_a <= ptePerm_a; // @[MMUBundle.scala 91:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 92:12]
        entries_0_perm_g <= ptePerm_g; // @[MMUBundle.scala 92:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 93:12]
        entries_0_perm_u <= ptePerm_u; // @[MMUBundle.scala 93:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 94:12]
        entries_0_perm_x <= ptePerm_x; // @[MMUBundle.scala 94:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 95:12]
        entries_0_perm_w <= ptePerm_w; // @[MMUBundle.scala 95:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (~io_wwayIdx) begin // @[MMUBundle.scala 96:12]
        entries_0_perm_r <= ptePerm_r; // @[MMUBundle.scala 96:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 182:14]
        entries_1_tag <= io_wdata_entry_tag[26:9]; // @[MMUBundle.scala 182:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 183:15]
        entries_1_asid <= io_csr_satp_asid; // @[MMUBundle.scala 183:15]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 185:22]
        entries_1_level <= _entries_level_T_1; // @[MMUBundle.scala 185:22]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 191:14]
        entries_1_ppn <= io_wdata_entry_ppn[23:9]; // @[MMUBundle.scala 191:14]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 88:13]
        entries_1_perm_pf <= io_wdata_pf; // @[MMUBundle.scala 88:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 89:13]
        entries_1_perm_af <= io_wdata_af; // @[MMUBundle.scala 89:13]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 90:12]
        entries_1_perm_d <= ptePerm_d; // @[MMUBundle.scala 90:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 91:12]
        entries_1_perm_a <= ptePerm_a; // @[MMUBundle.scala 91:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 92:12]
        entries_1_perm_g <= ptePerm_g; // @[MMUBundle.scala 92:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 93:12]
        entries_1_perm_u <= ptePerm_u; // @[MMUBundle.scala 93:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 94:12]
        entries_1_perm_x <= ptePerm_x; // @[MMUBundle.scala 94:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 95:12]
        entries_1_perm_w <= ptePerm_w; // @[MMUBundle.scala 95:12]
      end
    end
    if (io_wvalid) begin // @[TLBStorage.scala 140:21]
      if (io_wwayIdx) begin // @[MMUBundle.scala 96:12]
        entries_1_perm_r <= ptePerm_r; // @[MMUBundle.scala 96:12]
      end
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      vpn_reg <= io_rreq_0_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__0 <= hitVec__0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T) begin // @[Reg.scala 17:18]
      hitVecReg__1 <= hitVec__1; // @[Reg.scala 17:22]
    end
    io_rresp_0_valid_REG <= io_rreq_0_valid; // @[TLBStorage.scala 121:26]
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      vpn_reg_1 <= io_rreq_1_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_0 <= hitVec_1_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_1) begin // @[Reg.scala 17:18]
      hitVecReg_1_1 <= hitVec_1_1; // @[Reg.scala 17:22]
    end
    io_rresp_1_valid_REG <= io_rreq_1_valid; // @[TLBStorage.scala 121:26]
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      vpn_reg_3 <= io_rreq_3_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_0 <= hitVec_3_0; // @[Reg.scala 17:22]
    end
    if (_vpn_reg_T_3) begin // @[Reg.scala 17:18]
      hitVecReg_3_1 <= hitVec_3_1; // @[Reg.scala 17:22]
    end
    io_rresp_3_valid_REG <= io_rreq_3_valid; // @[TLBStorage.scala 121:26]
    refill_wayIdx_reg <= io_wwayIdx; // @[TLBStorage.scala 149:34]
    REG <= io_wvalid; // @[TLBStorage.scala 150:16]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 162:26]
      v_0 <= 1'h0; // @[TLBStorage.scala 163:28 164:30 166:17 169:45 172:30 174:45 177:45]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 140:21]
      if (io_sfence_bits_rs1) begin
        if (io_sfence_bits_rs2) begin
          v_0 <= 1'h0;
        end else begin
          v_0 <= v_0 & (entries_0_perm_g | ~sfenceHit_asid_hit);
        end
      end else if (io_sfence_bits_rs2) begin
        v_0 <= v_0 & ~sfenceHit_tag_match;
      end else begin
        v_0 <= v_0 & ~(sfenceHit_0 & ~entries_0_perm_g);
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 100:18]
      v_0 <= _GEN_12;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TLBStorage.scala 162:26]
      v_1 <= 1'h0; // @[TLBStorage.scala 163:28 164:30 166:17 169:45 172:30 174:45 177:45]
    end else if (io_sfence_valid) begin // @[TLBStorage.scala 140:21]
      if (io_sfence_bits_rs1) begin
        if (io_sfence_bits_rs2) begin
          v_1 <= 1'h0;
        end else begin
          v_1 <= v_1 & (entries_1_perm_g | ~sfenceHit_asid_hit_1);
        end
      end else if (io_sfence_bits_rs2) begin
        v_1 <= v_1 & ~sfenceHit_tag_match_1;
      end else begin
        v_1 <= v_1 & ~(sfenceHit_1 & ~entries_1_perm_g);
      end
    end else if (io_wvalid) begin // @[TLBStorage.scala 100:18]
      v_1 <= _GEN_13;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  v_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  v_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  entries_0_tag = _RAND_2[17:0];
  _RAND_3 = {1{`RANDOM}};
  entries_0_asid = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  entries_0_level = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  entries_0_ppn = _RAND_5[14:0];
  _RAND_6 = {1{`RANDOM}};
  entries_0_perm_pf = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  entries_0_perm_af = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  entries_0_perm_d = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  entries_0_perm_a = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  entries_0_perm_g = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  entries_0_perm_u = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  entries_0_perm_x = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  entries_0_perm_w = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  entries_0_perm_r = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  entries_1_tag = _RAND_15[17:0];
  _RAND_16 = {1{`RANDOM}};
  entries_1_asid = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  entries_1_level = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  entries_1_ppn = _RAND_18[14:0];
  _RAND_19 = {1{`RANDOM}};
  entries_1_perm_pf = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  entries_1_perm_af = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  entries_1_perm_d = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  entries_1_perm_a = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  entries_1_perm_g = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  entries_1_perm_u = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  entries_1_perm_x = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  entries_1_perm_w = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  entries_1_perm_r = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  vpn_reg = _RAND_28[26:0];
  _RAND_29 = {1{`RANDOM}};
  hitVecReg__0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  hitVecReg__1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_rresp_0_valid_REG = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  vpn_reg_1 = _RAND_32[26:0];
  _RAND_33 = {1{`RANDOM}};
  hitVecReg_1_0 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  hitVecReg_1_1 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_rresp_1_valid_REG = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  vpn_reg_3 = _RAND_36[26:0];
  _RAND_37 = {1{`RANDOM}};
  hitVecReg_3_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  hitVecReg_3_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_rresp_3_valid_REG = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  refill_wayIdx_reg = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  REG = _RAND_41[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    v_0 = 1'h0;
  end
  if (reset) begin
    v_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

