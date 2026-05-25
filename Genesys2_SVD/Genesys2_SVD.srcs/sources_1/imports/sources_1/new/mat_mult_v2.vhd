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
    type state_type_r is (IDLE, READ_AB, BUFFER_READ, STORE);
    type state_type_c is (IDLE, COMPUTE1, COMPUTE2, GOTO_NEXT_EL);
    type state_type_w is (IDLE, COMPLETE, WRITE_C1, WRITE_C2, WRITE_C3);
    signal state_r: state_type_r;
    signal state_c: state_type_c;
    signal state_w: state_type_w;
    type ram_type is array (0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal buffer_a, buffer_b, buffer_c: ram_type;
    signal buffer_a_reg_signed, buffer_b_reg_signed: signed(DATA_WIDTH-1 downto 0);
    -- Internal signals
    signal cntr_r, cntr_c, cntr_w: integer;
    signal row, col: integer range 0 to MATRIX_LENGTH-1 := 0;
    signal sum, mul_result: signed((DATA_WIDTH*2)-1 downto 0);
    signal done_reading, done_calculating, done_mat_multing: std_logic;

begin

    read_process: process(clk,rst)
    begin
        if rst='1' then
            done_reading <= '0';
            input_address_a <= (others => '0');
            input_address_b <= (others => '0');
            cntr_r <= 0;
            state_r <= IDLE;    
            buffer_a <= (others => (others => '0'));
            buffer_b <= (others => (others => '0'));
            
        elsif rising_edge(clk) then
            case state_r is 
                when IDLE =>
                    if calculate_mat_mult='1' and done_reading='0' then
                        state_r <= READ_AB;
                    else
                        state_r <= IDLE;
                    end if;
                when READ_AB=>
                    input_address_a <= std_logic_vector(to_unsigned(cntr_r, input_address_a'length));
                    input_address_b <= std_logic_vector(to_unsigned(cntr_r, input_address_b'length));
                    state_r <= BUFFER_READ;
                when BUFFER_READ =>
                    state_r <= STORE;
                when STORE =>
                    buffer_a(cntr_r) <= input_matrix_value_a;
                    buffer_b(cntr_r) <= input_matrix_value_b;
                    if cntr_r = 2**ADDR_WIDTH-1 then
                        cntr_r <= 0;
                        done_reading <= '1';
                        state_r <= IDLE;
                    else
                        cntr_r <= cntr_r + 1;
                        state_r <= READ_AB;
                    end if;
                when others =>
                    state_r <= IDLE;
            end case;
        end if;    
    end process;
    
    calculate_process: process(clk, rst)
    begin
        if rst = '1' then
            state_c <= IDLE;
            cntr_c <= 0;
            done_calculating <= '0';
            row <= 0;
            col <= 0;
            buffer_a_reg_signed <= (others => '0');
            buffer_b_reg_signed <= (others => '0');
            mul_result <= (others => '0');
            buffer_c <= (others => (others => '0'));
            sum <= (others => '0');
        elsif rising_edge(clk) then
            
            case state_c is
                when IDLE =>
                    if done_reading = '1' and done_calculating ='0' then
                        state_c <= COMPUTE1;
                    else
                        state_c <= IDLE;
                    end if;
                when COMPUTE1 =>
                    
                    buffer_a_reg_signed <= signed(buffer_a(row * MATRIX_LENGTH + cntr_c));
                    buffer_b_reg_signed <= signed(buffer_b(cntr_c * MATRIX_LENGTH + col));
                    --mul_result <= buffer_a_reg_signed * buffer_b_reg_signed;
                    state_c <= COMPUTE2;
--                when COMPUTE2 =>
--                    mul_result <= buffer_a_reg_signed * buffer_b_reg_signed;
--                    state_c <= COMPUTE3;
                when COMPUTE2 =>
                    sum <= sum + buffer_a_reg_signed * buffer_b_reg_signed;
                    -- sum <= sum + (signed(buffer_a(row * MATRIX_LENGTH + cntr_c)) * signed(buffer_b(cntr_c * MATRIX_LENGTH + col)));
                    if cntr_c = MATRIX_LENGTH-1 then
                        state_c <= GOTO_NEXT_EL;
                    else
                        state_c <= COMPUTE1;
                        cntr_c <= cntr_c + 1;
                    end if;

                when GOTO_NEXT_EL => 
                    buffer_c(row * MATRIX_LENGTH + col) <= std_logic_vector(shift_right(sum, MULT_FACTOR)(DATA_WIDTH-1 downto 0));
                    cntr_c <= 0;
                    if col = MATRIX_LENGTH-1 then
                        if row = MATRIX_LENGTH-1 then
                            done_calculating <= '1';
                            state_c <= IDLE;
                        else
                            row <= row + 1;
                            col <= 0;
                            sum <= (others => '0');
                            state_c <= COMPUTE1;
                        end if;
                    else
                        col <= col + 1;
                        sum <= (others => '0');
                        state_c <= COMPUTE1;
                    end if;
                    
                when others =>
                    state_c <= IDLE;
            end case;
        end if;
    end process;
    
    write_process: process(clk,rst)
    begin
        if rst = '1' then
            state_w <= IDLE;
            cntr_w <= 0;
            write_enable_out <= '0';
            done_mat_multing <= '0';
            output_address <= (others => '0');
            output_matrix_value <= (others => '0');
        elsif rising_edge(clk) then
            case state_w is
                when IDLE =>
                    if done_calculating ='1' and done_mat_multing = '0' then
                        state_w <= WRITE_C1;
                    else
                        state_w <= IDLE;
                    end if;
                when WRITE_C1 =>
                    write_enable_out <= '1';
                    output_address <= std_logic_vector(to_unsigned(cntr_w, output_address'length));
                    output_matrix_value <= buffer_c(cntr_w);
                    state_w <= WRITE_C2;
                
                when WRITE_C2 =>
                    state_w <= WRITE_C3;
                
                when WRITE_C3 =>
                    write_enable_out <= '0';
                    if cntr_w=2**ADDR_WIDTH-1 then
                        state_w <= COMPLETE;
                    else
                        cntr_w <= cntr_w+1;
                        state_w <= WRITE_C1;
                    end if;
                    
                when COMPLETE =>
                    done_mat_multing <= '1';
                    state_w <= COMPLETE;
                    
                when others =>
                    state_w <= IDLE;
            end case;
        
        end if;
    end process;
    mat_mult_done <= done_mat_multing;
end architecture matrix_multiplier_arch;
