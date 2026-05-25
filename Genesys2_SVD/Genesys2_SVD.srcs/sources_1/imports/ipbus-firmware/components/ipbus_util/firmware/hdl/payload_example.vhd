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


-- payload_simple_example
--
-- selection of different IPBus slaves without actual function,
-- just for performance evaluation of the IPbus/uhal system
--
-- Alessandro Thea, September 2018

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ipbus.all;
use work.ipbus_reg_types.all;
use IEEE.math_real.all;

entity payload is
    generic(
        DATA_WIDTH: integer :=32;
        MATRIX_LENGTH: integer :=16
    );
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in ipb_wbus;
        ipb_out: out ipb_rbus;
        clk: in std_logic;
        rst: in std_logic;
        nuke: out std_logic;
        soft_rst: out std_logic;
        userled: out std_logic
    );

end payload;

architecture rtl of payload is
    constant ADDR_WIDTH: integer := integer(ceil(log2(real(MATRIX_LENGTH**2))));
    signal q_U_T, d_U_T, q_times, q_in_ram, d_in_ram : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal write_enable_in_ram, write_enable_U_T, SVD_reset : std_logic;
    signal addr_U_T, addr_in_ram:std_logic_vector(ADDR_WIDTH-1 downto 0);
begin

    slaves: entity work.ipbus_example
        generic map(
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map(
            ipb_clk => ipb_clk,
            ram_clk => clk,
            ipb_rst => ipb_rst,
            ipb_in => ipb_in,
            ipb_out => ipb_out,
            nuke => nuke,
            soft_rst => soft_rst,
            userled => userled,
            SVD_rst => SVD_reset,
            write_enable_in_ram => write_enable_in_ram, 
            addr_in_ram => addr_in_ram,
            d_in_ram => d_in_ram,
            q_in_ram => q_in_ram,
            write_enable_U_T => write_enable_U_T,
            addr_U_T => addr_U_T,
            d_U_T => d_U_T,
            q_U_T => q_U_T
        );
        
    top_SVD: entity work.top_svd
        generic map(
            MATRIX_LENGTH => MATRIX_LENGTH,
            ADDR_WIDTH => ADDR_WIDTH,
            DATA_WIDTH => DATA_WIDTH
            )
        port map(
            clk => clk,
            rst => SVD_reset,
            write_enable_in_ram => write_enable_in_ram, 
            addr_in_ram => addr_in_ram,
            d_in_ram => d_in_ram,
            q_in_ram => q_in_ram,
            write_enable_U_T => write_enable_U_T,
            addr_U_T => addr_U_T,
            d_U_T => d_U_T,
            q_U_T => q_U_T
            );

end rtl;
