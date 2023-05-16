module NegedgeDataModule__8entry(
  input         clock,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_1,
  input  [2:0]  io_raddr_2,
  output [2:0]  io_rdata_0_brSlots_0_offset,
  output        io_rdata_0_brSlots_0_valid,
  output [2:0]  io_rdata_0_tailSlot_offset,
  output        io_rdata_0_tailSlot_sharing,
  output        io_rdata_0_tailSlot_valid,
  output        io_rdata_0_isCall,
  output        io_rdata_0_isRet,
  output        io_rdata_0_isJalr,
  output [2:0]  io_rdata_1_brSlots_0_offset,
  output        io_rdata_1_brSlots_0_valid,
  output [2:0]  io_rdata_1_tailSlot_offset,
  output        io_rdata_1_tailSlot_sharing,
  output        io_rdata_1_tailSlot_valid,
  output        io_rdata_2_valid,
  output [2:0]  io_rdata_2_brSlots_0_offset,
  output [11:0] io_rdata_2_brSlots_0_lower,
  output [1:0]  io_rdata_2_brSlots_0_tarStat,
  output        io_rdata_2_brSlots_0_sharing,
  output        io_rdata_2_brSlots_0_valid,
  output [2:0]  io_rdata_2_tailSlot_offset,
  output [19:0] io_rdata_2_tailSlot_lower,
  output [1:0]  io_rdata_2_tailSlot_tarStat,
  output        io_rdata_2_tailSlot_sharing,
  output        io_rdata_2_tailSlot_valid,
  output [2:0]  io_rdata_2_pftAddr,
  output        io_rdata_2_carry,
  output        io_rdata_2_isCall,
  output        io_rdata_2_isRet,
  output        io_rdata_2_isJalr,
  output        io_rdata_2_last_may_be_rvi_call,
  output        io_rdata_2_always_taken_0,
  output        io_rdata_2_always_taken_1,
  input         io_wen_0,
  input  [2:0]  io_waddr_0,
  input         io_wdata_0_valid,
  input  [2:0]  io_wdata_0_brSlots_0_offset,
  input  [11:0] io_wdata_0_brSlots_0_lower,
  input  [1:0]  io_wdata_0_brSlots_0_tarStat,
  input         io_wdata_0_brSlots_0_sharing,
  input         io_wdata_0_brSlots_0_valid,
  input  [2:0]  io_wdata_0_tailSlot_offset,
  input  [19:0] io_wdata_0_tailSlot_lower,
  input  [1:0]  io_wdata_0_tailSlot_tarStat,
  input         io_wdata_0_tailSlot_sharing,
  input         io_wdata_0_tailSlot_valid,
  input  [2:0]  io_wdata_0_pftAddr,
  input         io_wdata_0_carry,
  input         io_wdata_0_isCall,
  input         io_wdata_0_isRet,
  input         io_wdata_0_isJalr,
  input         io_wdata_0_last_may_be_rvi_call,
  input         io_wdata_0_always_taken_0,
  input         io_wdata_0_always_taken_1
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
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
`endif // RANDOMIZE_REG_INIT
  reg  data_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_0_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_0_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_0_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_1_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_1_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_1_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_1_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_2_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_2_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_2_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_2_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_3_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_3_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_3_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_3_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_4_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_4_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_4_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_4_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_5_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_5_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_5_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_5_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_6_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_6_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_6_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_6_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_brSlots_0_offset; // @[DataModuleTemplate.scala 168:17]
  reg [11:0] data_7_brSlots_0_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_brSlots_0_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_brSlots_0_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_brSlots_0_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_tailSlot_offset; // @[DataModuleTemplate.scala 168:17]
  reg [19:0] data_7_tailSlot_lower; // @[DataModuleTemplate.scala 168:17]
  reg [1:0] data_7_tailSlot_tarStat; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_tailSlot_sharing; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_tailSlot_valid; // @[DataModuleTemplate.scala 168:17]
  reg [2:0] data_7_pftAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_carry; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isCall; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isRet; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isJalr; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_last_may_be_rvi_call; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_always_taken_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_always_taken_1; // @[DataModuleTemplate.scala 168:17]
  wire  read_by_0 = io_wen_0 & io_waddr_0 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec = 8'h1 << io_raddr_0; // @[OneHot.scala 64:12]
  wire  _io_rdata_0_T_67 = addr_dec[0] & data_0_isJalr | addr_dec[1] & data_1_isJalr | addr_dec[2] & data_2_isJalr |
    addr_dec[3] & data_3_isJalr | addr_dec[4] & data_4_isJalr | addr_dec[5] & data_5_isJalr | addr_dec[6] &
    data_6_isJalr | addr_dec[7] & data_7_isJalr; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_82 = addr_dec[0] & data_0_isRet | addr_dec[1] & data_1_isRet | addr_dec[2] & data_2_isRet |
    addr_dec[3] & data_3_isRet | addr_dec[4] & data_4_isRet | addr_dec[5] & data_5_isRet | addr_dec[6] & data_6_isRet |
    addr_dec[7] & data_7_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_97 = addr_dec[0] & data_0_isCall | addr_dec[1] & data_1_isCall | addr_dec[2] & data_2_isCall |
    addr_dec[3] & data_3_isCall | addr_dec[4] & data_4_isCall | addr_dec[5] & data_5_isCall | addr_dec[6] &
    data_6_isCall | addr_dec[7] & data_7_isCall; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_142 = addr_dec[0] & data_0_tailSlot_valid | addr_dec[1] & data_1_tailSlot_valid | addr_dec[2] &
    data_2_tailSlot_valid | addr_dec[3] & data_3_tailSlot_valid | addr_dec[4] & data_4_tailSlot_valid | addr_dec[5] &
    data_5_tailSlot_valid | addr_dec[6] & data_6_tailSlot_valid | addr_dec[7] & data_7_tailSlot_valid; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_157 = addr_dec[0] & data_0_tailSlot_sharing | addr_dec[1] & data_1_tailSlot_sharing | addr_dec[2]
     & data_2_tailSlot_sharing | addr_dec[3] & data_3_tailSlot_sharing | addr_dec[4] & data_4_tailSlot_sharing |
    addr_dec[5] & data_5_tailSlot_sharing | addr_dec[6] & data_6_tailSlot_sharing | addr_dec[7] &
    data_7_tailSlot_sharing; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_188 = addr_dec[0] ? data_0_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_189 = addr_dec[1] ? data_1_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_190 = addr_dec[2] ? data_2_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_191 = addr_dec[3] ? data_3_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_192 = addr_dec[4] ? data_4_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_193 = addr_dec[5] ? data_5_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_194 = addr_dec[6] ? data_6_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_195 = addr_dec[7] ? data_7_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_196 = _io_rdata_0_T_188 | _io_rdata_0_T_189; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_197 = _io_rdata_0_T_196 | _io_rdata_0_T_190; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_198 = _io_rdata_0_T_197 | _io_rdata_0_T_191; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_199 = _io_rdata_0_T_198 | _io_rdata_0_T_192; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_200 = _io_rdata_0_T_199 | _io_rdata_0_T_193; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_201 = _io_rdata_0_T_200 | _io_rdata_0_T_194; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_202 = _io_rdata_0_T_201 | _io_rdata_0_T_195; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_217 = addr_dec[0] & data_0_brSlots_0_valid | addr_dec[1] & data_1_brSlots_0_valid | addr_dec[2] &
    data_2_brSlots_0_valid | addr_dec[3] & data_3_brSlots_0_valid | addr_dec[4] & data_4_brSlots_0_valid | addr_dec[5]
     & data_5_brSlots_0_valid | addr_dec[6] & data_6_brSlots_0_valid | addr_dec[7] & data_7_brSlots_0_valid; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_263 = addr_dec[0] ? data_0_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_264 = addr_dec[1] ? data_1_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_265 = addr_dec[2] ? data_2_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_266 = addr_dec[3] ? data_3_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_267 = addr_dec[4] ? data_4_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_268 = addr_dec[5] ? data_5_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_269 = addr_dec[6] ? data_6_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_270 = addr_dec[7] ? data_7_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_271 = _io_rdata_0_T_263 | _io_rdata_0_T_264; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_272 = _io_rdata_0_T_271 | _io_rdata_0_T_265; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_273 = _io_rdata_0_T_272 | _io_rdata_0_T_266; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_274 = _io_rdata_0_T_273 | _io_rdata_0_T_267; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_275 = _io_rdata_0_T_274 | _io_rdata_0_T_268; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_276 = _io_rdata_0_T_275 | _io_rdata_0_T_269; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_277 = _io_rdata_0_T_276 | _io_rdata_0_T_270; // @[Mux.scala 27:73]
  wire  read_by_0_1 = io_wen_0 & io_waddr_0 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_1 = 8'h1 << io_raddr_1; // @[OneHot.scala 64:12]
  wire  _io_rdata_1_T_142 = addr_dec_1[0] & data_0_tailSlot_valid | addr_dec_1[1] & data_1_tailSlot_valid | addr_dec_1[2
    ] & data_2_tailSlot_valid | addr_dec_1[3] & data_3_tailSlot_valid | addr_dec_1[4] & data_4_tailSlot_valid |
    addr_dec_1[5] & data_5_tailSlot_valid | addr_dec_1[6] & data_6_tailSlot_valid | addr_dec_1[7] &
    data_7_tailSlot_valid; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_157 = addr_dec_1[0] & data_0_tailSlot_sharing | addr_dec_1[1] & data_1_tailSlot_sharing |
    addr_dec_1[2] & data_2_tailSlot_sharing | addr_dec_1[3] & data_3_tailSlot_sharing | addr_dec_1[4] &
    data_4_tailSlot_sharing | addr_dec_1[5] & data_5_tailSlot_sharing | addr_dec_1[6] & data_6_tailSlot_sharing |
    addr_dec_1[7] & data_7_tailSlot_sharing; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_188 = addr_dec_1[0] ? data_0_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_189 = addr_dec_1[1] ? data_1_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_190 = addr_dec_1[2] ? data_2_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_191 = addr_dec_1[3] ? data_3_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_192 = addr_dec_1[4] ? data_4_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_193 = addr_dec_1[5] ? data_5_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_194 = addr_dec_1[6] ? data_6_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_195 = addr_dec_1[7] ? data_7_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_196 = _io_rdata_1_T_188 | _io_rdata_1_T_189; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_197 = _io_rdata_1_T_196 | _io_rdata_1_T_190; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_198 = _io_rdata_1_T_197 | _io_rdata_1_T_191; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_199 = _io_rdata_1_T_198 | _io_rdata_1_T_192; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_200 = _io_rdata_1_T_199 | _io_rdata_1_T_193; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_201 = _io_rdata_1_T_200 | _io_rdata_1_T_194; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_202 = _io_rdata_1_T_201 | _io_rdata_1_T_195; // @[Mux.scala 27:73]
  wire  _io_rdata_1_T_217 = addr_dec_1[0] & data_0_brSlots_0_valid | addr_dec_1[1] & data_1_brSlots_0_valid | addr_dec_1
    [2] & data_2_brSlots_0_valid | addr_dec_1[3] & data_3_brSlots_0_valid | addr_dec_1[4] & data_4_brSlots_0_valid |
    addr_dec_1[5] & data_5_brSlots_0_valid | addr_dec_1[6] & data_6_brSlots_0_valid | addr_dec_1[7] &
    data_7_brSlots_0_valid; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_263 = addr_dec_1[0] ? data_0_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_264 = addr_dec_1[1] ? data_1_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_265 = addr_dec_1[2] ? data_2_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_266 = addr_dec_1[3] ? data_3_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_267 = addr_dec_1[4] ? data_4_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_268 = addr_dec_1[5] ? data_5_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_269 = addr_dec_1[6] ? data_6_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_270 = addr_dec_1[7] ? data_7_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_271 = _io_rdata_1_T_263 | _io_rdata_1_T_264; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_272 = _io_rdata_1_T_271 | _io_rdata_1_T_265; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_273 = _io_rdata_1_T_272 | _io_rdata_1_T_266; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_274 = _io_rdata_1_T_273 | _io_rdata_1_T_267; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_275 = _io_rdata_1_T_274 | _io_rdata_1_T_268; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_276 = _io_rdata_1_T_275 | _io_rdata_1_T_269; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_277 = _io_rdata_1_T_276 | _io_rdata_1_T_270; // @[Mux.scala 27:73]
  wire  read_by_0_2 = io_wen_0 & io_waddr_0 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_2 = 8'h1 << io_raddr_2; // @[OneHot.scala 64:12]
  wire  _io_rdata_2_T_22 = addr_dec_2[0] & data_0_always_taken_0 | addr_dec_2[1] & data_1_always_taken_0 | addr_dec_2[2]
     & data_2_always_taken_0 | addr_dec_2[3] & data_3_always_taken_0 | addr_dec_2[4] & data_4_always_taken_0 |
    addr_dec_2[5] & data_5_always_taken_0 | addr_dec_2[6] & data_6_always_taken_0 | addr_dec_2[7] &
    data_7_always_taken_0; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_37 = addr_dec_2[0] & data_0_always_taken_1 | addr_dec_2[1] & data_1_always_taken_1 | addr_dec_2[2]
     & data_2_always_taken_1 | addr_dec_2[3] & data_3_always_taken_1 | addr_dec_2[4] & data_4_always_taken_1 |
    addr_dec_2[5] & data_5_always_taken_1 | addr_dec_2[6] & data_6_always_taken_1 | addr_dec_2[7] &
    data_7_always_taken_1; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_52 = addr_dec_2[0] & data_0_last_may_be_rvi_call | addr_dec_2[1] & data_1_last_may_be_rvi_call |
    addr_dec_2[2] & data_2_last_may_be_rvi_call | addr_dec_2[3] & data_3_last_may_be_rvi_call | addr_dec_2[4] &
    data_4_last_may_be_rvi_call | addr_dec_2[5] & data_5_last_may_be_rvi_call | addr_dec_2[6] &
    data_6_last_may_be_rvi_call | addr_dec_2[7] & data_7_last_may_be_rvi_call; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_67 = addr_dec_2[0] & data_0_isJalr | addr_dec_2[1] & data_1_isJalr | addr_dec_2[2] & data_2_isJalr
     | addr_dec_2[3] & data_3_isJalr | addr_dec_2[4] & data_4_isJalr | addr_dec_2[5] & data_5_isJalr | addr_dec_2[6] &
    data_6_isJalr | addr_dec_2[7] & data_7_isJalr; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_82 = addr_dec_2[0] & data_0_isRet | addr_dec_2[1] & data_1_isRet | addr_dec_2[2] & data_2_isRet |
    addr_dec_2[3] & data_3_isRet | addr_dec_2[4] & data_4_isRet | addr_dec_2[5] & data_5_isRet | addr_dec_2[6] &
    data_6_isRet | addr_dec_2[7] & data_7_isRet; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_97 = addr_dec_2[0] & data_0_isCall | addr_dec_2[1] & data_1_isCall | addr_dec_2[2] & data_2_isCall
     | addr_dec_2[3] & data_3_isCall | addr_dec_2[4] & data_4_isCall | addr_dec_2[5] & data_5_isCall | addr_dec_2[6] &
    data_6_isCall | addr_dec_2[7] & data_7_isCall; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_112 = addr_dec_2[0] & data_0_carry | addr_dec_2[1] & data_1_carry | addr_dec_2[2] & data_2_carry
     | addr_dec_2[3] & data_3_carry | addr_dec_2[4] & data_4_carry | addr_dec_2[5] & data_5_carry | addr_dec_2[6] &
    data_6_carry | addr_dec_2[7] & data_7_carry; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_113 = addr_dec_2[0] ? data_0_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_114 = addr_dec_2[1] ? data_1_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_115 = addr_dec_2[2] ? data_2_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_116 = addr_dec_2[3] ? data_3_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_117 = addr_dec_2[4] ? data_4_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_118 = addr_dec_2[5] ? data_5_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_119 = addr_dec_2[6] ? data_6_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_120 = addr_dec_2[7] ? data_7_pftAddr : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_121 = _io_rdata_2_T_113 | _io_rdata_2_T_114; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_122 = _io_rdata_2_T_121 | _io_rdata_2_T_115; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_123 = _io_rdata_2_T_122 | _io_rdata_2_T_116; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_124 = _io_rdata_2_T_123 | _io_rdata_2_T_117; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_125 = _io_rdata_2_T_124 | _io_rdata_2_T_118; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_126 = _io_rdata_2_T_125 | _io_rdata_2_T_119; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_127 = _io_rdata_2_T_126 | _io_rdata_2_T_120; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_142 = addr_dec_2[0] & data_0_tailSlot_valid | addr_dec_2[1] & data_1_tailSlot_valid | addr_dec_2[2
    ] & data_2_tailSlot_valid | addr_dec_2[3] & data_3_tailSlot_valid | addr_dec_2[4] & data_4_tailSlot_valid |
    addr_dec_2[5] & data_5_tailSlot_valid | addr_dec_2[6] & data_6_tailSlot_valid | addr_dec_2[7] &
    data_7_tailSlot_valid; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_157 = addr_dec_2[0] & data_0_tailSlot_sharing | addr_dec_2[1] & data_1_tailSlot_sharing |
    addr_dec_2[2] & data_2_tailSlot_sharing | addr_dec_2[3] & data_3_tailSlot_sharing | addr_dec_2[4] &
    data_4_tailSlot_sharing | addr_dec_2[5] & data_5_tailSlot_sharing | addr_dec_2[6] & data_6_tailSlot_sharing |
    addr_dec_2[7] & data_7_tailSlot_sharing; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_158 = addr_dec_2[0] ? data_0_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_159 = addr_dec_2[1] ? data_1_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_160 = addr_dec_2[2] ? data_2_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_161 = addr_dec_2[3] ? data_3_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_162 = addr_dec_2[4] ? data_4_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_163 = addr_dec_2[5] ? data_5_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_164 = addr_dec_2[6] ? data_6_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_165 = addr_dec_2[7] ? data_7_tailSlot_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_166 = _io_rdata_2_T_158 | _io_rdata_2_T_159; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_167 = _io_rdata_2_T_166 | _io_rdata_2_T_160; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_168 = _io_rdata_2_T_167 | _io_rdata_2_T_161; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_169 = _io_rdata_2_T_168 | _io_rdata_2_T_162; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_170 = _io_rdata_2_T_169 | _io_rdata_2_T_163; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_171 = _io_rdata_2_T_170 | _io_rdata_2_T_164; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_172 = _io_rdata_2_T_171 | _io_rdata_2_T_165; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_173 = addr_dec_2[0] ? data_0_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_174 = addr_dec_2[1] ? data_1_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_175 = addr_dec_2[2] ? data_2_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_176 = addr_dec_2[3] ? data_3_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_177 = addr_dec_2[4] ? data_4_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_178 = addr_dec_2[5] ? data_5_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_179 = addr_dec_2[6] ? data_6_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_180 = addr_dec_2[7] ? data_7_tailSlot_lower : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_181 = _io_rdata_2_T_173 | _io_rdata_2_T_174; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_182 = _io_rdata_2_T_181 | _io_rdata_2_T_175; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_183 = _io_rdata_2_T_182 | _io_rdata_2_T_176; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_184 = _io_rdata_2_T_183 | _io_rdata_2_T_177; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_185 = _io_rdata_2_T_184 | _io_rdata_2_T_178; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_186 = _io_rdata_2_T_185 | _io_rdata_2_T_179; // @[Mux.scala 27:73]
  wire [19:0] _io_rdata_2_T_187 = _io_rdata_2_T_186 | _io_rdata_2_T_180; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_188 = addr_dec_2[0] ? data_0_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_189 = addr_dec_2[1] ? data_1_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_190 = addr_dec_2[2] ? data_2_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_191 = addr_dec_2[3] ? data_3_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_192 = addr_dec_2[4] ? data_4_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_193 = addr_dec_2[5] ? data_5_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_194 = addr_dec_2[6] ? data_6_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_195 = addr_dec_2[7] ? data_7_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_196 = _io_rdata_2_T_188 | _io_rdata_2_T_189; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_197 = _io_rdata_2_T_196 | _io_rdata_2_T_190; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_198 = _io_rdata_2_T_197 | _io_rdata_2_T_191; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_199 = _io_rdata_2_T_198 | _io_rdata_2_T_192; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_200 = _io_rdata_2_T_199 | _io_rdata_2_T_193; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_201 = _io_rdata_2_T_200 | _io_rdata_2_T_194; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_202 = _io_rdata_2_T_201 | _io_rdata_2_T_195; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_217 = addr_dec_2[0] & data_0_brSlots_0_valid | addr_dec_2[1] & data_1_brSlots_0_valid | addr_dec_2
    [2] & data_2_brSlots_0_valid | addr_dec_2[3] & data_3_brSlots_0_valid | addr_dec_2[4] & data_4_brSlots_0_valid |
    addr_dec_2[5] & data_5_brSlots_0_valid | addr_dec_2[6] & data_6_brSlots_0_valid | addr_dec_2[7] &
    data_7_brSlots_0_valid; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_232 = addr_dec_2[0] & data_0_brSlots_0_sharing | addr_dec_2[1] & data_1_brSlots_0_sharing |
    addr_dec_2[2] & data_2_brSlots_0_sharing | addr_dec_2[3] & data_3_brSlots_0_sharing | addr_dec_2[4] &
    data_4_brSlots_0_sharing | addr_dec_2[5] & data_5_brSlots_0_sharing | addr_dec_2[6] & data_6_brSlots_0_sharing |
    addr_dec_2[7] & data_7_brSlots_0_sharing; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_233 = addr_dec_2[0] ? data_0_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_234 = addr_dec_2[1] ? data_1_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_235 = addr_dec_2[2] ? data_2_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_236 = addr_dec_2[3] ? data_3_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_237 = addr_dec_2[4] ? data_4_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_238 = addr_dec_2[5] ? data_5_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_239 = addr_dec_2[6] ? data_6_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_240 = addr_dec_2[7] ? data_7_brSlots_0_tarStat : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_241 = _io_rdata_2_T_233 | _io_rdata_2_T_234; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_242 = _io_rdata_2_T_241 | _io_rdata_2_T_235; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_243 = _io_rdata_2_T_242 | _io_rdata_2_T_236; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_244 = _io_rdata_2_T_243 | _io_rdata_2_T_237; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_245 = _io_rdata_2_T_244 | _io_rdata_2_T_238; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_246 = _io_rdata_2_T_245 | _io_rdata_2_T_239; // @[Mux.scala 27:73]
  wire [1:0] _io_rdata_2_T_247 = _io_rdata_2_T_246 | _io_rdata_2_T_240; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_248 = addr_dec_2[0] ? data_0_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_249 = addr_dec_2[1] ? data_1_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_250 = addr_dec_2[2] ? data_2_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_251 = addr_dec_2[3] ? data_3_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_252 = addr_dec_2[4] ? data_4_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_253 = addr_dec_2[5] ? data_5_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_254 = addr_dec_2[6] ? data_6_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_255 = addr_dec_2[7] ? data_7_brSlots_0_lower : 12'h0; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_256 = _io_rdata_2_T_248 | _io_rdata_2_T_249; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_257 = _io_rdata_2_T_256 | _io_rdata_2_T_250; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_258 = _io_rdata_2_T_257 | _io_rdata_2_T_251; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_259 = _io_rdata_2_T_258 | _io_rdata_2_T_252; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_260 = _io_rdata_2_T_259 | _io_rdata_2_T_253; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_261 = _io_rdata_2_T_260 | _io_rdata_2_T_254; // @[Mux.scala 27:73]
  wire [11:0] _io_rdata_2_T_262 = _io_rdata_2_T_261 | _io_rdata_2_T_255; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_263 = addr_dec_2[0] ? data_0_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_264 = addr_dec_2[1] ? data_1_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_265 = addr_dec_2[2] ? data_2_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_266 = addr_dec_2[3] ? data_3_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_267 = addr_dec_2[4] ? data_4_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_268 = addr_dec_2[5] ? data_5_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_269 = addr_dec_2[6] ? data_6_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_270 = addr_dec_2[7] ? data_7_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_271 = _io_rdata_2_T_263 | _io_rdata_2_T_264; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_272 = _io_rdata_2_T_271 | _io_rdata_2_T_265; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_273 = _io_rdata_2_T_272 | _io_rdata_2_T_266; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_274 = _io_rdata_2_T_273 | _io_rdata_2_T_267; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_275 = _io_rdata_2_T_274 | _io_rdata_2_T_268; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_276 = _io_rdata_2_T_275 | _io_rdata_2_T_269; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_2_T_277 = _io_rdata_2_T_276 | _io_rdata_2_T_270; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_292 = addr_dec_2[0] & data_0_valid | addr_dec_2[1] & data_1_valid | addr_dec_2[2] & data_2_valid
     | addr_dec_2[3] & data_3_valid | addr_dec_2[4] & data_4_valid | addr_dec_2[5] & data_5_valid | addr_dec_2[6] &
    data_6_valid | addr_dec_2[7] & data_7_valid; // @[Mux.scala 27:73]
  wire [7:0] waddr_dec_0 = 8'h1 << io_waddr_0; // @[OneHot.scala 57:35]
  wire  write_wen_0 = io_wen_0 & waddr_dec_0[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_1 = io_wen_0 & waddr_dec_0[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_2 = io_wen_0 & waddr_dec_0[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_3 = io_wen_0 & waddr_dec_0[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_4 = io_wen_0 & waddr_dec_0[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_5 = io_wen_0 & waddr_dec_0[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_6 = io_wen_0 & waddr_dec_0[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_7 = io_wen_0 & waddr_dec_0[7]; // @[DataModuleTemplate.scala 188:57]
  assign io_rdata_0_brSlots_0_offset = |read_by_0 ? io_wdata_0_brSlots_0_offset : _io_rdata_0_T_277; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_brSlots_0_valid = |read_by_0 ? io_wdata_0_brSlots_0_valid : _io_rdata_0_T_217; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_tailSlot_offset = |read_by_0 ? io_wdata_0_tailSlot_offset : _io_rdata_0_T_202; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_tailSlot_sharing = |read_by_0 ? io_wdata_0_tailSlot_sharing : _io_rdata_0_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_tailSlot_valid = |read_by_0 ? io_wdata_0_tailSlot_valid : _io_rdata_0_T_142; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isCall = |read_by_0 ? io_wdata_0_isCall : _io_rdata_0_T_97; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isRet = |read_by_0 ? io_wdata_0_isRet : _io_rdata_0_T_82; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isJalr = |read_by_0 ? io_wdata_0_isJalr : _io_rdata_0_T_67; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_brSlots_0_offset = |read_by_0_1 ? io_wdata_0_brSlots_0_offset : _io_rdata_1_T_277; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_brSlots_0_valid = |read_by_0_1 ? io_wdata_0_brSlots_0_valid : _io_rdata_1_T_217; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_tailSlot_offset = |read_by_0_1 ? io_wdata_0_tailSlot_offset : _io_rdata_1_T_202; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_tailSlot_sharing = |read_by_0_1 ? io_wdata_0_tailSlot_sharing : _io_rdata_1_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_tailSlot_valid = |read_by_0_1 ? io_wdata_0_tailSlot_valid : _io_rdata_1_T_142; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_valid = |read_by_0_2 ? io_wdata_0_valid : _io_rdata_2_T_292; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_brSlots_0_offset = |read_by_0_2 ? io_wdata_0_brSlots_0_offset : _io_rdata_2_T_277; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_brSlots_0_lower = |read_by_0_2 ? io_wdata_0_brSlots_0_lower : _io_rdata_2_T_262; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_brSlots_0_tarStat = |read_by_0_2 ? io_wdata_0_brSlots_0_tarStat : _io_rdata_2_T_247; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_brSlots_0_sharing = |read_by_0_2 ? io_wdata_0_brSlots_0_sharing : _io_rdata_2_T_232; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_brSlots_0_valid = |read_by_0_2 ? io_wdata_0_brSlots_0_valid : _io_rdata_2_T_217; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_tailSlot_offset = |read_by_0_2 ? io_wdata_0_tailSlot_offset : _io_rdata_2_T_202; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_tailSlot_lower = |read_by_0_2 ? io_wdata_0_tailSlot_lower : _io_rdata_2_T_187; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_tailSlot_tarStat = |read_by_0_2 ? io_wdata_0_tailSlot_tarStat : _io_rdata_2_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_tailSlot_sharing = |read_by_0_2 ? io_wdata_0_tailSlot_sharing : _io_rdata_2_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_tailSlot_valid = |read_by_0_2 ? io_wdata_0_tailSlot_valid : _io_rdata_2_T_142; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_pftAddr = |read_by_0_2 ? io_wdata_0_pftAddr : _io_rdata_2_T_127; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_carry = |read_by_0_2 ? io_wdata_0_carry : _io_rdata_2_T_112; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isCall = |read_by_0_2 ? io_wdata_0_isCall : _io_rdata_2_T_97; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isRet = |read_by_0_2 ? io_wdata_0_isRet : _io_rdata_2_T_82; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isJalr = |read_by_0_2 ? io_wdata_0_isJalr : _io_rdata_2_T_67; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_last_may_be_rvi_call = |read_by_0_2 ? io_wdata_0_last_may_be_rvi_call : _io_rdata_2_T_52; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_always_taken_0 = |read_by_0_2 ? io_wdata_0_always_taken_0 : _io_rdata_2_T_22; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_always_taken_1 = |read_by_0_2 ? io_wdata_0_always_taken_1 : _io_rdata_2_T_37; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  always @(negedge clock) begin
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_valid <= io_wdata_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_pftAddr <= io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_carry <= io_wdata_0_carry; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isCall <= io_wdata_0_isCall; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isRet <= io_wdata_0_isRet; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isJalr <= io_wdata_0_isJalr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_always_taken_0 <= io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_always_taken_1 <= io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 190:15]
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
  data_0_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  data_0_brSlots_0_offset = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  data_0_brSlots_0_lower = _RAND_2[11:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_brSlots_0_tarStat = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_brSlots_0_sharing = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_brSlots_0_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  data_0_tailSlot_offset = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  data_0_tailSlot_lower = _RAND_7[19:0];
  _RAND_8 = {1{`RANDOM}};
  data_0_tailSlot_tarStat = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  data_0_tailSlot_sharing = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  data_0_tailSlot_valid = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  data_0_pftAddr = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  data_0_carry = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  data_0_isCall = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  data_0_isRet = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  data_0_isJalr = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  data_0_last_may_be_rvi_call = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  data_0_always_taken_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  data_0_always_taken_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_1_valid = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  data_1_brSlots_0_offset = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  data_1_brSlots_0_lower = _RAND_21[11:0];
  _RAND_22 = {1{`RANDOM}};
  data_1_brSlots_0_tarStat = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  data_1_brSlots_0_sharing = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  data_1_brSlots_0_valid = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_1_tailSlot_offset = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  data_1_tailSlot_lower = _RAND_26[19:0];
  _RAND_27 = {1{`RANDOM}};
  data_1_tailSlot_tarStat = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  data_1_tailSlot_sharing = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  data_1_tailSlot_valid = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  data_1_pftAddr = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  data_1_carry = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  data_1_isCall = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  data_1_isRet = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  data_1_isJalr = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  data_1_last_may_be_rvi_call = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  data_1_always_taken_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  data_1_always_taken_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  data_2_valid = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  data_2_brSlots_0_offset = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  data_2_brSlots_0_lower = _RAND_40[11:0];
  _RAND_41 = {1{`RANDOM}};
  data_2_brSlots_0_tarStat = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  data_2_brSlots_0_sharing = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  data_2_brSlots_0_valid = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  data_2_tailSlot_offset = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  data_2_tailSlot_lower = _RAND_45[19:0];
  _RAND_46 = {1{`RANDOM}};
  data_2_tailSlot_tarStat = _RAND_46[1:0];
  _RAND_47 = {1{`RANDOM}};
  data_2_tailSlot_sharing = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  data_2_tailSlot_valid = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  data_2_pftAddr = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  data_2_carry = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  data_2_isCall = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  data_2_isRet = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  data_2_isJalr = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  data_2_last_may_be_rvi_call = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  data_2_always_taken_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  data_2_always_taken_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  data_3_valid = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  data_3_brSlots_0_offset = _RAND_58[2:0];
  _RAND_59 = {1{`RANDOM}};
  data_3_brSlots_0_lower = _RAND_59[11:0];
  _RAND_60 = {1{`RANDOM}};
  data_3_brSlots_0_tarStat = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  data_3_brSlots_0_sharing = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  data_3_brSlots_0_valid = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  data_3_tailSlot_offset = _RAND_63[2:0];
  _RAND_64 = {1{`RANDOM}};
  data_3_tailSlot_lower = _RAND_64[19:0];
  _RAND_65 = {1{`RANDOM}};
  data_3_tailSlot_tarStat = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  data_3_tailSlot_sharing = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  data_3_tailSlot_valid = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  data_3_pftAddr = _RAND_68[2:0];
  _RAND_69 = {1{`RANDOM}};
  data_3_carry = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  data_3_isCall = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  data_3_isRet = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  data_3_isJalr = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  data_3_last_may_be_rvi_call = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  data_3_always_taken_0 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  data_3_always_taken_1 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  data_4_valid = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  data_4_brSlots_0_offset = _RAND_77[2:0];
  _RAND_78 = {1{`RANDOM}};
  data_4_brSlots_0_lower = _RAND_78[11:0];
  _RAND_79 = {1{`RANDOM}};
  data_4_brSlots_0_tarStat = _RAND_79[1:0];
  _RAND_80 = {1{`RANDOM}};
  data_4_brSlots_0_sharing = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  data_4_brSlots_0_valid = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  data_4_tailSlot_offset = _RAND_82[2:0];
  _RAND_83 = {1{`RANDOM}};
  data_4_tailSlot_lower = _RAND_83[19:0];
  _RAND_84 = {1{`RANDOM}};
  data_4_tailSlot_tarStat = _RAND_84[1:0];
  _RAND_85 = {1{`RANDOM}};
  data_4_tailSlot_sharing = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  data_4_tailSlot_valid = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  data_4_pftAddr = _RAND_87[2:0];
  _RAND_88 = {1{`RANDOM}};
  data_4_carry = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  data_4_isCall = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  data_4_isRet = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  data_4_isJalr = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  data_4_last_may_be_rvi_call = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  data_4_always_taken_0 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  data_4_always_taken_1 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  data_5_valid = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  data_5_brSlots_0_offset = _RAND_96[2:0];
  _RAND_97 = {1{`RANDOM}};
  data_5_brSlots_0_lower = _RAND_97[11:0];
  _RAND_98 = {1{`RANDOM}};
  data_5_brSlots_0_tarStat = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  data_5_brSlots_0_sharing = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  data_5_brSlots_0_valid = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  data_5_tailSlot_offset = _RAND_101[2:0];
  _RAND_102 = {1{`RANDOM}};
  data_5_tailSlot_lower = _RAND_102[19:0];
  _RAND_103 = {1{`RANDOM}};
  data_5_tailSlot_tarStat = _RAND_103[1:0];
  _RAND_104 = {1{`RANDOM}};
  data_5_tailSlot_sharing = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  data_5_tailSlot_valid = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  data_5_pftAddr = _RAND_106[2:0];
  _RAND_107 = {1{`RANDOM}};
  data_5_carry = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  data_5_isCall = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  data_5_isRet = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  data_5_isJalr = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  data_5_last_may_be_rvi_call = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  data_5_always_taken_0 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  data_5_always_taken_1 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  data_6_valid = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  data_6_brSlots_0_offset = _RAND_115[2:0];
  _RAND_116 = {1{`RANDOM}};
  data_6_brSlots_0_lower = _RAND_116[11:0];
  _RAND_117 = {1{`RANDOM}};
  data_6_brSlots_0_tarStat = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  data_6_brSlots_0_sharing = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  data_6_brSlots_0_valid = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  data_6_tailSlot_offset = _RAND_120[2:0];
  _RAND_121 = {1{`RANDOM}};
  data_6_tailSlot_lower = _RAND_121[19:0];
  _RAND_122 = {1{`RANDOM}};
  data_6_tailSlot_tarStat = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  data_6_tailSlot_sharing = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  data_6_tailSlot_valid = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  data_6_pftAddr = _RAND_125[2:0];
  _RAND_126 = {1{`RANDOM}};
  data_6_carry = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  data_6_isCall = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  data_6_isRet = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  data_6_isJalr = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  data_6_last_may_be_rvi_call = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  data_6_always_taken_0 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  data_6_always_taken_1 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  data_7_valid = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  data_7_brSlots_0_offset = _RAND_134[2:0];
  _RAND_135 = {1{`RANDOM}};
  data_7_brSlots_0_lower = _RAND_135[11:0];
  _RAND_136 = {1{`RANDOM}};
  data_7_brSlots_0_tarStat = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  data_7_brSlots_0_sharing = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  data_7_brSlots_0_valid = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  data_7_tailSlot_offset = _RAND_139[2:0];
  _RAND_140 = {1{`RANDOM}};
  data_7_tailSlot_lower = _RAND_140[19:0];
  _RAND_141 = {1{`RANDOM}};
  data_7_tailSlot_tarStat = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  data_7_tailSlot_sharing = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  data_7_tailSlot_valid = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  data_7_pftAddr = _RAND_144[2:0];
  _RAND_145 = {1{`RANDOM}};
  data_7_carry = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  data_7_isCall = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  data_7_isRet = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  data_7_isJalr = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  data_7_last_may_be_rvi_call = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  data_7_always_taken_0 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  data_7_always_taken_1 = _RAND_151[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

