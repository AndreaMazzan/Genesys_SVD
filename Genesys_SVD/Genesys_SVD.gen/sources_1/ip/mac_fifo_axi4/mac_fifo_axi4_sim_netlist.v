// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.1 (lin64) Build 5094488 Fri Jun 14 08:57:50 MDT 2024
// Date        : Fri Sep 13 17:11:42 2024
// Host        : localhost.localdomain running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/andrea/Documents/Genesys2-SVD-IPbus/Genesys_SVD/Genesys_SVD.gen/sources_1/ip/mac_fifo_axi4/mac_fifo_axi4_sim_netlist.v
// Design      : mac_fifo_axi4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mac_fifo_axi4,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module mac_fifo_axi4
   (wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser);
  output wr_rst_busy;
  output rd_rst_busy;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 master_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME master_aclk, ASSOCIATED_BUSIF M_AXIS:M_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input m_aclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 slave_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) input [0:0]s_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire m_aclk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [17:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign rd_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "10" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "1" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "13" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "16" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "4" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  mac_fifo_axi4_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[4:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[4:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[4:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[17:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(m_aclk),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(s_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module mac_fifo_axi4_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module mac_fifo_axi4_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module mac_fifo_axi4_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module mac_fifo_axi4_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module mac_fifo_axi4_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module mac_fifo_axi4_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VRufLWT3xuzTvQKo8VrgeA7TQuqzWEYy/B1VZF2gTA62OnYpyvfz/jYVlv8uQmDxe/ByRttr4gwP
tNck8lOlu04WorDYZXBY99Iv+CD1MRsK+y6klNIUbRWjkWmJ0jF7xfzo5v6+6GlaIHD1nYWB0BGS
XKOLLgkxdDTc9QzwJD4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uL+N2Y0N0Nss4UIbL4YgwYw1dJAEJxw9VgIJekBqgLF5Hu0OvgBycKBL3tx4bMFtXLoBUh2ZjpPa
Go57AlryR20NeXp3+hoQeboPP11E649UsEN94qUxaPWE5/ujAWzWT8PMJfk3CAspcIaP3XsDNcxF
vPCbKLRNyWvSzyiofwOXgxNNgLi38SzcrWZtPo/eMELIxeVE3bkV2B7I60W9KI1gXiOj3SjPTDnx
EMAbJCwmbwCkTXljtuzvIRTsGb9QIurgASMwg4IWmb9DS6EbeVgoWu9ePD+YKuN3LcW87KSgmC3y
Mirx3ScsFGRfcOAUOLlOQxU4qqE1ZAjtBAua1w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ngggZ4AaOolK7F7zeqf8LCxDCGfbvArfgDzbRvoxE+aIi2H2/ZgHbrcaf1Km1cW+38j2kTOpZ5BU
JUI2G5HZNfsoiLXjFbOMvQQqByNzlhCZjrS3N725Cznvy/nQpUy+kW4iA6DQZKnpdC2s18Suxi5p
XtgDcUzCh62ABICOpz8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FzAmLTVxyHRqX0WAddlPopAH/5r3ExgkeVujmhMcJXHbjZ+OKAHOMXTsnwDh03EpZ2Dn+0UPeR9J
JML3A+MQGMuUUzy/4d/lj5rriSnTu0eRK0uK6Gl8vjL08vO3UKb6wGj/w9CP45OWOkbMNgZzJkAl
ulPX0OUqymWYOn3WVAtIlaQ0dmpONV8p6Ixe9p5wlEtvy+7JjUPwaVnKlLjKSAaYD07OqMK+IOEP
5oYs2BscpZ3YKlKVJkoU493L7szHHn2LhSUrMld33nLuWIO6WPdo2u2pTnWXl/J1BzNaK1VaLx4R
H7VhIvgYcSlzCrtbQuNHKFtDPGhXjeA41TS29g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oad6Ezs+KRRjlYrAkExu4Kft2T1qNa0HGt8W7O1ByK1ecBs0TGWt/sS3pnt6d6jWuqvsWhrmcGsU
TD7Z+IY65xRZ4IJfgngZD8v540FOGMuFUS31UWxcC7CI6qOo20Q0Irtoxrqm01u5p3tI87ApsE8S
lc2lQ5dh54cGYlRfmo5mYTw6WSHyyVYmoh9npUliD4eNVIKUqnBo1kmYzicnKe8ewFKTEWpjdMeZ
/4YxF/NRZzHTA3GIsnjcgOHia68T/NJJ+zQmoNwxerZWWoacU1EU0IHxET3y4fS/u0Af8OJhkGQf
jI0jGobNLRYYufemCxL6333z0oAno0RiPZlavA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LVIUY1x0cEHel3aUfppGw9v6zvpZmh/zrCgsFGWLi8t0vWUC/ikETYOpuFw/0f9L2t8c6tQj/BSQ
wjvzq42gFgtW+CFBjgHAVUBDHhzlv/GKUM/2Vq36bMg9H5f44nJH+7mDDGVPf2PyYZRkAosFPUpA
wRqTC/g2mQ0mMY/gZGQRrs+/VY69Ze9sjoEiEXuwkb/+/VjXgHCxiCzG4cKf0ZiQ+rePhqJqB7FK
IJ+6LHriZD474qtFLq3fOZ9mrqOgN7iBQlc66dO9E0RmZZZsWtQQzZ4q1c2pzvsjDdJyWe0mTlwa
QGVmYElSvL9in5WwDxoKM+2J7vco8OIexLgbJg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qf9CPkJTDS6nRjzJ66HoyvpTqtDB4QY3Hy9peOp3xA39ggAvytqhHhiPv35dCRWSCdAyO1u2m+O7
/knms947I+MYTpHHfukyZsBbLho0jRq3cSXe9e6VE+4Dt40wryd91cmi93qmeUxg+vf0F91ug50P
gJ4oGYP71ANEq1UaGqGHgVK0ZsY6jTyc0x25eh+fnXg6vElSbqcptvyGMOBVT/g+gDKIheN40WzZ
Tday7b7o8j+UecVazn9OG8lGmgEQH+ilZfelpEFOBKoEc7YS6kKJ1yiX5nxRMJalTuojq5mhxebk
EsmPJe45gdIAuAmBpw3iLddcx52Arew1xpNY9w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
H+d/6javaSRU2swARkzTIL8p3itaD4ohPxaTAeOjHpt7R9NIiNpHJvUFWkpZ02WVRAGHIw8Kujz3
6qQbQgKv8nhuS0lDhOHSDBVglvTONFSPjBj6pNY2XB24O4tlMghNicwCBXjxGXS6xET2pHNCj46f
01l0BHXfAtSn5SMPu3KYxDnod+2/TDKoWzzX29rrvh4wvf+eKFGbEVa3/RP2yg+Mp05W5p0KZ1Z3
JvOIxc57qFLARbLg1ToAzgZ8iZXLB5tX2Ez+rVDzW4i9ZvMW40QGIP5F6KCmuWunjVyqcasQ+9V7
oxcmw4sBdn0TYckrmrDvGtKxr+at316tB9uFJzLHWIwjnROKDoFwhcBbXzoqNoU/oBWqorM8JnDS
d/8tvN+7zx+k1OgCrpu5jgCA2E9LIMqL+HO19rub4MD4RjgOufHPDbN2wv6I9bj3Tko+kBZSFxxR
1SnGvhgPAaZJxQLEM+WE8SnVMzJI0RKNctcFv/jmWTYmAdTGIiTDAcmW

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WXM4aFffz6byfeUnRWfxJR3Sbg31hpZIfhJu9O4aqVdZMRQzhrArOJ75qYkGOgZjI+35a4DA9Ohc
RMh3Tm8A5kh9XM67B45s3+7vF8pYIM5pFlzEQBSQ/OeeAi6GNLI2ACXQl1WutRpQKuwX9iboEsRb
Kc1SU6AOV6yaliF6tUt1LL4x+bC8mqlEHTk6SvN7aiA23tVDcik1QSH66CO3/+J5f88G53DHDqtY
T6w2k7pUziwTnLfirI+XpPgqYp9YYRQEv52Q7wTYJlYnVYrMyludNuTaIE27AkgPAneEkdJlrq9l
eVOgs6ZIO1DEusKG7VzkbM1sS0GnU5Zhuj1Eww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KJ2iLB3UgRnxezAEg3KJ/gREzXcLo8pOtacMRsDMsFCSD3vYAdGUKSARO8g71pIGFzJo6PBwogFR
MkJED/0TqwZaleoFaN2ULuSnzZGmf8vT0qKvutBGquDn8MH7T3k3wLxcNdZQLnkqisJCMj8u+71g
xMQRAkhtAQvA2cWb6TDQN6jmfByZuu/AH3X+YZ43XIDG/jymNkwyBWNNx0yzbZouJtOuzzYHhYoC
AAuKR+zfynO91P9hcrXFiExHtCmvb73DA4ICLGiOzEj+C1PMPBX9AHdhnWYy5BbQGsd727Y50yNo
xmTU1vBKL2ewwN4j/Ib2AK/Z7T+d/NunpRbCnA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eYDP9MWXRUmO05etuHvoqbEMRNQHmR5nos71kLkRxpycXrdpHxalQmyEdCdbeVoM8lN9qwxKuN0l
yQn00dSYRi3P02ygaVsHqVAsRtz2yRpIRjyGMYD7zKpnNQw476DBmK+/sCD7EH6NxSfzUNnfoURL
uIFC0sHEYpwX6Qt2bT2GdCC0OFvaGwQNimyTFdfeey7cdpg9JmsQRgLEUfRwG1Dk0iu258zTUnT+
31O5RA9OwlgZJpC+LpCvL8XAmGZJ4CCeUf2hnpppoV4KphAV4mCBUkNtUYZSJdF0a5cdHFxnxR5n
nI0ed4USMMiNvLqvP0HQgecfCvYzYx9kk0bmtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 83344)
`pragma protect data_block
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
7MKzQDJZV6posQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
