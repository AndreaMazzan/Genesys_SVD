library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;  -- Include the math_real library for mathematical functions

entity math_unit is
    generic (
        MATRIX_LENGTH : integer := 16;
        ADDR_WIDTH : integer :=4;
        MULT_FACTOR : integer := 5;
        DATA_WIDTH : integer := 32
    );
    
    Port (
        clk : in  STD_LOGIC;
        rst : in  STD_LOGIC;
        
        -- Main control
        calculate_mat_mult : in  STD_LOGIC;
        
        --to and from temp result memory
        write_enable_temp : out std_logic;
        output_address_temp : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        output_value_temp : out std_logic_vector(DATA_WIDTH-1 downto 0);      

        input_value_matmul2 : in std_logic_vector(DATA_WIDTH-1 downto 0);    
        input_address_matmul2 : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        
        -- Memory unit ports
        input_address_Jl : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        input_address_A : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        input_address_Jr : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        input_matrix_value_Jl : in std_logic_vector(DATA_WIDTH-1 downto 0);
        input_matrix_value_A : in std_logic_vector(DATA_WIDTH-1 downto 0);
        output_matrix_value_A : out std_logic_vector(DATA_WIDTH-1 downto 0);
        input_matrix_value_Jr : in std_logic_vector(DATA_WIDTH-1 downto 0);
        output_address_A : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        first_half_done : out std_logic;
        write_enable_A : out std_logic;
        mat_mult_done: out std_logic
    );
end math_unit;

architecture Behavioral of math_unit is
    --From MatMul1 to Temp
    signal mat1_mult_done: std_logic;
    
          
begin
    mat_mult1 : entity work.mat_mult_v2
    generic map (
        MULT_FACTOR => MULT_FACTOR,        -- Multiplication factor
        ADDR_WIDTH => ADDR_WIDTH,          -- Address width for matrices
        MATRIX_LENGTH => MATRIX_LENGTH     -- Size of the matrix
    )
    port map (
        clk => clk,                        -- Clock signal
        rst => rst,                        -- Reset signal
        calculate_mat_mult => calculate_mat_mult,  -- Start matrix multiplication signal
        input_address_a => input_address_Jl,      -- Input address for matrix Jl
        input_address_b => input_address_A,       -- Input address for matrix A
        output_address => output_address_temp,    -- Temporary address for storing output
        input_matrix_value_a => input_matrix_value_Jl,  -- Input matrix Jl values
        input_matrix_value_b => input_matrix_value_A,   -- Input matrix A values
        output_matrix_value => output_value_temp,       -- Temporary matrix output values
        write_enable_out => write_enable_temp,    -- Write enable for output matrix
        mat_mult_done => mat1_mult_done           -- Signal indicating mat_mult1 is done
    );

    mat_mult2 : entity work.mat_mult_v2
    generic map (
        MULT_FACTOR => MULT_FACTOR,        -- Multiplication factor
        ADDR_WIDTH => ADDR_WIDTH,          -- Address width for matrices
        MATRIX_LENGTH => MATRIX_LENGTH     -- Size of the matrix
    )
    port map (
        clk => clk,                        -- Clock signal
        rst => rst,                        -- Reset signal
        calculate_mat_mult => mat1_mult_done,   -- Trigger when mat_mult1 is done
        input_address_a => input_address_matmul2,   -- Input address for second matrix multiplication
        input_address_b => input_address_Jr,        -- Input address for matrix Jr
        output_address => output_address_A,         -- Address to store output matrix A
        input_matrix_value_a => input_value_matmul2,   -- Input matrix values for second multiplication
        input_matrix_value_b => input_matrix_value_Jr, -- Input matrix Jr values
        output_matrix_value => output_matrix_value_A,  -- Output matrix values for A
        write_enable_out => write_enable_A,        -- Write enable for matrix A output
        mat_mult_done => mat_mult_done             -- Signal indicating mat_mult2 is done
    );

    first_half_done <= mat1_mult_done;
end Behavioral;
