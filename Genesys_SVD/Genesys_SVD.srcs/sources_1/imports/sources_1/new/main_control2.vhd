library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.NUMERIC_STD.ALL; -- Use this for arithmetic operations with std_logic_vector

entity main_control_old is
    generic (
        MATRIX_LENGTH : integer := 16
    );
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
        output_p : out std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH))))-1 downto 0);
        output_q : out std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH))))-1 downto 0);
        fetch_valid_cordic : out std_logic;
        cordic_rst : out std_logic;
        jacobi_done : in std_logic;
        mat_mult_rst : out std_logic;
        mat_mult_ready : out std_logic;
        mat_mult_done : in std_logic
    );
end main_control_old;

architecture Behavioral of main_control_old is
    signal p : integer range 0 to MATRIX_LENGTH-2 := 0;
    signal q : integer range 1 to MATRIX_LENGTH-1 := 1;
    type state_type is (start_cordic, start_mat_mult, gen_new_pq_pair);
    signal state : state_type := start_cordic;
begin
    process(clk, rst)
    begin
        if rst = '1' then
            cordic_rst <= '1';
            p <= 0;
            q <= 1;
            state <= start_cordic;
            fetch_valid_cordic <= '0';
            mat_mult_ready <= '0';
            mat_mult_rst <= '1';
            output_p <= (others => '0');
            output_q <= (others => '0');
        elsif rising_edge(clk) then
            case state is
                when start_cordic => -- Idle state, generate a pair and set fetch_valid to '1'
                    if p < MATRIX_LENGTH-1 then
                        output_p <= std_logic_vector(to_unsigned(p, output_p'length));
                        output_q <= std_logic_vector(to_unsigned(q, output_q'length));
                        fetch_valid_cordic <= '1';
                        cordic_rst <= '0';
                        mat_mult_ready <= '0';
                        mat_mult_rst <= '0';
                        state <= start_mat_mult;
                    else
                        p <= 0; -- Restart the cycle when p reaches the end
                        q <= 1;
                    end if;
                when start_mat_mult => -- Wait for jacobi_done signal
                    if jacobi_done = '1' then
                        cordic_rst <= '1';
                        fetch_valid_cordic <= '0';
                        mat_mult_ready <= '1'; -- Set mat_mult_ready to '1'
                        mat_mult_rst <= '0';
                        state <= gen_new_pq_pair;
                    end if;
                when gen_new_pq_pair => -- Wait for mat_mult_done signal
                    if mat_mult_done = '1' then
                        mat_mult_ready <= '0'; -- Reset mat_mult_ready
                        mat_mult_rst <= '1';
                        if q < MATRIX_LENGTH-1 then
                            q <= q + 1;
                        else
                            if p < MATRIX_LENGTH-2 then
                                p <= p + 1;
                                q <= p + 2; -- q starts from p+1 in each iteration
                            else
                                p <= 0; -- Restart the cycle
                                q <= 1;
                            end if;
                        end if;
                        state <= start_cordic;
                    end if;
                when others =>
                    state <= start_cordic;
            end case;
        end if;
    end process;
end Behavioral;