// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Aug 19 16:33:13 2024
// Host        : localhost.localdomain running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/andrea/Documents/uhal_software/FPGA_comm_with_ASIC/2023-firmware-fpga-comm/new_firmware/genesys2_AM_28nm/genesys2_AM_28nm.gen/sources_1/ip/mac_fifo_axi4/mac_fifo_axi4_stub.v
// Design      : mac_fifo_axi4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *)
module mac_fifo_axi4(wr_rst_busy, rd_rst_busy, m_aclk, s_aclk, 
  s_aresetn, s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tlast, s_axis_tuser, 
  m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tlast, m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="wr_rst_busy,rd_rst_busy,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[7:0],s_axis_tlast,s_axis_tuser[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[7:0],m_axis_tlast,m_axis_tuser[0:0]" */
/* synthesis syn_force_seq_prim="m_aclk" */
/* synthesis syn_force_seq_prim="s_aclk" */;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk /* synthesis syn_isclock = 1 */;
  input s_aclk /* synthesis syn_isclock = 1 */;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
endmodule
