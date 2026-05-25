library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cordic_sincos is
    Generic (
        DATA_WIDTH : integer := 32
    );
    Port (
        clk           : in  STD_LOGIC;
        rst           : in  STD_LOGIC;
        input_valid   : in  STD_LOGIC;
        desiredAngle  : in  signed(DATA_WIDTH+3 downto 0);
        x_cos_output  : out signed(DATA_WIDTH-1 downto 0);
        y_sin_output  : out signed(DATA_WIDTH-1 downto 0);
        output_valid  : out STD_LOGIC  -- New output signal
    );
end cordic_sincos;

architecture Behavioral of cordic_sincos is

    constant ITERATIONS : integer := 16;  -- Number of iterations
    type angle_table_t is array (0 to ITERATIONS-1) of signed(DATA_WIDTH+3 downto 0);
    signal atan_table : angle_table_t := (
        to_signed(25736, DATA_WIDTH+4), -- atan(2^-0) = 45 degrees in radians, scaled
        to_signed(15192, DATA_WIDTH+4), -- atan(2^-1) = 26.565 degrees in radians, scaled
        to_signed(8027, DATA_WIDTH+4),  -- atan(2^-2) = 14.036 degrees in radians, scaled
        to_signed(4074, DATA_WIDTH+4),  -- atan(2^-3) = 7.125 degrees in radians, scaled
        to_signed(2045, DATA_WIDTH+4),  -- atan(2^-4) = 3.576 degrees in radians, scaled
        to_signed(1024, DATA_WIDTH+4),  -- atan(2^-5) = 1.789 degrees in radians, scaled
        to_signed(512, DATA_WIDTH+4),   -- atan(2^-6) = 0.895 degrees in radians, scaled
        to_signed(256, DATA_WIDTH+4),   -- atan(2^-7) = 0.448 degrees in radians, scaled
        to_signed(128, DATA_WIDTH+4),   -- atan(2^-8) = 0.224 degrees in radians, scaled
        to_signed(64, DATA_WIDTH+4),    -- atan(2^-9) = 0.112 degrees in radians, scaled
        to_signed(32, DATA_WIDTH+4),    -- atan(2^-10) = 0.056 degrees in radians, scaled
        to_signed(16, DATA_WIDTH+4),    -- atan(2^-11) = 0.028 degrees in radians, scaled
        to_signed(8, DATA_WIDTH+4),     -- atan(2^-12) = 0.014 degrees in radians, scaled
        to_signed(4, DATA_WIDTH+4),     -- atan(2^-13) = 0.007 degrees in radians, scaled
        to_signed(2, DATA_WIDTH+4),     -- atan(2^-14) = 0.003 degrees in radians, scaled
        to_signed(1, DATA_WIDTH+4)      -- atan(2^-15) = 0.001 degrees in radians, scaled
    );
    signal x: signed(DATA_WIDTH-1 downto 0);
    signal y: signed(DATA_WIDTH-1 downto 0) := (others => '0');
    signal z, desiredAngleAdjusted: signed(DATA_WIDTH+3 downto 0);
    signal i : integer := 0; -- Iteration counter
    signal computation_done: std_logic := '0'; -- Internal signal to track computation completion
    signal quadrant: integer := 0;
    
begin
    process(clk, rst)
    begin
        if rst = '1' then
            quadrant <= 1;
            desiredAngleAdjusted <= (others => '0');
            x <= to_signed(19898, DATA_WIDTH);
            y <= (others => '0');
            z <= (others => '0');
            i <= 0;
            x_cos_output <= (others => '0');
            y_sin_output <= (others => '0');
            computation_done <= '0';
            output_valid <= '0';
        elsif rising_edge(clk) then
            if input_valid = '1' then
                if i = 0 then
                    if desiredAngle > to_signed(51472, DATA_WIDTH+3) then
                        quadrant <= 2;
                        desiredAngleAdjusted <= desiredAngle - to_signed(51472, DATA_WIDTH+3);
                    elsif desiredAngle < to_signed(-51472, DATA_WIDTH) then
                        quadrant <=3;
                        desiredAngleAdjusted <= desiredAngle + to_signed(51472, DATA_WIDTH+3);
                    else
                        quadrant <=1;
                        desiredAngleAdjusted <= desiredAngle;
                    end if;
                    x <= to_signed(19898, DATA_WIDTH);  --assign cordic gain * 2^15 here
                    y <= (others => '0');
                    z <= (others => '0');
                    i <= 1;
                    computation_done <= '0';
                elsif i <= ITERATIONS then
                    if z <= desiredAngleAdjusted then 
                        x <= x + shift_right(y, i - 1);
                        y <= y - shift_right(x, i - 1);
                        z <= z + atan_table(i - 1);
                    else 
                        x <= x - shift_right(y, i - 1);
                        y <= y + shift_right(x, i - 1);
                        z <= z - atan_table(i - 1);
                    end if;
                    i <= i + 1;
                else
                    case quadrant is
                        when 2 => 
                            x_cos_output <= -x;
                            y_sin_output <= -y; 
                        when 3 => 
                            x_cos_output <= -x;
                            y_sin_output <= -y; 
                        when others => 
                            x_cos_output <= x;
                            y_sin_output <= -y;    
                    end case;
                    
                    output_valid <= '1';

                end if;
            end if;
        end if;
    end process;

end Behavioral;
