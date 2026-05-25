

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
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {payload/top_SVD/a_pq_out[0]} {payload/top_SVD/a_pq_out[1]} {payload/top_SVD/a_pq_out[2]} {payload/top_SVD/a_pq_out[3]} {payload/top_SVD/a_pq_out[4]} {payload/top_SVD/a_pq_out[5]} {payload/top_SVD/a_pq_out[6]} {payload/top_SVD/a_pq_out[7]} {payload/top_SVD/a_pq_out[8]} {payload/top_SVD/a_pq_out[9]} {payload/top_SVD/a_pq_out[10]} {payload/top_SVD/a_pq_out[11]} {payload/top_SVD/a_pq_out[12]} {payload/top_SVD/a_pq_out[13]} {payload/top_SVD/a_pq_out[14]} {payload/top_SVD/a_pq_out[15]} {payload/top_SVD/a_pq_out[16]} {payload/top_SVD/a_pq_out[17]} {payload/top_SVD/a_pq_out[18]} {payload/top_SVD/a_pq_out[19]} {payload/top_SVD/a_pq_out[20]} {payload/top_SVD/a_pq_out[21]} {payload/top_SVD/a_pq_out[22]} {payload/top_SVD/a_pq_out[23]} {payload/top_SVD/a_pq_out[24]} {payload/top_SVD/a_pq_out[25]} {payload/top_SVD/a_pq_out[26]} {payload/top_SVD/a_pq_out[27]} {payload/top_SVD/a_pq_out[28]} {payload/top_SVD/a_pq_out[29]} {payload/top_SVD/a_pq_out[30]} {payload/top_SVD/a_pq_out[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {payload/top_SVD/a_pp_out[0]} {payload/top_SVD/a_pp_out[1]} {payload/top_SVD/a_pp_out[2]} {payload/top_SVD/a_pp_out[3]} {payload/top_SVD/a_pp_out[4]} {payload/top_SVD/a_pp_out[5]} {payload/top_SVD/a_pp_out[6]} {payload/top_SVD/a_pp_out[7]} {payload/top_SVD/a_pp_out[8]} {payload/top_SVD/a_pp_out[9]} {payload/top_SVD/a_pp_out[10]} {payload/top_SVD/a_pp_out[11]} {payload/top_SVD/a_pp_out[12]} {payload/top_SVD/a_pp_out[13]} {payload/top_SVD/a_pp_out[14]} {payload/top_SVD/a_pp_out[15]} {payload/top_SVD/a_pp_out[16]} {payload/top_SVD/a_pp_out[17]} {payload/top_SVD/a_pp_out[18]} {payload/top_SVD/a_pp_out[19]} {payload/top_SVD/a_pp_out[20]} {payload/top_SVD/a_pp_out[21]} {payload/top_SVD/a_pp_out[22]} {payload/top_SVD/a_pp_out[23]} {payload/top_SVD/a_pp_out[24]} {payload/top_SVD/a_pp_out[25]} {payload/top_SVD/a_pp_out[26]} {payload/top_SVD/a_pp_out[27]} {payload/top_SVD/a_pp_out[28]} {payload/top_SVD/a_pp_out[29]} {payload/top_SVD/a_pp_out[30]} {payload/top_SVD/a_pp_out[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {payload/top_SVD/input_value_last_jacobi[0]} {payload/top_SVD/input_value_last_jacobi[1]} {payload/top_SVD/input_value_last_jacobi[2]} {payload/top_SVD/input_value_last_jacobi[3]} {payload/top_SVD/input_value_last_jacobi[4]} {payload/top_SVD/input_value_last_jacobi[5]} {payload/top_SVD/input_value_last_jacobi[6]} {payload/top_SVD/input_value_last_jacobi[7]} {payload/top_SVD/input_value_last_jacobi[8]} {payload/top_SVD/input_value_last_jacobi[9]} {payload/top_SVD/input_value_last_jacobi[10]} {payload/top_SVD/input_value_last_jacobi[11]} {payload/top_SVD/input_value_last_jacobi[12]} {payload/top_SVD/input_value_last_jacobi[13]} {payload/top_SVD/input_value_last_jacobi[14]} {payload/top_SVD/input_value_last_jacobi[15]} {payload/top_SVD/input_value_last_jacobi[16]} {payload/top_SVD/input_value_last_jacobi[17]} {payload/top_SVD/input_value_last_jacobi[18]} {payload/top_SVD/input_value_last_jacobi[19]} {payload/top_SVD/input_value_last_jacobi[20]} {payload/top_SVD/input_value_last_jacobi[21]} {payload/top_SVD/input_value_last_jacobi[22]} {payload/top_SVD/input_value_last_jacobi[23]} {payload/top_SVD/input_value_last_jacobi[24]} {payload/top_SVD/input_value_last_jacobi[25]} {payload/top_SVD/input_value_last_jacobi[26]} {payload/top_SVD/input_value_last_jacobi[27]} {payload/top_SVD/input_value_last_jacobi[28]} {payload/top_SVD/input_value_last_jacobi[29]} {payload/top_SVD/input_value_last_jacobi[30]} {payload/top_SVD/input_value_last_jacobi[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 6 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {payload/top_SVD/addr_U_T[0]} {payload/top_SVD/addr_U_T[1]} {payload/top_SVD/addr_U_T[2]} {payload/top_SVD/addr_U_T[3]} {payload/top_SVD/addr_U_T[4]} {payload/top_SVD/addr_U_T[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 6 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {payload/top_SVD/addr_a_J_L[0]} {payload/top_SVD/addr_a_J_L[1]} {payload/top_SVD/addr_a_J_L[2]} {payload/top_SVD/addr_a_J_L[3]} {payload/top_SVD/addr_a_J_L[4]} {payload/top_SVD/addr_a_J_L[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {payload/top_SVD/output_matrix_value_theta[0]} {payload/top_SVD/output_matrix_value_theta[1]} {payload/top_SVD/output_matrix_value_theta[2]} {payload/top_SVD/output_matrix_value_theta[3]} {payload/top_SVD/output_matrix_value_theta[4]} {payload/top_SVD/output_matrix_value_theta[5]} {payload/top_SVD/output_matrix_value_theta[6]} {payload/top_SVD/output_matrix_value_theta[7]} {payload/top_SVD/output_matrix_value_theta[8]} {payload/top_SVD/output_matrix_value_theta[9]} {payload/top_SVD/output_matrix_value_theta[10]} {payload/top_SVD/output_matrix_value_theta[11]} {payload/top_SVD/output_matrix_value_theta[12]} {payload/top_SVD/output_matrix_value_theta[13]} {payload/top_SVD/output_matrix_value_theta[14]} {payload/top_SVD/output_matrix_value_theta[15]} {payload/top_SVD/output_matrix_value_theta[16]} {payload/top_SVD/output_matrix_value_theta[17]} {payload/top_SVD/output_matrix_value_theta[18]} {payload/top_SVD/output_matrix_value_theta[19]} {payload/top_SVD/output_matrix_value_theta[20]} {payload/top_SVD/output_matrix_value_theta[21]} {payload/top_SVD/output_matrix_value_theta[22]} {payload/top_SVD/output_matrix_value_theta[23]} {payload/top_SVD/output_matrix_value_theta[24]} {payload/top_SVD/output_matrix_value_theta[25]} {payload/top_SVD/output_matrix_value_theta[26]} {payload/top_SVD/output_matrix_value_theta[27]} {payload/top_SVD/output_matrix_value_theta[28]} {payload/top_SVD/output_matrix_value_theta[29]} {payload/top_SVD/output_matrix_value_theta[30]} {payload/top_SVD/output_matrix_value_theta[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 6 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {payload/top_SVD/addr_in_ram[0]} {payload/top_SVD/addr_in_ram[1]} {payload/top_SVD/addr_in_ram[2]} {payload/top_SVD/addr_in_ram[3]} {payload/top_SVD/addr_in_ram[4]} {payload/top_SVD/addr_in_ram[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {payload/top_SVD/d_U_T[0]} {payload/top_SVD/d_U_T[1]} {payload/top_SVD/d_U_T[2]} {payload/top_SVD/d_U_T[3]} {payload/top_SVD/d_U_T[4]} {payload/top_SVD/d_U_T[5]} {payload/top_SVD/d_U_T[6]} {payload/top_SVD/d_U_T[7]} {payload/top_SVD/d_U_T[8]} {payload/top_SVD/d_U_T[9]} {payload/top_SVD/d_U_T[10]} {payload/top_SVD/d_U_T[11]} {payload/top_SVD/d_U_T[12]} {payload/top_SVD/d_U_T[13]} {payload/top_SVD/d_U_T[14]} {payload/top_SVD/d_U_T[15]} {payload/top_SVD/d_U_T[16]} {payload/top_SVD/d_U_T[17]} {payload/top_SVD/d_U_T[18]} {payload/top_SVD/d_U_T[19]} {payload/top_SVD/d_U_T[20]} {payload/top_SVD/d_U_T[21]} {payload/top_SVD/d_U_T[22]} {payload/top_SVD/d_U_T[23]} {payload/top_SVD/d_U_T[24]} {payload/top_SVD/d_U_T[25]} {payload/top_SVD/d_U_T[26]} {payload/top_SVD/d_U_T[27]} {payload/top_SVD/d_U_T[28]} {payload/top_SVD/d_U_T[29]} {payload/top_SVD/d_U_T[30]} {payload/top_SVD/d_U_T[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 31 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {payload/top_SVD/cos_phi[0]} {payload/top_SVD/cos_phi[1]} {payload/top_SVD/cos_phi[2]} {payload/top_SVD/cos_phi[3]} {payload/top_SVD/cos_phi[4]} {payload/top_SVD/cos_phi[5]} {payload/top_SVD/cos_phi[6]} {payload/top_SVD/cos_phi[7]} {payload/top_SVD/cos_phi[8]} {payload/top_SVD/cos_phi[9]} {payload/top_SVD/cos_phi[10]} {payload/top_SVD/cos_phi[11]} {payload/top_SVD/cos_phi[12]} {payload/top_SVD/cos_phi[13]} {payload/top_SVD/cos_phi[14]} {payload/top_SVD/cos_phi[15]} {payload/top_SVD/cos_phi[16]} {payload/top_SVD/cos_phi[17]} {payload/top_SVD/cos_phi[18]} {payload/top_SVD/cos_phi[19]} {payload/top_SVD/cos_phi[20]} {payload/top_SVD/cos_phi[21]} {payload/top_SVD/cos_phi[22]} {payload/top_SVD/cos_phi[23]} {payload/top_SVD/cos_phi[24]} {payload/top_SVD/cos_phi[25]} {payload/top_SVD/cos_phi[26]} {payload/top_SVD/cos_phi[27]} {payload/top_SVD/cos_phi[28]} {payload/top_SVD/cos_phi[29]} {payload/top_SVD/cos_phi[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {payload/top_SVD/a_qp_out[0]} {payload/top_SVD/a_qp_out[1]} {payload/top_SVD/a_qp_out[2]} {payload/top_SVD/a_qp_out[3]} {payload/top_SVD/a_qp_out[4]} {payload/top_SVD/a_qp_out[5]} {payload/top_SVD/a_qp_out[6]} {payload/top_SVD/a_qp_out[7]} {payload/top_SVD/a_qp_out[8]} {payload/top_SVD/a_qp_out[9]} {payload/top_SVD/a_qp_out[10]} {payload/top_SVD/a_qp_out[11]} {payload/top_SVD/a_qp_out[12]} {payload/top_SVD/a_qp_out[13]} {payload/top_SVD/a_qp_out[14]} {payload/top_SVD/a_qp_out[15]} {payload/top_SVD/a_qp_out[16]} {payload/top_SVD/a_qp_out[17]} {payload/top_SVD/a_qp_out[18]} {payload/top_SVD/a_qp_out[19]} {payload/top_SVD/a_qp_out[20]} {payload/top_SVD/a_qp_out[21]} {payload/top_SVD/a_qp_out[22]} {payload/top_SVD/a_qp_out[23]} {payload/top_SVD/a_qp_out[24]} {payload/top_SVD/a_qp_out[25]} {payload/top_SVD/a_qp_out[26]} {payload/top_SVD/a_qp_out[27]} {payload/top_SVD/a_qp_out[28]} {payload/top_SVD/a_qp_out[29]} {payload/top_SVD/a_qp_out[30]} {payload/top_SVD/a_qp_out[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 32 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {payload/top_SVD/a_qq_out[0]} {payload/top_SVD/a_qq_out[1]} {payload/top_SVD/a_qq_out[2]} {payload/top_SVD/a_qq_out[3]} {payload/top_SVD/a_qq_out[4]} {payload/top_SVD/a_qq_out[5]} {payload/top_SVD/a_qq_out[6]} {payload/top_SVD/a_qq_out[7]} {payload/top_SVD/a_qq_out[8]} {payload/top_SVD/a_qq_out[9]} {payload/top_SVD/a_qq_out[10]} {payload/top_SVD/a_qq_out[11]} {payload/top_SVD/a_qq_out[12]} {payload/top_SVD/a_qq_out[13]} {payload/top_SVD/a_qq_out[14]} {payload/top_SVD/a_qq_out[15]} {payload/top_SVD/a_qq_out[16]} {payload/top_SVD/a_qq_out[17]} {payload/top_SVD/a_qq_out[18]} {payload/top_SVD/a_qq_out[19]} {payload/top_SVD/a_qq_out[20]} {payload/top_SVD/a_qq_out[21]} {payload/top_SVD/a_qq_out[22]} {payload/top_SVD/a_qq_out[23]} {payload/top_SVD/a_qq_out[24]} {payload/top_SVD/a_qq_out[25]} {payload/top_SVD/a_qq_out[26]} {payload/top_SVD/a_qq_out[27]} {payload/top_SVD/a_qq_out[28]} {payload/top_SVD/a_qq_out[29]} {payload/top_SVD/a_qq_out[30]} {payload/top_SVD/a_qq_out[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 6 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {payload/top_SVD/input_address_matmul2[0]} {payload/top_SVD/input_address_matmul2[1]} {payload/top_SVD/input_address_matmul2[2]} {payload/top_SVD/input_address_matmul2[3]} {payload/top_SVD/input_address_matmul2[4]} {payload/top_SVD/input_address_matmul2[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 6 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {payload/top_SVD/input_address_cordic[0]} {payload/top_SVD/input_address_cordic[1]} {payload/top_SVD/input_address_cordic[2]} {payload/top_SVD/input_address_cordic[3]} {payload/top_SVD/input_address_cordic[4]} {payload/top_SVD/input_address_cordic[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 32 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {payload/top_SVD/input_value_matmul2[0]} {payload/top_SVD/input_value_matmul2[1]} {payload/top_SVD/input_value_matmul2[2]} {payload/top_SVD/input_value_matmul2[3]} {payload/top_SVD/input_value_matmul2[4]} {payload/top_SVD/input_value_matmul2[5]} {payload/top_SVD/input_value_matmul2[6]} {payload/top_SVD/input_value_matmul2[7]} {payload/top_SVD/input_value_matmul2[8]} {payload/top_SVD/input_value_matmul2[9]} {payload/top_SVD/input_value_matmul2[10]} {payload/top_SVD/input_value_matmul2[11]} {payload/top_SVD/input_value_matmul2[12]} {payload/top_SVD/input_value_matmul2[13]} {payload/top_SVD/input_value_matmul2[14]} {payload/top_SVD/input_value_matmul2[15]} {payload/top_SVD/input_value_matmul2[16]} {payload/top_SVD/input_value_matmul2[17]} {payload/top_SVD/input_value_matmul2[18]} {payload/top_SVD/input_value_matmul2[19]} {payload/top_SVD/input_value_matmul2[20]} {payload/top_SVD/input_value_matmul2[21]} {payload/top_SVD/input_value_matmul2[22]} {payload/top_SVD/input_value_matmul2[23]} {payload/top_SVD/input_value_matmul2[24]} {payload/top_SVD/input_value_matmul2[25]} {payload/top_SVD/input_value_matmul2[26]} {payload/top_SVD/input_value_matmul2[27]} {payload/top_SVD/input_value_matmul2[28]} {payload/top_SVD/input_value_matmul2[29]} {payload/top_SVD/input_value_matmul2[30]} {payload/top_SVD/input_value_matmul2[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 31 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {payload/top_SVD/sin_theta[0]} {payload/top_SVD/sin_theta[1]} {payload/top_SVD/sin_theta[2]} {payload/top_SVD/sin_theta[3]} {payload/top_SVD/sin_theta[4]} {payload/top_SVD/sin_theta[5]} {payload/top_SVD/sin_theta[6]} {payload/top_SVD/sin_theta[7]} {payload/top_SVD/sin_theta[8]} {payload/top_SVD/sin_theta[9]} {payload/top_SVD/sin_theta[10]} {payload/top_SVD/sin_theta[11]} {payload/top_SVD/sin_theta[12]} {payload/top_SVD/sin_theta[13]} {payload/top_SVD/sin_theta[14]} {payload/top_SVD/sin_theta[15]} {payload/top_SVD/sin_theta[16]} {payload/top_SVD/sin_theta[17]} {payload/top_SVD/sin_theta[18]} {payload/top_SVD/sin_theta[19]} {payload/top_SVD/sin_theta[20]} {payload/top_SVD/sin_theta[21]} {payload/top_SVD/sin_theta[22]} {payload/top_SVD/sin_theta[23]} {payload/top_SVD/sin_theta[24]} {payload/top_SVD/sin_theta[25]} {payload/top_SVD/sin_theta[26]} {payload/top_SVD/sin_theta[27]} {payload/top_SVD/sin_theta[28]} {payload/top_SVD/sin_theta[29]} {payload/top_SVD/sin_theta[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 6 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {payload/top_SVD/output_address_temp[0]} {payload/top_SVD/output_address_temp[1]} {payload/top_SVD/output_address_temp[2]} {payload/top_SVD/output_address_temp[3]} {payload/top_SVD/output_address_temp[4]} {payload/top_SVD/output_address_temp[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 6 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {payload/top_SVD/input_address_last_jacobi[0]} {payload/top_SVD/input_address_last_jacobi[1]} {payload/top_SVD/input_address_last_jacobi[2]} {payload/top_SVD/input_address_last_jacobi[3]} {payload/top_SVD/input_address_last_jacobi[4]} {payload/top_SVD/input_address_last_jacobi[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 32 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {payload/top_SVD/d_in_ram[0]} {payload/top_SVD/d_in_ram[1]} {payload/top_SVD/d_in_ram[2]} {payload/top_SVD/d_in_ram[3]} {payload/top_SVD/d_in_ram[4]} {payload/top_SVD/d_in_ram[5]} {payload/top_SVD/d_in_ram[6]} {payload/top_SVD/d_in_ram[7]} {payload/top_SVD/d_in_ram[8]} {payload/top_SVD/d_in_ram[9]} {payload/top_SVD/d_in_ram[10]} {payload/top_SVD/d_in_ram[11]} {payload/top_SVD/d_in_ram[12]} {payload/top_SVD/d_in_ram[13]} {payload/top_SVD/d_in_ram[14]} {payload/top_SVD/d_in_ram[15]} {payload/top_SVD/d_in_ram[16]} {payload/top_SVD/d_in_ram[17]} {payload/top_SVD/d_in_ram[18]} {payload/top_SVD/d_in_ram[19]} {payload/top_SVD/d_in_ram[20]} {payload/top_SVD/d_in_ram[21]} {payload/top_SVD/d_in_ram[22]} {payload/top_SVD/d_in_ram[23]} {payload/top_SVD/d_in_ram[24]} {payload/top_SVD/d_in_ram[25]} {payload/top_SVD/d_in_ram[26]} {payload/top_SVD/d_in_ram[27]} {payload/top_SVD/d_in_ram[28]} {payload/top_SVD/d_in_ram[29]} {payload/top_SVD/d_in_ram[30]} {payload/top_SVD/d_in_ram[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 31 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {payload/top_SVD/sin_phi[0]} {payload/top_SVD/sin_phi[1]} {payload/top_SVD/sin_phi[2]} {payload/top_SVD/sin_phi[3]} {payload/top_SVD/sin_phi[4]} {payload/top_SVD/sin_phi[5]} {payload/top_SVD/sin_phi[6]} {payload/top_SVD/sin_phi[7]} {payload/top_SVD/sin_phi[8]} {payload/top_SVD/sin_phi[9]} {payload/top_SVD/sin_phi[10]} {payload/top_SVD/sin_phi[11]} {payload/top_SVD/sin_phi[12]} {payload/top_SVD/sin_phi[13]} {payload/top_SVD/sin_phi[14]} {payload/top_SVD/sin_phi[15]} {payload/top_SVD/sin_phi[16]} {payload/top_SVD/sin_phi[17]} {payload/top_SVD/sin_phi[18]} {payload/top_SVD/sin_phi[19]} {payload/top_SVD/sin_phi[20]} {payload/top_SVD/sin_phi[21]} {payload/top_SVD/sin_phi[22]} {payload/top_SVD/sin_phi[23]} {payload/top_SVD/sin_phi[24]} {payload/top_SVD/sin_phi[25]} {payload/top_SVD/sin_phi[26]} {payload/top_SVD/sin_phi[27]} {payload/top_SVD/sin_phi[28]} {payload/top_SVD/sin_phi[29]} {payload/top_SVD/sin_phi[30]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 6 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list {payload/top_SVD/matmult_address_JL[0]} {payload/top_SVD/matmult_address_JL[1]} {payload/top_SVD/matmult_address_JL[2]} {payload/top_SVD/matmult_address_JL[3]} {payload/top_SVD/matmult_address_JL[4]} {payload/top_SVD/matmult_address_JL[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 31 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list {payload/top_SVD/cos_theta[0]} {payload/top_SVD/cos_theta[1]} {payload/top_SVD/cos_theta[2]} {payload/top_SVD/cos_theta[3]} {payload/top_SVD/cos_theta[4]} {payload/top_SVD/cos_theta[5]} {payload/top_SVD/cos_theta[6]} {payload/top_SVD/cos_theta[7]} {payload/top_SVD/cos_theta[8]} {payload/top_SVD/cos_theta[9]} {payload/top_SVD/cos_theta[10]} {payload/top_SVD/cos_theta[11]} {payload/top_SVD/cos_theta[12]} {payload/top_SVD/cos_theta[13]} {payload/top_SVD/cos_theta[14]} {payload/top_SVD/cos_theta[15]} {payload/top_SVD/cos_theta[16]} {payload/top_SVD/cos_theta[17]} {payload/top_SVD/cos_theta[18]} {payload/top_SVD/cos_theta[19]} {payload/top_SVD/cos_theta[20]} {payload/top_SVD/cos_theta[21]} {payload/top_SVD/cos_theta[22]} {payload/top_SVD/cos_theta[23]} {payload/top_SVD/cos_theta[24]} {payload/top_SVD/cos_theta[25]} {payload/top_SVD/cos_theta[26]} {payload/top_SVD/cos_theta[27]} {payload/top_SVD/cos_theta[28]} {payload/top_SVD/cos_theta[29]} {payload/top_SVD/cos_theta[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 6 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list {payload/top_SVD/output_address_cordic[0]} {payload/top_SVD/output_address_cordic[1]} {payload/top_SVD/output_address_cordic[2]} {payload/top_SVD/output_address_cordic[3]} {payload/top_SVD/output_address_cordic[4]} {payload/top_SVD/output_address_cordic[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 32 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list {payload/top_SVD/matmult_matrix_value_JR[0]} {payload/top_SVD/matmult_matrix_value_JR[1]} {payload/top_SVD/matmult_matrix_value_JR[2]} {payload/top_SVD/matmult_matrix_value_JR[3]} {payload/top_SVD/matmult_matrix_value_JR[4]} {payload/top_SVD/matmult_matrix_value_JR[5]} {payload/top_SVD/matmult_matrix_value_JR[6]} {payload/top_SVD/matmult_matrix_value_JR[7]} {payload/top_SVD/matmult_matrix_value_JR[8]} {payload/top_SVD/matmult_matrix_value_JR[9]} {payload/top_SVD/matmult_matrix_value_JR[10]} {payload/top_SVD/matmult_matrix_value_JR[11]} {payload/top_SVD/matmult_matrix_value_JR[12]} {payload/top_SVD/matmult_matrix_value_JR[13]} {payload/top_SVD/matmult_matrix_value_JR[14]} {payload/top_SVD/matmult_matrix_value_JR[15]} {payload/top_SVD/matmult_matrix_value_JR[16]} {payload/top_SVD/matmult_matrix_value_JR[17]} {payload/top_SVD/matmult_matrix_value_JR[18]} {payload/top_SVD/matmult_matrix_value_JR[19]} {payload/top_SVD/matmult_matrix_value_JR[20]} {payload/top_SVD/matmult_matrix_value_JR[21]} {payload/top_SVD/matmult_matrix_value_JR[22]} {payload/top_SVD/matmult_matrix_value_JR[23]} {payload/top_SVD/matmult_matrix_value_JR[24]} {payload/top_SVD/matmult_matrix_value_JR[25]} {payload/top_SVD/matmult_matrix_value_JR[26]} {payload/top_SVD/matmult_matrix_value_JR[27]} {payload/top_SVD/matmult_matrix_value_JR[28]} {payload/top_SVD/matmult_matrix_value_JR[29]} {payload/top_SVD/matmult_matrix_value_JR[30]} {payload/top_SVD/matmult_matrix_value_JR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 32 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list {payload/top_SVD/matmult_matrix_value_JL[0]} {payload/top_SVD/matmult_matrix_value_JL[1]} {payload/top_SVD/matmult_matrix_value_JL[2]} {payload/top_SVD/matmult_matrix_value_JL[3]} {payload/top_SVD/matmult_matrix_value_JL[4]} {payload/top_SVD/matmult_matrix_value_JL[5]} {payload/top_SVD/matmult_matrix_value_JL[6]} {payload/top_SVD/matmult_matrix_value_JL[7]} {payload/top_SVD/matmult_matrix_value_JL[8]} {payload/top_SVD/matmult_matrix_value_JL[9]} {payload/top_SVD/matmult_matrix_value_JL[10]} {payload/top_SVD/matmult_matrix_value_JL[11]} {payload/top_SVD/matmult_matrix_value_JL[12]} {payload/top_SVD/matmult_matrix_value_JL[13]} {payload/top_SVD/matmult_matrix_value_JL[14]} {payload/top_SVD/matmult_matrix_value_JL[15]} {payload/top_SVD/matmult_matrix_value_JL[16]} {payload/top_SVD/matmult_matrix_value_JL[17]} {payload/top_SVD/matmult_matrix_value_JL[18]} {payload/top_SVD/matmult_matrix_value_JL[19]} {payload/top_SVD/matmult_matrix_value_JL[20]} {payload/top_SVD/matmult_matrix_value_JL[21]} {payload/top_SVD/matmult_matrix_value_JL[22]} {payload/top_SVD/matmult_matrix_value_JL[23]} {payload/top_SVD/matmult_matrix_value_JL[24]} {payload/top_SVD/matmult_matrix_value_JL[25]} {payload/top_SVD/matmult_matrix_value_JL[26]} {payload/top_SVD/matmult_matrix_value_JL[27]} {payload/top_SVD/matmult_matrix_value_JL[28]} {payload/top_SVD/matmult_matrix_value_JL[29]} {payload/top_SVD/matmult_matrix_value_JL[30]} {payload/top_SVD/matmult_matrix_value_JL[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 32 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list {payload/top_SVD/output_value_temp[0]} {payload/top_SVD/output_value_temp[1]} {payload/top_SVD/output_value_temp[2]} {payload/top_SVD/output_value_temp[3]} {payload/top_SVD/output_value_temp[4]} {payload/top_SVD/output_value_temp[5]} {payload/top_SVD/output_value_temp[6]} {payload/top_SVD/output_value_temp[7]} {payload/top_SVD/output_value_temp[8]} {payload/top_SVD/output_value_temp[9]} {payload/top_SVD/output_value_temp[10]} {payload/top_SVD/output_value_temp[11]} {payload/top_SVD/output_value_temp[12]} {payload/top_SVD/output_value_temp[13]} {payload/top_SVD/output_value_temp[14]} {payload/top_SVD/output_value_temp[15]} {payload/top_SVD/output_value_temp[16]} {payload/top_SVD/output_value_temp[17]} {payload/top_SVD/output_value_temp[18]} {payload/top_SVD/output_value_temp[19]} {payload/top_SVD/output_value_temp[20]} {payload/top_SVD/output_value_temp[21]} {payload/top_SVD/output_value_temp[22]} {payload/top_SVD/output_value_temp[23]} {payload/top_SVD/output_value_temp[24]} {payload/top_SVD/output_value_temp[25]} {payload/top_SVD/output_value_temp[26]} {payload/top_SVD/output_value_temp[27]} {payload/top_SVD/output_value_temp[28]} {payload/top_SVD/output_value_temp[29]} {payload/top_SVD/output_value_temp[30]} {payload/top_SVD/output_value_temp[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 6 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list {payload/top_SVD/output_address_cumulative_jacobi[0]} {payload/top_SVD/output_address_cumulative_jacobi[1]} {payload/top_SVD/output_address_cumulative_jacobi[2]} {payload/top_SVD/output_address_cumulative_jacobi[3]} {payload/top_SVD/output_address_cumulative_jacobi[4]} {payload/top_SVD/output_address_cumulative_jacobi[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 6 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list {payload/top_SVD/matmult_address_A_out[0]} {payload/top_SVD/matmult_address_A_out[1]} {payload/top_SVD/matmult_address_A_out[2]} {payload/top_SVD/matmult_address_A_out[3]} {payload/top_SVD/matmult_address_A_out[4]} {payload/top_SVD/matmult_address_A_out[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 32 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list {payload/top_SVD/q_U_T[0]} {payload/top_SVD/q_U_T[1]} {payload/top_SVD/q_U_T[2]} {payload/top_SVD/q_U_T[3]} {payload/top_SVD/q_U_T[4]} {payload/top_SVD/q_U_T[5]} {payload/top_SVD/q_U_T[6]} {payload/top_SVD/q_U_T[7]} {payload/top_SVD/q_U_T[8]} {payload/top_SVD/q_U_T[9]} {payload/top_SVD/q_U_T[10]} {payload/top_SVD/q_U_T[11]} {payload/top_SVD/q_U_T[12]} {payload/top_SVD/q_U_T[13]} {payload/top_SVD/q_U_T[14]} {payload/top_SVD/q_U_T[15]} {payload/top_SVD/q_U_T[16]} {payload/top_SVD/q_U_T[17]} {payload/top_SVD/q_U_T[18]} {payload/top_SVD/q_U_T[19]} {payload/top_SVD/q_U_T[20]} {payload/top_SVD/q_U_T[21]} {payload/top_SVD/q_U_T[22]} {payload/top_SVD/q_U_T[23]} {payload/top_SVD/q_U_T[24]} {payload/top_SVD/q_U_T[25]} {payload/top_SVD/q_U_T[26]} {payload/top_SVD/q_U_T[27]} {payload/top_SVD/q_U_T[28]} {payload/top_SVD/q_U_T[29]} {payload/top_SVD/q_U_T[30]} {payload/top_SVD/q_U_T[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 32 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list {payload/top_SVD/output_matrix_value_phi[0]} {payload/top_SVD/output_matrix_value_phi[1]} {payload/top_SVD/output_matrix_value_phi[2]} {payload/top_SVD/output_matrix_value_phi[3]} {payload/top_SVD/output_matrix_value_phi[4]} {payload/top_SVD/output_matrix_value_phi[5]} {payload/top_SVD/output_matrix_value_phi[6]} {payload/top_SVD/output_matrix_value_phi[7]} {payload/top_SVD/output_matrix_value_phi[8]} {payload/top_SVD/output_matrix_value_phi[9]} {payload/top_SVD/output_matrix_value_phi[10]} {payload/top_SVD/output_matrix_value_phi[11]} {payload/top_SVD/output_matrix_value_phi[12]} {payload/top_SVD/output_matrix_value_phi[13]} {payload/top_SVD/output_matrix_value_phi[14]} {payload/top_SVD/output_matrix_value_phi[15]} {payload/top_SVD/output_matrix_value_phi[16]} {payload/top_SVD/output_matrix_value_phi[17]} {payload/top_SVD/output_matrix_value_phi[18]} {payload/top_SVD/output_matrix_value_phi[19]} {payload/top_SVD/output_matrix_value_phi[20]} {payload/top_SVD/output_matrix_value_phi[21]} {payload/top_SVD/output_matrix_value_phi[22]} {payload/top_SVD/output_matrix_value_phi[23]} {payload/top_SVD/output_matrix_value_phi[24]} {payload/top_SVD/output_matrix_value_phi[25]} {payload/top_SVD/output_matrix_value_phi[26]} {payload/top_SVD/output_matrix_value_phi[27]} {payload/top_SVD/output_matrix_value_phi[28]} {payload/top_SVD/output_matrix_value_phi[29]} {payload/top_SVD/output_matrix_value_phi[30]} {payload/top_SVD/output_matrix_value_phi[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 3 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list {payload/top_SVD/signal_q[0]} {payload/top_SVD/signal_q[1]} {payload/top_SVD/signal_q[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 3 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list {payload/top_SVD/signal_p[0]} {payload/top_SVD/signal_p[1]} {payload/top_SVD/signal_p[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 32 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list {payload/top_SVD/q_in_ram[0]} {payload/top_SVD/q_in_ram[1]} {payload/top_SVD/q_in_ram[2]} {payload/top_SVD/q_in_ram[3]} {payload/top_SVD/q_in_ram[4]} {payload/top_SVD/q_in_ram[5]} {payload/top_SVD/q_in_ram[6]} {payload/top_SVD/q_in_ram[7]} {payload/top_SVD/q_in_ram[8]} {payload/top_SVD/q_in_ram[9]} {payload/top_SVD/q_in_ram[10]} {payload/top_SVD/q_in_ram[11]} {payload/top_SVD/q_in_ram[12]} {payload/top_SVD/q_in_ram[13]} {payload/top_SVD/q_in_ram[14]} {payload/top_SVD/q_in_ram[15]} {payload/top_SVD/q_in_ram[16]} {payload/top_SVD/q_in_ram[17]} {payload/top_SVD/q_in_ram[18]} {payload/top_SVD/q_in_ram[19]} {payload/top_SVD/q_in_ram[20]} {payload/top_SVD/q_in_ram[21]} {payload/top_SVD/q_in_ram[22]} {payload/top_SVD/q_in_ram[23]} {payload/top_SVD/q_in_ram[24]} {payload/top_SVD/q_in_ram[25]} {payload/top_SVD/q_in_ram[26]} {payload/top_SVD/q_in_ram[27]} {payload/top_SVD/q_in_ram[28]} {payload/top_SVD/q_in_ram[29]} {payload/top_SVD/q_in_ram[30]} {payload/top_SVD/q_in_ram[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list payload/top_SVD/compute_angles]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list payload/top_SVD/cordic_computation_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list payload/top_SVD/cordic_rst]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list payload/top_SVD/fetch_valid_cordic]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list payload/top_SVD/first_half_done_matmult]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list payload/top_SVD/jacobi_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe38]
set_property port_width 1 [get_debug_ports u_ila_0/probe38]
connect_debug_port u_ila_0/probe38 [get_nets [list payload/top_SVD/mat_mult_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe39]
set_property port_width 1 [get_debug_ports u_ila_0/probe39]
connect_debug_port u_ila_0/probe39 [get_nets [list payload/top_SVD/mat_mult_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe40]
set_property port_width 1 [get_debug_ports u_ila_0/probe40]
connect_debug_port u_ila_0/probe40 [get_nets [list payload/top_SVD/mat_mult_rst]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe41]
set_property port_width 1 [get_debug_ports u_ila_0/probe41]
connect_debug_port u_ila_0/probe41 [get_nets [list payload/top_SVD/write_enable_a]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe42]
set_property port_width 1 [get_debug_ports u_ila_0/probe42]
connect_debug_port u_ila_0/probe42 [get_nets [list payload/top_SVD/write_enable_in_ram]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe43]
set_property port_width 1 [get_debug_ports u_ila_0/probe43]
connect_debug_port u_ila_0/probe43 [get_nets [list payload/top_SVD/write_enable_temp]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe44]
set_property port_width 1 [get_debug_ports u_ila_0/probe44]
connect_debug_port u_ila_0/probe44 [get_nets [list payload/top_SVD/write_enable_U_T]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_aux]
