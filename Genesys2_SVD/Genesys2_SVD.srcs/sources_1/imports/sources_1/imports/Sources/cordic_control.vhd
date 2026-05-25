library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Use this for arithmetic operations
use IEEE.math_real.all;

entity cordic_control is
    generic (
        MATRIX_LENGTH : integer := 16;
        ADDR_WIDTH : integer :=4;
        DATA_WIDTH : integer := 32
    );
    
    Port (
        clk     : in  STD_LOGIC;
        rst   : in  STD_LOGIC;
        write_enable_out: out std_logic;
        --MAIN CONTROL UNIT INPUTS
        input_p  : in std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH))))-1 downto 0);
        input_q : in std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH))))-1 downto 0);
        fetch_valid  : in  STD_LOGIC; --input valid from main control unit
        jacobi_done : out std_logic;
        
        --MEMORY UNIT INPUTS
        input_matrix_value : in std_logic_vector(DATA_WIDTH-1 downto 0); --input values from matrix a (app, apq, aqq, aqp)
        input_address : out std_logic_vector(ADDR_WIDTH-1 downto 0); 
        output_address : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        output_matrix_value_theta : out std_logic_vector(DATA_WIDTH-1 downto 0); --output values form cordic kerent (sin theta, cos theta)
        output_matrix_value_phi : out std_logic_vector(DATA_WIDTH-1 downto 0); --output values form cordic kerent (sin theta, cos theta)
        
        --TO CORDIC KERNEL I/Os
        cordic_computation_valid : in std_logic; --cordic kernel done flag
        sin_theta : in std_logic_vector(DATA_WIDTH-1 downto 0);
        cos_theta : in std_logic_vector(DATA_WIDTH-1 downto 0);
        sin_phi : in std_logic_vector(DATA_WIDTH-1 downto 0);
        cos_phi : in std_logic_vector(DATA_WIDTH-1 downto 0);
        a_pp_out : out std_logic_vector(DATA_WIDTH-1 downto 0);
        a_pq_out : out std_logic_vector(DATA_WIDTH-1 downto 0);
        a_qq_out : out std_logic_vector(DATA_WIDTH-1 downto 0);
        a_qp_out : out std_logic_vector(DATA_WIDTH-1 downto 0);
        compute_angles : out std_logic
    );
end cordic_control;

-- Define architecture
architecture Behavioral of cordic_control is

