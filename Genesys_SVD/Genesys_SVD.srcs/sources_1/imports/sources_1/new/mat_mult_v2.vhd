library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;  -- Include the math_real library for mathematical functions

entity mat_mult_v2 is
    generic (
        MATRIX_LENGTH : integer := 4;
        ADDR_WIDTH: integer := 4;
        MULT_FACTOR : integer := 5;
        DATA_WIDTH : integer := 32
    );
    
    Port (
        clk : in  STD_LOGIC;
        rst : in  STD_LOGIC;
        
        -- Main control
        calculate_mat_mult : in  STD_LOGIC;
        
        -- Memory unit ports
        input_address_a : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        input_address_b : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        output_address : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        input_matrix_value_a : in std_logic_vector(DATA_WIDTH-1 downto 0);
        input_matrix_value_b : in std_logic_vector(DATA_WIDTH-1 downto 0);
        output_matrix_value : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        write_enable_out: out std_logic;
        mat_mult_done: out std_logic
    );
end mat_mult_v2;

architecture matrix_multiplier_arch of mat_mult_v2 is

    -- State machine definition
    type state_type is (IDLE, READ_AB, BUFFER_READ, COMPUTE, GOTO_NEXT_EL, WRITE_C1, WRITE_C2, WRITE_C3, COMPLETE);
    signal state: state_type;
    type ram_type is array (0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal temp_ram: ram_type;
    
    -- Internal signals
    signal cntr1: integer range 0 to MATRIX_LENGTH-1 := 0;
    signal cntr2: integer range 0 to MATRIX_LENGTH**2-1 := 0;
    signal row, col: integer range 0 to MATRIX_LENGTH-1 := 0;
    signal sum: signed((DATA_WIDTH*2)-1 downto 0);

begin
    process(clk, rst)
    begin
        if rst = '1' then
            write_enable_out <= '0';
            temp_ram <= (others => (others => '0'));
            state <= IDLE;
            row <= 0;
            col <= 0;
            cntr1 <= 0;
            cntr2 <= 0;
            mat_mult_done <= '0';
            sum <= (others => '0');
            input_address_a <= (others => '0');
            input_address_b <= (others => '0');
            output_address <= (others => '0');
            output_matrix_value <= (others => '0');
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    write_enable_out <= '0';
                    mat_mult_done <= '0';
                    row <= 0;
                    col <= 0;
                    cntr1 <= 0;
                    cntr2 <= 0;
                    sum <= (others => '0');
                    if calculate_mat_mult = '1' then
                        state <= READ_AB;
                    end if;

                when READ_AB =>
                    input_address_a <= std_logic_vector(to_unsigned(row * MATRIX_LENGTH + cntr1, input_address_a'length));
                    input_address_b <= std_logic_vector(to_unsigned(cntr1 * MATRIX_LENGTH + col, input_address_b'length));
                    state <= BUFFER_READ;
                
                when BUFFER_READ =>
                    state <= COMPUTE;
                    
                when COMPUTE =>
                    sum <= sum + (signed(input_matrix_value_a) * signed(input_matrix_value_b));
                    if cntr1 = MATRIX_LENGTH - 1 then
                        state <= GOTO_NEXT_EL;
                    else
                        cntr1 <= cntr1 + 1;
                        state <= READ_AB;
                    end if;

                when GOTO_NEXT_EL => 
                    temp_ram(row * MATRIX_LENGTH + col) <= std_logic_vector(shift_right(sum, MULT_FACTOR)(DATA_WIDTH-1 downto 0));
                    if col = MATRIX_LENGTH - 1 then
                        if row = MATRIX_LENGTH - 1 then
                            cntr1 <= 0;
                            state <= WRITE_C1;
                        else
                            row <= row + 1;
                            col <= 0;
                            cntr1 <= 0;
                            sum <= (others => '0');
                            state <= READ_AB;
                        end if;
                    else
                        col <= col + 1;
                        cntr1 <= 0;
                        sum <= (others => '0');
                        state <= READ_AB;
                    end if;

                when WRITE_C1 =>
                    write_enable_out <= '1';
                    output_address <= std_logic_vector(to_unsigned(cntr2, output_address'length));
                    output_matrix_value <= temp_ram(cntr2);
                    state <= WRITE_C2;

                when WRITE_C2 =>
                    state <= WRITE_C3;

                when WRITE_C3 =>
                    write_enable_out <= '0';
                    if cntr2 = MATRIX_LENGTH**2-1 then
                        state <= COMPLETE;
                    else
                        cntr2 <= cntr2 + 1;
                        state <= WRITE_C1;
                    end if;

                when COMPLETE =>
                    mat_mult_done <= '1';
                    state <= COMPLETE;

                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
end architecture matrix_multiplier_arch;
