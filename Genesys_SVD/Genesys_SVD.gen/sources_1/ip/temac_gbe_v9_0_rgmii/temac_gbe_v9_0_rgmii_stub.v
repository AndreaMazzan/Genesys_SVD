// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.1 (lin64) Build 5094488 Fri Jun 14 08:57:50 MDT 2024
// Date        : Fri Sep 13 17:11:46 2024
// Host        : localhost.localdomain running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/andrea/Documents/Genesys2-SVD-IPbus/Genesys_SVD/Genesys_SVD.gen/sources_1/ip/temac_gbe_v9_0_rgmii/temac_gbe_v9_0_rgmii_stub.v
// Design      : temac_gbe_v9_0_rgmii
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "temac_gbe_v9_0_rgmii_block,Vivado 2024.1" *)
module temac_gbe_v9_0_rgmii(gtx_clk, gtx_clk90, glbl_rstn, rx_axi_rstn, 
  tx_axi_rstn, rx_statistics_vector, rx_statistics_valid, rx_mac_aclk, rx_reset, 
  rx_axis_mac_tdata, rx_axis_mac_tvalid, rx_axis_mac_tlast, rx_axis_mac_tuser, 
  tx_ifg_delay, tx_statistics_vector, tx_statistics_valid, tx_mac_aclk, tx_reset, 
  tx_axis_mac_tdata, tx_axis_mac_tvalid, tx_axis_mac_tlast, tx_axis_mac_tuser, 
  tx_axis_mac_tready, pause_req, pause_val, speedis100, speedis10100, rgmii_txd, rgmii_tx_ctl, 
  rgmii_txc, rgmii_rxd, rgmii_rx_ctl, rgmii_rxc, inband_link_status, inband_clock_speed, 
  inband_duplex_status, rx_configuration_vector, tx_configuration_vector)
/* synthesis syn_black_box black_box_pad_pin="glbl_rstn,rx_axi_rstn,tx_axi_rstn,rx_statistics_vector[27:0],rx_statistics_valid,rx_reset,rx_axis_mac_tdata[7:0],rx_axis_mac_tvalid,rx_axis_mac_tlast,rx_axis_mac_tuser,tx_ifg_delay[7:0],tx_statistics_vector[31:0],tx_statistics_valid,tx_reset,tx_axis_mac_tdata[7:0],tx_axis_mac_tvalid,tx_axis_mac_tlast,tx_axis_mac_tuser[0:0],tx_axis_mac_tready,pause_req,pause_val[15:0],speedis100,speedis10100,rgmii_txd[3:0],rgmii_tx_ctl,rgmii_txc,rgmii_rxd[3:0],rgmii_rx_ctl,rgmii_rxc,inband_link_status,inband_clock_speed[1:0],inband_duplex_status,rx_configuration_vector[79:0],tx_configuration_vector[79:0]" */
/* synthesis syn_force_seq_prim="gtx_clk" */
/* synthesis syn_force_seq_prim="gtx_clk90" */
/* synthesis syn_force_seq_prim="rx_mac_aclk" */
/* synthesis syn_force_seq_prim="tx_mac_aclk" */;
  input gtx_clk /* synthesis syn_isclock = 1 */;
  input gtx_clk90 /* synthesis syn_isclock = 1 */;
  input glbl_rstn;
  input rx_axi_rstn;
  input tx_axi_rstn;
  output [27:0]rx_statistics_vector;
  output rx_statistics_valid;
  output rx_mac_aclk /* synthesis syn_isclock = 1 */;
  output rx_reset;
  output [7:0]rx_axis_mac_tdata;
  output rx_axis_mac_tvalid;
  output rx_axis_mac_tlast;
  output rx_axis_mac_tuser;
  input [7:0]tx_ifg_delay;
  output [31:0]tx_statistics_vector;
  output tx_statistics_valid;
  output tx_mac_aclk /* synthesis syn_isclock = 1 */;
  output tx_reset;
  input [7:0]tx_axis_mac_tdata;
  input tx_axis_mac_tvalid;
  input tx_axis_mac_tlast;
  input [0:0]tx_axis_mac_tuser;
  output tx_axis_mac_tready;
  input pause_req;
  input [15:0]pause_val;
  output speedis100;
  output speedis10100;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output inband_link_status;
  output [1:0]inband_clock_speed;
  output inband_duplex_status;
  input [79:0]rx_configuration_vector;
  input [79:0]tx_configuration_vector;
endmodule
