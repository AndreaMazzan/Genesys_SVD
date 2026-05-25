library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sum_difference is
generic (
        DATA_WIDTH : integer := 32  
);

Port (
        --inputs
        rst : in STD_LOGIC;
        inputA : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        inputB : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        input_valid : in STD_LOGIC;
        output_valid : out STD_LOGIC;
        outputApB: out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        outputAmB : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
    );
end sum_difference;

architecture Behavioral of sum_difference is

begin
    --when assigning:
    --inputA = a22 or a21 or phi + theta
    --inputB = a11 or a12 or phi - theta
    
    process(rst, input_valid, inputA, inputB)
    begin
        if rst = '1' or input_valid = '0' then
            outputApB <= (others => '0');
            outputAmB <= (others => '0');
            output_valid <= '0';
        else
            outputApB <= inputA + inputB;
            outputAmB <= inputA - inputB;
            output_valid <= '1';
        end if;
    end process;
    
end Behavioral;
