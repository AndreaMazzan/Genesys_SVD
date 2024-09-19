



connect_debug_port u_ila_0/probe0 [get_nets [list {payload/top_SVD/main_control/iter_count[0]} {payload/top_SVD/main_control/iter_count[1]} {payload/top_SVD/main_control/iter_count[2]} {payload/top_SVD/main_control/iter_count[3]}]]


connect_debug_port dbg_hub/clk [get_nets clk_aux]

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
connect_debug_port u_ila_0/clk [get_nets [list infra/clocks/clko_ipb]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {payload/top_SVD/main_control/iter_count_reg[0]} {payload/top_SVD/main_control/iter_count_reg[1]} {payload/top_SVD/main_control/iter_count_reg[2]} {payload/top_SVD/main_control/iter_count_reg[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {payload/addr_in_ram[0]} {payload/addr_in_ram[1]} {payload/addr_in_ram[2]} {payload/addr_in_ram[3]} {payload/addr_in_ram[4]} {payload/addr_in_ram[5]} {payload/addr_in_ram[6]} {payload/addr_in_ram[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {payload/d_in_ram[0]} {payload/d_in_ram[1]} {payload/d_in_ram[2]} {payload/d_in_ram[3]} {payload/d_in_ram[4]} {payload/d_in_ram[5]} {payload/d_in_ram[6]} {payload/d_in_ram[7]} {payload/d_in_ram[8]} {payload/d_in_ram[9]} {payload/d_in_ram[10]} {payload/d_in_ram[11]} {payload/d_in_ram[12]} {payload/d_in_ram[13]} {payload/d_in_ram[14]} {payload/d_in_ram[15]} {payload/d_in_ram[16]} {payload/d_in_ram[17]} {payload/d_in_ram[18]} {payload/d_in_ram[19]} {payload/d_in_ram[20]} {payload/d_in_ram[21]} {payload/d_in_ram[22]} {payload/d_in_ram[23]} {payload/d_in_ram[24]} {payload/d_in_ram[25]} {payload/d_in_ram[26]} {payload/d_in_ram[27]} {payload/d_in_ram[28]} {payload/d_in_ram[29]} {payload/d_in_ram[30]} {payload/d_in_ram[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {payload/top_SVD/signal_q[0]} {payload/top_SVD/signal_q[1]} {payload/top_SVD/signal_q[2]} {payload/top_SVD/signal_q[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 4 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {payload/top_SVD/signal_p[0]} {payload/top_SVD/signal_p[1]} {payload/top_SVD/signal_p[2]} {payload/top_SVD/signal_p[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list payload/write_enable_in_ram]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list payload/top_SVD/mat_mult_done]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_ipb]
