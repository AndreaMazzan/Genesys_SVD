library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package utility_pkg is
    function calculate_mult_factor(MATRIX_LENGTH : integer) return integer;
end package utility_pkg;

package body utility_pkg is
    function calculate_mult_factor(MATRIX_LENGTH : integer) return integer is
    begin
        -- for 32 bits
--        if MATRIX_LENGTH >= 2 and MATRIX_LENGTH <= 4 then
--            return 15;
--        elsif MATRIX_LENGTH >= 5 and MATRIX_LENGTH <= 16 then
--            return 14;
--        elsif MATRIX_LENGTH >= 17 and MATRIX_LENGTH <= 64 then
--            return 13;
--        else
--            return 12;  -- Assuming MATRIX_LENGTH beyond 64
--        end if;
        --for 16 bits
        if MATRIX_LENGTH <= 4 then
            return 14;
        elsif MATRIX_LENGTH >= 5 and MATRIX_LENGTH <= 8 then
            return 13;
        elsif MATRIX_LENGTH >= 9 and MATRIX_LENGTH <= 16 then
            return 12;
        else
            return 11;  -- Assuming MATRIX_LENGTH beyond 64
        end if;
        
    end function;
end package body utility_pkg;
