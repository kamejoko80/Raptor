/* Generated by Yosys 0.18+10 (git sha1 daf9624a5, gcc 11.2.0 -fPIC -Os) */

module bidirec_intf(clk, reset, Ta, Tb, in_a, in_b, ino_a, ino_b, ino_bn, outa, outb);
  input Ta;
  input Tb;
  input clk;
  input in_a;
  input in_b;
  inout ino_a;
  inout ino_b;
  inout ino_bn;
  output outa;
  output outb;
  input reset;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:7" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:7" *)
  wire Ta;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:31" *)
  wire Ta_in;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:8" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:8" *)
  wire Tb;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:32" *)
  wire Tb_in;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:4" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:4" *)
  wire clk;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:10" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:10" *)
  wire in_a;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:24" *)
  wire in_a_in;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:11" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:11" *)
  wire in_b;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:25" *)
  wire in_b_in;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:13" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:13" *)
  wire ino_a;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:14" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:14" *)
  wire ino_b;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:15" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:15" *)
  wire ino_bn;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:17" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:17" *)
  wire outa;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:28" *)
  wire outa_in;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:18" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:18" *)
  wire outb;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:29" *)
  wire outb_in;
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:5" *)
  (* src = "/nfs_scratch/zafar/FPGA_PRIMITIVE_TEST_CASE/IO_BUFS/bidirec_intf.sv:5" *)
  wire reset;
  I_BUF #(
    .DELAY(1'h0),
    .PULL_UP_DOWN("NONE"),
    .REG_EN("FALSE"),
    .SLEW_RATE("FAST")
  ) ibuf_inst1 (
    .C(clk),
    .I(in_a),
    .O(in_a_in)
  );
  I_BUF #(
    .DELAY(1'h0),
    .PULL_UP_DOWN("NONE"),
    .REG_EN("FALSE"),
    .SLEW_RATE("FAST")
  ) ibuf_inst2 (
    .C(clk),
    .I(in_b),
    .O(in_b_in)
  );
  I_BUF #(
    .DELAY(1'h0),
    .PULL_UP_DOWN("NONE"),
    .REG_EN("FALSE"),
    .SLEW_RATE("FAST")
  ) ibuf_inst3 (
    .C(clk),
    .I(Ta),
    .O(Ta_in)
  );
  I_BUF #(
    .DELAY(1'h0),
    .PULL_UP_DOWN("NONE"),
    .REG_EN("FALSE"),
    .SLEW_RATE("FAST")
  ) ibuf_inst4 (
    .C(clk),
    .I(Tb),
    .O(Tb_in)
  );
  IO_BUF iobuf_inst (
    .I(in_a_in),
    .IO(ino_a),
    .O(outa_in),
    .T(Ta_in)
  );
  IO_BUF_DS iobufds_inst (
    .I(in_b_in),
    .ION(ino_bn),
    .IOP(ino_b),
    .O(outb_in),
    .T(Tb_in)
  );
  O_BUF #(
    .DELAY(1'h0),
    .PULL_UP_DOWN("NONE"),
    .REG_EN("FALSE"),
    .SLEW_RATE("FAST")
  ) obuf_inst5 (
    .C(clk),
    .I(outa_in),
    .O(outa)
  );
  O_BUF #(
    .DELAY(1'h0),
    .PULL_UP_DOWN("NONE"),
    .REG_EN("FALSE"),
    .SLEW_RATE("FAST")
  ) obuf_inst6 (
    .C(clk),
    .I(outb_in),
    .O(outa)
  );
  assign outb = 1'hx;
endmodule