// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.1 (lin64) Build 5094488 Fri Jun 14 08:57:50 MDT 2024
// Date        : Mon May 25 15:27:32 2026
// Host        : leonardo running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /FPGA_projects/Genesys2_SVD/Genesys2_SVD/Genesys2_SVD.gen/sources_1/ip/mac_fifo_axi4/mac_fifo_axi4_sim_netlist.v
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
fckr0C5kxM2PdQ==
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
