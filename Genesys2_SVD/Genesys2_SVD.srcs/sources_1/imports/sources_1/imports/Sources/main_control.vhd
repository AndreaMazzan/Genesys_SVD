library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use IEEE.NUMERIC_STD.ALL;

entity main_control is
    generic (
        MATRIX_LENGTH : integer := 4
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
end main_control;

architecture Behavioral of main_control is
    -- Signals for main_control
    signal p : integer range 0 to MATRIX_LENGTH-2 := 0;
    signal q : integer range 1 to MATRIX_LENGTH-1 := 1;
    type state_type is (get_p_q, start_mat_mult, gen_new_pq_pair);
    signal state : state_type;

    -- Signals for LUT counter
    signal lut_enable : std_logic := '0'; -- Changed from port to signal
    signal sweep_val : integer range 0 to 8;  -- Internal signal for LUT output

    -- iteration counter for S_value
    signal iter_count : integer range 0 to 9 := 0;

begin
    -- Instantiate the LUT counter
    LUT_Counter_Inst : entity work.lut_counter
        generic map (
            n_in   => MATRIX_LENGTH
        )
        port map (
            S_out => sweep_val
        );

    process(clk, rst)
    begin
        if rst = '1' then
            -- main control
            cordic_rst <= '1';
            p <= 0;
            q <= 1;
            state <= get_p_q;
            fetch_valid_cordic <= '0';
            mat_mult_ready <= '0';
            mat_mult_rst <= '1';
            output_p <= (others => '0');
            output_q <= (others => '0');
            
            -- LUT
            iter_count <= 0;
            
        elsif rising_edge(clk) then
            
            case state is
                    
                when get_p_q =>
                    if iter_count < sweep_val then 
                        if p < MATRIX_LENGTH-1 then
                            output_p <= std_logic_vector(to_unsigned(p, output_p'length));
                            output_q <= std_logic_vector(to_unsigned(q, output_q'length));
                            fetch_valid_cordic <= '1';
                            cordic_rst <= '0';
                            mat_mult_ready <= '0';
                            mat_mult_rst <= '0';
                            state <= start_mat_mult;
                        else 
                            p <= 0;   --p = n
                            q <= 1;   --q = n +1
                        end if;
                    end if;
                when start_mat_mult =>
                    if jacobi_done = '1' then
                        cordic_rst <= '1';
                        fetch_valid_cordic <= '0';
                        mat_mult_ready <= '1';
                        mat_mult_rst <= '0';
                        state <= gen_new_pq_pair;
                    end if;

                when gen_new_pq_pair =>
                    if mat_mult_done = '1' then
                        mat_mult_ready <= '0';
                        mat_mult_rst <= '1';

                        if q < MATRIX_LENGTH-1 then
                            q <= q + 1;
                        else
                            if p < MATRIX_LENGTH-2 then
                                p <= p + 1;
                                q <= p + 2;
                            else
                                iter_count <= iter_count + 1;
                                p <= 0;
                                q <= 1;   
                            end if;                        
                        end if;
                        state <= get_p_q; --repeat 
                    end if;
                    
                when others =>
                    state <= get_p_q;
            end case;
        end if;
        
    end process;
end Behavioral;
