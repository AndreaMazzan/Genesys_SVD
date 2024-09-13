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


-- Top-level design for ipbus demo
--
-- This version is for KC705 eval board, using SFP ethernet interface
--
-- You must edit this file to set the IP and MAC addresses
--
-- Dave Newbold, 23/2/11

library IEEE;
use IEEE.STD_LOGIC_1164.all;

use work.ipbus.all;

entity top is generic (
    DATA_WIDTH : integer := 32;
    MATRIX_LENGTH : integer := 16;
	ENABLE_DHCP  : std_logic := '0'; -- Default is build with support for RARP rather than DHCP
	USE_IPAM     : std_logic := '0'; -- Default is no, use static IP address as specified by ip_addr below
	--MAC_ADDRESS  : std_logic_vector(47 downto 0) := X"00183E01E5BC" -- Careful here, arbitrary addresses do not always work);
	MAC_ADDRESS  : std_logic_vector(47 downto 0) := X"00183E039FF1" -- Careful here, arbitrary addresses do not always work
	);
	port (
    sysclk_p     : in  std_logic;
    sysclk_n     : in  std_logic;
    leds         : out std_logic_vector(4 downto 0);  -- status LEDs
    --dip_sw       : in  std_logic_vector(3 downto 0);  -- switches
    rgmii_txd    : out std_logic_vector(3 downto 0);
	rgmii_tx_ctl : out std_logic;
	rgmii_txc    : out std_logic;
	rgmii_rxd    : in std_logic_vector(3 downto 0);
	rgmii_rx_ctl : in std_logic;
	rgmii_rxc    : in std_logic;
    phy_rst      : out std_logic
    );

end top;

architecture rtl of top is

    signal clk_ipb, rst_ipb, clk_aux, rst_aux, nuke, soft_rst, phy_rst_e, userled : std_logic;
    signal mac_addr                                                               : std_logic_vector(47 downto 0);
    signal ip_addr                                                                : std_logic_vector(31 downto 0);
    signal ipb_out                                                                : ipb_wbus;
    signal ipb_in                                                                 : ipb_rbus;

begin

-- Infrastructure

    infra : entity work.kc705_gmii_infra
		generic map(
			DHCP_not_RARP => ENABLE_DHCP
		)
        port map(
            sysclk_p     => sysclk_p,
            sysclk_n     => sysclk_n,
            clk_ipb_o    => clk_ipb,
            rst_ipb_o    => rst_ipb,
            rst_125_o    => phy_rst_e,
            
            --clk_200_o    => clk_aux,
            clk_125_o   => clk_aux,
            -- clk_aux_o    => clk_aux,
            rst_aux_o    => rst_aux,
            nuke         => nuke,
            soft_rst     => soft_rst,
            leds         => leds(1 downto 0),
            rgmii_txd    => rgmii_txd,
		    rgmii_tx_ctl => rgmii_tx_ctl,
		    rgmii_txc    => rgmii_txc,
		    rgmii_rxd    => rgmii_rxd,
		    rgmii_rx_ctl => rgmii_rx_ctl,
		    rgmii_rxc    => rgmii_rxc,
            mac_addr     => mac_addr,
            ip_addr      => ip_addr,
            ipam_select  => USE_IPAM,
            ipb_in       => ipb_in,
            ipb_out      => ipb_out
            );

    leds(3 downto 2) <= '0' & userled;
    phy_rst          <= not phy_rst_e;

    mac_addr <= MAC_ADDRESS;
	-- ip_addr <= X"c0a8c82" & dip_sw; -- 192.168.200.32+n
	--ip_addr <= x"C0A80A10"; -- IP adress of the Genesys2 at the Gbit ethernet switch 192.168.10.16
	--ip_addr <=x"ac106401"; -- IP adress of the Genesys2 at the Gbit ethernet switch 172.16.100.1
	--ip_addr <= x"88BA58B7"; -- IP adress of the Genesys2 at the Gbit ethernet switch 136.186.88.183
    
	ip_addr <= x"88BAF14E"; -- IP adress of the Genesys2 at the Gbit ethernet switch 136.186.241.78

-- ipbus slaves live in the entity below, and can expose top-level ports
-- The ipbus fabric is instantiated within.

    payload : entity work.payload
        generic map(
            DATA_WIDTH => DATA_WIDTH,
            MATRIX_LENGTH => MATRIX_LENGTH
            )
        port map(
            ipb_clk  => clk_ipb,
            ipb_rst  => rst_ipb,
            ipb_in   => ipb_out,
            ipb_out  => ipb_in,
            --clk      => clk_aux,
            clk => clk_ipb,
            rst      => rst_aux,
            nuke     => nuke,
            soft_rst => soft_rst,
            userled  => userled
            );
            


end rtl;
