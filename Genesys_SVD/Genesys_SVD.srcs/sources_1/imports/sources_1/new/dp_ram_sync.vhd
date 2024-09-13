library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Required for to_integer and unsigned

-- Dual-port RAM entity declaration
entity dp_ram_sync is
    generic (
        MULT_FACTOR : integer :=5;
        DATA_WIDTH : integer := 16;   -- Width of data bus
        MATRIX_LENGTH : integer := 2;
        ADDR_WIDTH : integer := 3     -- Width of address bus (example: 3  for 2x2 matrix)
    );
    port (
        clk      : in  std_logic;                 -- Clock signal
        rst      : in  std_logic;                 -- Reset signal
        we_a     : in  std_logic;                 -- Write enable for port A
        we_b     : in  std_logic;                 -- Write enable for port B
        
        addr_a   : in  std_logic_vector(ADDR_WIDTH-1 downto 0); -- Address bus for port A
        addr_b   : in  std_logic_vector(ADDR_WIDTH-1 downto 0); -- Address bus for port B
        data_in_a  : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- Data input for port A
        data_in_b  : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- Data input for port B
        data_out_a : out std_logic_vector(DATA_WIDTH-1 downto 0);  -- Data output for port A
        data_out_b : out std_logic_vector(DATA_WIDTH-1 downto 0)  -- Data output for port B
    );
end dp_ram_sync;

-- Dual-port RAM architecture
architecture Behavioral of dp_ram_sync is
    type ram_type is array (0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal RAM : ram_type;

begin
    -- RAM access process
    process(clk, rst)
    begin
        if rst = '1' then
            RAM <= (others => (others => '0'));
        elsif rising_edge(clk) then
            -- Handle port A operations
            if we_a = '1' then
                RAM(to_integer(unsigned(addr_a))) <= data_in_a; -- Write operation
            end if;

            -- Handle port B operations
            if we_b = '1' then
                RAM(to_integer(unsigned(addr_b))) <= data_in_b; -- Write operation
            end if;
        end if;
    end process;


-- Port A output assignment
process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            data_out_a <= (others => '0');
        else
            data_out_a <= RAM(to_integer(unsigned(addr_a))); -- Immediate output
        end if;
    end if;
end process;

-- Port B output assignment
process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            data_out_b <= (others => '0');
        else
            data_out_b <= RAM(to_integer(unsigned(addr_b))); -- Immediate output
        end if;
    end if;
end process;
end Behavioral;