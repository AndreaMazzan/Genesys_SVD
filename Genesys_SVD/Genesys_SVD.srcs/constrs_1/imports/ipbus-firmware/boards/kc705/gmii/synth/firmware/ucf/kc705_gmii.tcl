#-------------------------------------------------------------------------------
#
#   Copyright 2017 - Rutherford Appleton Laboratory and University of Bristol
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
#                                     - - -
#
#   Additional information about ipbus-firmare and the list of ipbus-firmware
#   contacts are available at
#
#       https://ipbus.web.cern.ch/ipbus
#
#-------------------------------------------------------------------------------


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# System clock (200MHz)
create_clock -period 5.000 -name sysclk [get_ports sysclk_p]

set_false_path -through [get_pins infra/clocks/rst_reg/Q]
set_false_path -through [get_nets infra/clocks/nuke_i]

set_property IOSTANDARD LVDS [get_ports {sysclk_*}]
set_property PACKAGE_PIN AD12 [get_ports sysclk_p]
set_property PACKAGE_PIN AD11 [get_ports sysclk_n]

set_property IOSTANDARD LVCMOS33 [get_ports {leds[*]}]
set_property SLEW SLOW [get_ports {leds[*]}]
set_property PACKAGE_PIN T28 [get_ports {leds[0]}]
set_property PACKAGE_PIN V19 [get_ports {leds[1]}]
set_property PACKAGE_PIN U30 [get_ports {leds[2]}]
set_property PACKAGE_PIN U29 [get_ports {leds[3]}]
set_property PACKAGE_PIN V20 [get_ports {leds[4]}]
false_path {leds[*]} sysclk

#set_property IOSTANDARD LVCMOS12 [get_ports {dip_sw[*]}]
#set_property PACKAGE_PIN G19 [get_ports {dip_sw[0]}]
#set_property PACKAGE_PIN G25 [get_ports {dip_sw[1]}]
#set_property PACKAGE_PIN H24 [get_ports {dip_sw[2]}]
#set_property PACKAGE_PIN K19 [get_ports {dip_sw[3]}]
#false_path {dip_sw[*]} sysclk

