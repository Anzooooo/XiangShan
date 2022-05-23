/***************************************************************************************
* Copyright (c) 2020-2021 Institute of Computing Technology, Chinese Academy of Sciences
* Copyright (c) 2020-2021 Peng Cheng Laboratory
*
* XiangShan is licensed under Mulan PSL v2.
* You can use this software according to the terms and conditions of the Mulan PSL v2.
* You may obtain a copy of Mulan PSL v2 at:
*          http://license.coscl.org.cn/MulanPSL2
*
* THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
* EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
* MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
*
* See the Mulan PSL v2 for more details.
***************************************************************************************/

package xiangshan.backend.rename.freelist

import chipsalliance.rocketchip.config.Parameters
import chisel3._
import chisel3.util._
import xiangshan._
import utils._


class MEFreeList(size: Int)(implicit p: Parameters) extends BaseFreeList(size) with HasPerfEvents {
  val freeList = RegInit(VecInit(
    // originally {32, 33, ..., size - 1} are free. Register 0-31 are mapped to x0-x31.
    Seq.tabulate(size - 32)(i => (i + 32).U(PhyRegIdxWidth.W)) ++ Seq.fill(32)(0.U(PhyRegIdxWidth.W))))

  // head and tail pointer
  val headPtr = RegInit(FreeListPtr(false.B, 0.U))
  val tailPtr = RegInit(FreeListPtr(false.B, (size - 32).U))

  val doRename = io.canAllocate && io.doAllocate && !io.redirect && !io.walk

  /**
    * Allocation: from freelist (same as StdFreelist)
    */
  val allocatePtr = (0 until RenameWidth).map(i => headPtr + i.U)
  val phyRegCandidates = VecInit(allocatePtr.map(ptr => freeList(ptr.value)))
  for (i <- 0 until RenameWidth) {
    // enqueue instr, is move elimination
    io.allocatePhyReg(i) := phyRegCandidates(PopCount(io.allocateReq.take(i)))
  }
  // update head pointer
  val headPtrNext = headPtr + PopCount(io.allocateReq)
  headPtr := Mux(doRename, headPtrNext, headPtr)


  /**
    * Deallocation: when refCounter becomes zero, the register can be released to freelist
    */
  for (i <- 0 until CommitWidth) {
    when (io.freeReq(i)) {
      val freePtr = tailPtr + PopCount(io.freeReq.take(i))
      freeList(freePtr.value) := io.freePhyReg(i)
    }
  }

  // update tail pointer
  val tailPtrNext = tailPtr + PopCount(io.freeReq)
  tailPtr := tailPtrNext

  val freeRegCnt = Mux(doRename, distanceBetween(tailPtrNext, headPtrNext), distanceBetween(tailPtrNext, headPtr))
  io.canAllocate := RegNext(freeRegCnt) >= RenameWidth.U

  val perfEvents = Seq(
    ("me_freelist_1_4_valid",  freeRegCnt <= (size / 4).U                                    ),
    ("me_freelist_2_4_valid", (freeRegCnt >  (size / 4).U) & (freeRegCnt <= (size / 2).U)    ),
    ("me_freelist_3_4_valid", (freeRegCnt >  (size / 2).U) & (freeRegCnt <= (size * 3 / 4).U)),
    ("me_freelist_4_4_valid",  freeRegCnt >  (size * 3 / 4).U                                ),
  )
  generatePerfEvent()
}
