library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;  -- Include the math_real library for mathematical functions

entity tb_top_svd is
end tb_top_svd;

architecture sim of tb_top_svd is

    -- Constants
    --constant MULT_FACTOR : integer := 14;
    constant MATRIX_LENGTH : integer := 16;  -- Adjust to match your design
    constant CLK_PERIOD : time := 10 ns;
    constant DATA_WIDTH : integer := 32;

    -- Signals
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal input_address_a : std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
    signal input_address_b : std_logic_vector(integer(ceil(log2(real(MATRIX_LENGTH**2))))-1 downto 0);
    signal q_U_T : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal q_in_RAM : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal output_matrix_value : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal write_enable_out : std_logic;

    -- Memory arrays to simulate matrix storage
    type matrix_array is array(0 to MATRIX_LENGTH*MATRIX_LENGTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal matrix_a : matrix_array := (others => (others => '0'));
    signal matrix_b : matrix_array := (others => (others => '0'));
    signal matrix_c : matrix_array := (others => (others => '0'));

   
        

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
    uut: entity work.top_svd
        --comment generic map if running post synth or post impl simu
--        generic map (
--            MATRIX_LENGTH => MATRIX_LENGTH,
--            ADDR_WIDTH => integer(ceil(log2(real(MATRIX_LENGTH**2)))),
--            DATA_WIDTH => DATA_WIDTH
--        )
        port map (
            clk => clk,
            write_enable_in_ram => write_enable_out,
            addr_in_ram => input_address_b,
            addr_U_T => input_address_a,
            rst => rst,
            q_U_T => q_U_T,
            d_in_ram => output_matrix_value,
            q_in_ram => q_in_ram
        );

    -- Test process
    process
    begin
   
 

        
        
        


        -- Reset the design
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 20 ns;

        -- Wait to observe outputs
        wait for CLK_PERIOD * 10;

        -- End of simulation
        assert false report "End of Test" severity note;
        wait;
    end process;
    -- Input value assignment based on address
    process(clk,rst)
    begin
        if rst='1' then
            matrix_b(0)  <= std_logic_vector(to_signed(14000, DATA_WIDTH));   -- B[0][0]
        matrix_b(1)  <= std_logic_vector(to_signed(5600, DATA_WIDTH));    -- B[0][1]
        matrix_b(2)  <= std_logic_vector(to_signed(10123, DATA_WIDTH));   -- B[0][2]
        matrix_b(3)  <= std_logic_vector(to_signed(6253, DATA_WIDTH));    -- B[0][3]
        matrix_b(4)  <= std_logic_vector(to_signed(15649, DATA_WIDTH));   -- B[0][4]
        matrix_b(5)  <= std_logic_vector(to_signed(10206, DATA_WIDTH));   -- B[0][5]
        matrix_b(6)  <= std_logic_vector(to_signed(8324, DATA_WIDTH));    -- B[0][6]
        matrix_b(7)  <= std_logic_vector(to_signed(6214, DATA_WIDTH));    -- B[0][7]
        matrix_b(8)  <= std_logic_vector(to_signed(14565, DATA_WIDTH));   -- B[0][8]
        matrix_b(9)  <= std_logic_vector(to_signed(8262, DATA_WIDTH));    -- B[0][9]
        matrix_b(10) <= std_logic_vector(to_signed(15638, DATA_WIDTH));   -- B[0][10]
        matrix_b(11) <= std_logic_vector(to_signed(7917, DATA_WIDTH));    -- B[0][11]
        matrix_b(12) <= std_logic_vector(to_signed(7301, DATA_WIDTH));    -- B[0][12]
        matrix_b(13) <= std_logic_vector(to_signed(11522, DATA_WIDTH));   -- B[0][13]
        matrix_b(14) <= std_logic_vector(to_signed(6239, DATA_WIDTH));    -- B[0][14]
        matrix_b(15) <= std_logic_vector(to_signed(7418, DATA_WIDTH));    -- B[0][15]
        matrix_b(16)  <= std_logic_vector(to_signed(2119, DATA_WIDTH));   -- B[1][0]
        matrix_b(17)  <= std_logic_vector(to_signed(8559, DATA_WIDTH));   -- B[1][1]
        matrix_b(18)  <= std_logic_vector(to_signed(1476, DATA_WIDTH));   -- B[1][2]
        matrix_b(19)  <= std_logic_vector(to_signed(3022, DATA_WIDTH));   -- B[1][3]
        matrix_b(20)  <= std_logic_vector(to_signed(11427, DATA_WIDTH));  -- B[1][4]
        matrix_b(21)  <= std_logic_vector(to_signed(16220, DATA_WIDTH));  -- B[1][5]
        matrix_b(22)  <= std_logic_vector(to_signed(603, DATA_WIDTH));    -- B[1][6]
        matrix_b(23)  <= std_logic_vector(to_signed(2202, DATA_WIDTH));   -- B[1][7]
        matrix_b(24)  <= std_logic_vector(to_signed(4314, DATA_WIDTH));   -- B[1][8]
        matrix_b(25)  <= std_logic_vector(to_signed(7302, DATA_WIDTH));   -- B[1][9]
        matrix_b(26)  <= std_logic_vector(to_signed(3476, DATA_WIDTH));   -- B[1][10]
        matrix_b(27)  <= std_logic_vector(to_signed(3883, DATA_WIDTH));   -- B[1][11]
        matrix_b(28)  <= std_logic_vector(to_signed(11039, DATA_WIDTH));  -- B[1][12]
        matrix_b(29)  <= std_logic_vector(to_signed(13873, DATA_WIDTH));  -- B[1][13]
        matrix_b(30)  <= std_logic_vector(to_signed(6485, DATA_WIDTH));   -- B[1][14]
        matrix_b(31)  <= std_logic_vector(to_signed(15466, DATA_WIDTH));  -- B[1][15]
        
        matrix_b(32)  <= std_logic_vector(to_signed(15273, DATA_WIDTH));  -- B[2][0]
        matrix_b(33)  <= std_logic_vector(to_signed(10560, DATA_WIDTH));  -- B[2][1]
        matrix_b(34)  <= std_logic_vector(to_signed(5118, DATA_WIDTH));   -- B[2][2]
        matrix_b(35)  <= std_logic_vector(to_signed(507, DATA_WIDTH));    -- B[2][3]
        matrix_b(36)  <= std_logic_vector(to_signed(4614, DATA_WIDTH));   -- B[2][4]
        matrix_b(37)  <= std_logic_vector(to_signed(11411, DATA_WIDTH));  -- B[2][5]
        matrix_b(38)  <= std_logic_vector(to_signed(3714, DATA_WIDTH));   -- B[2][6]
        matrix_b(39)  <= std_logic_vector(to_signed(12367, DATA_WIDTH));  -- B[2][7]
        matrix_b(40)  <= std_logic_vector(to_signed(4510, DATA_WIDTH));   -- B[2][8]
        matrix_b(41)  <= std_logic_vector(to_signed(7273, DATA_WIDTH));   -- B[2][9]
        matrix_b(42)  <= std_logic_vector(to_signed(9635, DATA_WIDTH));   -- B[2][10]
        matrix_b(43)  <= std_logic_vector(to_signed(5619, DATA_WIDTH));   -- B[2][11]
        matrix_b(44)  <= std_logic_vector(to_signed(14362, DATA_WIDTH));  -- B[2][12]
        matrix_b(45)  <= std_logic_vector(to_signed(14908, DATA_WIDTH));  -- B[2][13]
        matrix_b(46)  <= std_logic_vector(to_signed(371, DATA_WIDTH));    -- B[2][14]
        matrix_b(47)  <= std_logic_vector(to_signed(8002, DATA_WIDTH));   -- B[2][15]
        
        matrix_b(48)  <= std_logic_vector(to_signed(11212, DATA_WIDTH));  -- B[3][0]
        matrix_b(49)  <= std_logic_vector(to_signed(992, DATA_WIDTH));    -- B[3][1]
        matrix_b(50)  <= std_logic_vector(to_signed(4931, DATA_WIDTH));   -- B[3][2]
        matrix_b(51)  <= std_logic_vector(to_signed(12418, DATA_WIDTH));  -- B[3][3]
        matrix_b(52)  <= std_logic_vector(to_signed(1802, DATA_WIDTH));   -- B[3][4]
        matrix_b(53)  <= std_logic_vector(to_signed(6128, DATA_WIDTH));   -- B[3][5]
        matrix_b(54)  <= std_logic_vector(to_signed(5742, DATA_WIDTH));   -- B[3][6]
        matrix_b(55)  <= std_logic_vector(to_signed(14259, DATA_WIDTH));  -- B[3][7]
        matrix_b(56)  <= std_logic_vector(to_signed(12288, DATA_WIDTH));  -- B[3][8]
        matrix_b(57)  <= std_logic_vector(to_signed(15453, DATA_WIDTH));  -- B[3][9]
        matrix_b(58)  <= std_logic_vector(to_signed(13533, DATA_WIDTH));  -- B[3][10]
        matrix_b(59)  <= std_logic_vector(to_signed(5726, DATA_WIDTH));   -- B[3][11]
        matrix_b(60)  <= std_logic_vector(to_signed(1024, DATA_WIDTH));   -- B[3][12]
        matrix_b(61)  <= std_logic_vector(to_signed(13451, DATA_WIDTH));  -- B[3][13]
        matrix_b(62)  <= std_logic_vector(to_signed(1950, DATA_WIDTH));   -- B[3][14]
        matrix_b(63)  <= std_logic_vector(to_signed(9882, DATA_WIDTH));   -- B[3][15]
        matrix_b(64)  <= std_logic_vector(to_signed(10823, DATA_WIDTH));  -- B[4][0]
        matrix_b(65)  <= std_logic_vector(to_signed(8243, DATA_WIDTH));   -- B[4][1]
        matrix_b(66)  <= std_logic_vector(to_signed(6300, DATA_WIDTH));   -- B[4][2]
        matrix_b(67)  <= std_logic_vector(to_signed(5272, DATA_WIDTH));   -- B[4][3]
        matrix_b(68)  <= std_logic_vector(to_signed(6235, DATA_WIDTH));   -- B[4][4]
        matrix_b(69)  <= std_logic_vector(to_signed(1198, DATA_WIDTH));   -- B[4][5]
        matrix_b(70)  <= std_logic_vector(to_signed(10302, DATA_WIDTH));  -- B[4][6]
        matrix_b(71)  <= std_logic_vector(to_signed(10125, DATA_WIDTH));  -- B[4][7]
        matrix_b(72)  <= std_logic_vector(to_signed(4807, DATA_WIDTH));   -- B[4][8]
        matrix_b(73)  <= std_logic_vector(to_signed(4644, DATA_WIDTH));   -- B[4][9]
        matrix_b(74)  <= std_logic_vector(to_signed(8932, DATA_WIDTH));   -- B[4][10]
        matrix_b(75)  <= std_logic_vector(to_signed(13440, DATA_WIDTH));  -- B[4][11]
        matrix_b(76)  <= std_logic_vector(to_signed(11450, DATA_WIDTH));  -- B[4][12]
        matrix_b(77)  <= std_logic_vector(to_signed(4907, DATA_WIDTH));   -- B[4][13]
        matrix_b(78)  <= std_logic_vector(to_signed(4800, DATA_WIDTH));   -- B[4][14]
        matrix_b(79)  <= std_logic_vector(to_signed(6125, DATA_WIDTH));   -- B[4][15]
        
        matrix_b(80)  <= std_logic_vector(to_signed(13715, DATA_WIDTH));  -- B[5][0]
        matrix_b(81)  <= std_logic_vector(to_signed(6970, DATA_WIDTH));   -- B[5][1]
        matrix_b(82)  <= std_logic_vector(to_signed(3117, DATA_WIDTH));   -- B[5][2]
        matrix_b(83)  <= std_logic_vector(to_signed(211, DATA_WIDTH));    -- B[5][3]
        matrix_b(84)  <= std_logic_vector(to_signed(10625, DATA_WIDTH));  -- B[5][4]
        matrix_b(85)  <= std_logic_vector(to_signed(701, DATA_WIDTH));    -- B[5][5]
        matrix_b(86)  <= std_logic_vector(to_signed(13065, DATA_WIDTH));  -- B[5][6]
        matrix_b(87)  <= std_logic_vector(to_signed(7965, DATA_WIDTH));   -- B[5][7]
        matrix_b(88)  <= std_logic_vector(to_signed(4404, DATA_WIDTH));   -- B[5][8]
        matrix_b(89)  <= std_logic_vector(to_signed(4523, DATA_WIDTH));   -- B[5][9]
        matrix_b(90)  <= std_logic_vector(to_signed(101, DATA_WIDTH));    -- B[5][10]
        matrix_b(91)  <= std_logic_vector(to_signed(2391, DATA_WIDTH));   -- B[5][11]
        matrix_b(92)  <= std_logic_vector(to_signed(1312, DATA_WIDTH));   -- B[5][12]
        matrix_b(93)  <= std_logic_vector(to_signed(2835, DATA_WIDTH));   -- B[5][13]
        matrix_b(94)  <= std_logic_vector(to_signed(14895, DATA_WIDTH));  -- B[5][14]
        matrix_b(95)  <= std_logic_vector(to_signed(14845, DATA_WIDTH));  -- B[5][15]
        
        matrix_b(96)  <= std_logic_vector(to_signed(12485, DATA_WIDTH));  -- B[6][0]
        matrix_b(97)  <= std_logic_vector(to_signed(8284, DATA_WIDTH));   -- B[6][1]
        matrix_b(98)  <= std_logic_vector(to_signed(1798, DATA_WIDTH));   -- B[6][2]
        matrix_b(99)  <= std_logic_vector(to_signed(9025, DATA_WIDTH));   -- B[6][3]
        matrix_b(100) <= std_logic_vector(to_signed(164, DATA_WIDTH));    -- B[6][4]
        matrix_b(101) <= std_logic_vector(to_signed(1364, DATA_WIDTH));   -- B[6][5]
        matrix_b(102) <= std_logic_vector(to_signed(7204, DATA_WIDTH));   -- B[6][6]
        matrix_b(103) <= std_logic_vector(to_signed(11564, DATA_WIDTH));  -- B[6][7]
        matrix_b(104) <= std_logic_vector(to_signed(1333, DATA_WIDTH));   -- B[6][8]
        matrix_b(105) <= std_logic_vector(to_signed(6734, DATA_WIDTH));   -- B[6][9]
        matrix_b(106) <= std_logic_vector(to_signed(9220, DATA_WIDTH));   -- B[6][10]
        matrix_b(107) <= std_logic_vector(to_signed(8534, DATA_WIDTH));   -- B[6][11]
        matrix_b(108) <= std_logic_vector(to_signed(12075, DATA_WIDTH));  -- B[6][12]
        matrix_b(109) <= std_logic_vector(to_signed(1299, DATA_WIDTH));   -- B[6][13]
        matrix_b(110) <= std_logic_vector(to_signed(15584, DATA_WIDTH));  -- B[6][14]
        matrix_b(111) <= std_logic_vector(to_signed(5029, DATA_WIDTH));   -- B[6][15]
        
        matrix_b(112) <= std_logic_vector(to_signed(10088, DATA_WIDTH));  -- B[7][0]
        matrix_b(113) <= std_logic_vector(to_signed(15134, DATA_WIDTH));  -- B[7][1]
        matrix_b(114) <= std_logic_vector(to_signed(10686, DATA_WIDTH));  -- B[7][2]
        matrix_b(115) <= std_logic_vector(to_signed(1836, DATA_WIDTH));   -- B[7][3]
        matrix_b(116) <= std_logic_vector(to_signed(7339, DATA_WIDTH));   -- B[7][4]
        matrix_b(117) <= std_logic_vector(to_signed(4387, DATA_WIDTH));   -- B[7][5]
        matrix_b(118) <= std_logic_vector(to_signed(12774, DATA_WIDTH));  -- B[7][6]
        matrix_b(119) <= std_logic_vector(to_signed(9243, DATA_WIDTH));   -- B[7][7]
        matrix_b(120) <= std_logic_vector(to_signed(9010, DATA_WIDTH));   -- B[7][8]
        matrix_b(121) <= std_logic_vector(to_signed(11066, DATA_WIDTH));  -- B[7][9]
        matrix_b(122) <= std_logic_vector(to_signed(10744, DATA_WIDTH));  -- B[7][10]
        matrix_b(123) <= std_logic_vector(to_signed(924, DATA_WIDTH));    -- B[7][11]
        matrix_b(124) <= std_logic_vector(to_signed(7583, DATA_WIDTH));   -- B[7][12]
        matrix_b(125) <= std_logic_vector(to_signed(16360, DATA_WIDTH));  -- B[7][13]
        matrix_b(126) <= std_logic_vector(to_signed(6799, DATA_WIDTH));   -- B[7][14]
        matrix_b(127) <= std_logic_vector(to_signed(6661, DATA_WIDTH));   -- B[7][15]
        matrix_b(128) <= std_logic_vector(to_signed(9466, DATA_WIDTH));   -- B[8][0]
        matrix_b(129) <= std_logic_vector(to_signed(7604, DATA_WIDTH));   -- B[8][1]
        matrix_b(130) <= std_logic_vector(to_signed(10679, DATA_WIDTH));  -- B[8][2]
        matrix_b(131) <= std_logic_vector(to_signed(6525, DATA_WIDTH));   -- B[8][3]
        matrix_b(132) <= std_logic_vector(to_signed(13624, DATA_WIDTH));  -- B[8][4]
        matrix_b(133) <= std_logic_vector(to_signed(15151, DATA_WIDTH));  -- B[8][5]
        matrix_b(134) <= std_logic_vector(to_signed(10308, DATA_WIDTH));  -- B[8][6]
        matrix_b(135) <= std_logic_vector(to_signed(388, DATA_WIDTH));    -- B[8][7]
        matrix_b(136) <= std_logic_vector(to_signed(11666, DATA_WIDTH));  -- B[8][8]
        matrix_b(137) <= std_logic_vector(to_signed(2671, DATA_WIDTH));   -- B[8][9]
        matrix_b(138) <= std_logic_vector(to_signed(10026, DATA_WIDTH));  -- B[8][10]
        matrix_b(139) <= std_logic_vector(to_signed(6161, DATA_WIDTH));   -- B[8][11]
        matrix_b(140) <= std_logic_vector(to_signed(730, DATA_WIDTH));    -- B[8][12]
        matrix_b(141) <= std_logic_vector(to_signed(15816, DATA_WIDTH));  -- B[8][13]
        matrix_b(142) <= std_logic_vector(to_signed(3246, DATA_WIDTH));   -- B[8][14]
        matrix_b(143) <= std_logic_vector(to_signed(2827, DATA_WIDTH));   -- B[8][15]
        
        matrix_b(144) <= std_logic_vector(to_signed(10395, DATA_WIDTH));  -- B[9][0]
        matrix_b(145) <= std_logic_vector(to_signed(12699, DATA_WIDTH));  -- B[9][1]
        matrix_b(146) <= std_logic_vector(to_signed(10043, DATA_WIDTH));  -- B[9][2]
        matrix_b(147) <= std_logic_vector(to_signed(15879, DATA_WIDTH));  -- B[9][3]
        matrix_b(148) <= std_logic_vector(to_signed(425, DATA_WIDTH));    -- B[9][4]
        matrix_b(149) <= std_logic_vector(to_signed(10177, DATA_WIDTH));  -- B[9][5]
        matrix_b(150) <= std_logic_vector(to_signed(11573, DATA_WIDTH));  -- B[9][6]
        matrix_b(151) <= std_logic_vector(to_signed(13256, DATA_WIDTH));  -- B[9][7]
        matrix_b(152) <= std_logic_vector(to_signed(3747, DATA_WIDTH));   -- B[9][8]
        matrix_b(153) <= std_logic_vector(to_signed(4227, DATA_WIDTH));   -- B[9][9]
        matrix_b(154) <= std_logic_vector(to_signed(11541, DATA_WIDTH));  -- B[9][10]
        matrix_b(155) <= std_logic_vector(to_signed(1450, DATA_WIDTH));   -- B[9][11]
        matrix_b(156) <= std_logic_vector(to_signed(451, DATA_WIDTH));    -- B[9][12]
        matrix_b(157) <= std_logic_vector(to_signed(9286, DATA_WIDTH));   -- B[9][13]
        matrix_b(158) <= std_logic_vector(to_signed(12088, DATA_WIDTH));  -- B[9][14]
        matrix_b(159) <= std_logic_vector(to_signed(8015, DATA_WIDTH));   -- B[9][15]
        
        matrix_b(160) <= std_logic_vector(to_signed(3423, DATA_WIDTH));   -- B[10][0]
        matrix_b(161) <= std_logic_vector(to_signed(16150, DATA_WIDTH));  -- B[10][1]
        matrix_b(162) <= std_logic_vector(to_signed(3328, DATA_WIDTH));   -- B[10][2]
        matrix_b(163) <= std_logic_vector(to_signed(56, DATA_WIDTH));     -- B[10][3]
        matrix_b(164) <= std_logic_vector(to_signed(5618, DATA_WIDTH));   -- B[10][4]
        matrix_b(165) <= std_logic_vector(to_signed(2810, DATA_WIDTH));   -- B[10][5]
        matrix_b(166) <= std_logic_vector(to_signed(1611, DATA_WIDTH));   -- B[10][6]
        matrix_b(167) <= std_logic_vector(to_signed(4510, DATA_WIDTH));   -- B[10][7]
        matrix_b(168) <= std_logic_vector(to_signed(7073, DATA_WIDTH));   -- B[10][8]
        matrix_b(169) <= std_logic_vector(to_signed(881, DATA_WIDTH));    -- B[10][9]
        matrix_b(170) <= std_logic_vector(to_signed(7549, DATA_WIDTH));   -- B[10][10]
        matrix_b(171) <= std_logic_vector(to_signed(2574, DATA_WIDTH));   -- B[10][11]
        matrix_b(172) <= std_logic_vector(to_signed(346, DATA_WIDTH));    -- B[10][12]
        matrix_b(173) <= std_logic_vector(to_signed(918, DATA_WIDTH));    -- B[10][13]
        matrix_b(174) <= std_logic_vector(to_signed(2990, DATA_WIDTH));   -- B[10][14]
        matrix_b(175) <= std_logic_vector(to_signed(5989, DATA_WIDTH));   -- B[10][15]
        
        matrix_b(176) <= std_logic_vector(to_signed(7285, DATA_WIDTH));   -- B[11][0]
        matrix_b(177) <= std_logic_vector(to_signed(9990, DATA_WIDTH));   -- B[11][1]
        matrix_b(178) <= std_logic_vector(to_signed(3956, DATA_WIDTH));   -- B[11][2]
        matrix_b(179) <= std_logic_vector(to_signed(4158, DATA_WIDTH));   -- B[11][3]
        matrix_b(180) <= std_logic_vector(to_signed(8222, DATA_WIDTH));   -- B[11][4]
        matrix_b(181) <= std_logic_vector(to_signed(1257, DATA_WIDTH));   -- B[11][5]
        matrix_b(182) <= std_logic_vector(to_signed(8996, DATA_WIDTH));   -- B[11][6]
        matrix_b(183) <= std_logic_vector(to_signed(14393, DATA_WIDTH));  -- B[11][7]
        matrix_b(184) <= std_logic_vector(to_signed(9183, DATA_WIDTH));   -- B[11][8]
        matrix_b(185) <= std_logic_vector(to_signed(15614, DATA_WIDTH));  -- B[11][9]
        matrix_b(186) <= std_logic_vector(to_signed(1417, DATA_WIDTH));   -- B[11][10]
        matrix_b(187) <= std_logic_vector(to_signed(1979, DATA_WIDTH));   -- B[11][11]
        matrix_b(188) <= std_logic_vector(to_signed(10304, DATA_WIDTH));  -- B[11][12]
        matrix_b(189) <= std_logic_vector(to_signed(11322, DATA_WIDTH));  -- B[11][13]
        matrix_b(190) <= std_logic_vector(to_signed(2927, DATA_WIDTH));   -- B[11][14]
        matrix_b(191) <= std_logic_vector(to_signed(6736, DATA_WIDTH));   -- B[11][15]
        matrix_b(192) <= std_logic_vector(to_signed(5114, DATA_WIDTH));   -- B[12][0]
        matrix_b(193) <= std_logic_vector(to_signed(6967, DATA_WIDTH));   -- B[12][1]
        matrix_b(194) <= std_logic_vector(to_signed(9713, DATA_WIDTH));   -- B[12][2]
        matrix_b(195) <= std_logic_vector(to_signed(13552, DATA_WIDTH));  -- B[12][3]
        matrix_b(196) <= std_logic_vector(to_signed(8180, DATA_WIDTH));   -- B[12][4]
        matrix_b(197) <= std_logic_vector(to_signed(14490, DATA_WIDTH));  -- B[12][5]
        matrix_b(198) <= std_logic_vector(to_signed(10372, DATA_WIDTH));  -- B[12][6]
        matrix_b(199) <= std_logic_vector(to_signed(8875, DATA_WIDTH));   -- B[12][7]
        matrix_b(200) <= std_logic_vector(to_signed(15553, DATA_WIDTH));  -- B[12][8]
        matrix_b(201) <= std_logic_vector(to_signed(12965, DATA_WIDTH));  -- B[12][9]
        matrix_b(202) <= std_logic_vector(to_signed(15373, DATA_WIDTH));  -- B[12][10]
        matrix_b(203) <= std_logic_vector(to_signed(8822, DATA_WIDTH));   -- B[12][11]
        matrix_b(204) <= std_logic_vector(to_signed(2723, DATA_WIDTH));   -- B[12][12]
        matrix_b(205) <= std_logic_vector(to_signed(10382, DATA_WIDTH));  -- B[12][13]
        matrix_b(206) <= std_logic_vector(to_signed(8632, DATA_WIDTH));   -- B[12][14]
        matrix_b(207) <= std_logic_vector(to_signed(2306, DATA_WIDTH));   -- B[12][15]
        
        matrix_b(208) <= std_logic_vector(to_signed(4712, DATA_WIDTH));   -- B[13][0]
        matrix_b(209) <= std_logic_vector(to_signed(11670, DATA_WIDTH));  -- B[13][1]
        matrix_b(210) <= std_logic_vector(to_signed(4582, DATA_WIDTH));   -- B[13][2]
        matrix_b(211) <= std_logic_vector(to_signed(2752, DATA_WIDTH));   -- B[13][3]
        matrix_b(212) <= std_logic_vector(to_signed(13819, DATA_WIDTH));  -- B[13][4]
        matrix_b(213) <= std_logic_vector(to_signed(11598, DATA_WIDTH));  -- B[13][5]
        matrix_b(214) <= std_logic_vector(to_signed(4660, DATA_WIDTH));   -- B[13][6]
        matrix_b(215) <= std_logic_vector(to_signed(9054, DATA_WIDTH));   -- B[13][7]
        matrix_b(216) <= std_logic_vector(to_signed(2074, DATA_WIDTH));   -- B[13][8]
        matrix_b(217) <= std_logic_vector(to_signed(8365, DATA_WIDTH));   -- B[13][9]
        matrix_b(218) <= std_logic_vector(to_signed(12868, DATA_WIDTH));  -- B[13][10]
        matrix_b(219) <= std_logic_vector(to_signed(11453, DATA_WIDTH));  -- B[13][11]
        matrix_b(220) <= std_logic_vector(to_signed(12599, DATA_WIDTH));  -- B[13][12]
        matrix_b(221) <= std_logic_vector(to_signed(12112, DATA_WIDTH));  -- B[13][13]
        matrix_b(222) <= std_logic_vector(to_signed(989, DATA_WIDTH));    -- B[13][14]
        matrix_b(223) <= std_logic_vector(to_signed(7246, DATA_WIDTH));   -- B[13][15]
        
        matrix_b(224) <= std_logic_vector(to_signed(2838, DATA_WIDTH));   -- B[14][0]
        matrix_b(225) <= std_logic_vector(to_signed(11076, DATA_WIDTH));  -- B[14][1]
        matrix_b(226) <= std_logic_vector(to_signed(16203, DATA_WIDTH));  -- B[14][2]
        matrix_b(227) <= std_logic_vector(to_signed(147, DATA_WIDTH));    -- B[14][3]
        matrix_b(228) <= std_logic_vector(to_signed(10416, DATA_WIDTH));  -- B[14][4]
        matrix_b(229) <= std_logic_vector(to_signed(14577, DATA_WIDTH));  -- B[14][5]
        matrix_b(230) <= std_logic_vector(to_signed(11726, DATA_WIDTH));  -- B[14][6]
        matrix_b(231) <= std_logic_vector(to_signed(4847, DATA_WIDTH));   -- B[14][7]
        matrix_b(232) <= std_logic_vector(to_signed(9091, DATA_WIDTH));   -- B[14][8]
        matrix_b(233) <= std_logic_vector(to_signed(3100, DATA_WIDTH));   -- B[14][9]
        matrix_b(234) <= std_logic_vector(to_signed(699, DATA_WIDTH));    -- B[14][10]
        matrix_b(235) <= std_logic_vector(to_signed(6788, DATA_WIDTH));   -- B[14][11]
        matrix_b(236) <= std_logic_vector(to_signed(11945, DATA_WIDTH));  -- B[14][12]
        matrix_b(237) <= std_logic_vector(to_signed(5659, DATA_WIDTH));   -- B[14][13]
        matrix_b(238) <= std_logic_vector(to_signed(7932, DATA_WIDTH));   -- B[14][14]
        matrix_b(239) <= std_logic_vector(to_signed(9080, DATA_WIDTH));   -- B[14][15]
        
        matrix_b(240) <= std_logic_vector(to_signed(3300, DATA_WIDTH));   -- B[15][0]
        matrix_b(241) <= std_logic_vector(to_signed(5365, DATA_WIDTH));   -- B[15][1]
        matrix_b(242) <= std_logic_vector(to_signed(6710, DATA_WIDTH));   -- B[15][2]
        matrix_b(243) <= std_logic_vector(to_signed(3015, DATA_WIDTH));   -- B[15][3]
        matrix_b(244) <= std_logic_vector(to_signed(1525, DATA_WIDTH));   -- B[15][4]
        matrix_b(245) <= std_logic_vector(to_signed(14193, DATA_WIDTH));  -- B[15][5]
        matrix_b(246) <= std_logic_vector(to_signed(16333, DATA_WIDTH));  -- B[15][6]
        matrix_b(247) <= std_logic_vector(to_signed(5141, DATA_WIDTH));   -- B[15][7]
        matrix_b(248) <= std_logic_vector(to_signed(13660, DATA_WIDTH));  -- B[15][8]
        matrix_b(249) <= std_logic_vector(to_signed(2040, DATA_WIDTH));   -- B[15][9]
        matrix_b(250) <= std_logic_vector(to_signed(1459, DATA_WIDTH));   -- B[15][10]
        matrix_b(251) <= std_logic_vector(to_signed(661, DATA_WIDTH));    -- B[15][11]
        matrix_b(252) <= std_logic_vector(to_signed(1961, DATA_WIDTH));   -- B[15][12]
        matrix_b(253) <= std_logic_vector(to_signed(2382, DATA_WIDTH));   -- B[15][13]
        matrix_b(254) <= std_logic_vector(to_signed(10445, DATA_WIDTH));  -- B[15][14]
        matrix_b(255) <= std_logic_vector(to_signed(8431, DATA_WIDTH));   -- B[15][15]
        elsif rising_edge(clk) then
            -- Assign inputs from matrix storage
            q_U_T <= matrix_a(to_integer(unsigned(input_address_a)));
            q_in_ram <= matrix_b(to_integer(unsigned(input_address_b)));

            -- Capture the result
            if write_enable_out = '1' then
                matrix_b(to_integer(unsigned(input_address_b))) <= output_matrix_value;
            end if;
        end if;
    end process;
end sim;