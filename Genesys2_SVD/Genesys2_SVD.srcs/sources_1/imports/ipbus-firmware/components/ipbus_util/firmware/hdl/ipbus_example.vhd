---------------------------------------------------------------------------------
--
--   Copyright 2017 - Rutherford Appleton Laboratory and University of Bristol
--
--   Licensed under the Apache License, Version 2.0 (the "License");
--   you may not use this file except in compliance with the License.
--   You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--   Unless required by applicable law or agreed to in writing, software
--   distributed under the License is distributed on an "AS IS" BASIS,
--   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--   See the License for the specific language governing permissions and
--   limitations under the License.
--
--                                     - - -
--
--   Additional information about ipbus-firmare and the list of ipbus-firmware
--   contacts are available at
--
--       https://ipbus.web.cern.ch/ipbus
--
---------------------------------------------------------------------------------


-- ipbus_example
--
-- selection of different IPBus slaves without actual function,
-- just for performance evaluation of the IPbus/uhal system
--
-- Kristian Harder, March 2014
-- based on code by Dave Newbold, February 2011

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ipbus.all;
use work.ipbus_reg_types.all;
use work.ipbus_decode_address_file.all;

entity ipbus_example is
    generic(
        DATA_WIDTH: integer :=32;
        ADDR_WIDTH: integer :=16
    );
	port(
		ipb_clk: in std_logic;
		ipb_rst: in std_logic;
		ipb_in: in ipb_wbus;
		ipb_out: out ipb_rbus;
		status: in std_logic_vector(31 downto 0) := X"abcdfedc";
		nuke: out std_logic;
		soft_rst: out std_logic;
		userled: out std_logic;
		
		--inputs and outpus of the slaves
		ram_clk: in std_logic;
		SVD_rst: out std_logic;
        write_enable_in_ram: in std_logic; 
        addr_in_ram: in std_logic_vector(ADDR_WIDTH-1 downto 0);
        d_in_ram: in std_logic_vector(DATA_WIDTH-1 downto 0);
        q_in_ram: out std_logic_vector(DATA_WIDTH-1 downto 0);
        write_enable_U_T: in std_logic;
        addr_U_T: in std_logic_vector(ADDR_WIDTH-1 downto 0);
        d_U_T: in std_logic_vector(DATA_WIDTH-1 downto 0);
        q_U_T: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);

end ipbus_example;

architecture rtl of ipbus_example is

	signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
	signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
	signal ctrl, stat, SVD_rst_ipbusreg: ipb_reg_v(0 downto 0);
begin

-- ipbus address decode
		
	fabric: entity work.ipbus_fabric_sel
    generic map(
    	NSLV => N_SLAVES,
    	SEL_WIDTH => IPBUS_SEL_WIDTH)
    port map(
      ipb_in => ipb_in,
      ipb_out => ipb_out,
      sel => ipbus_sel_address_file(ipb_in.ipb_addr),
      ipb_to_slaves => ipbw,
      ipb_from_slaves => ipbr
    );

-- Slave 0: id / rst reg

	slave0: entity work.ipbus_ctrlreg_v
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(N_SLV_CSR),
			ipbus_out => ipbr(N_SLV_CSR),
			d => stat,
			q => ctrl
		);
		
		stat(0) <= status;
		soft_rst <= ctrl(0)(0);
		nuke <= ctrl(0)(1);
		userled <= ctrl(0)(2);


-- Slave 1: rst of SVD

	SVD_RST_reg: entity work.ipbus_ctrlreg_v
	    generic map(
	        N_STAT=>0,
	        N_CTRL=>1
	        )
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(N_SLV_RESET_REG),
			ipbus_out => ipbr(N_SLV_RESET_REG),
			--d => d_ctrl
			q => SVD_rst_ipbusreg
		);
	SVD_rst <= SVD_rst_ipbusreg(0)(0);
			
-- Slave 2:input RAM

	input_RAM: entity work.ipbus_dpram
		generic map(ADDR_WIDTH => ADDR_WIDTH,
		          DATA_WIDTH => DATA_WIDTH)
		port map(
			clk => ipb_clk,
			rst => ipb_rst,
			rclk => ram_clk,
			we => write_enable_in_ram,
			d => d_in_ram,
			q => q_in_ram,
			addr => addr_in_ram,
			ipb_in => ipbw(N_SLV_INPUT_RAM),
			ipb_out => ipbr(N_SLV_INPUT_RAM)
		);
	
-- Slave 3: 2**16 *1b (64 kb) input RAM

	U_T_RAM: entity work.ipbus_dpram
		generic map(ADDR_WIDTH => ADDR_WIDTH,
		          DATA_WIDTH => DATA_WIDTH)
		port map(
			clk => ipb_clk,
			rst => ipb_rst,
			rclk => ram_clk,
			we => write_enable_U_T,
			d => d_U_T,
			q => q_U_T,
			addr => addr_U_T,
			ipb_in => ipbw(N_SLV_U_T_RAM),
			ipb_out => ipbr(N_SLV_U_T_RAM)
		);


end rtl;
