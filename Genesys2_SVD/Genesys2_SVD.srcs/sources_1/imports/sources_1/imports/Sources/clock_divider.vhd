library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_divider is
    generic (
        DIV : integer := 2  -- Default division factor
    );
    Port (
        clk : in STD_LOGIC;         -- Input Clock
        rst : in STD_LOGIC;         -- Reset
        divided_clk : out STD_LOGIC -- Divided clock output
    );
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter : INTEGER := 0;
    signal divided_clk_internal : STD_LOGIC := '0';
    
begin
    process (clk, rst)
    begin
        if rst = '1' then
            counter <= 0;
            divided_clk_internal <= '0';
        elsif rising_edge(clk) then
            if counter = DIV - 1 then
                counter <= 0;
                divided_clk_internal <= not divided_clk_internal;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    divided_clk <= divided_clk_internal;
end Behavioral;
