// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Aug 19 16:33:14 2024
// Host        : localhost.localdomain running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/andrea/Documents/uhal_software/FPGA_comm_with_ASIC/2023-firmware-fpga-comm/new_firmware/genesys2_AM_28nm/genesys2_AM_28nm.gen/sources_1/ip/mac_fifo_axi4/mac_fifo_axi4_sim_netlist.v
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
pgpTdx29bbzyoQ==
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
