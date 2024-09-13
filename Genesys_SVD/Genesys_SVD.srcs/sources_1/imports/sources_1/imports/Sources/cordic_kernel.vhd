library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cordic_kernel is
    Generic (
        MULT_FACTOR : INTEGER := 5;
        DATA_WIDTH : integer := 32
    );
    Port (
        --inputs
        input11 : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0) := x"0000007B";
        input12: in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0) := X"000000D4";
        input21 : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0) := X"0000002C";
        input22 : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0) := X"00000076";
        input_valid : in STD_LOGIC;
        rst: in STD_LOGIC;
        clk         : in  STD_LOGIC;  -- Clock signal
        
        output_valid : out STD_LOGIC;  -- Output valid flag
        sin_theta : out std_logic_vector(DATA_WIDTH-1 downto 0);
        cos_theta : out std_logic_vector(DATA_WIDTH-1 downto 0);
        sin_phi : out std_logic_vector(DATA_WIDTH-1 downto 0);
        cos_phi : out std_logic_vector(DATA_WIDTH-1 downto 0)
        
    );
end cordic_kernel;

architecture Behavioral of cordic_kernel is
    
    --sum difference calculation
    signal sum_2112, diff_2112, sum_2211, diff_2211 : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    
    --CORDIC sincos
    signal cos_theta_signed, sin_theta_signed, cos_phi_signed, sin_phi_signed : signed(DATA_WIDTH-1 downto 0);
    
    --CORDIC arctan 
    signal phi_plus_theta, phi_minus_theta : signed(DATA_WIDTH+3 downto 0);
    signal two_phi, two_theta, phi, theta : std_logic_vector(DATA_WIDTH+3 downto 0);
    signal i_valid1, i_valid2, o_valid1, o_valid2, i_valid_atan, i_valid_sumdiff, i_valid_sumdiff1, i_valid_sumdiff2, i_valid_sincos : std_logic := '0';
begin
    
    sum_difference1 : entity work.sum_difference
    generic map (
        DATA_WIDTH => DATA_WIDTH
    )
    
    port map (
        rst => rst,
        input_valid => input_valid,
        inputA => input21,
        inputB => input12,
        output_valid => i_valid1,
        outputApB => sum_2112, --21 + 12
        outputAmB => diff_2112
    );
    
    sum_difference2 : entity work.sum_difference
    generic map (
        DATA_WIDTH => DATA_WIDTH
    )
    
    port map (
        rst => rst,
        input_valid => input_valid,
        inputA => input22,
        inputB => input11,
        output_valid => i_valid2,
        outputApB => sum_2211, --22 + 11
        outputAmB => diff_2211
    );
    
    sum_difference3 : entity work.sum_difference
    generic map (
        DATA_WIDTH => DATA_WIDTH + 4
    )
    
    port map (
        rst => rst,
        input_valid => i_valid_sumdiff,
        inputA => std_logic_vector(phi_plus_theta),
        inputB => std_logic_vector(phi_minus_theta),
        outputApB => two_phi, --22 + 11
        outputAmB => two_theta,
        output_valid => i_valid_sincos
    );
    
    --CORDIC entities
    cordic_arctan1 : entity work.cordic_arctan
    generic map (
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,
        rst => rst,
        input_valid => i_valid_atan,
        output_valid => i_valid_sumdiff1,
        x_in  => signed(diff_2211),
        y_in  => signed(sum_2112),  -- Input y
        angle => phi_plus_theta   -- Output angle
    );
    
    cordic_arctan2 : entity work.cordic_arctan
    generic map (
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,
        rst => rst,
        input_valid => i_valid_atan,
        output_valid => i_valid_sumdiff2,
        x_in  => signed(sum_2211),
        y_in  => signed(diff_2112),  -- Input y
        angle => phi_minus_theta   -- Output angle
    );
    
    cordic_sincos1 : entity work.cordic_sincos
    generic map (
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,
        rst => rst,
        input_valid => i_valid_sincos,
        desiredAngle  => signed(theta), --2xtheta bit shifted once
        output_valid => o_valid1,
        x_cos_output  => cos_theta_signed,  -- Input y
        y_sin_output => sin_theta_signed   -- Output angle
    );
    
    cordic_sincos2 : entity work.cordic_sincos
    generic map (
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
        clk => clk,
        rst => rst,
        input_valid => i_valid_sincos,
        desiredAngle  => signed(phi), --2xtheta bit shifted once
        output_valid => o_valid2,
        x_cos_output  => cos_phi_signed,  -- Input y
        y_sin_output => sin_phi_signed   -- Output angle
    );
    
    i_valid_atan <= i_valid1 and i_valid2;
    output_valid <= o_valid1 and o_valid2;
    i_valid_sumdiff <= i_valid_sumdiff1 and i_valid_sumdiff2;
    theta<=std_logic_vector(shift_right(signed(two_theta), 1));
    phi<=std_logic_vector(shift_right(signed(two_phi), 1));
    --this has to stay 15 because the angles in the table are calculated with 16 iteration so the resulting
    --number is 16 bits regardless
    cos_phi <= STD_LOGIC_VECTOR(shift_right(cos_phi_signed, 15 - MULT_FACTOR));
    cos_theta <= STD_LOGIC_VECTOR(shift_right(cos_theta_signed, 15 - MULT_FACTOR));
    sin_phi <= STD_LOGIC_VECTOR(shift_right(sin_phi_signed, 15 - MULT_FACTOR));
    sin_theta <= STD_LOGIC_VECTOR(shift_right(sin_theta_signed, 15 - MULT_FACTOR));
end Behavioral;
