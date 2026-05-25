library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lut_counter is
    generic(
        n_in : integer:=4
        );
    port (
        --n_in     : in integer;     -- Input `n` to match with LUT
        S_out    : out integer     -- `S` output as an integer
    );
end lut_counter;

architecture Behavioral of lut_counter is
    begin
    process
        begin
            case n_in is
                when 4 =>
                    S_out <= 3;   -- n = 4, S = 3
                when 5 to 8 =>
                    S_out <= 4;   -- n = 6, S = 4
                when 9 to 16 =>
                    S_out <= 5;   -- n = 8 or 10, S = 5
                when 17 to 32 =>
                    S_out <= 6;   -- n = 20, 30, or 40, S = 6
                when 33 to 64 =>
                    S_out <= 7;   -- n = 50 or 100, S = 7
                when others =>
                    S_out <= 0;   
            end case;
            wait;
        end process;        
    end Behavioral;
