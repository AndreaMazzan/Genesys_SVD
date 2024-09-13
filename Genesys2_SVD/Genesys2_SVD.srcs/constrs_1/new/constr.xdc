



connect_debug_port u_ila_0/probe0 [get_nets [list {payload/top_SVD/main_control/iter_count[0]} {payload/top_SVD/main_control/iter_count[1]} {payload/top_SVD/main_control/iter_count[2]} {payload/top_SVD/main_control/iter_count[3]}]]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list infra/clocks/clko_125]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {payload/top_SVD/main_control/iter_count_reg[0]} {payload/top_SVD/main_control/iter_count_reg[1]} {payload/top_SVD/main_control/iter_count_reg[2]} {payload/top_SVD/main_control/iter_count_reg[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {payload/top_SVD/matmult_address_A_out[0]} {payload/top_SVD/matmult_address_A_out[1]} {payload/top_SVD/matmult_address_A_out[2]} {payload/top_SVD/matmult_address_A_out[3]} {payload/top_SVD/matmult_address_A_out[4]} {payload/top_SVD/matmult_address_A_out[5]} {payload/top_SVD/matmult_address_A_out[6]} {payload/top_SVD/matmult_address_A_out[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {payload/top_SVD/signal_p[0]} {payload/top_SVD/signal_p[1]} {payload/top_SVD/signal_p[2]} {payload/top_SVD/signal_p[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {payload/top_SVD/matmult_matrix_value_JL[0]} {payload/top_SVD/matmult_matrix_value_JL[1]} {payload/top_SVD/matmult_matrix_value_JL[2]} {payload/top_SVD/matmult_matrix_value_JL[3]} {payload/top_SVD/matmult_matrix_value_JL[4]} {payload/top_SVD/matmult_matrix_value_JL[5]} {payload/top_SVD/matmult_matrix_value_JL[6]} {payload/top_SVD/matmult_matrix_value_JL[7]} {payload/top_SVD/matmult_matrix_value_JL[8]} {payload/top_SVD/matmult_matrix_value_JL[9]} {payload/top_SVD/matmult_matrix_value_JL[10]} {payload/top_SVD/matmult_matrix_value_JL[11]} {payload/top_SVD/matmult_matrix_value_JL[12]} {payload/top_SVD/matmult_matrix_value_JL[13]} {payload/top_SVD/matmult_matrix_value_JL[14]} {payload/top_SVD/matmult_matrix_value_JL[15]} {payload/top_SVD/matmult_matrix_value_JL[16]} {payload/top_SVD/matmult_matrix_value_JL[17]} {payload/top_SVD/matmult_matrix_value_JL[18]} {payload/top_SVD/matmult_matrix_value_JL[19]} {payload/top_SVD/matmult_matrix_value_JL[20]} {payload/top_SVD/matmult_matrix_value_JL[21]} {payload/top_SVD/matmult_matrix_value_JL[22]} {payload/top_SVD/matmult_matrix_value_JL[23]} {payload/top_SVD/matmult_matrix_value_JL[24]} {payload/top_SVD/matmult_matrix_value_JL[25]} {payload/top_SVD/matmult_matrix_value_JL[26]} {payload/top_SVD/matmult_matrix_value_JL[27]} {payload/top_SVD/matmult_matrix_value_JL[28]} {payload/top_SVD/matmult_matrix_value_JL[29]} {payload/top_SVD/matmult_matrix_value_JL[30]} {payload/top_SVD/matmult_matrix_value_JL[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {payload/top_SVD/d_in_ram[0]} {payload/top_SVD/d_in_ram[1]} {payload/top_SVD/d_in_ram[2]} {payload/top_SVD/d_in_ram[3]} {payload/top_SVD/d_in_ram[4]} {payload/top_SVD/d_in_ram[5]} {payload/top_SVD/d_in_ram[6]} {payload/top_SVD/d_in_ram[7]} {payload/top_SVD/d_in_ram[8]} {payload/top_SVD/d_in_ram[9]} {payload/top_SVD/d_in_ram[10]} {payload/top_SVD/d_in_ram[11]} {payload/top_SVD/d_in_ram[12]} {payload/top_SVD/d_in_ram[13]} {payload/top_SVD/d_in_ram[14]} {payload/top_SVD/d_in_ram[15]} {payload/top_SVD/d_in_ram[16]} {payload/top_SVD/d_in_ram[17]} {payload/top_SVD/d_in_ram[18]} {payload/top_SVD/d_in_ram[19]} {payload/top_SVD/d_in_ram[20]} {payload/top_SVD/d_in_ram[21]} {payload/top_SVD/d_in_ram[22]} {payload/top_SVD/d_in_ram[23]} {payload/top_SVD/d_in_ram[24]} {payload/top_SVD/d_in_ram[25]} {payload/top_SVD/d_in_ram[26]} {payload/top_SVD/d_in_ram[27]} {payload/top_SVD/d_in_ram[28]} {payload/top_SVD/d_in_ram[29]} {payload/top_SVD/d_in_ram[30]} {payload/top_SVD/d_in_ram[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 4 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {payload/top_SVD/signal_q[0]} {payload/top_SVD/signal_q[1]} {payload/top_SVD/signal_q[2]} {payload/top_SVD/signal_q[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {payload/top_SVD/matmult_matrix_value_JR[0]} {payload/top_SVD/matmult_matrix_value_JR[1]} {payload/top_SVD/matmult_matrix_value_JR[2]} {payload/top_SVD/matmult_matrix_value_JR[3]} {payload/top_SVD/matmult_matrix_value_JR[4]} {payload/top_SVD/matmult_matrix_value_JR[5]} {payload/top_SVD/matmult_matrix_value_JR[6]} {payload/top_SVD/matmult_matrix_value_JR[7]} {payload/top_SVD/matmult_matrix_value_JR[8]} {payload/top_SVD/matmult_matrix_value_JR[9]} {payload/top_SVD/matmult_matrix_value_JR[10]} {payload/top_SVD/matmult_matrix_value_JR[11]} {payload/top_SVD/matmult_matrix_value_JR[12]} {payload/top_SVD/matmult_matrix_value_JR[13]} {payload/top_SVD/matmult_matrix_value_JR[14]} {payload/top_SVD/matmult_matrix_value_JR[15]} {payload/top_SVD/matmult_matrix_value_JR[16]} {payload/top_SVD/matmult_matrix_value_JR[17]} {payload/top_SVD/matmult_matrix_value_JR[18]} {payload/top_SVD/matmult_matrix_value_JR[19]} {payload/top_SVD/matmult_matrix_value_JR[20]} {payload/top_SVD/matmult_matrix_value_JR[21]} {payload/top_SVD/matmult_matrix_value_JR[22]} {payload/top_SVD/matmult_matrix_value_JR[23]} {payload/top_SVD/matmult_matrix_value_JR[24]} {payload/top_SVD/matmult_matrix_value_JR[25]} {payload/top_SVD/matmult_matrix_value_JR[26]} {payload/top_SVD/matmult_matrix_value_JR[27]} {payload/top_SVD/matmult_matrix_value_JR[28]} {payload/top_SVD/matmult_matrix_value_JR[29]} {payload/top_SVD/matmult_matrix_value_JR[30]} {payload/top_SVD/matmult_matrix_value_JR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list payload/top_SVD/mat_mult_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list payload/top_SVD/mat_mult_ready]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_aux]
