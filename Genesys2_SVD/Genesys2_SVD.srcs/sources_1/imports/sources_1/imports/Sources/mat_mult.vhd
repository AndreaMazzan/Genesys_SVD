library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;  -- Include the math_real library for mathematical functions

entity mat_mult is
    generic (
        MATRIX_LENGTH : integer := 16;
        MULT_FACTOR : integer := 5;
        DATA_WIDTH : integer := 32
    );
    
    Port (
        clk : in  STD_LOGIC;
        rst : in  STD_LOGIC;
        
        -- Main control
        calculate_mat_mult : in  STD_LOGIC;
        
        -- Memory unit ports
        input_address_a : out std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
        input_address_b : out std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
        output_address : out std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
        input_matrix_value_a : in std_logic_vector(DATA_WIDTH-1 downto 0);
        input_matrix_value_b : in std_logic_vector(DATA_WIDTH-1 downto 0);
        output_matrix_value : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        write_enable_out: out std_logic;
        mat_mult_done: out std_logic
    );
end mat_mult;

architecture matrix_multiplier_arch of mat_mult is

    -- State machine definition
    type state_type is (IDLE, READ_AB, COMPUTE, WRITE_C, COMPLETE, BUFFER_COMPLETE, BUFFER_READ);
    signal state: state_type;

    -- Internal signals
    signal row, col, k: integer range 0 to MATRIX_LENGTH-1 := 0;
    signal sum: signed((DATA_WIDTH*2)-1 downto 0);
--    signal a_val, b_val: signed(15 downto 0);

begin

    -- Process for state transitions
    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
            row <= 0;
            col <= 0;
            k <= 0;
            mat_mult_done <= '0';
            write_enable_out <= '0';
            sum <= (others => '0');
--            a_val <= (others => '0');
--            b_val <= (others => '0');
            input_address_a <= (others => '0');
            input_address_b <= (others => '0');
            output_address <= (others => '0');
            output_matrix_value <= (others => '0');
        elsif rising_edge(clk) then
            --state <= next_state;

            case state is
                when IDLE =>
                    write_enable_out <= '0';
                    mat_mult_done <= '0';
                    row <= 0;
                    col <= 0;
                    k <= 0;
                    sum <= (others => '0');
                    if calculate_mat_mult='1' then
                        state <= READ_AB;
                    end if;
                
                when READ_AB =>
                    --write_enable_out <= '0';
                    if k < MATRIX_LENGTH then
                        input_address_a <= std_logic_vector(to_unsigned(row * MATRIX_LENGTH + k, input_address_a'length));
                        input_address_b <= std_logic_vector(to_unsigned(k * MATRIX_LENGTH + col, input_address_b'length));
--                        a_val <= signed(input_matrix_value_a);
--                        b_val <= signed(input_matrix_value_b);
                        state <= BUFFER_READ;
                    end if;
                    
                when BUFFER_READ =>
                    state<=COMPUTE;
                    
                when COMPUTE =>
                    write_enable_out <= '0'; --NEW
                    sum <= sum + (signed(input_matrix_value_a) * signed(input_matrix_value_b));
                    --sum <= sum + (a_val * b_val);
                    if k = MATRIX_LENGTH-1 then
                        state <= WRITE_C;
                    else
                        k <= k + 1;
                        state <= READ_AB;
                    end if;

                when WRITE_C => 
                    write_enable_out <= '1';
                    output_address <= std_logic_vector(to_unsigned(row * MATRIX_LENGTH + col, output_address'length));
                    output_matrix_value <= std_logic_vector(shift_right(sum, MULT_FACTOR)(DATA_WIDTH-1 downto 0)); -- Assuming 16-bit output
                    if col = MATRIX_LENGTH-1 then
                        if row = MATRIX_LENGTH-1 then
                            state <= BUFFER_COMPLETE;
                        else
                            row <= row + 1;
                            col <= 0;
                            k <= 0;
                            sum <= (others => '0');
                            state <= READ_AB;
                        end if;
                    else
                        col <= col + 1;
                        k <= 0;
                        sum <= (others => '0');
                        state <= READ_AB;
                    end if;

                when BUFFER_COMPLETE =>
                    --write_enable_out <= '0';
                    mat_mult_done <= '1';
                    state <= COMPLETE;
                    
                when COMPLETE =>
                    write_enable_out <= '0';
                    state <= COMPLETE;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end architecture matrix_multiplier_arch;