-- Declare signals for register storage
    type register_array_type is array (0 to 3) of STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal register_array_out : register_array_type := (others => (others => '0'));
    signal register_array_in_theta, register_array_in_phi : register_array_type := (others => (others => '0'));
    
    -- Declare a counter for generating addresses and storing values
    signal addr_counter : INTEGER range 0 to 8 := 0;
    signal addr_enable  : STD_LOGIC := '0'; -- Enable signal for address generation
    signal read_flag    : STD_LOGIC := '0'; -- Flag to indicate data read is complete

    -- Declare a counter for output memory addresses
    signal write_counter : INTEGER range 0 to 8 := 0;
    signal write_enable  : STD_LOGIC := '0'; -- Enable signal for writing to output memory
    signal write_flag    : STD_LOGIC := '0'; -- Flag to indicate write is complete

    -- Declare signal for memory address
    signal in_address, out_address : INTEGER := 0;
    -- Declare signals for converted integer values
    -- Declare signals for converted unsigned values
    signal unsigned_p : UNSIGNED(input_p'range);
    signal unsigned_q : UNSIGNED(input_q'range);
    signal clk_div: std_logic;
    signal buffered_input_matrix_value : std_logic_vector(DATA_WIDTH-1 downto 0);
begin
    -- Component instantiation
    clock_divider : entity work.clock_divider
    port map (
        clk => clk,  -- Clock signal
        rst => rst,
        divided_clk => clk_div
        );
    -- Convert std_logic_vector inputs to unsigned
    unsigned_p <= unsigned(input_p);
    unsigned_q <= unsigned(input_q);
    
    process(clk,rst)
    begin
        if rst = '1' then
            buffered_input_matrix_value <= (others => '0');
        elsif rising_edge(clk) then
            buffered_input_matrix_value <= input_matrix_value;
        end if;
    end process;
   
    process(clk_div, rst)
    begin
        if rst = '1' then
            addr_counter <= 0;
            addr_enable <= '0';
            register_array_out <= (others => (others => '0'));
            read_flag <= '0';
            in_address <= 0;
        elsif rising_edge(clk_div) then
            if fetch_valid = '1' then
                addr_enable <= '1'; -- Start generating addresses
            end if;
            
            if addr_enable = '1' then
                -- Calculate addresses based on addr_counter
                case addr_counter is
                    when 0 =>
                        in_address <= to_integer(unsigned_p) * (MATRIX_LENGTH + 1);
                    when 1 =>
                        in_address <= to_integer(unsigned_p) * (MATRIX_LENGTH + 1);
                    when 2 =>
                        in_address <= to_integer(unsigned_q) + to_integer(unsigned_p) * MATRIX_LENGTH;
                    when 3 =>
                        in_address <= to_integer(unsigned_q) + to_integer(unsigned_p) * MATRIX_LENGTH;
                    when 4 =>
                        in_address <= to_integer(unsigned_p) + to_integer(unsigned_q) * MATRIX_LENGTH;
                    when 5 =>
                        in_address <= to_integer(unsigned_p) + to_integer(unsigned_q) * MATRIX_LENGTH;
                    when 6 =>
                        in_address <= to_integer(unsigned_q) * (MATRIX_LENGTH + 1);
                    when 7 =>
                        in_address <= to_integer(unsigned_q) * (MATRIX_LENGTH + 1);
                        
                    when others =>
                        --addr_enable <= '0'; -- Disable address generation
                        read_flag <= '1'; -- Set read flag to indicate completion
                end case;

                -- Store the corresponding memory data
                if addr_counter < 8 then
                    register_array_out(addr_counter/2) <= buffered_input_matrix_value;
                    addr_counter <= addr_counter + 1;
                end if;
            end if;
        end if;
    end process;
    
    process(clk_div, rst)
    begin
        if rst = '1' then
            write_enable_out <= '0';
            write_counter <= 0;
            write_enable <= '0';
            write_flag <= '0';
            register_array_in_theta <= (others => (others => '0'));
            register_array_in_phi <= (others => (others => '0'));
            output_matrix_value_theta <= (others => '0');
            output_matrix_value_phi <= (others => '0');
            out_address <= 0;    
        elsif rising_edge(clk_div) then
        
            if cordic_computation_valid = '1' then
                write_enable <= '1'; -- Start writing to output memory
            end if;

            if write_enable = '1' then
                -- Calculate output addresses based on write_counter
                case write_counter is
                    when 0 =>
                        out_address <= to_integer(unsigned_p) * (MATRIX_LENGTH + 1);
                        write_enable_out <= '1';
                    when 1 =>
                        out_address <= to_integer(unsigned_p) * (MATRIX_LENGTH + 1);
                        write_enable_out <= '0';
                    when 2 =>
                        out_address <= to_integer(unsigned_q) + to_integer(unsigned_p) * (MATRIX_LENGTH);
                        write_enable_out <= '1';
                    when 3 =>
                        out_address <= to_integer(unsigned_q) + to_integer(unsigned_p) * (MATRIX_LENGTH);
                        write_enable_out <= '0';
                    when 4 =>
                        out_address <= to_integer(unsigned_p) + to_integer(unsigned_q) * (MATRIX_LENGTH);
                        write_enable_out <= '1';
                    when 5 =>
                        out_address <= to_integer(unsigned_p) + to_integer(unsigned_q) * (MATRIX_LENGTH);
                        write_enable_out <= '0';
                    when 6 =>
                        out_address <= to_integer(unsigned_q) * (MATRIX_LENGTH + 1);
                        write_enable_out <= '1';
                    when 7 =>
                        out_address <= to_integer(unsigned_q) * (MATRIX_LENGTH + 1);
                        write_enable_out <= '0';
                    when others =>
                        --write_enable <= '0'; -- Disable write generation
                        write_flag <= '1'; -- Set write flag to indicate completion
                end case;
                
                -- Write the corresponding data to output memory
                if write_counter < 8 then
                    output_matrix_value_theta <= register_array_in_theta(write_counter/2);
                    output_matrix_value_phi <= register_array_in_phi(write_counter/2);
                    write_counter <= write_counter + 1;
                end if;
            
            end if;
            -- this is the content of transpose(U)
            register_array_in_theta(0) <= cos_theta;
            register_array_in_theta(1) <= std_logic_vector(- signed(sin_theta));
            register_array_in_theta(2) <= sin_theta;
            register_array_in_theta(3) <= cos_theta;
            -- this is the content of V
            register_array_in_phi(0) <= cos_phi;
            register_array_in_phi(1) <= sin_phi;
            register_array_in_phi(2) <= std_logic_vector(- signed(sin_phi));
            register_array_in_phi(3) <= cos_phi;
        end if;
    end process;
    
    
    a_pp_out <= register_array_out(0);
    a_pq_out <= register_array_out(1);
    a_qp_out <= register_array_out(2);
    a_qq_out <= register_array_out(3);

    
    -- Assign memory address and completion flag
    output_address <= std_logic_vector(to_unsigned(out_address, output_address'length));
    input_address <= std_logic_vector(to_unsigned(in_address, input_address'length));
    compute_angles <= read_flag;
    jacobi_done <= write_flag;
    
end Behavioral;
