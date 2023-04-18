// name:array_ext depth:32 width:216 masked:true maskGran:27 maskSeg:8
module array_ext(
  input RW0_clk,
  input [4:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [7:0] RW0_wmask,
  input [215:0] RW0_wdata,
  output [215:0] RW0_rdata
);


  reg reg_RW0_ren;
  reg [4:0] reg_RW0_addr;
  reg [215:0] ram [31:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 32; initvar = initvar+1)
        ram[initvar] = {7 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][26:0] <= RW0_wdata[26:0];
      if (RW0_wmask[1]) ram[RW0_addr][53:27] <= RW0_wdata[53:27];
      if (RW0_wmask[2]) ram[RW0_addr][80:54] <= RW0_wdata[80:54];
      if (RW0_wmask[3]) ram[RW0_addr][107:81] <= RW0_wdata[107:81];
      if (RW0_wmask[4]) ram[RW0_addr][134:108] <= RW0_wdata[134:108];
      if (RW0_wmask[5]) ram[RW0_addr][161:135] <= RW0_wdata[161:135];
      if (RW0_wmask[6]) ram[RW0_addr][188:162] <= RW0_wdata[188:162];
      if (RW0_wmask[7]) ram[RW0_addr][215:189] <= RW0_wdata[215:189];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [223:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random, $random, $random, $random, $random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random, $random, $random, $random, $random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[215:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule
