library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cordic_arctan is
    Generic (
        DATA_WIDTH : integer := 32
    );
    Port (
        clk   : in  STD_LOGIC;
        rst   : in  STD_LOGIC;
        input_valid : in STD_LOGIC;
        output_valid : out STD_LOGIC;
        x_in  : in  signed(DATA_WIDTH-1 downto 0);  -- Input x
        y_in  : in  signed(DATA_WIDTH-1 downto 0);  -- Input y
        angle : out signed(DATA_WIDTH+3 downto 0)   -- Output angle
    );
end cordic_arctan;

architecture Behavioral of cordic_arctan is

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
    signal computation_done : std_logic := '0';
    signal x, y: signed(DATA_WIDTH-1 downto 0); -- Internal signals
    signal z: signed(DATA_WIDTH+3 downto 0);
    signal i : integer := 0; -- Iteration counter
    signal quadrant : integer :=0;
begin

    process(clk, rst)
    begin

        if rst = '1' then
            quadrant <= 1;
            x <= (others => '0');
            y <= (others => '0');
            z <= (others => '0');
            angle <= (others => '0');
            computation_done <= '0';
            output_valid <= '0';
            i <= 0;
        elsif rising_edge(clk) then
            if input_valid = '1' then
                if i = 0 then
                    -- Determine the quadrant and adjust inputs accordingly
                    if x_in >= 0 and y_in >= 0 then
                        -- First quadrant (no change needed)
                        quadrant <= 1;
                        x <= x_in;
                        y <= y_in;
                        z <= (others => '0'); -- Start with 0° angle
                    elsif x_in < 0 and y_in >= 0 then
                        -- Second quadrant
                        quadrant <= 2;
                        x <= y_in;
                        y <= -x_in;
                    elsif x_in < 0 and y_in < 0 then
                        -- Third quadrant
                        quadrant <= 3;
                        x <= -x_in;
                        y <= -y_in;
                    elsif x_in >= 0 and y_in < 0 then
                        -- Fourth quadrant
                        quadrant <= 4;
                        x <= -y_in;
                        y <= x_in;
                    end if;
                    i <= 1;
                elsif i <= ITERATIONS then
                    if y(DATA_WIDTH-1) = '0' then -- Check if MSB (y is positive)
                        x <= x + shift_right(y, i - 1);
                        y <= y - shift_right(x, i - 1);
                        z <= z + atan_table(i - 1);
                    else -- y is negative
                        x <= x - shift_right(y, i - 1);
                        y <= y + shift_right(x, i - 1);
                        z <= z - atan_table(i - 1);
                    end if;
                    i <= i + 1;
                else
                    -- Adjust the angle based on the quadrant
                    case quadrant is
                        when 2 => angle <= z + to_signed(51472, DATA_WIDTH+3);
                        when 3 => angle <= z - to_signed(102944, DATA_WIDTH+3);
                        when 4 => angle <= z - to_signed(51472, DATA_WIDTH+3);
                        when others => angle <= z;
                    end case;
                    output_valid <= '1';

                end if;
            end if;
        end if;
    end process;
    
end Behavioral;
