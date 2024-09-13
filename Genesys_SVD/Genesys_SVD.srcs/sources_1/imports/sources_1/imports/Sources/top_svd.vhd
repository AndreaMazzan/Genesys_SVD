library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;
use work.utility_pkg.all;

entity top_svd is
    generic (
        MATRIX_LENGTH : integer := 16;
        ADDR_WIDTH: integer :=8;
        DATA_WIDTH : integer := 32
    );
    
    Port ( 
        clk : in std_logic;
        rst: in std_logic;
        write_enable_in_ram: out std_logic;
        addr_in_ram: out std_logic_vector(ADDR_WIDTH-1 downto 0);
        d_in_ram: out std_logic_vector(DATA_WIDTH-1 downto 0);
        q_in_ram: in std_logic_vector(DATA_WIDTH-1 downto 0);
        write_enable_U_T: out std_logic;
        addr_U_T: out std_logic_vector(ADDR_WIDTH-1 downto 0);
        d_U_T: out std_logic_vector(DATA_WIDTH-1 downto 0);
        q_U_T: in std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end top_svd;

architecture Behavioral of top_svd is

signal  output_matrix_value_theta, output_matrix_value_phi : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
signal  input_address_cordic, output_address_cordic : std_logic_vector(ADDR_WIDTH-1 downto 0);
signal  cordic_computation_valid, compute_angles, jacobi_done, fetch_valid_cordic, cordic_rst, mat_mult_rst, mat_mult_ready, mat_mult_done, write_enable_a : std_logic;
signal  a_pp_out, a_pq_out, a_qq_out, a_qp_out, sin_theta, cos_theta, sin_phi, cos_phi : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
signal  signal_p, signal_q  : std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH))))-1 downto 0);
signal  input_address_last_jacobi, input_address_cumulative_jacobi, output_address_cumulative_jacobi: std_logic_vector(ADDR_WIDTH-1 downto 0);
        
signal  input_value_last_jacobi: std_logic_vector(DATA_WIDTH-1 downto 0);
signal  addr_a_J_L: std_logic_vector(ADDR_WIDTH-1 downto 0);
signal write_enable_U_T_s: std_logic;
signal matmult_address_JL, addr_b_of_A, matmult_address_A_in, matmult_address_A_out, matmult_address_JR : std_logic_vector(ADDR_WIDTH-1 downto 0);
signal matmult_matrix_value_JL, matmult_matrix_value_JR : std_logic_vector(DATA_WIDTH-1 downto 0);
signal first_half_done_matmult : std_logic;

signal write_enable_temp : std_logic;
signal output_address_temp : std_logic_vector(ADDR_WIDTH-1 downto 0);
signal output_value_temp: std_logic_vector(DATA_WIDTH-1 downto 0);
signal input_value_matmul2: std_logic_vector(DATA_WIDTH-1 downto 0);
signal input_address_matmul2:  std_logic_vector(ADDR_WIDTH-1 downto 0);

constant MULT_FACTOR : integer := calculate_mult_factor(MATRIX_LENGTH);
  
