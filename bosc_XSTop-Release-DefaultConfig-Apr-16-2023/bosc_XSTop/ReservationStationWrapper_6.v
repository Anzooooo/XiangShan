module ReservationStationWrapper_6(
  input          clock,
  input          reset,
  input          io_redirect_valid,
  input          io_redirect_bits_robIdx_flag,
  input  [4:0]   io_redirect_bits_robIdx_value,
  input          io_redirect_bits_level,
  output         io_fromDispatch_0_ready,
  input          io_fromDispatch_0_valid,
  input          io_fromDispatch_0_bits_cf_pd_isRVC,
  input  [1:0]   io_fromDispatch_0_bits_cf_pd_brType,
  input          io_fromDispatch_0_bits_cf_pd_isCall,
  input          io_fromDispatch_0_bits_cf_pd_isRet,
  input          io_fromDispatch_0_bits_cf_pred_taken,
  input          io_fromDispatch_0_bits_cf_ftqPtr_flag,
  input  [2:0]   io_fromDispatch_0_bits_cf_ftqPtr_value,
  input  [2:0]   io_fromDispatch_0_bits_cf_ftqOffset,
  input  [1:0]   io_fromDispatch_0_bits_ctrl_srcType_0,
  input  [1:0]   io_fromDispatch_0_bits_ctrl_srcType_1,
  input  [1:0]   io_fromDispatch_0_bits_ctrl_srcType_2,
  input  [3:0]   io_fromDispatch_0_bits_ctrl_fuType,
  input  [6:0]   io_fromDispatch_0_bits_ctrl_fuOpType,
  input          io_fromDispatch_0_bits_ctrl_rfWen,
  input          io_fromDispatch_0_bits_ctrl_fpWen,
  input  [19:0]  io_fromDispatch_0_bits_ctrl_imm,
  input          io_fromDispatch_0_bits_ctrl_fpu_isAddSub,
  input          io_fromDispatch_0_bits_ctrl_fpu_typeTagIn,
  input          io_fromDispatch_0_bits_ctrl_fpu_typeTagOut,
  input          io_fromDispatch_0_bits_ctrl_fpu_fromInt,
  input          io_fromDispatch_0_bits_ctrl_fpu_wflags,
  input          io_fromDispatch_0_bits_ctrl_fpu_fpWen,
  input  [1:0]   io_fromDispatch_0_bits_ctrl_fpu_fmaCmd,
  input          io_fromDispatch_0_bits_ctrl_fpu_div,
  input          io_fromDispatch_0_bits_ctrl_fpu_sqrt,
  input          io_fromDispatch_0_bits_ctrl_fpu_fcvt,
  input  [1:0]   io_fromDispatch_0_bits_ctrl_fpu_typ,
  input  [1:0]   io_fromDispatch_0_bits_ctrl_fpu_fmt,
  input          io_fromDispatch_0_bits_ctrl_fpu_ren3,
  input  [2:0]   io_fromDispatch_0_bits_ctrl_fpu_rm,
  input          io_fromDispatch_0_bits_srcState_0,
  input          io_fromDispatch_0_bits_srcState_1,
  input          io_fromDispatch_0_bits_srcState_2,
  input  [5:0]   io_fromDispatch_0_bits_psrc_0,
  input  [5:0]   io_fromDispatch_0_bits_psrc_1,
  input  [5:0]   io_fromDispatch_0_bits_psrc_2,
  input  [5:0]   io_fromDispatch_0_bits_pdest,
  input          io_fromDispatch_0_bits_robIdx_flag,
  input  [4:0]   io_fromDispatch_0_bits_robIdx_value,
  input  [63:0]  io_srcRegValue_0_0,
  input  [63:0]  io_srcRegValue_0_1,
  input  [63:0]  io_srcRegValue_0_2,
  input          io_deq_0_ready,
  output         io_deq_0_valid,
  output         io_deq_0_bits_uop_ctrl_rfWen,
  output         io_deq_0_bits_uop_ctrl_fpWen,
  output         io_deq_0_bits_uop_ctrl_fpu_isAddSub,
  output         io_deq_0_bits_uop_ctrl_fpu_typeTagIn,
  output [1:0]   io_deq_0_bits_uop_ctrl_fpu_fmaCmd,
  output         io_deq_0_bits_uop_ctrl_fpu_ren3,
  output [2:0]   io_deq_0_bits_uop_ctrl_fpu_rm,
  output [5:0]   io_deq_0_bits_uop_pdest,
  output         io_deq_0_bits_uop_robIdx_flag,
  output [4:0]   io_deq_0_bits_uop_robIdx_value,
  output [63:0]  io_deq_0_bits_src_0,
  output [63:0]  io_deq_0_bits_src_1,
  output [63:0]  io_deq_0_bits_src_2,
  input          io_fastUopsIn_0_valid,
  input          io_fastUopsIn_0_bits_ctrl_fpWen,
  input  [5:0]   io_fastUopsIn_0_bits_pdest,
  input  [63:0]  io_fastDatas_0,
  input          io_slowPorts_0_valid,
  input          io_slowPorts_0_bits_uop_ctrl_fpWen,
  input  [5:0]   io_slowPorts_0_bits_uop_pdest,
  input  [63:0]  io_slowPorts_0_bits_data,
  input          io_slowPorts_1_valid,
  input          io_slowPorts_1_bits_uop_ctrl_fpWen,
  input  [5:0]   io_slowPorts_1_bits_uop_pdest,
  input  [63:0]  io_slowPorts_1_bits_data,
  input          io_slowPorts_2_valid,
  input          io_slowPorts_2_bits_uop_ctrl_fpWen,
  input  [5:0]   io_slowPorts_2_bits_uop_pdest,
  input  [63:0]  io_slowPorts_2_bits_data,
  input          io_slowPorts_3_valid,
  input          io_slowPorts_3_bits_uop_ctrl_fpWen,
  input  [5:0]   io_slowPorts_3_bits_uop_pdest,
  input  [63:0]  io_slowPorts_3_bits_data,
  output         io_fmaMid_0_in_valid,
  output         io_fmaMid_0_in_bits_fp_prod_sign,
  output [10:0]  io_fmaMid_0_in_bits_fp_prod_exp,
  output [104:0] io_fmaMid_0_in_bits_fp_prod_sig,
  output         io_fmaMid_0_in_bits_inter_flags_isNaN,
  output         io_fmaMid_0_in_bits_inter_flags_isInf,
  output         io_fmaMid_0_in_bits_inter_flags_isInv,
  output         io_fmaMid_0_in_bits_inter_flags_overflow,
  input          io_fmaMid_0_out_bits_fp_prod_sign,
  input  [10:0]  io_fmaMid_0_out_bits_fp_prod_exp,
  input  [104:0] io_fmaMid_0_out_bits_fp_prod_sig,
  input          io_fmaMid_0_out_bits_inter_flags_isNaN,
  input          io_fmaMid_0_out_bits_inter_flags_isInf,
  input          io_fmaMid_0_out_bits_inter_flags_isInv,
  output         io_fmaMid_0_waitForAdd,
  output [5:0]   io_perf_0_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  rs_0_clock; // @[ReservationStation.scala 156:13]
  wire  rs_0_reset; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_redirect_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 156:13]
  wire [4:0] rs_0_io_redirect_bits_robIdx_value; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_redirect_bits_level; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 156:13]
  wire [2:0] rs_0_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 156:13]
  wire [2:0] rs_0_io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_srcType_2; // @[ReservationStation.scala 156:13]
  wire [3:0] rs_0_io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 156:13]
  wire [6:0] rs_0_io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 156:13]
  wire [19:0] rs_0_io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_div; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 156:13]
  wire [2:0] rs_0_io_fromDispatch_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_srcState_2; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_fromDispatch_0_bits_psrc_1; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_fromDispatch_0_bits_psrc_2; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 156:13]
  wire [4:0] rs_0_io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_srcRegValue_0_0; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_srcRegValue_0_1; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_srcRegValue_0_2; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_ready; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_bits_uop_ctrl_fpu_isAddSub; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_bits_uop_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 156:13]
  wire [1:0] rs_0_io_deq_0_bits_uop_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_bits_uop_ctrl_fpu_ren3; // @[ReservationStation.scala 156:13]
  wire [2:0] rs_0_io_deq_0_bits_uop_ctrl_fpu_rm; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_deq_0_bits_uop_pdest; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 156:13]
  wire [4:0] rs_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_deq_0_bits_src_1; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_deq_0_bits_src_2; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fastUopsIn_0_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fastUopsIn_0_bits_ctrl_fpWen; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_fastUopsIn_0_bits_pdest; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_fastDatas_0; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_0_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_slowPorts_0_bits_data; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_1_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_1_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_slowPorts_1_bits_data; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_2_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_2_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_slowPorts_2_bits_data; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_3_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_slowPorts_3_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 156:13]
  wire [63:0] rs_0_io_slowPorts_3_bits_data; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_in_valid; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_in_bits_fp_prod_sign; // @[ReservationStation.scala 156:13]
  wire [10:0] rs_0_io_fmaMid_0_in_bits_fp_prod_exp; // @[ReservationStation.scala 156:13]
  wire [104:0] rs_0_io_fmaMid_0_in_bits_fp_prod_sig; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_in_bits_inter_flags_isNaN; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_in_bits_inter_flags_isInf; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_in_bits_inter_flags_isInv; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_in_bits_inter_flags_overflow; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_out_bits_fp_prod_sign; // @[ReservationStation.scala 156:13]
  wire [10:0] rs_0_io_fmaMid_0_out_bits_fp_prod_exp; // @[ReservationStation.scala 156:13]
  wire [104:0] rs_0_io_fmaMid_0_out_bits_fp_prod_sig; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_out_bits_inter_flags_isNaN; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_out_bits_inter_flags_isInf; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_out_bits_inter_flags_isInv; // @[ReservationStation.scala 156:13]
  wire  rs_0_io_fmaMid_0_waitForAdd; // @[ReservationStation.scala 156:13]
  wire [5:0] rs_0_io_perf_0_value; // @[ReservationStation.scala 156:13]
  reg  rs_0_io_redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  rs_0_io_redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] rs_0_io_redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  rs_0_io_redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 188:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 188:27]
  ReservationStation_6 rs_0 ( // @[ReservationStation.scala 156:13]
    .clock(rs_0_clock),
    .reset(rs_0_reset),
    .io_redirect_valid(rs_0_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(rs_0_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(rs_0_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(rs_0_io_redirect_bits_level),
    .io_fromDispatch_0_ready(rs_0_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(rs_0_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_pd_isRVC(rs_0_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(rs_0_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(rs_0_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(rs_0_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(rs_0_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(rs_0_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(rs_0_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(rs_0_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(rs_0_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(rs_0_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_srcType_2(rs_0_io_fromDispatch_0_bits_ctrl_srcType_2),
    .io_fromDispatch_0_bits_ctrl_fuType(rs_0_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(rs_0_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(rs_0_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(rs_0_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(rs_0_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_ctrl_fpu_isAddSub(rs_0_io_fromDispatch_0_bits_ctrl_fpu_isAddSub),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagIn(rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn),
    .io_fromDispatch_0_bits_ctrl_fpu_typeTagOut(rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut),
    .io_fromDispatch_0_bits_ctrl_fpu_fromInt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fromInt),
    .io_fromDispatch_0_bits_ctrl_fpu_wflags(rs_0_io_fromDispatch_0_bits_ctrl_fpu_wflags),
    .io_fromDispatch_0_bits_ctrl_fpu_fpWen(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fpWen),
    .io_fromDispatch_0_bits_ctrl_fpu_fmaCmd(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd),
    .io_fromDispatch_0_bits_ctrl_fpu_div(rs_0_io_fromDispatch_0_bits_ctrl_fpu_div),
    .io_fromDispatch_0_bits_ctrl_fpu_sqrt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_sqrt),
    .io_fromDispatch_0_bits_ctrl_fpu_fcvt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fcvt),
    .io_fromDispatch_0_bits_ctrl_fpu_typ(rs_0_io_fromDispatch_0_bits_ctrl_fpu_typ),
    .io_fromDispatch_0_bits_ctrl_fpu_fmt(rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmt),
    .io_fromDispatch_0_bits_ctrl_fpu_ren3(rs_0_io_fromDispatch_0_bits_ctrl_fpu_ren3),
    .io_fromDispatch_0_bits_ctrl_fpu_rm(rs_0_io_fromDispatch_0_bits_ctrl_fpu_rm),
    .io_fromDispatch_0_bits_srcState_0(rs_0_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(rs_0_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_srcState_2(rs_0_io_fromDispatch_0_bits_srcState_2),
    .io_fromDispatch_0_bits_psrc_0(rs_0_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(rs_0_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_psrc_2(rs_0_io_fromDispatch_0_bits_psrc_2),
    .io_fromDispatch_0_bits_pdest(rs_0_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(rs_0_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(rs_0_io_fromDispatch_0_bits_robIdx_value),
    .io_srcRegValue_0_0(rs_0_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(rs_0_io_srcRegValue_0_1),
    .io_srcRegValue_0_2(rs_0_io_srcRegValue_0_2),
    .io_deq_0_ready(rs_0_io_deq_0_ready),
    .io_deq_0_valid(rs_0_io_deq_0_valid),
    .io_deq_0_bits_uop_ctrl_rfWen(rs_0_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(rs_0_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_ctrl_fpu_isAddSub(rs_0_io_deq_0_bits_uop_ctrl_fpu_isAddSub),
    .io_deq_0_bits_uop_ctrl_fpu_typeTagIn(rs_0_io_deq_0_bits_uop_ctrl_fpu_typeTagIn),
    .io_deq_0_bits_uop_ctrl_fpu_fmaCmd(rs_0_io_deq_0_bits_uop_ctrl_fpu_fmaCmd),
    .io_deq_0_bits_uop_ctrl_fpu_ren3(rs_0_io_deq_0_bits_uop_ctrl_fpu_ren3),
    .io_deq_0_bits_uop_ctrl_fpu_rm(rs_0_io_deq_0_bits_uop_ctrl_fpu_rm),
    .io_deq_0_bits_uop_pdest(rs_0_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(rs_0_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(rs_0_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_src_0(rs_0_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(rs_0_io_deq_0_bits_src_1),
    .io_deq_0_bits_src_2(rs_0_io_deq_0_bits_src_2),
    .io_fastUopsIn_0_valid(rs_0_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_fpWen(rs_0_io_fastUopsIn_0_bits_ctrl_fpWen),
    .io_fastUopsIn_0_bits_pdest(rs_0_io_fastUopsIn_0_bits_pdest),
    .io_fastDatas_0(rs_0_io_fastDatas_0),
    .io_slowPorts_0_valid(rs_0_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_0_bits_uop_ctrl_fpWen),
    .io_slowPorts_0_bits_uop_pdest(rs_0_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(rs_0_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(rs_0_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_1_bits_uop_ctrl_fpWen),
    .io_slowPorts_1_bits_uop_pdest(rs_0_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(rs_0_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(rs_0_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_2_bits_uop_ctrl_fpWen),
    .io_slowPorts_2_bits_uop_pdest(rs_0_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(rs_0_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(rs_0_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_fpWen(rs_0_io_slowPorts_3_bits_uop_ctrl_fpWen),
    .io_slowPorts_3_bits_uop_pdest(rs_0_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(rs_0_io_slowPorts_3_bits_data),
    .io_fmaMid_0_in_valid(rs_0_io_fmaMid_0_in_valid),
    .io_fmaMid_0_in_bits_fp_prod_sign(rs_0_io_fmaMid_0_in_bits_fp_prod_sign),
    .io_fmaMid_0_in_bits_fp_prod_exp(rs_0_io_fmaMid_0_in_bits_fp_prod_exp),
    .io_fmaMid_0_in_bits_fp_prod_sig(rs_0_io_fmaMid_0_in_bits_fp_prod_sig),
    .io_fmaMid_0_in_bits_inter_flags_isNaN(rs_0_io_fmaMid_0_in_bits_inter_flags_isNaN),
    .io_fmaMid_0_in_bits_inter_flags_isInf(rs_0_io_fmaMid_0_in_bits_inter_flags_isInf),
    .io_fmaMid_0_in_bits_inter_flags_isInv(rs_0_io_fmaMid_0_in_bits_inter_flags_isInv),
    .io_fmaMid_0_in_bits_inter_flags_overflow(rs_0_io_fmaMid_0_in_bits_inter_flags_overflow),
    .io_fmaMid_0_out_bits_fp_prod_sign(rs_0_io_fmaMid_0_out_bits_fp_prod_sign),
    .io_fmaMid_0_out_bits_fp_prod_exp(rs_0_io_fmaMid_0_out_bits_fp_prod_exp),
    .io_fmaMid_0_out_bits_fp_prod_sig(rs_0_io_fmaMid_0_out_bits_fp_prod_sig),
    .io_fmaMid_0_out_bits_inter_flags_isNaN(rs_0_io_fmaMid_0_out_bits_inter_flags_isNaN),
    .io_fmaMid_0_out_bits_inter_flags_isInf(rs_0_io_fmaMid_0_out_bits_inter_flags_isInf),
    .io_fmaMid_0_out_bits_inter_flags_isInv(rs_0_io_fmaMid_0_out_bits_inter_flags_isInv),
    .io_fmaMid_0_waitForAdd(rs_0_io_fmaMid_0_waitForAdd),
    .io_perf_0_value(rs_0_io_perf_0_value)
  );
  assign io_fromDispatch_0_ready = rs_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 174:21]
  assign io_deq_0_valid = rs_0_io_deq_0_valid; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_ctrl_rfWen = rs_0_io_deq_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_ctrl_fpWen = rs_0_io_deq_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_ctrl_fpu_isAddSub = rs_0_io_deq_0_bits_uop_ctrl_fpu_isAddSub; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_ctrl_fpu_typeTagIn = rs_0_io_deq_0_bits_uop_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_ctrl_fpu_fmaCmd = rs_0_io_deq_0_bits_uop_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_ctrl_fpu_ren3 = rs_0_io_deq_0_bits_uop_ctrl_fpu_ren3; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_ctrl_fpu_rm = rs_0_io_deq_0_bits_uop_ctrl_fpu_rm; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_pdest = rs_0_io_deq_0_bits_uop_pdest; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_robIdx_flag = rs_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_uop_robIdx_value = rs_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_src_0 = rs_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_src_1 = rs_0_io_deq_0_bits_src_1; // @[ReservationStation.scala 180:12]
  assign io_deq_0_bits_src_2 = rs_0_io_deq_0_bits_src_2; // @[ReservationStation.scala 180:12]
  assign io_fmaMid_0_in_valid = rs_0_io_fmaMid_0_in_valid; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_in_bits_fp_prod_sign = rs_0_io_fmaMid_0_in_bits_fp_prod_sign; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_in_bits_fp_prod_exp = rs_0_io_fmaMid_0_in_bits_fp_prod_exp; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_in_bits_fp_prod_sig = rs_0_io_fmaMid_0_in_bits_fp_prod_sig; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_in_bits_inter_flags_isNaN = rs_0_io_fmaMid_0_in_bits_inter_flags_isNaN; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_in_bits_inter_flags_isInf = rs_0_io_fmaMid_0_in_bits_inter_flags_isInf; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_in_bits_inter_flags_isInv = rs_0_io_fmaMid_0_in_bits_inter_flags_isInv; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_in_bits_inter_flags_overflow = rs_0_io_fmaMid_0_in_bits_inter_flags_overflow; // @[ReservationStation.scala 200:21]
  assign io_fmaMid_0_waitForAdd = rs_0_io_fmaMid_0_waitForAdd; // @[ReservationStation.scala 200:21]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 188:17]
  assign rs_0_clock = clock;
  assign rs_0_reset = reset;
  assign rs_0_io_redirect_valid = rs_0_io_redirect_next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign rs_0_io_redirect_bits_robIdx_flag = rs_0_io_redirect_next_bits_rrobIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign rs_0_io_redirect_bits_robIdx_value = rs_0_io_redirect_next_bits_rrobIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign rs_0_io_redirect_bits_level = rs_0_io_redirect_next_bits_rlevel; // @[BitUtils.scala 26:20 33:15]
  assign rs_0_io_fromDispatch_0_valid = io_fromDispatch_0_valid; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_isRVC = io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_brType = io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_isCall = io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pd_isRet = io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_pred_taken = io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_ftqPtr_flag = io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_ftqPtr_value = io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_cf_ftqOffset = io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_srcType_0 = io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_srcType_1 = io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_srcType_2 = io_fromDispatch_0_bits_ctrl_srcType_2; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fuType = io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fuOpType = io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_rfWen = io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpWen = io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_imm = io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_isAddSub = io_fromDispatch_0_bits_ctrl_fpu_isAddSub; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagIn = io_fromDispatch_0_bits_ctrl_fpu_typeTagIn; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_typeTagOut = io_fromDispatch_0_bits_ctrl_fpu_typeTagOut; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fromInt = io_fromDispatch_0_bits_ctrl_fpu_fromInt; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_wflags = io_fromDispatch_0_bits_ctrl_fpu_wflags; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fpWen = io_fromDispatch_0_bits_ctrl_fpu_fpWen; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmaCmd = io_fromDispatch_0_bits_ctrl_fpu_fmaCmd; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_div = io_fromDispatch_0_bits_ctrl_fpu_div; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_sqrt = io_fromDispatch_0_bits_ctrl_fpu_sqrt; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fcvt = io_fromDispatch_0_bits_ctrl_fpu_fcvt; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_typ = io_fromDispatch_0_bits_ctrl_fpu_typ; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_fmt = io_fromDispatch_0_bits_ctrl_fpu_fmt; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_ren3 = io_fromDispatch_0_bits_ctrl_fpu_ren3; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_ctrl_fpu_rm = io_fromDispatch_0_bits_ctrl_fpu_rm; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_srcState_0 = io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_srcState_1 = io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_srcState_2 = io_fromDispatch_0_bits_srcState_2; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_psrc_0 = io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_psrc_1 = io_fromDispatch_0_bits_psrc_1; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_psrc_2 = io_fromDispatch_0_bits_psrc_2; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_pdest = io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_robIdx_flag = io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 174:21]
  assign rs_0_io_fromDispatch_0_bits_robIdx_value = io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 174:21]
  assign rs_0_io_srcRegValue_0_0 = io_srcRegValue_0_0; // @[ReservationStation.scala 175:20]
  assign rs_0_io_srcRegValue_0_1 = io_srcRegValue_0_1; // @[ReservationStation.scala 175:20]
  assign rs_0_io_srcRegValue_0_2 = io_srcRegValue_0_2; // @[ReservationStation.scala 175:20]
  assign rs_0_io_deq_0_ready = io_deq_0_ready; // @[ReservationStation.scala 180:12]
  assign rs_0_io_fastUopsIn_0_valid = io_fastUopsIn_0_valid; // @[ReservationStation.scala 181:32]
  assign rs_0_io_fastUopsIn_0_bits_ctrl_fpWen = io_fastUopsIn_0_bits_ctrl_fpWen; // @[ReservationStation.scala 181:32]
  assign rs_0_io_fastUopsIn_0_bits_pdest = io_fastUopsIn_0_bits_pdest; // @[ReservationStation.scala 181:32]
  assign rs_0_io_fastDatas_0 = io_fastDatas_0; // @[ReservationStation.scala 182:31]
  assign rs_0_io_slowPorts_0_valid = io_slowPorts_0_valid; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_0_bits_uop_ctrl_fpWen = io_slowPorts_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_0_bits_uop_pdest = io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_0_bits_data = io_slowPorts_0_bits_data; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_1_valid = io_slowPorts_1_valid; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_1_bits_uop_ctrl_fpWen = io_slowPorts_1_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_1_bits_uop_pdest = io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_1_bits_data = io_slowPorts_1_bits_data; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_2_valid = io_slowPorts_2_valid; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_2_bits_uop_ctrl_fpWen = io_slowPorts_2_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_2_bits_uop_pdest = io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_2_bits_data = io_slowPorts_2_bits_data; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_3_valid = io_slowPorts_3_valid; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_3_bits_uop_ctrl_fpWen = io_slowPorts_3_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_3_bits_uop_pdest = io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 183:31]
  assign rs_0_io_slowPorts_3_bits_data = io_slowPorts_3_bits_data; // @[ReservationStation.scala 183:31]
  assign rs_0_io_fmaMid_0_out_bits_fp_prod_sign = io_fmaMid_0_out_bits_fp_prod_sign; // @[ReservationStation.scala 200:21]
  assign rs_0_io_fmaMid_0_out_bits_fp_prod_exp = io_fmaMid_0_out_bits_fp_prod_exp; // @[ReservationStation.scala 200:21]
  assign rs_0_io_fmaMid_0_out_bits_fp_prod_sig = io_fmaMid_0_out_bits_fp_prod_sig; // @[ReservationStation.scala 200:21]
  assign rs_0_io_fmaMid_0_out_bits_inter_flags_isNaN = io_fmaMid_0_out_bits_inter_flags_isNaN; // @[ReservationStation.scala 200:21]
  assign rs_0_io_fmaMid_0_out_bits_inter_flags_isInf = io_fmaMid_0_out_bits_inter_flags_isInf; // @[ReservationStation.scala 200:21]
  assign rs_0_io_fmaMid_0_out_bits_inter_flags_isInv = io_fmaMid_0_out_bits_inter_flags_isInv; // @[ReservationStation.scala 200:21]
  always @(posedge clock) begin
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      rs_0_io_redirect_next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      rs_0_io_redirect_next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      rs_0_io_redirect_next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= rs_0_io_perf_0_value; // @[PerfCounterUtils.scala 188:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 188:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      rs_0_io_redirect_next_valid_REG <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      rs_0_io_redirect_next_valid_REG <= io_redirect_valid; // @[BitUtils.scala 28:28]
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
  rs_0_io_redirect_next_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  rs_0_io_redirect_next_bits_rrobIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  rs_0_io_redirect_next_bits_rrobIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  rs_0_io_redirect_next_bits_rlevel = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_5[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    rs_0_io_redirect_next_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

