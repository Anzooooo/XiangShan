module SRAMTemplate_216(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [9:0] io_rreq_bits_setIdx,
  output [6:0] io_rresp_data_0,
  input        io_wreq_valid,
  input  [9:0] io_wreq_bits_setIdx,
  input  [6:0] io_wreq_bits_data_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [9:0] array_RW0_addr; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 113:26]
  wire [6:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 113:26]
  wire [6:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 113:26]
  reg  resetState; // @[SRAMTemplate.scala 117:30]
  reg [9:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 10'h3ff; // @[Counter.scala 74:24]
  wire [9:0] _wrap_value_T_1 = resetSet + 10'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  wen = io_wreq_valid | resetState; // @[SRAMTemplate.scala 125:52]
  wire  realRen = io_rreq_valid & ~wen; // @[SRAMTemplate.scala 126:38]
  wire [9:0] setIdx = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 128:19]
  array_22 array ( // @[SRAMTemplate.scala 113:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0 = array_RW0_rdata_0; // @[SRAMTemplate.scala 165:{22,22}]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 131:14]
  assign array_RW0_wdata_0 = resetState ? 7'h0 : io_wreq_bits_data_0; // @[SRAMTemplate.scala 129:26]
  assign array_RW0_en = realRen | wen;
  assign array_RW0_wmode = io_wreq_valid | resetState; // @[SRAMTemplate.scala 125:52]
  assign array_RW0_addr = wen ? setIdx : io_rreq_bits_setIdx;
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SRAMTemplate.scala 119:24]
      resetState <= 1'h1; // @[SRAMTemplate.scala 119:38]
    end else if (resetFinish) begin // @[SRAMTemplate.scala 117:30]
      resetState <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Counter.scala 120:16]
      resetSet <= 10'h0; // @[Counter.scala 78:15]
    end else if (resetState) begin // @[Counter.scala 62:40]
      resetSet <= _wrap_value_T_1;
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
  resetState = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetSet = _RAND_1[9:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetState = 1'h1;
  end
  if (reset) begin
    resetSet = 10'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