begin
    
        
    temporary_result_matrix : entity work.dp_ram_sync --this matrix stores result of JL * A temporarily, before being multiplied with JR.
    generic map (
        ADDR_WIDTH => ADDR_WIDTH,   -- Width of address bus
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,  -- Clock signal
        rst => rst,
        we_a => write_enable_temp, -- Write enable for matrix temp
        we_b => '0', -- Write enable for port B
        addr_a => output_address_temp, 
        addr_b => input_address_matmul2, -- Address bus for port B PUT MATRIX MULTIPLER HERE
        data_in_a  => output_value_temp, -- Data input for port A
        data_in_b  => (others => '0'), -- Data input for port B
        data_out_a => open,
        data_out_b => input_value_matmul2 -- PUT MATRIX MULTIPLIER HERE
    );
    
    
    
    -- Component instantiation
    output_matrix_J_L : entity work.dp_ram_eye
    generic map (
        MULT_FACTOR => MULT_FACTOR,
        MATRIX_LENGTH => MATRIX_LENGTH,
        ADDR_WIDTH => ADDR_WIDTH,   -- Width of address bus
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,  -- Clock signal
        rst => mat_mult_rst,
        we_a => write_enable_a, -- Write enable for port A
        we_b => '0', -- Write enable for port B
        addr_a => addr_a_J_L, -- Address bus for port A
        addr_b => matmult_address_JL, -- Address bus for port B PUT MATRIX MULTIPLER HERE
        data_in_a  => output_matrix_value_theta, -- Data input for port A
        data_in_b  => (others => '0'), -- Data input for port B
        data_out_a => input_value_last_jacobi,
        data_out_b => matmult_matrix_value_JL -- PUT MATRIX MULTIPLIER HERE
    );
    
    -- Component instantiation
    output_matrix_J_R : entity work.dp_ram_eye
    generic map (
        MULT_FACTOR => MULT_FACTOR,
        MATRIX_LENGTH => MATRIX_LENGTH,
        ADDR_WIDTH => ADDR_WIDTH,   -- Width of address bus
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,  -- Clock signal
        rst => mat_mult_rst,
        we_a => write_enable_a, -- Write enable for port A
        we_b => '0',
        addr_a => output_address_cordic, -- Address bus for port A
        addr_b => matmult_address_JR, -- Address bus for port B PUT MATRIX MULTIPLER HERE
        data_in_a  => output_matrix_value_phi, -- Data input for port A
        data_in_b  => (others => '0'), -- Data input for port B
        data_out_b => matmult_matrix_value_JR -- PUT MATRIX MULTIPLIER HERE
    );
    
    cordic_control : entity work.cordic_control
    generic map (
        MATRIX_LENGTH => MATRIX_LENGTH,
        ADDR_WIDTH => ADDR_WIDTH,
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,
        rst => cordic_rst,
        
        --MAIN CONTROL UNIT INPUTS
        input_p  => signal_p,
        input_q => signal_q,
        fetch_valid  => fetch_valid_cordic, --input valid from main control unit
        
        --MEMORY UNIT INPUTS
        input_matrix_value => q_in_ram, --input values from matrix a (app, apq, aqq, aqp)
        input_address => input_address_cordic,
        output_address => output_address_cordic,
        output_matrix_value_theta => output_matrix_value_theta, --output values form cordic kernel (sin theta, cos theta)
        output_matrix_value_phi => output_matrix_value_phi, --output values form cordic kernel (sin theta, cos theta)
        write_enable_out => write_enable_a,
        
        --CORDIC KERNEL I/Os
        cordic_computation_valid => cordic_computation_valid, --cordic kernel done flag
        sin_theta => sin_theta,
        cos_theta => cos_theta,
        sin_phi => sin_phi,
        cos_phi => cos_phi,
        a_pp_out => a_pp_out,
        a_pq_out => a_pq_out,
        a_qq_out => a_qq_out,
        a_qp_out => a_qp_out,
        compute_angles => compute_angles,
        jacobi_done => jacobi_done
    );
    
    cordic_kernel : entity work.cordic_kernel
    generic map (
        MULT_FACTOR => MULT_FACTOR,
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        input11 => a_pp_out,
        input12 => a_pq_out,
        input21 =>  a_qp_out,
        input22 => a_qq_out,
        input_valid => compute_angles,
        rst => cordic_rst,
        clk => clk,  -- Clock signal
        
        output_valid => cordic_computation_valid,  -- Output valid flag
        sin_phi => sin_phi,
        cos_phi => cos_phi,
        sin_theta => sin_theta,
        cos_theta => cos_theta
    );
    
    main_control : entity work.main_control
    generic map (
        MATRIX_LENGTH => MATRIX_LENGTH
    )
    port map (
        clk => clk,
        rst => rst,
        output_p => signal_p,
        output_q => signal_q,
        fetch_valid_cordic => fetch_valid_cordic,
        cordic_rst => cordic_rst,
        mat_mult_rst => mat_mult_rst,
        mat_mult_ready => mat_mult_ready,
        mat_mult_done => mat_mult_done,
        jacobi_done => jacobi_done
    );
    
    math_unit_for_A : entity work.math_unit
    generic map (
        MULT_FACTOR => MULT_FACTOR,
        ADDR_WIDTH => ADDR_WIDTH,
        MATRIX_LENGTH => MATRIX_LENGTH,
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,
        rst => mat_mult_rst,
        
        -- Main control
        calculate_mat_mult => mat_mult_ready,


        write_enable_temp => write_enable_temp,
        output_address_temp => output_address_temp,
        output_value_temp => output_value_temp,
        input_value_matmul2 => input_value_matmul2,
        input_address_matmul2 => input_address_matmul2,
        
        -- Memory unit ports
        input_address_Jl => matmult_address_JL,
        input_address_A => matmult_address_A_in,
        input_address_Jr => matmult_address_JR,
        input_matrix_value_Jl => matmult_matrix_value_JL,
        input_matrix_value_A => q_in_ram,
        output_matrix_value_A => d_in_ram,
        input_matrix_value_Jr => matmult_matrix_value_JR,
        output_address_A => matmult_address_A_out,
        first_half_done => first_half_done_matmult,
        write_enable_A => write_enable_in_ram,
        mat_mult_done => mat_mult_done
    );
    
    math_unit_for_U_T : entity work.mat_mult_v2
    generic map (
        ADDR_WIDTH => ADDR_WIDTH,
        MULT_FACTOR => MULT_FACTOR,
        MATRIX_LENGTH => MATRIX_LENGTH,
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,
        rst => mat_mult_rst,
        calculate_mat_mult => mat_mult_ready,
        input_address_a => input_address_last_jacobi,
        input_address_b => input_address_cumulative_jacobi,
        output_address => output_address_cumulative_jacobi,
        input_matrix_value_a => input_value_last_jacobi,
        input_matrix_value_b => q_U_T,
        output_matrix_value => d_U_T,
        write_enable_out => write_enable_U_T_s,
        mat_mult_done => open 
    );
    write_enable_U_T <= write_enable_U_T_s;
    addr_in_ram <= input_address_cordic when fetch_valid_cordic = '1' else addr_b_of_a;
    addr_a_J_L <= output_address_cordic when fetch_valid_cordic = '1' else input_address_last_jacobi;
    addr_U_T <= input_address_cumulative_jacobi when write_enable_U_T_s = '0' else output_address_cumulative_jacobi;
    addr_b_of_a <= matmult_address_A_in when first_half_done_matmult = '0' else matmult_address_A_out;
--    q_in_ram <= input_matrix_value_cordic  when fetch_valid_cordic = '1' else matmult_matrix_value_A_out;
end Behavioral;
