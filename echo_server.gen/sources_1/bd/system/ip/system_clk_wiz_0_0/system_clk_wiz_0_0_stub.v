// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed May 22 08:16:25 2024
// Host        : deulamco-4060M running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/deulamco/Documents/echo_server/echo_server.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_stub.v
// Design      : system_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_clk_wiz_0_0(clk_out166, clk_out200, clk_out25, resetn, 
  locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="resetn,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out166" */
/* synthesis syn_force_seq_prim="clk_out200" */
/* synthesis syn_force_seq_prim="clk_out25" */;
  output clk_out166 /* synthesis syn_isclock = 1 */;
  output clk_out200 /* synthesis syn_isclock = 1 */;
  output clk_out25 /* synthesis syn_isclock = 1 */;
  input resetn;
  output locked;
  input clk_in1;
endmodule
