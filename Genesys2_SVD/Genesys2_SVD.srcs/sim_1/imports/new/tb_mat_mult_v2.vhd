library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;  -- Include the math_real library for mathematical functions

entity tb_mat_mult_v2 is
end tb_mat_mult_v2;

architecture sim of tb_mat_mult_v2 is

    -- Constants
    constant MULT_FACTOR : integer := 12;
    constant MATRIX_LENGTH : integer := 4;  -- Adjust to match your design
    constant CLK_PERIOD : time := 10 ns;
    constant DATA_WIDTH : integer := 32;

    -- Signals
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal calculate_mat_mult : std_logic := '0';
    signal input_address_a : std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
    signal input_address_b : std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
    signal output_address : std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
    signal input_matrix_value_a : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal input_matrix_value_b : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal output_matrix_value : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal write_enable_out : std_logic;
    signal mat_mult_done : std_logic;

    -- Memory arrays to simulate matrix storage
    type matrix_array is array(0 to MATRIX_LENGTH*MATRIX_LENGTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal matrix_a : matrix_array := (others => (others => '0'));
    signal matrix_b : matrix_array := (others => (others => '0'));
    signal matrix_c : matrix_array := (others => (others => '0'));

    -- DUT (Device Under Test) instance
    component mat_mult_v2
        generic (
            MATRIX_LENGTH : integer := 4;
            ADDR_WIDTH : integer := 4;
            MULT_FACTOR : integer := 12;
            DATA_WIDTH : integer := 32
        );
        Port (
            clk : in  STD_LOGIC;
            rst : in  STD_LOGIC;
            calculate_mat_mult : in  STD_LOGIC;
            input_address_a : out std_logic_vector(ADDR_WIDTH-1 downto 0);
            input_address_b : out std_logic_vector(ADDR_WIDTH-1 downto 0);
            output_address : out std_logic_vector(ADDR_WIDTH-1 downto 0);
            input_matrix_value_a : in std_logic_vector(DATA_WIDTH-1 downto 0);
            input_matrix_value_b : in std_logic_vector(DATA_WIDTH-1 downto 0);
            output_matrix_value : out std_logic_vector(DATA_WIDTH-1 downto 0);
            write_enable_out : out std_logic;
            mat_mult_done : out std_logic
        );
    end component;

begin

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Instantiate the DUT
    uut: mat_mult_v2
        generic map (
            MATRIX_LENGTH => MATRIX_LENGTH,
            ADDR_WIDTH => integer(ceil(log2(real(MATRIX_LENGTH**2)))),
            MULT_FACTOR => MULT_FACTOR,
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            clk => clk,
            rst => rst,
            calculate_mat_mult => calculate_mat_mult,
            input_address_a => input_address_a,
            input_address_b => input_address_b,
            output_address => output_address,
            input_matrix_value_a => input_matrix_value_a,
            input_matrix_value_b => input_matrix_value_b,
            output_matrix_value => output_matrix_value,
            write_enable_out => write_enable_out,
            mat_mult_done => mat_mult_done
        );

    -- Test process
    process
    begin
        -- Initialize input matrices
        matrix_a(0) <= std_logic_vector(to_signed(1*2**MULT_FACTOR, DATA_WIDTH));   -- A[0][0]
        matrix_a(1) <= std_logic_vector(to_signed(2*2**MULT_FACTOR, DATA_WIDTH));   -- A[0][1]
        matrix_a(2) <= std_logic_vector(to_signed(3*2**MULT_FACTOR, DATA_WIDTH));   -- A[0][2]
        matrix_a(3) <= std_logic_vector(to_signed(4*2**MULT_FACTOR, DATA_WIDTH));   -- A[0][3]
        matrix_a(4) <= std_logic_vector(to_signed(5*2**MULT_FACTOR, DATA_WIDTH));   -- A[1][0]
        matrix_a(5) <= std_logic_vector(to_signed(6*2**MULT_FACTOR, DATA_WIDTH));   -- A[1][1]
        matrix_a(6) <= std_logic_vector(to_signed(7*2**MULT_FACTOR, DATA_WIDTH));   -- A[1][2]
        matrix_a(7) <= std_logic_vector(to_signed(8*2**MULT_FACTOR, DATA_WIDTH));   -- A[1][3]
        matrix_a(8) <= std_logic_vector(to_signed(9*2**MULT_FACTOR, DATA_WIDTH));   -- A[2][0]
        matrix_a(9) <= std_logic_vector(to_signed(10*2**MULT_FACTOR, DATA_WIDTH));  -- A[2][1]
        matrix_a(10) <= std_logic_vector(to_signed(11*2**MULT_FACTOR, DATA_WIDTH)); -- A[2][2]
        matrix_a(11) <= std_logic_vector(to_signed(12*2**MULT_FACTOR, DATA_WIDTH)); -- A[2][3]
        matrix_a(12) <= std_logic_vector(to_signed(13*2**MULT_FACTOR, DATA_WIDTH)); -- A[3][0]
        matrix_a(13) <= std_logic_vector(to_signed(14*2**MULT_FACTOR, DATA_WIDTH)); -- A[3][1]
        matrix_a(14) <= std_logic_vector(to_signed(15*2**MULT_FACTOR, DATA_WIDTH)); -- A[3][2]
        matrix_a(15) <= std_logic_vector(to_signed(16*2**MULT_FACTOR, DATA_WIDTH)); -- A[3][3]

        matrix_b(0) <= std_logic_vector(to_signed(1*2**MULT_FACTOR, DATA_WIDTH));   -- B[0][0]
        matrix_b(1) <= std_logic_vector(to_signed(2*2**MULT_FACTOR, DATA_WIDTH));   -- B[0][1]
        matrix_b(2) <= std_logic_vector(to_signed(3*2**MULT_FACTOR, DATA_WIDTH));   -- B[0][2]
        matrix_b(3) <= std_logic_vector(to_signed(4*2**MULT_FACTOR, DATA_WIDTH));   -- B[0][3]
        matrix_b(4) <= std_logic_vector(to_signed(5*2**MULT_FACTOR, DATA_WIDTH));   -- B[1][0]
        matrix_b(5) <= std_logic_vector(to_signed(6*2**MULT_FACTOR, DATA_WIDTH));   -- B[1][1]
        matrix_b(6) <= std_logic_vector(to_signed(7*2**MULT_FACTOR, DATA_WIDTH));   -- B[1][2]
        matrix_b(7) <= std_logic_vector(to_signed(8*2**MULT_FACTOR, DATA_WIDTH));   -- B[1][3]
        matrix_b(8) <= std_logic_vector(to_signed(9*2**MULT_FACTOR, DATA_WIDTH));   -- B[2][0]
        matrix_b(9) <= std_logic_vector(to_signed(10*2**MULT_FACTOR, DATA_WIDTH));  -- B[2][1]
        matrix_b(10) <= std_logic_vector(to_signed(11*2**MULT_FACTOR, DATA_WIDTH)); -- B[2][2]
        matrix_b(11) <= std_logic_vector(to_signed(12*2**MULT_FACTOR, DATA_WIDTH)); -- B[2][3]
        matrix_b(12) <= std_logic_vector(to_signed(13*2**MULT_FACTOR, DATA_WIDTH)); -- B[3][0]
        matrix_b(13) <= std_logic_vector(to_signed(14*2**MULT_FACTOR, DATA_WIDTH)); -- B[3][1]
        matrix_b(14) <= std_logic_vector(to_signed(15*2**MULT_FACTOR, DATA_WIDTH)); -- B[3][2]
        matrix_b(15) <= std_logic_vector(to_signed(16*2**MULT_FACTOR, DATA_WIDTH)); -- B[3][3]

        -- Reset the design
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 20 ns;

        -- Start matrix multiplication
        calculate_mat_mult <= '1';
        wait until mat_mult_done = '1';

        -- Wait to observe outputs
        wait for CLK_PERIOD * 10;

        -- End of simulation
        assert false report "End of Test" severity note;
        wait;
    end process;
    -- Input value assignment based on address
    process(clk)
    begin
        if rising_edge(clk) then
            -- Assign inputs from matrix storage
            input_matrix_value_a <= matrix_a(to_integer(unsigned(input_address_a)));
            input_matrix_value_b <= matrix_b(to_integer(unsigned(input_address_b)));

            -- Capture the result
            if write_enable_out = '1' then
                matrix_c(to_integer(unsigned(output_address))) <= output_matrix_value;
            end if;
        end if;
    end process;
end sim;