set_property IOSTANDARD LVCMOS15 [get_ports {rgmii*}]
set_property PACKAGE_PIN AG10 [get_ports {rgmii_rxc}]
set_property PACKAGE_PIN AH11 [get_ports {rgmii_rx_ctl}]
set_property PACKAGE_PIN AJ14 [get_ports {rgmii_rxd[0]}]
set_property PACKAGE_PIN AH14 [get_ports {rgmii_rxd[1]}]
set_property PACKAGE_PIN AK13 [get_ports {rgmii_rxd[2]}]
set_property PACKAGE_PIN AJ13 [get_ports {rgmii_rxd[3]}]
set_property PACKAGE_PIN AE10 [get_ports {rgmii_txc}]
set_property PACKAGE_PIN AK14 [get_ports {rgmii_tx_ctl}]
set_property PACKAGE_PIN AJ12 [get_ports {rgmii_txd[0]}]
set_property PACKAGE_PIN AK11 [get_ports {rgmii_txd[1]}]
set_property PACKAGE_PIN AJ11 [get_ports {rgmii_txd[2]}]
set_property PACKAGE_PIN AK10 [get_ports {rgmii_txd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {phy_rst}]
set_property PACKAGE_PIN AH24 [get_ports {phy_rst}]



#set_property PACKAGE_PIN A28 [get_ports {add_asic[0]}]
#set_property PACKAGE_PIN C26 [get_ports {add_asic[1]}]
#set_property PACKAGE_PIN B30 [get_ports {add_asic[2]}]
#set_property PACKAGE_PIN E24 [get_ports {add_asic[3]}]
#set_property PACKAGE_PIN C24 [get_ports {add_asic[4]}]
#set_property PACKAGE_PIN A30 [get_ports {add_asic[5]}]
#set_property PACKAGE_PIN D26 [get_ports {add_asic[6]}]
#set_property PACKAGE_PIN B28 [get_ports {add_asic[7]}]
#set_property PACKAGE_PIN M28 [get_ports {add_asic[8]}]
#set_property PACKAGE_PIN A27 [get_ports {add_asic[9]}]
#set_property PACKAGE_PIN A21 [get_ports {add_asic[10]}]
#set_property PACKAGE_PIN B27 [get_ports {add_asic[11]}]
#set_property PACKAGE_PIN A20 [get_ports {add_asic[12]}]
#set_property PACKAGE_PIN C30 [get_ports {add_asic[13]}]
#set_property PACKAGE_PIN D18 [get_ports {add_asic[14]}]
#set_property PACKAGE_PIN A22 [get_ports {add_asic[15]}]
#set_property PACKAGE_PIN D17 [get_ports d_asic]
#set_property PACKAGE_PIN D29 [get_ports EQ_asic]
#set_property PACKAGE_PIN G17 [get_ports RE_asic]
#set_property PACKAGE_PIN B22 [get_ports WE_asic]
#set_property PACKAGE_PIN E21 [get_ports COMP_asic]
#set_property PACKAGE_PIN F17 [get_ports CE_asic]
#set_property PACKAGE_PIN F21 [get_ports WLE_asic]
#set_property PACKAGE_PIN L30 [get_ports clk_sw]
#set_property PACKAGE_PIN K30 [get_ports F_sw0]
#set_property PACKAGE_PIN K26 [get_ports F_sw1]
#set_property PACKAGE_PIN J26 [get_ports clke]
#set_property PACKAGE_PIN M22 [get_ports ext_s]
#set_property PACKAGE_PIN M23 [get_ports ext_s_sw]
#set_property PACKAGE_PIN G27 [get_ports Rn]
#set_property PACKAGE_PIN F27 [get_ports FE]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[15]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[14]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[13]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[12]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[11]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[10]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[9]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[8]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[7]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[6]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[5]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[4]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {add_asic[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports d_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports EQ_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports WE_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports RE_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports COMP_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports CE_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports WLE_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports clk_sw]
#set_property IOSTANDARD LVCMOS18 [get_ports F_sw0]
#set_property IOSTANDARD LVCMOS18 [get_ports F_sw1]
#set_property IOSTANDARD LVCMOS18 [get_ports clke]
#set_property IOSTANDARD LVCMOS18 [get_ports ext_s]
#set_property IOSTANDARD LVCMOS18 [get_ports ext_s_sw]
#set_property IOSTANDARD LVCMOS18 [get_ports Rn]
#set_property IOSTANDARD LVCMOS18 [get_ports FE]

#set_property PACKAGE_PIN D24 [get_ports q_asic]
#set_property PACKAGE_PIN B24 [get_ports match_asic]
#set_property PACKAGE_PIN L28 [get_ports MATCH_ADD_asic]
#set_property PACKAGE_PIN J29 [get_ports F_output]
#set_property PACKAGE_PIN H29 [get_ports clk_mon]
#set_property IOSTANDARD LVCMOS18 [get_ports q_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports match_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports MATCH_ADD_asic]
#set_property IOSTANDARD LVCMOS18 [get_ports F_output]
#set_property IOSTANDARD LVCMOS18 [get_ports clk_mon]



# IPbus clock
create_generated_clock -name ipbus_clk -source [get_pins infra/clocks/mmcm/CLKIN1] [get_pins infra/clocks/mmcm/CLKOUT3]

# Other derived clocks
create_generated_clock -name clk_auxil -source [get_pins infra/clocks/mmcm/CLKIN1] [get_pins infra/clocks/mmcm/CLKOUT4]

# Declare the oscillator clock, ipbus clock and aux clock as unrelated
set_clock_groups -asynchronous -group [get_clocks sysclk] -group [get_clocks ipbus_clk] -group [get_clocks -include_generated_clocks [get_clocks clk_auxil]]
