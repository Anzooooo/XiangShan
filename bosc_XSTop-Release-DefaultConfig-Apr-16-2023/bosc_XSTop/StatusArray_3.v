module StatusArray_3(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output [15:0] io_isValid,
  output [15:0] io_isValidNext,
  output [15:0] io_canIssue,
  output [15:0] io_flushed,
  input         io_update_0_enable,
  input  [15:0] io_update_0_addr,
  input         io_update_0_data_srcState_0,
  input  [5:0]  io_update_0_data_psrc_0,
  input  [1:0]  io_update_0_data_srcType_0,
  input         io_update_0_data_robIdx_flag,
  input  [4:0]  io_update_0_data_robIdx_value,
  input         io_update_1_enable,
  input  [15:0] io_update_1_addr,
  input         io_update_1_data_srcState_0,
  input  [5:0]  io_update_1_data_psrc_0,
  input  [1:0]  io_update_1_data_srcType_0,
  input         io_update_1_data_robIdx_flag,
  input  [4:0]  io_update_1_data_robIdx_value,
  input         io_wakeup_0_valid,
  input         io_wakeup_0_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_0_bits_pdest,
  input         io_wakeup_1_valid,
  input         io_wakeup_1_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_1_bits_pdest,
  input         io_wakeup_4_valid,
  input         io_wakeup_4_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_4_bits_pdest,
  input         io_wakeup_5_valid,
  input         io_wakeup_5_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_5_bits_pdest,
  input         io_wakeup_6_valid,
  input         io_wakeup_6_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_6_bits_pdest,
  input         io_wakeup_7_valid,
  input         io_wakeup_7_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_7_bits_pdest,
  input         io_wakeup_8_valid,
  input         io_wakeup_8_bits_ctrl_rfWen,
  input  [5:0]  io_wakeup_8_bits_pdest,
  output [8:0]  io_wakeupMatch_0_0,
  output [8:0]  io_wakeupMatch_1_0,
  output [8:0]  io_wakeupMatch_2_0,
  output [8:0]  io_wakeupMatch_3_0,
  output [8:0]  io_wakeupMatch_4_0,
  output [8:0]  io_wakeupMatch_5_0,
  output [8:0]  io_wakeupMatch_6_0,
  output [8:0]  io_wakeupMatch_7_0,
  output [8:0]  io_wakeupMatch_8_0,
  output [8:0]  io_wakeupMatch_9_0,
  output [8:0]  io_wakeupMatch_10_0,
  output [8:0]  io_wakeupMatch_11_0,
  output [8:0]  io_wakeupMatch_12_0,
  output [8:0]  io_wakeupMatch_13_0,
  output [8:0]  io_wakeupMatch_14_0,
  output [8:0]  io_wakeupMatch_15_0,
  input         io_deqResp_0_valid,
  input  [15:0] io_deqResp_0_bits_rsMask,
  input         io_deqResp_0_bits_success,
  input         io_deqResp_1_valid,
  input  [15:0] io_deqResp_1_bits_rsMask,
  input         io_deqResp_1_bits_success,
  input         io_deqResp_2_valid,
  input  [15:0] io_deqResp_2_bits_rsMask,
  input         io_deqResp_2_bits_success,
  input         io_deqResp_3_valid,
  input  [15:0] io_deqResp_3_bits_rsMask,
  input         io_deqResp_3_bits_success,
  input         io_deqResp_4_valid,
  input  [15:0] io_deqResp_4_bits_rsMask,
  input         io_deqResp_4_bits_success
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
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
`endif // RANDOMIZE_REG_INIT
  reg  statusArrayValid_0; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_1; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_2; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_3; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_4; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_5; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_6; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_7; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_8; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_9; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_10; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_11; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_12; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_13; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_14; // @[StatusArray.scala 105:33]
  reg  statusArrayValid_15; // @[StatusArray.scala 105:33]
  reg  statusArray_0_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_0_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_0_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_0_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_0_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_1_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_1_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_1_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_1_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_1_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_2_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_2_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_2_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_2_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_2_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_3_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_3_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_3_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_3_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_3_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_4_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_4_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_4_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_4_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_4_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_5_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_5_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_5_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_5_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_5_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_6_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_6_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_6_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_6_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_6_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_7_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_7_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_7_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_7_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_7_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_8_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_8_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_8_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_8_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_8_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_9_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_9_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_9_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_9_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_9_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_10_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_10_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_10_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_10_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_10_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_11_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_11_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_11_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_11_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_11_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_12_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_12_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_12_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_12_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_12_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_13_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_13_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_13_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_13_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_13_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_14_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_14_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_14_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_14_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_14_robIdx_value; // @[StatusArray.scala 107:24]
  reg  statusArray_15_srcState_0; // @[StatusArray.scala 107:24]
  reg [5:0] statusArray_15_psrc_0; // @[StatusArray.scala 107:24]
  reg [1:0] statusArray_15_srcType_0; // @[StatusArray.scala 107:24]
  reg  statusArray_15_robIdx_flag; // @[StatusArray.scala 107:24]
  reg [4:0] statusArray_15_robIdx_value; // @[StatusArray.scala 107:24]
  wire  updateVec__1 = io_update_1_enable & io_update_1_addr[0]; // @[StatusArray.scala 148:57]
  wire  updateVec__0 = io_update_0_enable & io_update_0_addr[0]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_254 = {updateVec__1,updateVec__0}; // @[StatusArray.scala 151:16]
  wire  updateValid_0 = |_T_254; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_36 = updateVec__0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_37 = updateVec__1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_0_psrc_0 = _updateStatus_T_36 | _updateStatus_T_37; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_0_psrc_0 = updateValid_0 ? updateVal_0_psrc_0 : statusArray_0_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_8 = io_wakeup_8_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_8 = pdestMatch_8 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8 = io_wakeup_8_valid & stateCond_8; // @[StatusArray.scala 129:16]
  wire  pdestMatch_7 = io_wakeup_7_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_7 = pdestMatch_7 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7 = io_wakeup_7_valid & stateCond_7; // @[StatusArray.scala 129:16]
  wire  pdestMatch_6 = io_wakeup_6_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_6 = pdestMatch_6 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6 = io_wakeup_6_valid & stateCond_6; // @[StatusArray.scala 129:16]
  wire  pdestMatch_5 = io_wakeup_5_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_5 = pdestMatch_5 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5 = io_wakeup_5_valid & stateCond_5; // @[StatusArray.scala 129:16]
  wire  pdestMatch_4 = io_wakeup_4_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_4 = pdestMatch_4 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4 = io_wakeup_4_valid & stateCond_4; // @[StatusArray.scala 129:16]
  wire  pdestMatch_1 = io_wakeup_1_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_1 = pdestMatch_1 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1 = io_wakeup_1_valid & stateCond_1; // @[StatusArray.scala 129:16]
  wire  pdestMatch = io_wakeup_0_bits_pdest == statusArrayNext_0_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond = pdestMatch & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0 = io_wakeup_0_valid & stateCond; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T = {stateMatchVec_8,stateMatchVec_7,stateMatchVec_6,stateMatchVec_5,stateMatchVec_4,2'h0,
    stateMatchVec_1,stateMatchVec_0}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0 = |_stateMatch_T; // @[StatusArray.scala 131:52]
  wire  updateVal_0_srcState_0 = updateVec__0 & io_update_0_data_srcState_0 | updateVec__1 & io_update_1_data_srcState_0
    ; // @[Mux.scala 27:73]
  wire  _T_1000 = updateValid_0 ? updateVal_0_srcState_0 : statusArray_0_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_0_srcState_0 = stateWakeupEn_0 | _T_1000; // @[StatusArray.scala 236:50]
  wire  readyVecNext_0 = &statusArrayNext_0_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_1_1 = io_update_1_enable & io_update_1_addr[1]; // @[StatusArray.scala 148:57]
  wire  updateVec_1_0 = io_update_0_enable & io_update_0_addr[1]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_258 = {updateVec_1_1,updateVec_1_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_1 = |_T_258; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_90 = updateVec_1_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_91 = updateVec_1_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_1_psrc_0 = _updateStatus_T_90 | _updateStatus_T_91; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_1_psrc_0 = updateValid_1 ? updateVal_1_psrc_0 : statusArray_1_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_17 = io_wakeup_8_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_17 = pdestMatch_17 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_1 = io_wakeup_8_valid & stateCond_17; // @[StatusArray.scala 129:16]
  wire  pdestMatch_16 = io_wakeup_7_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_16 = pdestMatch_16 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_1 = io_wakeup_7_valid & stateCond_16; // @[StatusArray.scala 129:16]
  wire  pdestMatch_15 = io_wakeup_6_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_15 = pdestMatch_15 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_1 = io_wakeup_6_valid & stateCond_15; // @[StatusArray.scala 129:16]
  wire  pdestMatch_14 = io_wakeup_5_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_14 = pdestMatch_14 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_1 = io_wakeup_5_valid & stateCond_14; // @[StatusArray.scala 129:16]
  wire  pdestMatch_13 = io_wakeup_4_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_13 = pdestMatch_13 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_1 = io_wakeup_4_valid & stateCond_13; // @[StatusArray.scala 129:16]
  wire  pdestMatch_10 = io_wakeup_1_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_10 = pdestMatch_10 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_1 = io_wakeup_1_valid & stateCond_10; // @[StatusArray.scala 129:16]
  wire  pdestMatch_9 = io_wakeup_0_bits_pdest == statusArrayNext_1_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_9 = pdestMatch_9 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_1 = io_wakeup_0_valid & stateCond_9; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_1 = {stateMatchVec_8_1,stateMatchVec_7_1,stateMatchVec_6_1,stateMatchVec_5_1,
    stateMatchVec_4_1,2'h0,stateMatchVec_1_1,stateMatchVec_0_1}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_1 = |_stateMatch_T_1; // @[StatusArray.scala 131:52]
  wire  updateVal_1_srcState_0 = updateVec_1_0 & io_update_0_data_srcState_0 | updateVec_1_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1033 = updateValid_1 ? updateVal_1_srcState_0 : statusArray_1_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_1_srcState_0 = stateWakeupEn_0_1 | _T_1033; // @[StatusArray.scala 236:50]
  wire  readyVecNext_1 = &statusArrayNext_1_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_2_1 = io_update_1_enable & io_update_1_addr[2]; // @[StatusArray.scala 148:57]
  wire  updateVec_2_0 = io_update_0_enable & io_update_0_addr[2]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_262 = {updateVec_2_1,updateVec_2_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_2 = |_T_262; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_144 = updateVec_2_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_145 = updateVec_2_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_2_psrc_0 = _updateStatus_T_144 | _updateStatus_T_145; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_2_psrc_0 = updateValid_2 ? updateVal_2_psrc_0 : statusArray_2_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_26 = io_wakeup_8_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_26 = pdestMatch_26 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_2 = io_wakeup_8_valid & stateCond_26; // @[StatusArray.scala 129:16]
  wire  pdestMatch_25 = io_wakeup_7_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_25 = pdestMatch_25 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_2 = io_wakeup_7_valid & stateCond_25; // @[StatusArray.scala 129:16]
  wire  pdestMatch_24 = io_wakeup_6_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_24 = pdestMatch_24 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_2 = io_wakeup_6_valid & stateCond_24; // @[StatusArray.scala 129:16]
  wire  pdestMatch_23 = io_wakeup_5_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_23 = pdestMatch_23 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_2 = io_wakeup_5_valid & stateCond_23; // @[StatusArray.scala 129:16]
  wire  pdestMatch_22 = io_wakeup_4_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_22 = pdestMatch_22 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_2 = io_wakeup_4_valid & stateCond_22; // @[StatusArray.scala 129:16]
  wire  pdestMatch_19 = io_wakeup_1_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_19 = pdestMatch_19 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_2 = io_wakeup_1_valid & stateCond_19; // @[StatusArray.scala 129:16]
  wire  pdestMatch_18 = io_wakeup_0_bits_pdest == statusArrayNext_2_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_18 = pdestMatch_18 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_2 = io_wakeup_0_valid & stateCond_18; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_2 = {stateMatchVec_8_2,stateMatchVec_7_2,stateMatchVec_6_2,stateMatchVec_5_2,
    stateMatchVec_4_2,2'h0,stateMatchVec_1_2,stateMatchVec_0_2}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_2 = |_stateMatch_T_2; // @[StatusArray.scala 131:52]
  wire  updateVal_2_srcState_0 = updateVec_2_0 & io_update_0_data_srcState_0 | updateVec_2_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1066 = updateValid_2 ? updateVal_2_srcState_0 : statusArray_2_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_2_srcState_0 = stateWakeupEn_0_2 | _T_1066; // @[StatusArray.scala 236:50]
  wire  readyVecNext_2 = &statusArrayNext_2_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_3_1 = io_update_1_enable & io_update_1_addr[3]; // @[StatusArray.scala 148:57]
  wire  updateVec_3_0 = io_update_0_enable & io_update_0_addr[3]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_266 = {updateVec_3_1,updateVec_3_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_3 = |_T_266; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_198 = updateVec_3_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_199 = updateVec_3_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_3_psrc_0 = _updateStatus_T_198 | _updateStatus_T_199; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_3_psrc_0 = updateValid_3 ? updateVal_3_psrc_0 : statusArray_3_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_35 = io_wakeup_8_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_35 = pdestMatch_35 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_3 = io_wakeup_8_valid & stateCond_35; // @[StatusArray.scala 129:16]
  wire  pdestMatch_34 = io_wakeup_7_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_34 = pdestMatch_34 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_3 = io_wakeup_7_valid & stateCond_34; // @[StatusArray.scala 129:16]
  wire  pdestMatch_33 = io_wakeup_6_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_33 = pdestMatch_33 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_3 = io_wakeup_6_valid & stateCond_33; // @[StatusArray.scala 129:16]
  wire  pdestMatch_32 = io_wakeup_5_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_32 = pdestMatch_32 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_3 = io_wakeup_5_valid & stateCond_32; // @[StatusArray.scala 129:16]
  wire  pdestMatch_31 = io_wakeup_4_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_31 = pdestMatch_31 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_3 = io_wakeup_4_valid & stateCond_31; // @[StatusArray.scala 129:16]
  wire  pdestMatch_28 = io_wakeup_1_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_28 = pdestMatch_28 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_3 = io_wakeup_1_valid & stateCond_28; // @[StatusArray.scala 129:16]
  wire  pdestMatch_27 = io_wakeup_0_bits_pdest == statusArrayNext_3_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_27 = pdestMatch_27 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_3 = io_wakeup_0_valid & stateCond_27; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_3 = {stateMatchVec_8_3,stateMatchVec_7_3,stateMatchVec_6_3,stateMatchVec_5_3,
    stateMatchVec_4_3,2'h0,stateMatchVec_1_3,stateMatchVec_0_3}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_3 = |_stateMatch_T_3; // @[StatusArray.scala 131:52]
  wire  updateVal_3_srcState_0 = updateVec_3_0 & io_update_0_data_srcState_0 | updateVec_3_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1099 = updateValid_3 ? updateVal_3_srcState_0 : statusArray_3_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_3_srcState_0 = stateWakeupEn_0_3 | _T_1099; // @[StatusArray.scala 236:50]
  wire  readyVecNext_3 = &statusArrayNext_3_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_4_1 = io_update_1_enable & io_update_1_addr[4]; // @[StatusArray.scala 148:57]
  wire  updateVec_4_0 = io_update_0_enable & io_update_0_addr[4]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_270 = {updateVec_4_1,updateVec_4_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_4 = |_T_270; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_252 = updateVec_4_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_253 = updateVec_4_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_4_psrc_0 = _updateStatus_T_252 | _updateStatus_T_253; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_4_psrc_0 = updateValid_4 ? updateVal_4_psrc_0 : statusArray_4_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_44 = io_wakeup_8_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_44 = pdestMatch_44 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_4 = io_wakeup_8_valid & stateCond_44; // @[StatusArray.scala 129:16]
  wire  pdestMatch_43 = io_wakeup_7_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_43 = pdestMatch_43 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_4 = io_wakeup_7_valid & stateCond_43; // @[StatusArray.scala 129:16]
  wire  pdestMatch_42 = io_wakeup_6_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_42 = pdestMatch_42 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_4 = io_wakeup_6_valid & stateCond_42; // @[StatusArray.scala 129:16]
  wire  pdestMatch_41 = io_wakeup_5_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_41 = pdestMatch_41 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_4 = io_wakeup_5_valid & stateCond_41; // @[StatusArray.scala 129:16]
  wire  pdestMatch_40 = io_wakeup_4_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_40 = pdestMatch_40 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_4 = io_wakeup_4_valid & stateCond_40; // @[StatusArray.scala 129:16]
  wire  pdestMatch_37 = io_wakeup_1_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_37 = pdestMatch_37 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_4 = io_wakeup_1_valid & stateCond_37; // @[StatusArray.scala 129:16]
  wire  pdestMatch_36 = io_wakeup_0_bits_pdest == statusArrayNext_4_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_36 = pdestMatch_36 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_4 = io_wakeup_0_valid & stateCond_36; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_4 = {stateMatchVec_8_4,stateMatchVec_7_4,stateMatchVec_6_4,stateMatchVec_5_4,
    stateMatchVec_4_4,2'h0,stateMatchVec_1_4,stateMatchVec_0_4}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_4 = |_stateMatch_T_4; // @[StatusArray.scala 131:52]
  wire  updateVal_4_srcState_0 = updateVec_4_0 & io_update_0_data_srcState_0 | updateVec_4_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1132 = updateValid_4 ? updateVal_4_srcState_0 : statusArray_4_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_4_srcState_0 = stateWakeupEn_0_4 | _T_1132; // @[StatusArray.scala 236:50]
  wire  readyVecNext_4 = &statusArrayNext_4_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_5_1 = io_update_1_enable & io_update_1_addr[5]; // @[StatusArray.scala 148:57]
  wire  updateVec_5_0 = io_update_0_enable & io_update_0_addr[5]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_274 = {updateVec_5_1,updateVec_5_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_5 = |_T_274; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_306 = updateVec_5_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_307 = updateVec_5_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_5_psrc_0 = _updateStatus_T_306 | _updateStatus_T_307; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_5_psrc_0 = updateValid_5 ? updateVal_5_psrc_0 : statusArray_5_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_53 = io_wakeup_8_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_53 = pdestMatch_53 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_5 = io_wakeup_8_valid & stateCond_53; // @[StatusArray.scala 129:16]
  wire  pdestMatch_52 = io_wakeup_7_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_52 = pdestMatch_52 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_5 = io_wakeup_7_valid & stateCond_52; // @[StatusArray.scala 129:16]
  wire  pdestMatch_51 = io_wakeup_6_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_51 = pdestMatch_51 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_5 = io_wakeup_6_valid & stateCond_51; // @[StatusArray.scala 129:16]
  wire  pdestMatch_50 = io_wakeup_5_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_50 = pdestMatch_50 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_5 = io_wakeup_5_valid & stateCond_50; // @[StatusArray.scala 129:16]
  wire  pdestMatch_49 = io_wakeup_4_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_49 = pdestMatch_49 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_5 = io_wakeup_4_valid & stateCond_49; // @[StatusArray.scala 129:16]
  wire  pdestMatch_46 = io_wakeup_1_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_46 = pdestMatch_46 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_5 = io_wakeup_1_valid & stateCond_46; // @[StatusArray.scala 129:16]
  wire  pdestMatch_45 = io_wakeup_0_bits_pdest == statusArrayNext_5_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_45 = pdestMatch_45 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_5 = io_wakeup_0_valid & stateCond_45; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_5 = {stateMatchVec_8_5,stateMatchVec_7_5,stateMatchVec_6_5,stateMatchVec_5_5,
    stateMatchVec_4_5,2'h0,stateMatchVec_1_5,stateMatchVec_0_5}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_5 = |_stateMatch_T_5; // @[StatusArray.scala 131:52]
  wire  updateVal_5_srcState_0 = updateVec_5_0 & io_update_0_data_srcState_0 | updateVec_5_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1165 = updateValid_5 ? updateVal_5_srcState_0 : statusArray_5_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_5_srcState_0 = stateWakeupEn_0_5 | _T_1165; // @[StatusArray.scala 236:50]
  wire  readyVecNext_5 = &statusArrayNext_5_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_6_1 = io_update_1_enable & io_update_1_addr[6]; // @[StatusArray.scala 148:57]
  wire  updateVec_6_0 = io_update_0_enable & io_update_0_addr[6]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_278 = {updateVec_6_1,updateVec_6_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_6 = |_T_278; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_360 = updateVec_6_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_361 = updateVec_6_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_6_psrc_0 = _updateStatus_T_360 | _updateStatus_T_361; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_6_psrc_0 = updateValid_6 ? updateVal_6_psrc_0 : statusArray_6_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_62 = io_wakeup_8_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_62 = pdestMatch_62 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_6 = io_wakeup_8_valid & stateCond_62; // @[StatusArray.scala 129:16]
  wire  pdestMatch_61 = io_wakeup_7_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_61 = pdestMatch_61 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_6 = io_wakeup_7_valid & stateCond_61; // @[StatusArray.scala 129:16]
  wire  pdestMatch_60 = io_wakeup_6_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_60 = pdestMatch_60 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_6 = io_wakeup_6_valid & stateCond_60; // @[StatusArray.scala 129:16]
  wire  pdestMatch_59 = io_wakeup_5_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_59 = pdestMatch_59 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_6 = io_wakeup_5_valid & stateCond_59; // @[StatusArray.scala 129:16]
  wire  pdestMatch_58 = io_wakeup_4_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_58 = pdestMatch_58 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_6 = io_wakeup_4_valid & stateCond_58; // @[StatusArray.scala 129:16]
  wire  pdestMatch_55 = io_wakeup_1_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_55 = pdestMatch_55 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_6 = io_wakeup_1_valid & stateCond_55; // @[StatusArray.scala 129:16]
  wire  pdestMatch_54 = io_wakeup_0_bits_pdest == statusArrayNext_6_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_54 = pdestMatch_54 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_6 = io_wakeup_0_valid & stateCond_54; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_6 = {stateMatchVec_8_6,stateMatchVec_7_6,stateMatchVec_6_6,stateMatchVec_5_6,
    stateMatchVec_4_6,2'h0,stateMatchVec_1_6,stateMatchVec_0_6}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_6 = |_stateMatch_T_6; // @[StatusArray.scala 131:52]
  wire  updateVal_6_srcState_0 = updateVec_6_0 & io_update_0_data_srcState_0 | updateVec_6_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1198 = updateValid_6 ? updateVal_6_srcState_0 : statusArray_6_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_6_srcState_0 = stateWakeupEn_0_6 | _T_1198; // @[StatusArray.scala 236:50]
  wire  readyVecNext_6 = &statusArrayNext_6_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_7_1 = io_update_1_enable & io_update_1_addr[7]; // @[StatusArray.scala 148:57]
  wire  updateVec_7_0 = io_update_0_enable & io_update_0_addr[7]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_282 = {updateVec_7_1,updateVec_7_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_7 = |_T_282; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_414 = updateVec_7_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_415 = updateVec_7_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_7_psrc_0 = _updateStatus_T_414 | _updateStatus_T_415; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_7_psrc_0 = updateValid_7 ? updateVal_7_psrc_0 : statusArray_7_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_71 = io_wakeup_8_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_71 = pdestMatch_71 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_7 = io_wakeup_8_valid & stateCond_71; // @[StatusArray.scala 129:16]
  wire  pdestMatch_70 = io_wakeup_7_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_70 = pdestMatch_70 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_7 = io_wakeup_7_valid & stateCond_70; // @[StatusArray.scala 129:16]
  wire  pdestMatch_69 = io_wakeup_6_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_69 = pdestMatch_69 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_7 = io_wakeup_6_valid & stateCond_69; // @[StatusArray.scala 129:16]
  wire  pdestMatch_68 = io_wakeup_5_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_68 = pdestMatch_68 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_7 = io_wakeup_5_valid & stateCond_68; // @[StatusArray.scala 129:16]
  wire  pdestMatch_67 = io_wakeup_4_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_67 = pdestMatch_67 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_7 = io_wakeup_4_valid & stateCond_67; // @[StatusArray.scala 129:16]
  wire  pdestMatch_64 = io_wakeup_1_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_64 = pdestMatch_64 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_7 = io_wakeup_1_valid & stateCond_64; // @[StatusArray.scala 129:16]
  wire  pdestMatch_63 = io_wakeup_0_bits_pdest == statusArrayNext_7_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_63 = pdestMatch_63 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_7 = io_wakeup_0_valid & stateCond_63; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_7 = {stateMatchVec_8_7,stateMatchVec_7_7,stateMatchVec_6_7,stateMatchVec_5_7,
    stateMatchVec_4_7,2'h0,stateMatchVec_1_7,stateMatchVec_0_7}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_7 = |_stateMatch_T_7; // @[StatusArray.scala 131:52]
  wire  updateVal_7_srcState_0 = updateVec_7_0 & io_update_0_data_srcState_0 | updateVec_7_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1231 = updateValid_7 ? updateVal_7_srcState_0 : statusArray_7_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_7_srcState_0 = stateWakeupEn_0_7 | _T_1231; // @[StatusArray.scala 236:50]
  wire  readyVecNext_7 = &statusArrayNext_7_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_8_1 = io_update_1_enable & io_update_1_addr[8]; // @[StatusArray.scala 148:57]
  wire  updateVec_8_0 = io_update_0_enable & io_update_0_addr[8]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_286 = {updateVec_8_1,updateVec_8_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_8 = |_T_286; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_468 = updateVec_8_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_469 = updateVec_8_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_8_psrc_0 = _updateStatus_T_468 | _updateStatus_T_469; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_8_psrc_0 = updateValid_8 ? updateVal_8_psrc_0 : statusArray_8_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_80 = io_wakeup_8_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_80 = pdestMatch_80 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_8 = io_wakeup_8_valid & stateCond_80; // @[StatusArray.scala 129:16]
  wire  pdestMatch_79 = io_wakeup_7_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_79 = pdestMatch_79 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_8 = io_wakeup_7_valid & stateCond_79; // @[StatusArray.scala 129:16]
  wire  pdestMatch_78 = io_wakeup_6_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_78 = pdestMatch_78 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_8 = io_wakeup_6_valid & stateCond_78; // @[StatusArray.scala 129:16]
  wire  pdestMatch_77 = io_wakeup_5_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_77 = pdestMatch_77 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_8 = io_wakeup_5_valid & stateCond_77; // @[StatusArray.scala 129:16]
  wire  pdestMatch_76 = io_wakeup_4_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_76 = pdestMatch_76 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_8 = io_wakeup_4_valid & stateCond_76; // @[StatusArray.scala 129:16]
  wire  pdestMatch_73 = io_wakeup_1_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_73 = pdestMatch_73 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_8 = io_wakeup_1_valid & stateCond_73; // @[StatusArray.scala 129:16]
  wire  pdestMatch_72 = io_wakeup_0_bits_pdest == statusArrayNext_8_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_72 = pdestMatch_72 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_8 = io_wakeup_0_valid & stateCond_72; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_8 = {stateMatchVec_8_8,stateMatchVec_7_8,stateMatchVec_6_8,stateMatchVec_5_8,
    stateMatchVec_4_8,2'h0,stateMatchVec_1_8,stateMatchVec_0_8}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_8 = |_stateMatch_T_8; // @[StatusArray.scala 131:52]
  wire  updateVal_8_srcState_0 = updateVec_8_0 & io_update_0_data_srcState_0 | updateVec_8_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1264 = updateValid_8 ? updateVal_8_srcState_0 : statusArray_8_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_8_srcState_0 = stateWakeupEn_0_8 | _T_1264; // @[StatusArray.scala 236:50]
  wire  readyVecNext_8 = &statusArrayNext_8_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_9_1 = io_update_1_enable & io_update_1_addr[9]; // @[StatusArray.scala 148:57]
  wire  updateVec_9_0 = io_update_0_enable & io_update_0_addr[9]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_290 = {updateVec_9_1,updateVec_9_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_9 = |_T_290; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_522 = updateVec_9_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_523 = updateVec_9_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_9_psrc_0 = _updateStatus_T_522 | _updateStatus_T_523; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_9_psrc_0 = updateValid_9 ? updateVal_9_psrc_0 : statusArray_9_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_89 = io_wakeup_8_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_89 = pdestMatch_89 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_9 = io_wakeup_8_valid & stateCond_89; // @[StatusArray.scala 129:16]
  wire  pdestMatch_88 = io_wakeup_7_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_88 = pdestMatch_88 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_9 = io_wakeup_7_valid & stateCond_88; // @[StatusArray.scala 129:16]
  wire  pdestMatch_87 = io_wakeup_6_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_87 = pdestMatch_87 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_9 = io_wakeup_6_valid & stateCond_87; // @[StatusArray.scala 129:16]
  wire  pdestMatch_86 = io_wakeup_5_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_86 = pdestMatch_86 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_9 = io_wakeup_5_valid & stateCond_86; // @[StatusArray.scala 129:16]
  wire  pdestMatch_85 = io_wakeup_4_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_85 = pdestMatch_85 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_9 = io_wakeup_4_valid & stateCond_85; // @[StatusArray.scala 129:16]
  wire  pdestMatch_82 = io_wakeup_1_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_82 = pdestMatch_82 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_9 = io_wakeup_1_valid & stateCond_82; // @[StatusArray.scala 129:16]
  wire  pdestMatch_81 = io_wakeup_0_bits_pdest == statusArrayNext_9_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_81 = pdestMatch_81 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_9 = io_wakeup_0_valid & stateCond_81; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_9 = {stateMatchVec_8_9,stateMatchVec_7_9,stateMatchVec_6_9,stateMatchVec_5_9,
    stateMatchVec_4_9,2'h0,stateMatchVec_1_9,stateMatchVec_0_9}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_9 = |_stateMatch_T_9; // @[StatusArray.scala 131:52]
  wire  updateVal_9_srcState_0 = updateVec_9_0 & io_update_0_data_srcState_0 | updateVec_9_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1297 = updateValid_9 ? updateVal_9_srcState_0 : statusArray_9_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_9_srcState_0 = stateWakeupEn_0_9 | _T_1297; // @[StatusArray.scala 236:50]
  wire  readyVecNext_9 = &statusArrayNext_9_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_10_1 = io_update_1_enable & io_update_1_addr[10]; // @[StatusArray.scala 148:57]
  wire  updateVec_10_0 = io_update_0_enable & io_update_0_addr[10]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_294 = {updateVec_10_1,updateVec_10_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_10 = |_T_294; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_576 = updateVec_10_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_577 = updateVec_10_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_10_psrc_0 = _updateStatus_T_576 | _updateStatus_T_577; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_10_psrc_0 = updateValid_10 ? updateVal_10_psrc_0 : statusArray_10_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_98 = io_wakeup_8_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_98 = pdestMatch_98 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_10 = io_wakeup_8_valid & stateCond_98; // @[StatusArray.scala 129:16]
  wire  pdestMatch_97 = io_wakeup_7_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_97 = pdestMatch_97 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_10 = io_wakeup_7_valid & stateCond_97; // @[StatusArray.scala 129:16]
  wire  pdestMatch_96 = io_wakeup_6_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_96 = pdestMatch_96 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_10 = io_wakeup_6_valid & stateCond_96; // @[StatusArray.scala 129:16]
  wire  pdestMatch_95 = io_wakeup_5_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_95 = pdestMatch_95 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_10 = io_wakeup_5_valid & stateCond_95; // @[StatusArray.scala 129:16]
  wire  pdestMatch_94 = io_wakeup_4_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_94 = pdestMatch_94 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_10 = io_wakeup_4_valid & stateCond_94; // @[StatusArray.scala 129:16]
  wire  pdestMatch_91 = io_wakeup_1_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_91 = pdestMatch_91 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_10 = io_wakeup_1_valid & stateCond_91; // @[StatusArray.scala 129:16]
  wire  pdestMatch_90 = io_wakeup_0_bits_pdest == statusArrayNext_10_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_90 = pdestMatch_90 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_10 = io_wakeup_0_valid & stateCond_90; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_10 = {stateMatchVec_8_10,stateMatchVec_7_10,stateMatchVec_6_10,stateMatchVec_5_10,
    stateMatchVec_4_10,2'h0,stateMatchVec_1_10,stateMatchVec_0_10}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_10 = |_stateMatch_T_10; // @[StatusArray.scala 131:52]
  wire  updateVal_10_srcState_0 = updateVec_10_0 & io_update_0_data_srcState_0 | updateVec_10_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1330 = updateValid_10 ? updateVal_10_srcState_0 : statusArray_10_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_10_srcState_0 = stateWakeupEn_0_10 | _T_1330; // @[StatusArray.scala 236:50]
  wire  readyVecNext_10 = &statusArrayNext_10_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_11_1 = io_update_1_enable & io_update_1_addr[11]; // @[StatusArray.scala 148:57]
  wire  updateVec_11_0 = io_update_0_enable & io_update_0_addr[11]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_298 = {updateVec_11_1,updateVec_11_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_11 = |_T_298; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_630 = updateVec_11_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_631 = updateVec_11_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_11_psrc_0 = _updateStatus_T_630 | _updateStatus_T_631; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_11_psrc_0 = updateValid_11 ? updateVal_11_psrc_0 : statusArray_11_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_107 = io_wakeup_8_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_107 = pdestMatch_107 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_11 = io_wakeup_8_valid & stateCond_107; // @[StatusArray.scala 129:16]
  wire  pdestMatch_106 = io_wakeup_7_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_106 = pdestMatch_106 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_11 = io_wakeup_7_valid & stateCond_106; // @[StatusArray.scala 129:16]
  wire  pdestMatch_105 = io_wakeup_6_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_105 = pdestMatch_105 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_11 = io_wakeup_6_valid & stateCond_105; // @[StatusArray.scala 129:16]
  wire  pdestMatch_104 = io_wakeup_5_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_104 = pdestMatch_104 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_11 = io_wakeup_5_valid & stateCond_104; // @[StatusArray.scala 129:16]
  wire  pdestMatch_103 = io_wakeup_4_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_103 = pdestMatch_103 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_11 = io_wakeup_4_valid & stateCond_103; // @[StatusArray.scala 129:16]
  wire  pdestMatch_100 = io_wakeup_1_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_100 = pdestMatch_100 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_11 = io_wakeup_1_valid & stateCond_100; // @[StatusArray.scala 129:16]
  wire  pdestMatch_99 = io_wakeup_0_bits_pdest == statusArrayNext_11_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_99 = pdestMatch_99 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_11 = io_wakeup_0_valid & stateCond_99; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_11 = {stateMatchVec_8_11,stateMatchVec_7_11,stateMatchVec_6_11,stateMatchVec_5_11,
    stateMatchVec_4_11,2'h0,stateMatchVec_1_11,stateMatchVec_0_11}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_11 = |_stateMatch_T_11; // @[StatusArray.scala 131:52]
  wire  updateVal_11_srcState_0 = updateVec_11_0 & io_update_0_data_srcState_0 | updateVec_11_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1363 = updateValid_11 ? updateVal_11_srcState_0 : statusArray_11_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_11_srcState_0 = stateWakeupEn_0_11 | _T_1363; // @[StatusArray.scala 236:50]
  wire  readyVecNext_11 = &statusArrayNext_11_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_12_1 = io_update_1_enable & io_update_1_addr[12]; // @[StatusArray.scala 148:57]
  wire  updateVec_12_0 = io_update_0_enable & io_update_0_addr[12]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_302 = {updateVec_12_1,updateVec_12_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_12 = |_T_302; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_684 = updateVec_12_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_685 = updateVec_12_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_12_psrc_0 = _updateStatus_T_684 | _updateStatus_T_685; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_12_psrc_0 = updateValid_12 ? updateVal_12_psrc_0 : statusArray_12_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_116 = io_wakeup_8_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_116 = pdestMatch_116 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_12 = io_wakeup_8_valid & stateCond_116; // @[StatusArray.scala 129:16]
  wire  pdestMatch_115 = io_wakeup_7_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_115 = pdestMatch_115 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_12 = io_wakeup_7_valid & stateCond_115; // @[StatusArray.scala 129:16]
  wire  pdestMatch_114 = io_wakeup_6_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_114 = pdestMatch_114 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_12 = io_wakeup_6_valid & stateCond_114; // @[StatusArray.scala 129:16]
  wire  pdestMatch_113 = io_wakeup_5_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_113 = pdestMatch_113 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_12 = io_wakeup_5_valid & stateCond_113; // @[StatusArray.scala 129:16]
  wire  pdestMatch_112 = io_wakeup_4_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_112 = pdestMatch_112 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_12 = io_wakeup_4_valid & stateCond_112; // @[StatusArray.scala 129:16]
  wire  pdestMatch_109 = io_wakeup_1_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_109 = pdestMatch_109 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_12 = io_wakeup_1_valid & stateCond_109; // @[StatusArray.scala 129:16]
  wire  pdestMatch_108 = io_wakeup_0_bits_pdest == statusArrayNext_12_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_108 = pdestMatch_108 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_12 = io_wakeup_0_valid & stateCond_108; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_12 = {stateMatchVec_8_12,stateMatchVec_7_12,stateMatchVec_6_12,stateMatchVec_5_12,
    stateMatchVec_4_12,2'h0,stateMatchVec_1_12,stateMatchVec_0_12}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_12 = |_stateMatch_T_12; // @[StatusArray.scala 131:52]
  wire  updateVal_12_srcState_0 = updateVec_12_0 & io_update_0_data_srcState_0 | updateVec_12_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1396 = updateValid_12 ? updateVal_12_srcState_0 : statusArray_12_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_12_srcState_0 = stateWakeupEn_0_12 | _T_1396; // @[StatusArray.scala 236:50]
  wire  readyVecNext_12 = &statusArrayNext_12_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_13_1 = io_update_1_enable & io_update_1_addr[13]; // @[StatusArray.scala 148:57]
  wire  updateVec_13_0 = io_update_0_enable & io_update_0_addr[13]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_306 = {updateVec_13_1,updateVec_13_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_13 = |_T_306; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_738 = updateVec_13_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_739 = updateVec_13_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_13_psrc_0 = _updateStatus_T_738 | _updateStatus_T_739; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_13_psrc_0 = updateValid_13 ? updateVal_13_psrc_0 : statusArray_13_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_125 = io_wakeup_8_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_125 = pdestMatch_125 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_13 = io_wakeup_8_valid & stateCond_125; // @[StatusArray.scala 129:16]
  wire  pdestMatch_124 = io_wakeup_7_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_124 = pdestMatch_124 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_13 = io_wakeup_7_valid & stateCond_124; // @[StatusArray.scala 129:16]
  wire  pdestMatch_123 = io_wakeup_6_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_123 = pdestMatch_123 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_13 = io_wakeup_6_valid & stateCond_123; // @[StatusArray.scala 129:16]
  wire  pdestMatch_122 = io_wakeup_5_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_122 = pdestMatch_122 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_13 = io_wakeup_5_valid & stateCond_122; // @[StatusArray.scala 129:16]
  wire  pdestMatch_121 = io_wakeup_4_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_121 = pdestMatch_121 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_13 = io_wakeup_4_valid & stateCond_121; // @[StatusArray.scala 129:16]
  wire  pdestMatch_118 = io_wakeup_1_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_118 = pdestMatch_118 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_13 = io_wakeup_1_valid & stateCond_118; // @[StatusArray.scala 129:16]
  wire  pdestMatch_117 = io_wakeup_0_bits_pdest == statusArrayNext_13_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_117 = pdestMatch_117 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_13 = io_wakeup_0_valid & stateCond_117; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_13 = {stateMatchVec_8_13,stateMatchVec_7_13,stateMatchVec_6_13,stateMatchVec_5_13,
    stateMatchVec_4_13,2'h0,stateMatchVec_1_13,stateMatchVec_0_13}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_13 = |_stateMatch_T_13; // @[StatusArray.scala 131:52]
  wire  updateVal_13_srcState_0 = updateVec_13_0 & io_update_0_data_srcState_0 | updateVec_13_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1429 = updateValid_13 ? updateVal_13_srcState_0 : statusArray_13_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_13_srcState_0 = stateWakeupEn_0_13 | _T_1429; // @[StatusArray.scala 236:50]
  wire  readyVecNext_13 = &statusArrayNext_13_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_14_1 = io_update_1_enable & io_update_1_addr[14]; // @[StatusArray.scala 148:57]
  wire  updateVec_14_0 = io_update_0_enable & io_update_0_addr[14]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_310 = {updateVec_14_1,updateVec_14_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_14 = |_T_310; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_792 = updateVec_14_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_793 = updateVec_14_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_14_psrc_0 = _updateStatus_T_792 | _updateStatus_T_793; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_14_psrc_0 = updateValid_14 ? updateVal_14_psrc_0 : statusArray_14_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_134 = io_wakeup_8_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_134 = pdestMatch_134 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_14 = io_wakeup_8_valid & stateCond_134; // @[StatusArray.scala 129:16]
  wire  pdestMatch_133 = io_wakeup_7_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_133 = pdestMatch_133 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_14 = io_wakeup_7_valid & stateCond_133; // @[StatusArray.scala 129:16]
  wire  pdestMatch_132 = io_wakeup_6_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_132 = pdestMatch_132 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_14 = io_wakeup_6_valid & stateCond_132; // @[StatusArray.scala 129:16]
  wire  pdestMatch_131 = io_wakeup_5_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_131 = pdestMatch_131 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_14 = io_wakeup_5_valid & stateCond_131; // @[StatusArray.scala 129:16]
  wire  pdestMatch_130 = io_wakeup_4_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_130 = pdestMatch_130 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_14 = io_wakeup_4_valid & stateCond_130; // @[StatusArray.scala 129:16]
  wire  pdestMatch_127 = io_wakeup_1_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_127 = pdestMatch_127 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_14 = io_wakeup_1_valid & stateCond_127; // @[StatusArray.scala 129:16]
  wire  pdestMatch_126 = io_wakeup_0_bits_pdest == statusArrayNext_14_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_126 = pdestMatch_126 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_14 = io_wakeup_0_valid & stateCond_126; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_14 = {stateMatchVec_8_14,stateMatchVec_7_14,stateMatchVec_6_14,stateMatchVec_5_14,
    stateMatchVec_4_14,2'h0,stateMatchVec_1_14,stateMatchVec_0_14}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_14 = |_stateMatch_T_14; // @[StatusArray.scala 131:52]
  wire  updateVal_14_srcState_0 = updateVec_14_0 & io_update_0_data_srcState_0 | updateVec_14_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1462 = updateValid_14 ? updateVal_14_srcState_0 : statusArray_14_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_14_srcState_0 = stateWakeupEn_0_14 | _T_1462; // @[StatusArray.scala 236:50]
  wire  readyVecNext_14 = &statusArrayNext_14_srcState_0; // @[StatusArray.scala 61:38]
  wire  updateVec_15_1 = io_update_1_enable & io_update_1_addr[15]; // @[StatusArray.scala 148:57]
  wire  updateVec_15_0 = io_update_0_enable & io_update_0_addr[15]; // @[StatusArray.scala 148:57]
  wire [1:0] _T_314 = {updateVec_15_1,updateVec_15_0}; // @[StatusArray.scala 151:16]
  wire  updateValid_15 = |_T_314; // @[StatusArray.scala 151:23]
  wire [5:0] _updateStatus_T_846 = updateVec_15_0 ? io_update_0_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _updateStatus_T_847 = updateVec_15_1 ? io_update_1_data_psrc_0 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] updateVal_15_psrc_0 = _updateStatus_T_846 | _updateStatus_T_847; // @[Mux.scala 27:73]
  wire [5:0] statusArrayNext_15_psrc_0 = updateValid_15 ? updateVal_15_psrc_0 : statusArray_15_psrc_0; // @[StatusArray.scala 243:27]
  wire  pdestMatch_143 = io_wakeup_8_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_143 = pdestMatch_143 & io_wakeup_8_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_8_15 = io_wakeup_8_valid & stateCond_143; // @[StatusArray.scala 129:16]
  wire  pdestMatch_142 = io_wakeup_7_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_142 = pdestMatch_142 & io_wakeup_7_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_7_15 = io_wakeup_7_valid & stateCond_142; // @[StatusArray.scala 129:16]
  wire  pdestMatch_141 = io_wakeup_6_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_141 = pdestMatch_141 & io_wakeup_6_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_6_15 = io_wakeup_6_valid & stateCond_141; // @[StatusArray.scala 129:16]
  wire  pdestMatch_140 = io_wakeup_5_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_140 = pdestMatch_140 & io_wakeup_5_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_5_15 = io_wakeup_5_valid & stateCond_140; // @[StatusArray.scala 129:16]
  wire  pdestMatch_139 = io_wakeup_4_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_139 = pdestMatch_139 & io_wakeup_4_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_4_15 = io_wakeup_4_valid & stateCond_139; // @[StatusArray.scala 129:16]
  wire  pdestMatch_136 = io_wakeup_1_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_136 = pdestMatch_136 & io_wakeup_1_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_1_15 = io_wakeup_1_valid & stateCond_136; // @[StatusArray.scala 129:16]
  wire  pdestMatch_135 = io_wakeup_0_bits_pdest == statusArrayNext_15_psrc_0; // @[Bundle.scala 262:30]
  wire  stateCond_135 = pdestMatch_135 & io_wakeup_0_bits_ctrl_rfWen; // @[Bundle.scala 268:34]
  wire  stateMatchVec_0_15 = io_wakeup_0_valid & stateCond_135; // @[StatusArray.scala 129:16]
  wire [8:0] _stateMatch_T_15 = {stateMatchVec_8_15,stateMatchVec_7_15,stateMatchVec_6_15,stateMatchVec_5_15,
    stateMatchVec_4_15,2'h0,stateMatchVec_1_15,stateMatchVec_0_15}; // @[StatusArray.scala 131:45]
  wire  stateWakeupEn_0_15 = |_stateMatch_T_15; // @[StatusArray.scala 131:52]
  wire  updateVal_15_srcState_0 = updateVec_15_0 & io_update_0_data_srcState_0 | updateVec_15_1 &
    io_update_1_data_srcState_0; // @[Mux.scala 27:73]
  wire  _T_1495 = updateValid_15 ? updateVal_15_srcState_0 : statusArray_15_srcState_0; // @[StatusArray.scala 236:56]
  wire  statusArrayNext_15_srcState_0 = stateWakeupEn_0_15 | _T_1495; // @[StatusArray.scala 236:50]
  wire  readyVecNext_15 = &statusArrayNext_15_srcState_0; // @[StatusArray.scala 61:38]
  wire [4:0] _updateStatus_T_27 = updateVec__0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_28 = updateVec__1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_0_robIdx_value = _updateStatus_T_27 | _updateStatus_T_28; // @[Mux.scala 27:73]
  wire  updateVal_0_robIdx_flag = updateVec__0 & io_update_0_data_robIdx_flag | updateVec__1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_33 = updateVec__0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_34 = updateVec__1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_0_srcType_0 = _updateStatus_T_33 | _updateStatus_T_34; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_81 = updateVec_1_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_82 = updateVec_1_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_1_robIdx_value = _updateStatus_T_81 | _updateStatus_T_82; // @[Mux.scala 27:73]
  wire  updateVal_1_robIdx_flag = updateVec_1_0 & io_update_0_data_robIdx_flag | updateVec_1_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_87 = updateVec_1_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_88 = updateVec_1_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_1_srcType_0 = _updateStatus_T_87 | _updateStatus_T_88; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_135 = updateVec_2_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_136 = updateVec_2_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_2_robIdx_value = _updateStatus_T_135 | _updateStatus_T_136; // @[Mux.scala 27:73]
  wire  updateVal_2_robIdx_flag = updateVec_2_0 & io_update_0_data_robIdx_flag | updateVec_2_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_141 = updateVec_2_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_142 = updateVec_2_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_2_srcType_0 = _updateStatus_T_141 | _updateStatus_T_142; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_189 = updateVec_3_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_190 = updateVec_3_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_3_robIdx_value = _updateStatus_T_189 | _updateStatus_T_190; // @[Mux.scala 27:73]
  wire  updateVal_3_robIdx_flag = updateVec_3_0 & io_update_0_data_robIdx_flag | updateVec_3_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_195 = updateVec_3_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_196 = updateVec_3_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_3_srcType_0 = _updateStatus_T_195 | _updateStatus_T_196; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_243 = updateVec_4_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_244 = updateVec_4_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_4_robIdx_value = _updateStatus_T_243 | _updateStatus_T_244; // @[Mux.scala 27:73]
  wire  updateVal_4_robIdx_flag = updateVec_4_0 & io_update_0_data_robIdx_flag | updateVec_4_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_249 = updateVec_4_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_250 = updateVec_4_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_4_srcType_0 = _updateStatus_T_249 | _updateStatus_T_250; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_297 = updateVec_5_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_298 = updateVec_5_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_5_robIdx_value = _updateStatus_T_297 | _updateStatus_T_298; // @[Mux.scala 27:73]
  wire  updateVal_5_robIdx_flag = updateVec_5_0 & io_update_0_data_robIdx_flag | updateVec_5_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_303 = updateVec_5_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_304 = updateVec_5_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_5_srcType_0 = _updateStatus_T_303 | _updateStatus_T_304; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_351 = updateVec_6_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_352 = updateVec_6_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_6_robIdx_value = _updateStatus_T_351 | _updateStatus_T_352; // @[Mux.scala 27:73]
  wire  updateVal_6_robIdx_flag = updateVec_6_0 & io_update_0_data_robIdx_flag | updateVec_6_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_357 = updateVec_6_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_358 = updateVec_6_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_6_srcType_0 = _updateStatus_T_357 | _updateStatus_T_358; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_405 = updateVec_7_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_406 = updateVec_7_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_7_robIdx_value = _updateStatus_T_405 | _updateStatus_T_406; // @[Mux.scala 27:73]
  wire  updateVal_7_robIdx_flag = updateVec_7_0 & io_update_0_data_robIdx_flag | updateVec_7_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_411 = updateVec_7_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_412 = updateVec_7_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_7_srcType_0 = _updateStatus_T_411 | _updateStatus_T_412; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_459 = updateVec_8_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_460 = updateVec_8_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_8_robIdx_value = _updateStatus_T_459 | _updateStatus_T_460; // @[Mux.scala 27:73]
  wire  updateVal_8_robIdx_flag = updateVec_8_0 & io_update_0_data_robIdx_flag | updateVec_8_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_465 = updateVec_8_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_466 = updateVec_8_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_8_srcType_0 = _updateStatus_T_465 | _updateStatus_T_466; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_513 = updateVec_9_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_514 = updateVec_9_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_9_robIdx_value = _updateStatus_T_513 | _updateStatus_T_514; // @[Mux.scala 27:73]
  wire  updateVal_9_robIdx_flag = updateVec_9_0 & io_update_0_data_robIdx_flag | updateVec_9_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_519 = updateVec_9_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_520 = updateVec_9_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_9_srcType_0 = _updateStatus_T_519 | _updateStatus_T_520; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_567 = updateVec_10_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_568 = updateVec_10_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_10_robIdx_value = _updateStatus_T_567 | _updateStatus_T_568; // @[Mux.scala 27:73]
  wire  updateVal_10_robIdx_flag = updateVec_10_0 & io_update_0_data_robIdx_flag | updateVec_10_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_573 = updateVec_10_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_574 = updateVec_10_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_10_srcType_0 = _updateStatus_T_573 | _updateStatus_T_574; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_621 = updateVec_11_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_622 = updateVec_11_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_11_robIdx_value = _updateStatus_T_621 | _updateStatus_T_622; // @[Mux.scala 27:73]
  wire  updateVal_11_robIdx_flag = updateVec_11_0 & io_update_0_data_robIdx_flag | updateVec_11_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_627 = updateVec_11_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_628 = updateVec_11_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_11_srcType_0 = _updateStatus_T_627 | _updateStatus_T_628; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_675 = updateVec_12_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_676 = updateVec_12_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_12_robIdx_value = _updateStatus_T_675 | _updateStatus_T_676; // @[Mux.scala 27:73]
  wire  updateVal_12_robIdx_flag = updateVec_12_0 & io_update_0_data_robIdx_flag | updateVec_12_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_681 = updateVec_12_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_682 = updateVec_12_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_12_srcType_0 = _updateStatus_T_681 | _updateStatus_T_682; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_729 = updateVec_13_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_730 = updateVec_13_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_13_robIdx_value = _updateStatus_T_729 | _updateStatus_T_730; // @[Mux.scala 27:73]
  wire  updateVal_13_robIdx_flag = updateVec_13_0 & io_update_0_data_robIdx_flag | updateVec_13_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_735 = updateVec_13_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_736 = updateVec_13_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_13_srcType_0 = _updateStatus_T_735 | _updateStatus_T_736; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_783 = updateVec_14_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_784 = updateVec_14_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_14_robIdx_value = _updateStatus_T_783 | _updateStatus_T_784; // @[Mux.scala 27:73]
  wire  updateVal_14_robIdx_flag = updateVec_14_0 & io_update_0_data_robIdx_flag | updateVec_14_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_789 = updateVec_14_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_790 = updateVec_14_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_14_srcType_0 = _updateStatus_T_789 | _updateStatus_T_790; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_837 = updateVec_15_0 ? io_update_0_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _updateStatus_T_838 = updateVec_15_1 ? io_update_1_data_robIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] updateVal_15_robIdx_value = _updateStatus_T_837 | _updateStatus_T_838; // @[Mux.scala 27:73]
  wire  updateVal_15_robIdx_flag = updateVec_15_0 & io_update_0_data_robIdx_flag | updateVec_15_1 &
    io_update_1_data_robIdx_flag; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_843 = updateVec_15_0 ? io_update_0_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _updateStatus_T_844 = updateVec_15_1 ? io_update_1_data_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] updateVal_15_srcType_0 = _updateStatus_T_843 | _updateStatus_T_844; // @[Mux.scala 27:73]
  wire  mask__0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire  mask__4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[0]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_324 = {mask__4,mask__3,mask__2,mask__1,mask__0}; // @[StatusArray.scala 139:63]
  wire  deqValid = |_T_324; // @[StatusArray.scala 140:32]
  wire  xs_0 = mask__0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1 = mask__1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2 = mask__2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3 = mask__3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4 = mask__4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_328 = xs_0 | xs_1 | (xs_2 | (xs_3 | xs_4)); // @[ParallelMux.scala 36:53]
  wire  mask_1_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire  mask_1_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[1]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_365 = {mask_1_4,mask_1_3,mask_1_2,mask_1_1,mask_1_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_1 = |_T_365; // @[StatusArray.scala 140:32]
  wire  xs_0_1 = mask_1_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_1 = mask_1_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_1 = mask_1_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_1 = mask_1_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_1 = mask_1_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_369 = xs_0_1 | xs_1_1 | (xs_2_1 | (xs_3_1 | xs_4_1)); // @[ParallelMux.scala 36:53]
  wire  mask_2_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire  mask_2_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[2]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_406 = {mask_2_4,mask_2_3,mask_2_2,mask_2_1,mask_2_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_2 = |_T_406; // @[StatusArray.scala 140:32]
  wire  xs_0_2 = mask_2_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_2 = mask_2_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_2 = mask_2_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_2 = mask_2_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_2 = mask_2_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_410 = xs_0_2 | xs_1_2 | (xs_2_2 | (xs_3_2 | xs_4_2)); // @[ParallelMux.scala 36:53]
  wire  mask_3_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire  mask_3_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[3]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_447 = {mask_3_4,mask_3_3,mask_3_2,mask_3_1,mask_3_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_3 = |_T_447; // @[StatusArray.scala 140:32]
  wire  xs_0_3 = mask_3_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_3 = mask_3_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_3 = mask_3_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_3 = mask_3_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_3 = mask_3_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_451 = xs_0_3 | xs_1_3 | (xs_2_3 | (xs_3_3 | xs_4_3)); // @[ParallelMux.scala 36:53]
  wire  mask_4_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire  mask_4_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[4]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_488 = {mask_4_4,mask_4_3,mask_4_2,mask_4_1,mask_4_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_4 = |_T_488; // @[StatusArray.scala 140:32]
  wire  xs_0_4 = mask_4_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_4 = mask_4_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_4 = mask_4_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_4 = mask_4_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_4 = mask_4_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_492 = xs_0_4 | xs_1_4 | (xs_2_4 | (xs_3_4 | xs_4_4)); // @[ParallelMux.scala 36:53]
  wire  mask_5_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire  mask_5_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[5]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_529 = {mask_5_4,mask_5_3,mask_5_2,mask_5_1,mask_5_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_5 = |_T_529; // @[StatusArray.scala 140:32]
  wire  xs_0_5 = mask_5_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_5 = mask_5_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_5 = mask_5_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_5 = mask_5_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_5 = mask_5_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_533 = xs_0_5 | xs_1_5 | (xs_2_5 | (xs_3_5 | xs_4_5)); // @[ParallelMux.scala 36:53]
  wire  mask_6_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire  mask_6_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[6]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_570 = {mask_6_4,mask_6_3,mask_6_2,mask_6_1,mask_6_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_6 = |_T_570; // @[StatusArray.scala 140:32]
  wire  xs_0_6 = mask_6_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_6 = mask_6_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_6 = mask_6_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_6 = mask_6_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_6 = mask_6_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_574 = xs_0_6 | xs_1_6 | (xs_2_6 | (xs_3_6 | xs_4_6)); // @[ParallelMux.scala 36:53]
  wire  mask_7_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire  mask_7_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[7]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_611 = {mask_7_4,mask_7_3,mask_7_2,mask_7_1,mask_7_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_7 = |_T_611; // @[StatusArray.scala 140:32]
  wire  xs_0_7 = mask_7_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_7 = mask_7_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_7 = mask_7_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_7 = mask_7_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_7 = mask_7_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_615 = xs_0_7 | xs_1_7 | (xs_2_7 | (xs_3_7 | xs_4_7)); // @[ParallelMux.scala 36:53]
  wire  mask_8_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire  mask_8_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[8]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_652 = {mask_8_4,mask_8_3,mask_8_2,mask_8_1,mask_8_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_8 = |_T_652; // @[StatusArray.scala 140:32]
  wire  xs_0_8 = mask_8_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_8 = mask_8_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_8 = mask_8_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_8 = mask_8_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_8 = mask_8_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_656 = xs_0_8 | xs_1_8 | (xs_2_8 | (xs_3_8 | xs_4_8)); // @[ParallelMux.scala 36:53]
  wire  mask_9_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire  mask_9_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[9]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_693 = {mask_9_4,mask_9_3,mask_9_2,mask_9_1,mask_9_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_9 = |_T_693; // @[StatusArray.scala 140:32]
  wire  xs_0_9 = mask_9_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_9 = mask_9_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_9 = mask_9_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_9 = mask_9_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_9 = mask_9_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_697 = xs_0_9 | xs_1_9 | (xs_2_9 | (xs_3_9 | xs_4_9)); // @[ParallelMux.scala 36:53]
  wire  mask_10_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire  mask_10_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[10]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_734 = {mask_10_4,mask_10_3,mask_10_2,mask_10_1,mask_10_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_10 = |_T_734; // @[StatusArray.scala 140:32]
  wire  xs_0_10 = mask_10_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_10 = mask_10_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_10 = mask_10_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_10 = mask_10_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_10 = mask_10_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_738 = xs_0_10 | xs_1_10 | (xs_2_10 | (xs_3_10 | xs_4_10)); // @[ParallelMux.scala 36:53]
  wire  mask_11_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire  mask_11_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[11]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_775 = {mask_11_4,mask_11_3,mask_11_2,mask_11_1,mask_11_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_11 = |_T_775; // @[StatusArray.scala 140:32]
  wire  xs_0_11 = mask_11_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_11 = mask_11_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_11 = mask_11_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_11 = mask_11_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_11 = mask_11_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_779 = xs_0_11 | xs_1_11 | (xs_2_11 | (xs_3_11 | xs_4_11)); // @[ParallelMux.scala 36:53]
  wire  mask_12_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire  mask_12_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[12]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_816 = {mask_12_4,mask_12_3,mask_12_2,mask_12_1,mask_12_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_12 = |_T_816; // @[StatusArray.scala 140:32]
  wire  xs_0_12 = mask_12_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_12 = mask_12_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_12 = mask_12_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_12 = mask_12_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_12 = mask_12_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_820 = xs_0_12 | xs_1_12 | (xs_2_12 | (xs_3_12 | xs_4_12)); // @[ParallelMux.scala 36:53]
  wire  mask_13_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire  mask_13_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[13]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_857 = {mask_13_4,mask_13_3,mask_13_2,mask_13_1,mask_13_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_13 = |_T_857; // @[StatusArray.scala 140:32]
  wire  xs_0_13 = mask_13_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_13 = mask_13_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_13 = mask_13_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_13 = mask_13_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_13 = mask_13_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_861 = xs_0_13 | xs_1_13 | (xs_2_13 | (xs_3_13 | xs_4_13)); // @[ParallelMux.scala 36:53]
  wire  mask_14_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire  mask_14_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[14]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_898 = {mask_14_4,mask_14_3,mask_14_2,mask_14_1,mask_14_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_14 = |_T_898; // @[StatusArray.scala 140:32]
  wire  xs_0_14 = mask_14_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_14 = mask_14_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_14 = mask_14_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_14 = mask_14_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_14 = mask_14_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_902 = xs_0_14 | xs_1_14 | (xs_2_14 | (xs_3_14 | xs_4_14)); // @[ParallelMux.scala 36:53]
  wire  mask_15_0 = io_deqResp_0_valid & io_deqResp_0_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_1 = io_deqResp_1_valid & io_deqResp_1_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_2 = io_deqResp_2_valid & io_deqResp_2_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_3 = io_deqResp_3_valid & io_deqResp_3_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire  mask_15_4 = io_deqResp_4_valid & io_deqResp_4_bits_rsMask[15]; // @[StatusArray.scala 138:58]
  wire [4:0] _T_939 = {mask_15_4,mask_15_3,mask_15_2,mask_15_1,mask_15_0}; // @[StatusArray.scala 139:63]
  wire  deqValid_15 = |_T_939; // @[StatusArray.scala 140:32]
  wire  xs_0_15 = mask_15_0 & io_deqResp_0_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_1_15 = mask_15_1 & io_deqResp_1_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_2_15 = mask_15_2 & io_deqResp_2_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_3_15 = mask_15_3 & io_deqResp_3_bits_success; // @[ParallelMux.scala 64:44]
  wire  xs_4_15 = mask_15_4 & io_deqResp_4_bits_success; // @[ParallelMux.scala 64:44]
  wire  _T_943 = xs_0_15 | xs_1_15 | (xs_2_15 | (xs_3_15 | xs_4_15)); // @[ParallelMux.scala 36:53]
  wire  realValid = updateValid_0 | statusArrayValid_0; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_0_robIdx_flag = updateValid_0 ? updateVal_0_robIdx_flag : statusArray_0_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_0_robIdx_value = updateValid_0 ? updateVal_0_robIdx_value : statusArray_0_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_1 = {statusArrayNext_0_robIdx_flag,statusArrayNext_0_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire [5:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:70]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag = statusArrayNext_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare = statusArrayNext_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 123:20]
  wire  _flushedVec_0_T_1 = deqValid & _T_328; // @[StatusArray.scala 166:64]
  wire  flushedVec_0 = realValid & isFlushed | deqValid & _T_328; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_0 = realValid & ~(isFlushed | _flushedVec_0_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_0_srcType_0 = updateValid_0 ? updateVal_0_srcType_0 : statusArray_0_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T = statusArrayNext_0_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond = pdestMatch & (rfDataMatch & _dataCond_T); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0 = io_wakeup_0_valid & dataCond; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_1 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_1 = pdestMatch_1 & (rfDataMatch_1 & _dataCond_T); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1 = io_wakeup_1_valid & dataCond_1; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_4 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_4 = pdestMatch_4 & (rfDataMatch_4 & _dataCond_T); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4 = io_wakeup_4_valid & dataCond_4; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_5 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_5 = pdestMatch_5 & (rfDataMatch_5 & _dataCond_T); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5 = io_wakeup_5_valid & dataCond_5; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_6 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_6 = pdestMatch_6 & (rfDataMatch_6 & _dataCond_T); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6 = io_wakeup_6_valid & dataCond_6; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_7 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_7 = pdestMatch_7 & (rfDataMatch_7 & _dataCond_T); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7 = io_wakeup_7_valid & dataCond_7; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_8 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_0_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_8 = pdestMatch_8 & (rfDataMatch_8 & _dataCond_T); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8 = io_wakeup_8_valid & dataCond_8; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0 = {dataMatchVec_8,dataMatchVec_7,dataMatchVec_6,dataMatchVec_5,dataMatchVec_4,2'h0,
    dataMatchVec_1,dataMatchVec_0}; // @[StatusArray.scala 132:43]
  wire  realValid_1 = updateValid_1 | statusArrayValid_1; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_1_robIdx_flag = updateValid_1 ? updateVal_1_robIdx_flag : statusArray_1_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_1_robIdx_value = updateValid_1 ? updateVal_1_robIdx_value : statusArray_1_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_5 = {statusArrayNext_1_robIdx_flag,statusArrayNext_1_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_7 = _isFlushed_flushItself_T_5 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_1 = io_redirect_bits_level & _isFlushed_flushItself_T_7; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_1 = statusArrayNext_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_1 = statusArrayNext_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_2 = isFlushed_differentFlag_1 ^ isFlushed_compare_1; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_1 = io_redirect_valid & (isFlushed_flushItself_1 | _isFlushed_T_2); // @[Rob.scala 123:20]
  wire  _flushedVec_1_T_1 = deqValid_1 & _T_369; // @[StatusArray.scala 166:64]
  wire  flushedVec_1 = realValid_1 & isFlushed_1 | deqValid_1 & _T_369; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_1 = realValid_1 & ~(isFlushed_1 | _flushedVec_1_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_1_srcType_0 = updateValid_1 ? updateVal_1_srcType_0 : statusArray_1_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_9 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_45 = statusArrayNext_1_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_9 = pdestMatch_9 & (rfDataMatch_9 & _dataCond_T_45); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_1 = io_wakeup_0_valid & dataCond_9; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_10 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_10 = pdestMatch_10 & (rfDataMatch_10 & _dataCond_T_45); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_1 = io_wakeup_1_valid & dataCond_10; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_13 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_13 = pdestMatch_13 & (rfDataMatch_13 & _dataCond_T_45); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_1 = io_wakeup_4_valid & dataCond_13; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_14 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_14 = pdestMatch_14 & (rfDataMatch_14 & _dataCond_T_45); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_1 = io_wakeup_5_valid & dataCond_14; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_15 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_15 = pdestMatch_15 & (rfDataMatch_15 & _dataCond_T_45); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_1 = io_wakeup_6_valid & dataCond_15; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_16 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_16 = pdestMatch_16 & (rfDataMatch_16 & _dataCond_T_45); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_1 = io_wakeup_7_valid & dataCond_16; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_17 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_1_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_17 = pdestMatch_17 & (rfDataMatch_17 & _dataCond_T_45); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_1 = io_wakeup_8_valid & dataCond_17; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_1 = {dataMatchVec_8_1,dataMatchVec_7_1,dataMatchVec_6_1,dataMatchVec_5_1,dataMatchVec_4_1
    ,2'h0,dataMatchVec_1_1,dataMatchVec_0_1}; // @[StatusArray.scala 132:43]
  wire  realValid_2 = updateValid_2 | statusArrayValid_2; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_2_robIdx_flag = updateValid_2 ? updateVal_2_robIdx_flag : statusArray_2_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_2_robIdx_value = updateValid_2 ? updateVal_2_robIdx_value : statusArray_2_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_9 = {statusArrayNext_2_robIdx_flag,statusArrayNext_2_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_11 = _isFlushed_flushItself_T_9 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_2 = io_redirect_bits_level & _isFlushed_flushItself_T_11; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_2 = statusArrayNext_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_2 = statusArrayNext_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_4 = isFlushed_differentFlag_2 ^ isFlushed_compare_2; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_2 = io_redirect_valid & (isFlushed_flushItself_2 | _isFlushed_T_4); // @[Rob.scala 123:20]
  wire  _flushedVec_2_T_1 = deqValid_2 & _T_410; // @[StatusArray.scala 166:64]
  wire  flushedVec_2 = realValid_2 & isFlushed_2 | deqValid_2 & _T_410; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_2 = realValid_2 & ~(isFlushed_2 | _flushedVec_2_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_2_srcType_0 = updateValid_2 ? updateVal_2_srcType_0 : statusArray_2_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_18 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_90 = statusArrayNext_2_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_18 = pdestMatch_18 & (rfDataMatch_18 & _dataCond_T_90); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_2 = io_wakeup_0_valid & dataCond_18; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_19 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_19 = pdestMatch_19 & (rfDataMatch_19 & _dataCond_T_90); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_2 = io_wakeup_1_valid & dataCond_19; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_22 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_22 = pdestMatch_22 & (rfDataMatch_22 & _dataCond_T_90); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_2 = io_wakeup_4_valid & dataCond_22; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_23 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_23 = pdestMatch_23 & (rfDataMatch_23 & _dataCond_T_90); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_2 = io_wakeup_5_valid & dataCond_23; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_24 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_24 = pdestMatch_24 & (rfDataMatch_24 & _dataCond_T_90); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_2 = io_wakeup_6_valid & dataCond_24; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_25 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_25 = pdestMatch_25 & (rfDataMatch_25 & _dataCond_T_90); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_2 = io_wakeup_7_valid & dataCond_25; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_26 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_2_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_26 = pdestMatch_26 & (rfDataMatch_26 & _dataCond_T_90); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_2 = io_wakeup_8_valid & dataCond_26; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_2 = {dataMatchVec_8_2,dataMatchVec_7_2,dataMatchVec_6_2,dataMatchVec_5_2,dataMatchVec_4_2
    ,2'h0,dataMatchVec_1_2,dataMatchVec_0_2}; // @[StatusArray.scala 132:43]
  wire  realValid_3 = updateValid_3 | statusArrayValid_3; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_3_robIdx_flag = updateValid_3 ? updateVal_3_robIdx_flag : statusArray_3_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_3_robIdx_value = updateValid_3 ? updateVal_3_robIdx_value : statusArray_3_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_13 = {statusArrayNext_3_robIdx_flag,statusArrayNext_3_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_15 = _isFlushed_flushItself_T_13 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_3 = io_redirect_bits_level & _isFlushed_flushItself_T_15; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_3 = statusArrayNext_3_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_3 = statusArrayNext_3_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_6 = isFlushed_differentFlag_3 ^ isFlushed_compare_3; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_3 = io_redirect_valid & (isFlushed_flushItself_3 | _isFlushed_T_6); // @[Rob.scala 123:20]
  wire  _flushedVec_3_T_1 = deqValid_3 & _T_451; // @[StatusArray.scala 166:64]
  wire  flushedVec_3 = realValid_3 & isFlushed_3 | deqValid_3 & _T_451; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_3 = realValid_3 & ~(isFlushed_3 | _flushedVec_3_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_3_srcType_0 = updateValid_3 ? updateVal_3_srcType_0 : statusArray_3_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_27 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_135 = statusArrayNext_3_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_27 = pdestMatch_27 & (rfDataMatch_27 & _dataCond_T_135); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_3 = io_wakeup_0_valid & dataCond_27; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_28 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_28 = pdestMatch_28 & (rfDataMatch_28 & _dataCond_T_135); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_3 = io_wakeup_1_valid & dataCond_28; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_31 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_31 = pdestMatch_31 & (rfDataMatch_31 & _dataCond_T_135); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_3 = io_wakeup_4_valid & dataCond_31; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_32 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_32 = pdestMatch_32 & (rfDataMatch_32 & _dataCond_T_135); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_3 = io_wakeup_5_valid & dataCond_32; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_33 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_33 = pdestMatch_33 & (rfDataMatch_33 & _dataCond_T_135); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_3 = io_wakeup_6_valid & dataCond_33; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_34 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_34 = pdestMatch_34 & (rfDataMatch_34 & _dataCond_T_135); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_3 = io_wakeup_7_valid & dataCond_34; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_35 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_3_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_35 = pdestMatch_35 & (rfDataMatch_35 & _dataCond_T_135); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_3 = io_wakeup_8_valid & dataCond_35; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_3 = {dataMatchVec_8_3,dataMatchVec_7_3,dataMatchVec_6_3,dataMatchVec_5_3,dataMatchVec_4_3
    ,2'h0,dataMatchVec_1_3,dataMatchVec_0_3}; // @[StatusArray.scala 132:43]
  wire  realValid_4 = updateValid_4 | statusArrayValid_4; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_4_robIdx_flag = updateValid_4 ? updateVal_4_robIdx_flag : statusArray_4_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_4_robIdx_value = updateValid_4 ? updateVal_4_robIdx_value : statusArray_4_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_17 = {statusArrayNext_4_robIdx_flag,statusArrayNext_4_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_19 = _isFlushed_flushItself_T_17 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_4 = io_redirect_bits_level & _isFlushed_flushItself_T_19; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_4 = statusArrayNext_4_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_4 = statusArrayNext_4_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_8 = isFlushed_differentFlag_4 ^ isFlushed_compare_4; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_4 = io_redirect_valid & (isFlushed_flushItself_4 | _isFlushed_T_8); // @[Rob.scala 123:20]
  wire  _flushedVec_4_T_1 = deqValid_4 & _T_492; // @[StatusArray.scala 166:64]
  wire  flushedVec_4 = realValid_4 & isFlushed_4 | deqValid_4 & _T_492; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_4 = realValid_4 & ~(isFlushed_4 | _flushedVec_4_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_4_srcType_0 = updateValid_4 ? updateVal_4_srcType_0 : statusArray_4_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_36 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_180 = statusArrayNext_4_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_36 = pdestMatch_36 & (rfDataMatch_36 & _dataCond_T_180); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_4 = io_wakeup_0_valid & dataCond_36; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_37 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_37 = pdestMatch_37 & (rfDataMatch_37 & _dataCond_T_180); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_4 = io_wakeup_1_valid & dataCond_37; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_40 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_40 = pdestMatch_40 & (rfDataMatch_40 & _dataCond_T_180); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_4 = io_wakeup_4_valid & dataCond_40; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_41 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_41 = pdestMatch_41 & (rfDataMatch_41 & _dataCond_T_180); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_4 = io_wakeup_5_valid & dataCond_41; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_42 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_42 = pdestMatch_42 & (rfDataMatch_42 & _dataCond_T_180); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_4 = io_wakeup_6_valid & dataCond_42; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_43 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_43 = pdestMatch_43 & (rfDataMatch_43 & _dataCond_T_180); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_4 = io_wakeup_7_valid & dataCond_43; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_44 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_4_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_44 = pdestMatch_44 & (rfDataMatch_44 & _dataCond_T_180); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_4 = io_wakeup_8_valid & dataCond_44; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_4 = {dataMatchVec_8_4,dataMatchVec_7_4,dataMatchVec_6_4,dataMatchVec_5_4,dataMatchVec_4_4
    ,2'h0,dataMatchVec_1_4,dataMatchVec_0_4}; // @[StatusArray.scala 132:43]
  wire  realValid_5 = updateValid_5 | statusArrayValid_5; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_5_robIdx_flag = updateValid_5 ? updateVal_5_robIdx_flag : statusArray_5_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_5_robIdx_value = updateValid_5 ? updateVal_5_robIdx_value : statusArray_5_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_21 = {statusArrayNext_5_robIdx_flag,statusArrayNext_5_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_23 = _isFlushed_flushItself_T_21 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_5 = io_redirect_bits_level & _isFlushed_flushItself_T_23; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_5 = statusArrayNext_5_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_5 = statusArrayNext_5_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_10 = isFlushed_differentFlag_5 ^ isFlushed_compare_5; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_5 = io_redirect_valid & (isFlushed_flushItself_5 | _isFlushed_T_10); // @[Rob.scala 123:20]
  wire  _flushedVec_5_T_1 = deqValid_5 & _T_533; // @[StatusArray.scala 166:64]
  wire  flushedVec_5 = realValid_5 & isFlushed_5 | deqValid_5 & _T_533; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_5 = realValid_5 & ~(isFlushed_5 | _flushedVec_5_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_5_srcType_0 = updateValid_5 ? updateVal_5_srcType_0 : statusArray_5_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_45 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_225 = statusArrayNext_5_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_45 = pdestMatch_45 & (rfDataMatch_45 & _dataCond_T_225); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_5 = io_wakeup_0_valid & dataCond_45; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_46 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_46 = pdestMatch_46 & (rfDataMatch_46 & _dataCond_T_225); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_5 = io_wakeup_1_valid & dataCond_46; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_49 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_49 = pdestMatch_49 & (rfDataMatch_49 & _dataCond_T_225); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_5 = io_wakeup_4_valid & dataCond_49; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_50 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_50 = pdestMatch_50 & (rfDataMatch_50 & _dataCond_T_225); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_5 = io_wakeup_5_valid & dataCond_50; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_51 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_51 = pdestMatch_51 & (rfDataMatch_51 & _dataCond_T_225); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_5 = io_wakeup_6_valid & dataCond_51; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_52 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_52 = pdestMatch_52 & (rfDataMatch_52 & _dataCond_T_225); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_5 = io_wakeup_7_valid & dataCond_52; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_53 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_5_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_53 = pdestMatch_53 & (rfDataMatch_53 & _dataCond_T_225); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_5 = io_wakeup_8_valid & dataCond_53; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_5 = {dataMatchVec_8_5,dataMatchVec_7_5,dataMatchVec_6_5,dataMatchVec_5_5,dataMatchVec_4_5
    ,2'h0,dataMatchVec_1_5,dataMatchVec_0_5}; // @[StatusArray.scala 132:43]
  wire  realValid_6 = updateValid_6 | statusArrayValid_6; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_6_robIdx_flag = updateValid_6 ? updateVal_6_robIdx_flag : statusArray_6_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_6_robIdx_value = updateValid_6 ? updateVal_6_robIdx_value : statusArray_6_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_25 = {statusArrayNext_6_robIdx_flag,statusArrayNext_6_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_27 = _isFlushed_flushItself_T_25 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_6 = io_redirect_bits_level & _isFlushed_flushItself_T_27; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_6 = statusArrayNext_6_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_6 = statusArrayNext_6_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_12 = isFlushed_differentFlag_6 ^ isFlushed_compare_6; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_6 = io_redirect_valid & (isFlushed_flushItself_6 | _isFlushed_T_12); // @[Rob.scala 123:20]
  wire  _flushedVec_6_T_1 = deqValid_6 & _T_574; // @[StatusArray.scala 166:64]
  wire  flushedVec_6 = realValid_6 & isFlushed_6 | deqValid_6 & _T_574; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_6 = realValid_6 & ~(isFlushed_6 | _flushedVec_6_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_6_srcType_0 = updateValid_6 ? updateVal_6_srcType_0 : statusArray_6_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_54 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_270 = statusArrayNext_6_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_54 = pdestMatch_54 & (rfDataMatch_54 & _dataCond_T_270); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_6 = io_wakeup_0_valid & dataCond_54; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_55 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_55 = pdestMatch_55 & (rfDataMatch_55 & _dataCond_T_270); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_6 = io_wakeup_1_valid & dataCond_55; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_58 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_58 = pdestMatch_58 & (rfDataMatch_58 & _dataCond_T_270); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_6 = io_wakeup_4_valid & dataCond_58; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_59 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_59 = pdestMatch_59 & (rfDataMatch_59 & _dataCond_T_270); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_6 = io_wakeup_5_valid & dataCond_59; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_60 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_60 = pdestMatch_60 & (rfDataMatch_60 & _dataCond_T_270); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_6 = io_wakeup_6_valid & dataCond_60; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_61 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_61 = pdestMatch_61 & (rfDataMatch_61 & _dataCond_T_270); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_6 = io_wakeup_7_valid & dataCond_61; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_62 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_6_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_62 = pdestMatch_62 & (rfDataMatch_62 & _dataCond_T_270); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_6 = io_wakeup_8_valid & dataCond_62; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_6 = {dataMatchVec_8_6,dataMatchVec_7_6,dataMatchVec_6_6,dataMatchVec_5_6,dataMatchVec_4_6
    ,2'h0,dataMatchVec_1_6,dataMatchVec_0_6}; // @[StatusArray.scala 132:43]
  wire  realValid_7 = updateValid_7 | statusArrayValid_7; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_7_robIdx_flag = updateValid_7 ? updateVal_7_robIdx_flag : statusArray_7_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_7_robIdx_value = updateValid_7 ? updateVal_7_robIdx_value : statusArray_7_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_29 = {statusArrayNext_7_robIdx_flag,statusArrayNext_7_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_31 = _isFlushed_flushItself_T_29 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_7 = io_redirect_bits_level & _isFlushed_flushItself_T_31; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_7 = statusArrayNext_7_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_7 = statusArrayNext_7_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_14 = isFlushed_differentFlag_7 ^ isFlushed_compare_7; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_7 = io_redirect_valid & (isFlushed_flushItself_7 | _isFlushed_T_14); // @[Rob.scala 123:20]
  wire  _flushedVec_7_T_1 = deqValid_7 & _T_615; // @[StatusArray.scala 166:64]
  wire  flushedVec_7 = realValid_7 & isFlushed_7 | deqValid_7 & _T_615; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_7 = realValid_7 & ~(isFlushed_7 | _flushedVec_7_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_7_srcType_0 = updateValid_7 ? updateVal_7_srcType_0 : statusArray_7_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_63 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_315 = statusArrayNext_7_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_63 = pdestMatch_63 & (rfDataMatch_63 & _dataCond_T_315); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_7 = io_wakeup_0_valid & dataCond_63; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_64 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_64 = pdestMatch_64 & (rfDataMatch_64 & _dataCond_T_315); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_7 = io_wakeup_1_valid & dataCond_64; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_67 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_67 = pdestMatch_67 & (rfDataMatch_67 & _dataCond_T_315); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_7 = io_wakeup_4_valid & dataCond_67; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_68 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_68 = pdestMatch_68 & (rfDataMatch_68 & _dataCond_T_315); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_7 = io_wakeup_5_valid & dataCond_68; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_69 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_69 = pdestMatch_69 & (rfDataMatch_69 & _dataCond_T_315); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_7 = io_wakeup_6_valid & dataCond_69; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_70 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_70 = pdestMatch_70 & (rfDataMatch_70 & _dataCond_T_315); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_7 = io_wakeup_7_valid & dataCond_70; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_71 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_7_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_71 = pdestMatch_71 & (rfDataMatch_71 & _dataCond_T_315); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_7 = io_wakeup_8_valid & dataCond_71; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_7 = {dataMatchVec_8_7,dataMatchVec_7_7,dataMatchVec_6_7,dataMatchVec_5_7,dataMatchVec_4_7
    ,2'h0,dataMatchVec_1_7,dataMatchVec_0_7}; // @[StatusArray.scala 132:43]
  wire  realValid_8 = updateValid_8 | statusArrayValid_8; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_8_robIdx_flag = updateValid_8 ? updateVal_8_robIdx_flag : statusArray_8_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_8_robIdx_value = updateValid_8 ? updateVal_8_robIdx_value : statusArray_8_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_33 = {statusArrayNext_8_robIdx_flag,statusArrayNext_8_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_35 = _isFlushed_flushItself_T_33 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_8 = io_redirect_bits_level & _isFlushed_flushItself_T_35; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_8 = statusArrayNext_8_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_8 = statusArrayNext_8_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_16 = isFlushed_differentFlag_8 ^ isFlushed_compare_8; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_8 = io_redirect_valid & (isFlushed_flushItself_8 | _isFlushed_T_16); // @[Rob.scala 123:20]
  wire  _flushedVec_8_T_1 = deqValid_8 & _T_656; // @[StatusArray.scala 166:64]
  wire  flushedVec_8 = realValid_8 & isFlushed_8 | deqValid_8 & _T_656; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_8 = realValid_8 & ~(isFlushed_8 | _flushedVec_8_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_8_srcType_0 = updateValid_8 ? updateVal_8_srcType_0 : statusArray_8_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_72 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_360 = statusArrayNext_8_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_72 = pdestMatch_72 & (rfDataMatch_72 & _dataCond_T_360); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_8 = io_wakeup_0_valid & dataCond_72; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_73 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_73 = pdestMatch_73 & (rfDataMatch_73 & _dataCond_T_360); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_8 = io_wakeup_1_valid & dataCond_73; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_76 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_76 = pdestMatch_76 & (rfDataMatch_76 & _dataCond_T_360); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_8 = io_wakeup_4_valid & dataCond_76; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_77 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_77 = pdestMatch_77 & (rfDataMatch_77 & _dataCond_T_360); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_8 = io_wakeup_5_valid & dataCond_77; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_78 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_78 = pdestMatch_78 & (rfDataMatch_78 & _dataCond_T_360); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_8 = io_wakeup_6_valid & dataCond_78; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_79 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_79 = pdestMatch_79 & (rfDataMatch_79 & _dataCond_T_360); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_8 = io_wakeup_7_valid & dataCond_79; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_80 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_8_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_80 = pdestMatch_80 & (rfDataMatch_80 & _dataCond_T_360); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_8 = io_wakeup_8_valid & dataCond_80; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_8 = {dataMatchVec_8_8,dataMatchVec_7_8,dataMatchVec_6_8,dataMatchVec_5_8,dataMatchVec_4_8
    ,2'h0,dataMatchVec_1_8,dataMatchVec_0_8}; // @[StatusArray.scala 132:43]
  wire  realValid_9 = updateValid_9 | statusArrayValid_9; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_9_robIdx_flag = updateValid_9 ? updateVal_9_robIdx_flag : statusArray_9_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_9_robIdx_value = updateValid_9 ? updateVal_9_robIdx_value : statusArray_9_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_37 = {statusArrayNext_9_robIdx_flag,statusArrayNext_9_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_39 = _isFlushed_flushItself_T_37 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_9 = io_redirect_bits_level & _isFlushed_flushItself_T_39; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_9 = statusArrayNext_9_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_9 = statusArrayNext_9_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_18 = isFlushed_differentFlag_9 ^ isFlushed_compare_9; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_9 = io_redirect_valid & (isFlushed_flushItself_9 | _isFlushed_T_18); // @[Rob.scala 123:20]
  wire  _flushedVec_9_T_1 = deqValid_9 & _T_697; // @[StatusArray.scala 166:64]
  wire  flushedVec_9 = realValid_9 & isFlushed_9 | deqValid_9 & _T_697; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_9 = realValid_9 & ~(isFlushed_9 | _flushedVec_9_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_9_srcType_0 = updateValid_9 ? updateVal_9_srcType_0 : statusArray_9_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_81 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_405 = statusArrayNext_9_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_81 = pdestMatch_81 & (rfDataMatch_81 & _dataCond_T_405); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_9 = io_wakeup_0_valid & dataCond_81; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_82 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_82 = pdestMatch_82 & (rfDataMatch_82 & _dataCond_T_405); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_9 = io_wakeup_1_valid & dataCond_82; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_85 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_85 = pdestMatch_85 & (rfDataMatch_85 & _dataCond_T_405); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_9 = io_wakeup_4_valid & dataCond_85; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_86 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_86 = pdestMatch_86 & (rfDataMatch_86 & _dataCond_T_405); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_9 = io_wakeup_5_valid & dataCond_86; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_87 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_87 = pdestMatch_87 & (rfDataMatch_87 & _dataCond_T_405); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_9 = io_wakeup_6_valid & dataCond_87; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_88 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_88 = pdestMatch_88 & (rfDataMatch_88 & _dataCond_T_405); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_9 = io_wakeup_7_valid & dataCond_88; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_89 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_9_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_89 = pdestMatch_89 & (rfDataMatch_89 & _dataCond_T_405); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_9 = io_wakeup_8_valid & dataCond_89; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_9 = {dataMatchVec_8_9,dataMatchVec_7_9,dataMatchVec_6_9,dataMatchVec_5_9,dataMatchVec_4_9
    ,2'h0,dataMatchVec_1_9,dataMatchVec_0_9}; // @[StatusArray.scala 132:43]
  wire  realValid_10 = updateValid_10 | statusArrayValid_10; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_10_robIdx_flag = updateValid_10 ? updateVal_10_robIdx_flag : statusArray_10_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_10_robIdx_value = updateValid_10 ? updateVal_10_robIdx_value : statusArray_10_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_41 = {statusArrayNext_10_robIdx_flag,statusArrayNext_10_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_43 = _isFlushed_flushItself_T_41 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_10 = io_redirect_bits_level & _isFlushed_flushItself_T_43; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_10 = statusArrayNext_10_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_10 = statusArrayNext_10_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_20 = isFlushed_differentFlag_10 ^ isFlushed_compare_10; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_10 = io_redirect_valid & (isFlushed_flushItself_10 | _isFlushed_T_20); // @[Rob.scala 123:20]
  wire  _flushedVec_10_T_1 = deqValid_10 & _T_738; // @[StatusArray.scala 166:64]
  wire  flushedVec_10 = realValid_10 & isFlushed_10 | deqValid_10 & _T_738; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_10 = realValid_10 & ~(isFlushed_10 | _flushedVec_10_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_10_srcType_0 = updateValid_10 ? updateVal_10_srcType_0 : statusArray_10_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_90 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_450 = statusArrayNext_10_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_90 = pdestMatch_90 & (rfDataMatch_90 & _dataCond_T_450); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_10 = io_wakeup_0_valid & dataCond_90; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_91 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_91 = pdestMatch_91 & (rfDataMatch_91 & _dataCond_T_450); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_10 = io_wakeup_1_valid & dataCond_91; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_94 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_94 = pdestMatch_94 & (rfDataMatch_94 & _dataCond_T_450); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_10 = io_wakeup_4_valid & dataCond_94; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_95 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_95 = pdestMatch_95 & (rfDataMatch_95 & _dataCond_T_450); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_10 = io_wakeup_5_valid & dataCond_95; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_96 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_96 = pdestMatch_96 & (rfDataMatch_96 & _dataCond_T_450); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_10 = io_wakeup_6_valid & dataCond_96; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_97 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_97 = pdestMatch_97 & (rfDataMatch_97 & _dataCond_T_450); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_10 = io_wakeup_7_valid & dataCond_97; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_98 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_10_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_98 = pdestMatch_98 & (rfDataMatch_98 & _dataCond_T_450); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_10 = io_wakeup_8_valid & dataCond_98; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_10 = {dataMatchVec_8_10,dataMatchVec_7_10,dataMatchVec_6_10,dataMatchVec_5_10,
    dataMatchVec_4_10,2'h0,dataMatchVec_1_10,dataMatchVec_0_10}; // @[StatusArray.scala 132:43]
  wire  realValid_11 = updateValid_11 | statusArrayValid_11; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_11_robIdx_flag = updateValid_11 ? updateVal_11_robIdx_flag : statusArray_11_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_11_robIdx_value = updateValid_11 ? updateVal_11_robIdx_value : statusArray_11_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_45 = {statusArrayNext_11_robIdx_flag,statusArrayNext_11_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_47 = _isFlushed_flushItself_T_45 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_11 = io_redirect_bits_level & _isFlushed_flushItself_T_47; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_11 = statusArrayNext_11_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_11 = statusArrayNext_11_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_22 = isFlushed_differentFlag_11 ^ isFlushed_compare_11; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_11 = io_redirect_valid & (isFlushed_flushItself_11 | _isFlushed_T_22); // @[Rob.scala 123:20]
  wire  _flushedVec_11_T_1 = deqValid_11 & _T_779; // @[StatusArray.scala 166:64]
  wire  flushedVec_11 = realValid_11 & isFlushed_11 | deqValid_11 & _T_779; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_11 = realValid_11 & ~(isFlushed_11 | _flushedVec_11_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_11_srcType_0 = updateValid_11 ? updateVal_11_srcType_0 : statusArray_11_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_99 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_495 = statusArrayNext_11_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_99 = pdestMatch_99 & (rfDataMatch_99 & _dataCond_T_495); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_11 = io_wakeup_0_valid & dataCond_99; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_100 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_100 = pdestMatch_100 & (rfDataMatch_100 & _dataCond_T_495); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_11 = io_wakeup_1_valid & dataCond_100; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_103 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_103 = pdestMatch_103 & (rfDataMatch_103 & _dataCond_T_495); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_11 = io_wakeup_4_valid & dataCond_103; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_104 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_104 = pdestMatch_104 & (rfDataMatch_104 & _dataCond_T_495); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_11 = io_wakeup_5_valid & dataCond_104; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_105 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_105 = pdestMatch_105 & (rfDataMatch_105 & _dataCond_T_495); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_11 = io_wakeup_6_valid & dataCond_105; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_106 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_106 = pdestMatch_106 & (rfDataMatch_106 & _dataCond_T_495); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_11 = io_wakeup_7_valid & dataCond_106; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_107 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_11_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_107 = pdestMatch_107 & (rfDataMatch_107 & _dataCond_T_495); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_11 = io_wakeup_8_valid & dataCond_107; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_11 = {dataMatchVec_8_11,dataMatchVec_7_11,dataMatchVec_6_11,dataMatchVec_5_11,
    dataMatchVec_4_11,2'h0,dataMatchVec_1_11,dataMatchVec_0_11}; // @[StatusArray.scala 132:43]
  wire  realValid_12 = updateValid_12 | statusArrayValid_12; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_12_robIdx_flag = updateValid_12 ? updateVal_12_robIdx_flag : statusArray_12_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_12_robIdx_value = updateValid_12 ? updateVal_12_robIdx_value : statusArray_12_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_49 = {statusArrayNext_12_robIdx_flag,statusArrayNext_12_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_51 = _isFlushed_flushItself_T_49 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_12 = io_redirect_bits_level & _isFlushed_flushItself_T_51; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_12 = statusArrayNext_12_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_12 = statusArrayNext_12_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_24 = isFlushed_differentFlag_12 ^ isFlushed_compare_12; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_12 = io_redirect_valid & (isFlushed_flushItself_12 | _isFlushed_T_24); // @[Rob.scala 123:20]
  wire  _flushedVec_12_T_1 = deqValid_12 & _T_820; // @[StatusArray.scala 166:64]
  wire  flushedVec_12 = realValid_12 & isFlushed_12 | deqValid_12 & _T_820; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_12 = realValid_12 & ~(isFlushed_12 | _flushedVec_12_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_12_srcType_0 = updateValid_12 ? updateVal_12_srcType_0 : statusArray_12_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_108 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_540 = statusArrayNext_12_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_108 = pdestMatch_108 & (rfDataMatch_108 & _dataCond_T_540); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_12 = io_wakeup_0_valid & dataCond_108; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_109 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_109 = pdestMatch_109 & (rfDataMatch_109 & _dataCond_T_540); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_12 = io_wakeup_1_valid & dataCond_109; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_112 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_112 = pdestMatch_112 & (rfDataMatch_112 & _dataCond_T_540); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_12 = io_wakeup_4_valid & dataCond_112; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_113 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_113 = pdestMatch_113 & (rfDataMatch_113 & _dataCond_T_540); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_12 = io_wakeup_5_valid & dataCond_113; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_114 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_114 = pdestMatch_114 & (rfDataMatch_114 & _dataCond_T_540); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_12 = io_wakeup_6_valid & dataCond_114; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_115 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_115 = pdestMatch_115 & (rfDataMatch_115 & _dataCond_T_540); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_12 = io_wakeup_7_valid & dataCond_115; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_116 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_12_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_116 = pdestMatch_116 & (rfDataMatch_116 & _dataCond_T_540); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_12 = io_wakeup_8_valid & dataCond_116; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_12 = {dataMatchVec_8_12,dataMatchVec_7_12,dataMatchVec_6_12,dataMatchVec_5_12,
    dataMatchVec_4_12,2'h0,dataMatchVec_1_12,dataMatchVec_0_12}; // @[StatusArray.scala 132:43]
  wire  realValid_13 = updateValid_13 | statusArrayValid_13; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_13_robIdx_flag = updateValid_13 ? updateVal_13_robIdx_flag : statusArray_13_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_13_robIdx_value = updateValid_13 ? updateVal_13_robIdx_value : statusArray_13_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_53 = {statusArrayNext_13_robIdx_flag,statusArrayNext_13_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_55 = _isFlushed_flushItself_T_53 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_13 = io_redirect_bits_level & _isFlushed_flushItself_T_55; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_13 = statusArrayNext_13_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_13 = statusArrayNext_13_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_26 = isFlushed_differentFlag_13 ^ isFlushed_compare_13; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_13 = io_redirect_valid & (isFlushed_flushItself_13 | _isFlushed_T_26); // @[Rob.scala 123:20]
  wire  _flushedVec_13_T_1 = deqValid_13 & _T_861; // @[StatusArray.scala 166:64]
  wire  flushedVec_13 = realValid_13 & isFlushed_13 | deqValid_13 & _T_861; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_13 = realValid_13 & ~(isFlushed_13 | _flushedVec_13_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_13_srcType_0 = updateValid_13 ? updateVal_13_srcType_0 : statusArray_13_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_117 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_585 = statusArrayNext_13_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_117 = pdestMatch_117 & (rfDataMatch_117 & _dataCond_T_585); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_13 = io_wakeup_0_valid & dataCond_117; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_118 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_118 = pdestMatch_118 & (rfDataMatch_118 & _dataCond_T_585); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_13 = io_wakeup_1_valid & dataCond_118; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_121 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_121 = pdestMatch_121 & (rfDataMatch_121 & _dataCond_T_585); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_13 = io_wakeup_4_valid & dataCond_121; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_122 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_122 = pdestMatch_122 & (rfDataMatch_122 & _dataCond_T_585); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_13 = io_wakeup_5_valid & dataCond_122; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_123 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_123 = pdestMatch_123 & (rfDataMatch_123 & _dataCond_T_585); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_13 = io_wakeup_6_valid & dataCond_123; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_124 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_124 = pdestMatch_124 & (rfDataMatch_124 & _dataCond_T_585); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_13 = io_wakeup_7_valid & dataCond_124; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_125 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_13_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_125 = pdestMatch_125 & (rfDataMatch_125 & _dataCond_T_585); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_13 = io_wakeup_8_valid & dataCond_125; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_13 = {dataMatchVec_8_13,dataMatchVec_7_13,dataMatchVec_6_13,dataMatchVec_5_13,
    dataMatchVec_4_13,2'h0,dataMatchVec_1_13,dataMatchVec_0_13}; // @[StatusArray.scala 132:43]
  wire  realValid_14 = updateValid_14 | statusArrayValid_14; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_14_robIdx_flag = updateValid_14 ? updateVal_14_robIdx_flag : statusArray_14_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_14_robIdx_value = updateValid_14 ? updateVal_14_robIdx_value : statusArray_14_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_57 = {statusArrayNext_14_robIdx_flag,statusArrayNext_14_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_59 = _isFlushed_flushItself_T_57 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_14 = io_redirect_bits_level & _isFlushed_flushItself_T_59; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_14 = statusArrayNext_14_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_14 = statusArrayNext_14_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_28 = isFlushed_differentFlag_14 ^ isFlushed_compare_14; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_14 = io_redirect_valid & (isFlushed_flushItself_14 | _isFlushed_T_28); // @[Rob.scala 123:20]
  wire  _flushedVec_14_T_1 = deqValid_14 & _T_902; // @[StatusArray.scala 166:64]
  wire  flushedVec_14 = realValid_14 & isFlushed_14 | deqValid_14 & _T_902; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_14 = realValid_14 & ~(isFlushed_14 | _flushedVec_14_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_14_srcType_0 = updateValid_14 ? updateVal_14_srcType_0 : statusArray_14_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_126 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_630 = statusArrayNext_14_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_126 = pdestMatch_126 & (rfDataMatch_126 & _dataCond_T_630); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_14 = io_wakeup_0_valid & dataCond_126; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_127 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_127 = pdestMatch_127 & (rfDataMatch_127 & _dataCond_T_630); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_14 = io_wakeup_1_valid & dataCond_127; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_130 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_130 = pdestMatch_130 & (rfDataMatch_130 & _dataCond_T_630); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_14 = io_wakeup_4_valid & dataCond_130; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_131 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_131 = pdestMatch_131 & (rfDataMatch_131 & _dataCond_T_630); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_14 = io_wakeup_5_valid & dataCond_131; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_132 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_132 = pdestMatch_132 & (rfDataMatch_132 & _dataCond_T_630); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_14 = io_wakeup_6_valid & dataCond_132; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_133 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_133 = pdestMatch_133 & (rfDataMatch_133 & _dataCond_T_630); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_14 = io_wakeup_7_valid & dataCond_133; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_134 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_14_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_134 = pdestMatch_134 & (rfDataMatch_134 & _dataCond_T_630); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_14 = io_wakeup_8_valid & dataCond_134; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_14 = {dataMatchVec_8_14,dataMatchVec_7_14,dataMatchVec_6_14,dataMatchVec_5_14,
    dataMatchVec_4_14,2'h0,dataMatchVec_1_14,dataMatchVec_0_14}; // @[StatusArray.scala 132:43]
  wire  realValid_15 = updateValid_15 | statusArrayValid_15; // @[StatusArray.scala 163:36]
  wire  statusArrayNext_15_robIdx_flag = updateValid_15 ? updateVal_15_robIdx_flag : statusArray_15_robIdx_flag; // @[StatusArray.scala 245:29]
  wire [4:0] statusArrayNext_15_robIdx_value = updateValid_15 ? updateVal_15_robIdx_value : statusArray_15_robIdx_value; // @[StatusArray.scala 245:29]
  wire [5:0] _isFlushed_flushItself_T_61 = {statusArrayNext_15_robIdx_flag,statusArrayNext_15_robIdx_value}; // @[CircularQueuePtr.scala 61:50]
  wire  _isFlushed_flushItself_T_63 = _isFlushed_flushItself_T_61 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 61:52]
  wire  isFlushed_flushItself_15 = io_redirect_bits_level & _isFlushed_flushItself_T_63; // @[Rob.scala 122:51]
  wire  isFlushed_differentFlag_15 = statusArrayNext_15_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 86:35]
  wire  isFlushed_compare_15 = statusArrayNext_15_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 87:30]
  wire  _isFlushed_T_30 = isFlushed_differentFlag_15 ^ isFlushed_compare_15; // @[CircularQueuePtr.scala 88:19]
  wire  isFlushed_15 = io_redirect_valid & (isFlushed_flushItself_15 | _isFlushed_T_30); // @[Rob.scala 123:20]
  wire  _flushedVec_15_T_1 = deqValid_15 & _T_943; // @[StatusArray.scala 166:64]
  wire  flushedVec_15 = realValid_15 & isFlushed_15 | deqValid_15 & _T_943; // @[StatusArray.scala 166:47]
  wire  statusArrayValidNext_15 = realValid_15 & ~(isFlushed_15 | _flushedVec_15_T_1); // @[StatusArray.scala 168:34]
  wire [1:0] statusArrayNext_15_srcType_0 = updateValid_15 ? updateVal_15_srcType_0 : statusArray_15_srcType_0; // @[StatusArray.scala 244:30]
  wire  rfDataMatch_135 = io_wakeup_0_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  _dataCond_T_675 = statusArrayNext_15_srcType_0 == 2'h0; // @[package.scala 37:39]
  wire  dataCond_135 = pdestMatch_135 & (rfDataMatch_135 & _dataCond_T_675); // @[Bundle.scala 271:33]
  wire  dataMatchVec_0_15 = io_wakeup_0_valid & dataCond_135; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_136 = io_wakeup_1_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_136 = pdestMatch_136 & (rfDataMatch_136 & _dataCond_T_675); // @[Bundle.scala 271:33]
  wire  dataMatchVec_1_15 = io_wakeup_1_valid & dataCond_136; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_139 = io_wakeup_4_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_139 = pdestMatch_139 & (rfDataMatch_139 & _dataCond_T_675); // @[Bundle.scala 271:33]
  wire  dataMatchVec_4_15 = io_wakeup_4_valid & dataCond_139; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_140 = io_wakeup_5_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_140 = pdestMatch_140 & (rfDataMatch_140 & _dataCond_T_675); // @[Bundle.scala 271:33]
  wire  dataMatchVec_5_15 = io_wakeup_5_valid & dataCond_140; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_141 = io_wakeup_6_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_141 = pdestMatch_141 & (rfDataMatch_141 & _dataCond_T_675); // @[Bundle.scala 271:33]
  wire  dataMatchVec_6_15 = io_wakeup_6_valid & dataCond_141; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_142 = io_wakeup_7_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_142 = pdestMatch_142 & (rfDataMatch_142 & _dataCond_T_675); // @[Bundle.scala 271:33]
  wire  dataMatchVec_7_15 = io_wakeup_7_valid & dataCond_142; // @[StatusArray.scala 129:39]
  wire  rfDataMatch_143 = io_wakeup_8_bits_ctrl_rfWen & statusArrayNext_15_psrc_0 != 6'h0; // @[Bundle.scala 270:58]
  wire  dataCond_143 = pdestMatch_143 & (rfDataMatch_143 & _dataCond_T_675); // @[Bundle.scala 271:33]
  wire  dataMatchVec_8_15 = io_wakeup_8_valid & dataCond_143; // @[StatusArray.scala 129:39]
  wire [8:0] dataWakeupEnVec_0_15 = {dataMatchVec_8_15,dataMatchVec_7_15,dataMatchVec_6_15,dataMatchVec_5_15,
    dataMatchVec_4_15,2'h0,dataMatchVec_1_15,dataMatchVec_0_15}; // @[StatusArray.scala 132:43]
  wire [7:0] io_isValid_lo = {statusArrayValid_7,statusArrayValid_6,statusArrayValid_5,statusArrayValid_4,
    statusArrayValid_3,statusArrayValid_2,statusArrayValid_1,statusArrayValid_0}; // @[StatusArray.scala 255:34]
  wire [7:0] io_isValid_hi = {statusArrayValid_15,statusArrayValid_14,statusArrayValid_13,statusArrayValid_12,
    statusArrayValid_11,statusArrayValid_10,statusArrayValid_9,statusArrayValid_8}; // @[StatusArray.scala 255:34]
  wire [7:0] io_isValidNext_lo = {statusArrayValidNext_7,statusArrayValidNext_6,statusArrayValidNext_5,
    statusArrayValidNext_4,statusArrayValidNext_3,statusArrayValidNext_2,statusArrayValidNext_1,statusArrayValidNext_0}; // @[StatusArray.scala 256:42]
  wire [7:0] io_isValidNext_hi = {statusArrayValidNext_15,statusArrayValidNext_14,statusArrayValidNext_13,
    statusArrayValidNext_12,statusArrayValidNext_11,statusArrayValidNext_10,statusArrayValidNext_9,
    statusArrayValidNext_8}; // @[StatusArray.scala 256:42]
  reg  io_canIssue_REG; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_1; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_2; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_3; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_4; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_5; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_6; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_7; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_8; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_9; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_10; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_11; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_12; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_13; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_14; // @[StatusArray.scala 257:92]
  reg  io_canIssue_REG_15; // @[StatusArray.scala 257:92]
  wire [7:0] io_canIssue_lo = {io_canIssue_REG_7,io_canIssue_REG_6,io_canIssue_REG_5,io_canIssue_REG_4,io_canIssue_REG_3
    ,io_canIssue_REG_2,io_canIssue_REG_1,io_canIssue_REG}; // @[StatusArray.scala 257:104]
  wire [7:0] io_canIssue_hi = {io_canIssue_REG_15,io_canIssue_REG_14,io_canIssue_REG_13,io_canIssue_REG_12,
    io_canIssue_REG_11,io_canIssue_REG_10,io_canIssue_REG_9,io_canIssue_REG_8}; // @[StatusArray.scala 257:104]
  wire [7:0] io_flushed_lo = {flushedVec_7,flushedVec_6,flushedVec_5,flushedVec_4,flushedVec_3,flushedVec_2,flushedVec_1
    ,flushedVec_0}; // @[StatusArray.scala 260:28]
  wire [7:0] io_flushed_hi = {flushedVec_15,flushedVec_14,flushedVec_13,flushedVec_12,flushedVec_11,flushedVec_10,
    flushedVec_9,flushedVec_8}; // @[StatusArray.scala 260:28]
  assign io_isValid = {io_isValid_hi,io_isValid_lo}; // @[StatusArray.scala 255:34]
  assign io_isValidNext = {io_isValidNext_hi,io_isValidNext_lo}; // @[StatusArray.scala 256:42]
  assign io_canIssue = {io_canIssue_hi,io_canIssue_lo}; // @[StatusArray.scala 257:104]
  assign io_flushed = {io_flushed_hi,io_flushed_lo}; // @[StatusArray.scala 260:28]
  assign io_wakeupMatch_0_0 = realValid ? dataWakeupEnVec_0 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_1_0 = realValid_1 ? dataWakeupEnVec_0_1 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_2_0 = realValid_2 ? dataWakeupEnVec_0_2 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_3_0 = realValid_3 ? dataWakeupEnVec_0_3 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_4_0 = realValid_4 ? dataWakeupEnVec_0_4 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_5_0 = realValid_5 ? dataWakeupEnVec_0_5 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_6_0 = realValid_6 ? dataWakeupEnVec_0_6 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_7_0 = realValid_7 ? dataWakeupEnVec_0_7 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_8_0 = realValid_8 ? dataWakeupEnVec_0_8 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_9_0 = realValid_9 ? dataWakeupEnVec_0_9 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_10_0 = realValid_10 ? dataWakeupEnVec_0_10 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_11_0 = realValid_11 ? dataWakeupEnVec_0_11 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_12_0 = realValid_12 ? dataWakeupEnVec_0_12 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_13_0 = realValid_13 ? dataWakeupEnVec_0_13 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_14_0 = realValid_14 ? dataWakeupEnVec_0_14 : 9'h0; // @[StatusArray.scala 231:55]
  assign io_wakeupMatch_15_0 = realValid_15 ? dataWakeupEnVec_0_15 : 9'h0; // @[StatusArray.scala 231:55]
  always @(posedge clock) begin
    statusArray_0_srcState_0 <= stateWakeupEn_0 | _T_1000; // @[StatusArray.scala 236:50]
    if (updateValid_0) begin // @[StatusArray.scala 243:27]
      statusArray_0_psrc_0 <= updateVal_0_psrc_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 244:30]
      statusArray_0_srcType_0 <= updateVal_0_srcType_0;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_flag <= updateVal_0_robIdx_flag;
    end
    if (updateValid_0) begin // @[StatusArray.scala 245:29]
      statusArray_0_robIdx_value <= updateVal_0_robIdx_value;
    end
    statusArray_1_srcState_0 <= stateWakeupEn_0_1 | _T_1033; // @[StatusArray.scala 236:50]
    if (updateValid_1) begin // @[StatusArray.scala 243:27]
      statusArray_1_psrc_0 <= updateVal_1_psrc_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 244:30]
      statusArray_1_srcType_0 <= updateVal_1_srcType_0;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_flag <= updateVal_1_robIdx_flag;
    end
    if (updateValid_1) begin // @[StatusArray.scala 245:29]
      statusArray_1_robIdx_value <= updateVal_1_robIdx_value;
    end
    statusArray_2_srcState_0 <= stateWakeupEn_0_2 | _T_1066; // @[StatusArray.scala 236:50]
    if (updateValid_2) begin // @[StatusArray.scala 243:27]
      statusArray_2_psrc_0 <= updateVal_2_psrc_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 244:30]
      statusArray_2_srcType_0 <= updateVal_2_srcType_0;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_flag <= updateVal_2_robIdx_flag;
    end
    if (updateValid_2) begin // @[StatusArray.scala 245:29]
      statusArray_2_robIdx_value <= updateVal_2_robIdx_value;
    end
    statusArray_3_srcState_0 <= stateWakeupEn_0_3 | _T_1099; // @[StatusArray.scala 236:50]
    if (updateValid_3) begin // @[StatusArray.scala 243:27]
      statusArray_3_psrc_0 <= updateVal_3_psrc_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 244:30]
      statusArray_3_srcType_0 <= updateVal_3_srcType_0;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_flag <= updateVal_3_robIdx_flag;
    end
    if (updateValid_3) begin // @[StatusArray.scala 245:29]
      statusArray_3_robIdx_value <= updateVal_3_robIdx_value;
    end
    statusArray_4_srcState_0 <= stateWakeupEn_0_4 | _T_1132; // @[StatusArray.scala 236:50]
    if (updateValid_4) begin // @[StatusArray.scala 243:27]
      statusArray_4_psrc_0 <= updateVal_4_psrc_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 244:30]
      statusArray_4_srcType_0 <= updateVal_4_srcType_0;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_flag <= updateVal_4_robIdx_flag;
    end
    if (updateValid_4) begin // @[StatusArray.scala 245:29]
      statusArray_4_robIdx_value <= updateVal_4_robIdx_value;
    end
    statusArray_5_srcState_0 <= stateWakeupEn_0_5 | _T_1165; // @[StatusArray.scala 236:50]
    if (updateValid_5) begin // @[StatusArray.scala 243:27]
      statusArray_5_psrc_0 <= updateVal_5_psrc_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 244:30]
      statusArray_5_srcType_0 <= updateVal_5_srcType_0;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_flag <= updateVal_5_robIdx_flag;
    end
    if (updateValid_5) begin // @[StatusArray.scala 245:29]
      statusArray_5_robIdx_value <= updateVal_5_robIdx_value;
    end
    statusArray_6_srcState_0 <= stateWakeupEn_0_6 | _T_1198; // @[StatusArray.scala 236:50]
    if (updateValid_6) begin // @[StatusArray.scala 243:27]
      statusArray_6_psrc_0 <= updateVal_6_psrc_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 244:30]
      statusArray_6_srcType_0 <= updateVal_6_srcType_0;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_flag <= updateVal_6_robIdx_flag;
    end
    if (updateValid_6) begin // @[StatusArray.scala 245:29]
      statusArray_6_robIdx_value <= updateVal_6_robIdx_value;
    end
    statusArray_7_srcState_0 <= stateWakeupEn_0_7 | _T_1231; // @[StatusArray.scala 236:50]
    if (updateValid_7) begin // @[StatusArray.scala 243:27]
      statusArray_7_psrc_0 <= updateVal_7_psrc_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 244:30]
      statusArray_7_srcType_0 <= updateVal_7_srcType_0;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_flag <= updateVal_7_robIdx_flag;
    end
    if (updateValid_7) begin // @[StatusArray.scala 245:29]
      statusArray_7_robIdx_value <= updateVal_7_robIdx_value;
    end
    statusArray_8_srcState_0 <= stateWakeupEn_0_8 | _T_1264; // @[StatusArray.scala 236:50]
    if (updateValid_8) begin // @[StatusArray.scala 243:27]
      statusArray_8_psrc_0 <= updateVal_8_psrc_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 244:30]
      statusArray_8_srcType_0 <= updateVal_8_srcType_0;
    end
    if (updateValid_8) begin // @[StatusArray.scala 245:29]
      statusArray_8_robIdx_flag <= updateVal_8_robIdx_flag;
    end
    if (updateValid_8) begin // @[StatusArray.scala 245:29]
      statusArray_8_robIdx_value <= updateVal_8_robIdx_value;
    end
    statusArray_9_srcState_0 <= stateWakeupEn_0_9 | _T_1297; // @[StatusArray.scala 236:50]
    if (updateValid_9) begin // @[StatusArray.scala 243:27]
      statusArray_9_psrc_0 <= updateVal_9_psrc_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 244:30]
      statusArray_9_srcType_0 <= updateVal_9_srcType_0;
    end
    if (updateValid_9) begin // @[StatusArray.scala 245:29]
      statusArray_9_robIdx_flag <= updateVal_9_robIdx_flag;
    end
    if (updateValid_9) begin // @[StatusArray.scala 245:29]
      statusArray_9_robIdx_value <= updateVal_9_robIdx_value;
    end
    statusArray_10_srcState_0 <= stateWakeupEn_0_10 | _T_1330; // @[StatusArray.scala 236:50]
    if (updateValid_10) begin // @[StatusArray.scala 243:27]
      statusArray_10_psrc_0 <= updateVal_10_psrc_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 244:30]
      statusArray_10_srcType_0 <= updateVal_10_srcType_0;
    end
    if (updateValid_10) begin // @[StatusArray.scala 245:29]
      statusArray_10_robIdx_flag <= updateVal_10_robIdx_flag;
    end
    if (updateValid_10) begin // @[StatusArray.scala 245:29]
      statusArray_10_robIdx_value <= updateVal_10_robIdx_value;
    end
    statusArray_11_srcState_0 <= stateWakeupEn_0_11 | _T_1363; // @[StatusArray.scala 236:50]
    if (updateValid_11) begin // @[StatusArray.scala 243:27]
      statusArray_11_psrc_0 <= updateVal_11_psrc_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 244:30]
      statusArray_11_srcType_0 <= updateVal_11_srcType_0;
    end
    if (updateValid_11) begin // @[StatusArray.scala 245:29]
      statusArray_11_robIdx_flag <= updateVal_11_robIdx_flag;
    end
    if (updateValid_11) begin // @[StatusArray.scala 245:29]
      statusArray_11_robIdx_value <= updateVal_11_robIdx_value;
    end
    statusArray_12_srcState_0 <= stateWakeupEn_0_12 | _T_1396; // @[StatusArray.scala 236:50]
    if (updateValid_12) begin // @[StatusArray.scala 243:27]
      statusArray_12_psrc_0 <= updateVal_12_psrc_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 244:30]
      statusArray_12_srcType_0 <= updateVal_12_srcType_0;
    end
    if (updateValid_12) begin // @[StatusArray.scala 245:29]
      statusArray_12_robIdx_flag <= updateVal_12_robIdx_flag;
    end
    if (updateValid_12) begin // @[StatusArray.scala 245:29]
      statusArray_12_robIdx_value <= updateVal_12_robIdx_value;
    end
    statusArray_13_srcState_0 <= stateWakeupEn_0_13 | _T_1429; // @[StatusArray.scala 236:50]
    if (updateValid_13) begin // @[StatusArray.scala 243:27]
      statusArray_13_psrc_0 <= updateVal_13_psrc_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 244:30]
      statusArray_13_srcType_0 <= updateVal_13_srcType_0;
    end
    if (updateValid_13) begin // @[StatusArray.scala 245:29]
      statusArray_13_robIdx_flag <= updateVal_13_robIdx_flag;
    end
    if (updateValid_13) begin // @[StatusArray.scala 245:29]
      statusArray_13_robIdx_value <= updateVal_13_robIdx_value;
    end
    statusArray_14_srcState_0 <= stateWakeupEn_0_14 | _T_1462; // @[StatusArray.scala 236:50]
    if (updateValid_14) begin // @[StatusArray.scala 243:27]
      statusArray_14_psrc_0 <= updateVal_14_psrc_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 244:30]
      statusArray_14_srcType_0 <= updateVal_14_srcType_0;
    end
    if (updateValid_14) begin // @[StatusArray.scala 245:29]
      statusArray_14_robIdx_flag <= updateVal_14_robIdx_flag;
    end
    if (updateValid_14) begin // @[StatusArray.scala 245:29]
      statusArray_14_robIdx_value <= updateVal_14_robIdx_value;
    end
    statusArray_15_srcState_0 <= stateWakeupEn_0_15 | _T_1495; // @[StatusArray.scala 236:50]
    if (updateValid_15) begin // @[StatusArray.scala 243:27]
      statusArray_15_psrc_0 <= updateVal_15_psrc_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 244:30]
      statusArray_15_srcType_0 <= updateVal_15_srcType_0;
    end
    if (updateValid_15) begin // @[StatusArray.scala 245:29]
      statusArray_15_robIdx_flag <= updateVal_15_robIdx_flag;
    end
    if (updateValid_15) begin // @[StatusArray.scala 245:29]
      statusArray_15_robIdx_value <= updateVal_15_robIdx_value;
    end
    io_canIssue_REG <= statusArrayValidNext_0 & readyVecNext_0; // @[StatusArray.scala 257:95]
    io_canIssue_REG_1 <= statusArrayValidNext_1 & readyVecNext_1; // @[StatusArray.scala 257:95]
    io_canIssue_REG_2 <= statusArrayValidNext_2 & readyVecNext_2; // @[StatusArray.scala 257:95]
    io_canIssue_REG_3 <= statusArrayValidNext_3 & readyVecNext_3; // @[StatusArray.scala 257:95]
    io_canIssue_REG_4 <= statusArrayValidNext_4 & readyVecNext_4; // @[StatusArray.scala 257:95]
    io_canIssue_REG_5 <= statusArrayValidNext_5 & readyVecNext_5; // @[StatusArray.scala 257:95]
    io_canIssue_REG_6 <= statusArrayValidNext_6 & readyVecNext_6; // @[StatusArray.scala 257:95]
    io_canIssue_REG_7 <= statusArrayValidNext_7 & readyVecNext_7; // @[StatusArray.scala 257:95]
    io_canIssue_REG_8 <= statusArrayValidNext_8 & readyVecNext_8; // @[StatusArray.scala 257:95]
    io_canIssue_REG_9 <= statusArrayValidNext_9 & readyVecNext_9; // @[StatusArray.scala 257:95]
    io_canIssue_REG_10 <= statusArrayValidNext_10 & readyVecNext_10; // @[StatusArray.scala 257:95]
    io_canIssue_REG_11 <= statusArrayValidNext_11 & readyVecNext_11; // @[StatusArray.scala 257:95]
    io_canIssue_REG_12 <= statusArrayValidNext_12 & readyVecNext_12; // @[StatusArray.scala 257:95]
    io_canIssue_REG_13 <= statusArrayValidNext_13 & readyVecNext_13; // @[StatusArray.scala 257:95]
    io_canIssue_REG_14 <= statusArrayValidNext_14 & readyVecNext_14; // @[StatusArray.scala 257:95]
    io_canIssue_REG_15 <= statusArrayValidNext_15 & readyVecNext_15; // @[StatusArray.scala 257:95]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_0 <= 1'h0;
    end else begin
      statusArrayValid_0 <= realValid & ~(isFlushed | _flushedVec_0_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_1 <= 1'h0;
    end else begin
      statusArrayValid_1 <= realValid_1 & ~(isFlushed_1 | _flushedVec_1_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_2 <= 1'h0;
    end else begin
      statusArrayValid_2 <= realValid_2 & ~(isFlushed_2 | _flushedVec_2_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_3 <= 1'h0;
    end else begin
      statusArrayValid_3 <= realValid_3 & ~(isFlushed_3 | _flushedVec_3_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_4 <= 1'h0;
    end else begin
      statusArrayValid_4 <= realValid_4 & ~(isFlushed_4 | _flushedVec_4_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_5 <= 1'h0;
    end else begin
      statusArrayValid_5 <= realValid_5 & ~(isFlushed_5 | _flushedVec_5_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_6 <= 1'h0;
    end else begin
      statusArrayValid_6 <= realValid_6 & ~(isFlushed_6 | _flushedVec_6_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_7 <= 1'h0;
    end else begin
      statusArrayValid_7 <= realValid_7 & ~(isFlushed_7 | _flushedVec_7_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_8 <= 1'h0;
    end else begin
      statusArrayValid_8 <= realValid_8 & ~(isFlushed_8 | _flushedVec_8_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_9 <= 1'h0;
    end else begin
      statusArrayValid_9 <= realValid_9 & ~(isFlushed_9 | _flushedVec_9_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_10 <= 1'h0;
    end else begin
      statusArrayValid_10 <= realValid_10 & ~(isFlushed_10 | _flushedVec_10_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_11 <= 1'h0;
    end else begin
      statusArrayValid_11 <= realValid_11 & ~(isFlushed_11 | _flushedVec_11_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_12 <= 1'h0;
    end else begin
      statusArrayValid_12 <= realValid_12 & ~(isFlushed_12 | _flushedVec_12_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_13 <= 1'h0;
    end else begin
      statusArrayValid_13 <= realValid_13 & ~(isFlushed_13 | _flushedVec_13_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_14 <= 1'h0;
    end else begin
      statusArrayValid_14 <= realValid_14 & ~(isFlushed_14 | _flushedVec_14_T_1);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StatusArray.scala 168:34]
      statusArrayValid_15 <= 1'h0;
    end else begin
      statusArrayValid_15 <= realValid_15 & ~(isFlushed_15 | _flushedVec_15_T_1);
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
  statusArrayValid_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  statusArrayValid_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  statusArrayValid_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  statusArrayValid_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  statusArrayValid_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  statusArrayValid_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  statusArrayValid_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  statusArrayValid_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  statusArrayValid_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  statusArrayValid_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  statusArrayValid_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  statusArrayValid_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  statusArrayValid_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  statusArrayValid_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  statusArrayValid_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  statusArrayValid_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  statusArray_0_srcState_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  statusArray_0_psrc_0 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  statusArray_0_srcType_0 = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  statusArray_0_robIdx_flag = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  statusArray_0_robIdx_value = _RAND_20[4:0];
  _RAND_21 = {1{`RANDOM}};
  statusArray_1_srcState_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  statusArray_1_psrc_0 = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  statusArray_1_srcType_0 = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  statusArray_1_robIdx_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  statusArray_1_robIdx_value = _RAND_25[4:0];
  _RAND_26 = {1{`RANDOM}};
  statusArray_2_srcState_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  statusArray_2_psrc_0 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  statusArray_2_srcType_0 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  statusArray_2_robIdx_flag = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  statusArray_2_robIdx_value = _RAND_30[4:0];
  _RAND_31 = {1{`RANDOM}};
  statusArray_3_srcState_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  statusArray_3_psrc_0 = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  statusArray_3_srcType_0 = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  statusArray_3_robIdx_flag = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  statusArray_3_robIdx_value = _RAND_35[4:0];
  _RAND_36 = {1{`RANDOM}};
  statusArray_4_srcState_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  statusArray_4_psrc_0 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  statusArray_4_srcType_0 = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  statusArray_4_robIdx_flag = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  statusArray_4_robIdx_value = _RAND_40[4:0];
  _RAND_41 = {1{`RANDOM}};
  statusArray_5_srcState_0 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  statusArray_5_psrc_0 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  statusArray_5_srcType_0 = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  statusArray_5_robIdx_flag = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  statusArray_5_robIdx_value = _RAND_45[4:0];
  _RAND_46 = {1{`RANDOM}};
  statusArray_6_srcState_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  statusArray_6_psrc_0 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  statusArray_6_srcType_0 = _RAND_48[1:0];
  _RAND_49 = {1{`RANDOM}};
  statusArray_6_robIdx_flag = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  statusArray_6_robIdx_value = _RAND_50[4:0];
  _RAND_51 = {1{`RANDOM}};
  statusArray_7_srcState_0 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  statusArray_7_psrc_0 = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  statusArray_7_srcType_0 = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  statusArray_7_robIdx_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  statusArray_7_robIdx_value = _RAND_55[4:0];
  _RAND_56 = {1{`RANDOM}};
  statusArray_8_srcState_0 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  statusArray_8_psrc_0 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  statusArray_8_srcType_0 = _RAND_58[1:0];
  _RAND_59 = {1{`RANDOM}};
  statusArray_8_robIdx_flag = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  statusArray_8_robIdx_value = _RAND_60[4:0];
  _RAND_61 = {1{`RANDOM}};
  statusArray_9_srcState_0 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  statusArray_9_psrc_0 = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  statusArray_9_srcType_0 = _RAND_63[1:0];
  _RAND_64 = {1{`RANDOM}};
  statusArray_9_robIdx_flag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  statusArray_9_robIdx_value = _RAND_65[4:0];
  _RAND_66 = {1{`RANDOM}};
  statusArray_10_srcState_0 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  statusArray_10_psrc_0 = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  statusArray_10_srcType_0 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  statusArray_10_robIdx_flag = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  statusArray_10_robIdx_value = _RAND_70[4:0];
  _RAND_71 = {1{`RANDOM}};
  statusArray_11_srcState_0 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  statusArray_11_psrc_0 = _RAND_72[5:0];
  _RAND_73 = {1{`RANDOM}};
  statusArray_11_srcType_0 = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  statusArray_11_robIdx_flag = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  statusArray_11_robIdx_value = _RAND_75[4:0];
  _RAND_76 = {1{`RANDOM}};
  statusArray_12_srcState_0 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  statusArray_12_psrc_0 = _RAND_77[5:0];
  _RAND_78 = {1{`RANDOM}};
  statusArray_12_srcType_0 = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  statusArray_12_robIdx_flag = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  statusArray_12_robIdx_value = _RAND_80[4:0];
  _RAND_81 = {1{`RANDOM}};
  statusArray_13_srcState_0 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  statusArray_13_psrc_0 = _RAND_82[5:0];
  _RAND_83 = {1{`RANDOM}};
  statusArray_13_srcType_0 = _RAND_83[1:0];
  _RAND_84 = {1{`RANDOM}};
  statusArray_13_robIdx_flag = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  statusArray_13_robIdx_value = _RAND_85[4:0];
  _RAND_86 = {1{`RANDOM}};
  statusArray_14_srcState_0 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  statusArray_14_psrc_0 = _RAND_87[5:0];
  _RAND_88 = {1{`RANDOM}};
  statusArray_14_srcType_0 = _RAND_88[1:0];
  _RAND_89 = {1{`RANDOM}};
  statusArray_14_robIdx_flag = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  statusArray_14_robIdx_value = _RAND_90[4:0];
  _RAND_91 = {1{`RANDOM}};
  statusArray_15_srcState_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  statusArray_15_psrc_0 = _RAND_92[5:0];
  _RAND_93 = {1{`RANDOM}};
  statusArray_15_srcType_0 = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  statusArray_15_robIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  statusArray_15_robIdx_value = _RAND_95[4:0];
  _RAND_96 = {1{`RANDOM}};
  io_canIssue_REG = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  io_canIssue_REG_1 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  io_canIssue_REG_2 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  io_canIssue_REG_3 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  io_canIssue_REG_4 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  io_canIssue_REG_5 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  io_canIssue_REG_6 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  io_canIssue_REG_7 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  io_canIssue_REG_8 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  io_canIssue_REG_9 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  io_canIssue_REG_10 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  io_canIssue_REG_11 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  io_canIssue_REG_12 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  io_canIssue_REG_13 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  io_canIssue_REG_14 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  io_canIssue_REG_15 = _RAND_111[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    statusArrayValid_0 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_1 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_2 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_3 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_4 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_5 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_6 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_7 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_8 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_9 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_10 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_11 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_12 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_13 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_14 = 1'h0;
  end
  if (reset) begin
    statusArrayValid_15 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

