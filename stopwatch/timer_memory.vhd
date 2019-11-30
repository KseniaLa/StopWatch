----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:25:50 11/30/2019 
-- Design Name: 
-- Module Name:    timer_memory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timer_memory is
    Port ( CLK : in  STD_LOGIC;
			  start_button : in  STD_LOGIC;
			  stop_button : in STD_LOGIC;
			  RST : in  STD_LOGIC;
           save_button : in  STD_LOGIC;
           h2_timer : out  integer;
           h1_timer : out  integer;
           m2_timer : out  integer;
           m1_timer : out  integer;
           s2_timer : out  integer;
           s1_timer : out  integer;
           ms2_timer : out  integer;
           ms1_timer : out  integer;
           h2_mem : out  integer;
           h1_mem : out  integer;
           m2_mem : out  integer;
           m1_mem : out  integer;
           s2_mem : out  integer;
           s1_mem : out  integer;
           ms2_mem : out  integer;
           ms1_mem : out  integer;
           mem_position : out  integer);
end timer_memory;

architecture Behavioral of timer_memory is

function get_vect_of_digit(
	digit : in integer)
	return std_logic_vector is
	variable vect : std_logic_vector(3 downto 0);
	begin
	case (digit) is
		when 0 =>
			return "0000";
		when 1 =>
			return "0001";
		when 2 =>
			return "0010";
		when 3 =>
			return "0011";
		when 4 =>
			return "0100";
		when 5 =>
			return "0101";
		when 6 =>
			return "0110";
		when 7 =>
			return "0111";
		when 8 =>
			return "1000";
		when 9 =>
			return "1001";
		when others =>
			return "0000";
	end case;	
	end function get_vect_of_digit;
	
	function get_digit_of_vector(
	vect : in std_logic_vector(3 downto 0))
	return integer is
	variable digit : integer;
	begin
	case (vect) is
		when "0000" =>
			return 0;
		when "0001" =>
			return 1;
		when "0010" =>
			return 2;
		when "0011" =>
			return 3;
		when "0100" =>
			return 4;
		when "0101" =>
			return 5;
		when "0110" =>
			return 6;
		when "0111" =>
			return 7;
		when "1000" =>
			return 8;
		when "1001" =>
			return 9;
		when others =>
			return 0;
	end case;	
	end function get_digit_of_vector;
	
	function get_vect_for_memory(
	h2 : in integer;
  h1 : in  integer;
  m2 : in integer;
  m1 : in  integer;
  s2 : in  integer;
  s1 : in  integer;
  ms2 : in  integer;
  ms1 : in  integer)
	return std_logic_vector is
	variable vect : std_logic_vector(31 downto 0);
	begin
		return get_vect_of_digit(h2) & get_vect_of_digit(h1) & get_vect_of_digit(m2) & get_vect_of_digit(m1) &
					get_vect_of_digit(s2) & get_vect_of_digit(s1) & get_vect_of_digit(ms2) & get_vect_of_digit(ms1);
	end function get_vect_for_memory;
	
	function get_parameter(
		param : in integer;
		DataIn : in std_logic_vector(31 downto 0))
		return integer is
		variable digit : integer;
	begin
		case (param) is
			when 0 =>
				return get_digit_of_vector(DataIn(31 downto 28));
			when 1 =>
				return get_digit_of_vector(DataIn(27 downto 24));
			when 2 =>
				return get_digit_of_vector(DataIn(23 downto 20));
			when 3 =>
				return get_digit_of_vector(DataIn(19 downto 16));
			when 4 =>
				return get_digit_of_vector(DataIn(15 downto 12));
			when 5 =>
				return get_digit_of_vector(DataIn(11 downto 8));
			when 6 =>
				return get_digit_of_vector(DataIn(7 downto 4));
			when 7 =>
				return get_digit_of_vector(DataIn(3 downto 0));
			when others =>
				return get_digit_of_vector("0000");
		end case;	
	end get_parameter;

component timer
Port (
			start_button : in  STD_LOGIC;
			stop_button : in STD_LOGIC;
			RST : in  STD_LOGIC;
			CLK : in STD_LOGIC;
			h2_out : out integer;
			h1_out: out integer;
			m2_out : out integer;
			m1_out : out integer;
			s2_out : out integer;
			s1_out : out integer;
			ms2_out : out integer;
			ms1_out : out integer);
end component;

component memory
	Generic (
		 DATA_WIDTH  : positive := 32;
		 FIFO_DEPTH	: positive := 8
	);
	Port ( 
		CLK		: in  STD_LOGIC;
		RST		: in  STD_LOGIC;
		WriteEn	: in  STD_LOGIC;
		DataIn	: in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		ReadEn	: in  STD_LOGIC;
		DataOut	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		ReadEnd	: out STD_LOGIC;
		Position	: out integer
	);
end component;

signal h1, h2, m1, m2, s1, s2, ms1, ms2 : integer:=0;
signal WriteEnable : std_logic := '0';
signal ReadEnable : std_logic := '1';
signal pushed : std_logic := '0';
signal DataIn	:  STD_LOGIC_VECTOR (31 downto 0);
signal DataOut	:  STD_LOGIC_VECTOR (31 downto 0);
signal ReadEnd :  std_logic;
signal MemPosition : integer;
signal ss1, ss2 : STD_LOGIC:='0';
begin
	
process(CLK)
	begin
	
--	if(save_button = '1' and pushed = '0') then
--		pushed <= '1';
--		WriteEnable <= '1';
--		ReadEnable <= '0';
--	else
--		if(save_button = '0') then
--			pushed <= '0';
--		else
--			WriteEnable <= '0';
--			ReadEnable <= '1';
--		end if;
--	end if;

--	if(save_button = '1') then
--		WriteEnable <= '1';
--		ReadEnable <= '0';
--	else
--			WriteEnable <= '0';
--			ReadEnable <= '1';
--	end if;

	
	h2_timer <= h2;
   h1_timer <= h1;
   m2_timer <= m2;
   m1_timer <= m1;
   s2_timer <= s2;
   s1_timer <= s1;
   ms2_timer <= ms2;
   ms1_timer <= ms1;
	DataIn <= get_vect_for_memory(h2, h1, m2, m1, s2, s1, ms2, ms1);
	h2_mem <= get_parameter(0, DataOut);
	h1_mem <= get_parameter(1, DataOut);
	m2_mem <= get_parameter(2, DataOut);
	m1_mem <= get_parameter(3, DataOut);
	s2_mem <= get_parameter(4, DataOut);
	s1_mem <= get_parameter(5, DataOut);
	ms2_mem <= get_parameter(6, DataOut);
	ms1_mem <= get_parameter(7, DataOut);
	
	if(ReadEnd = '1') then
		mem_position <= -1;
	else
		mem_position <= MemPosition;
	end if;
	end process;
	
--process(CLK)
--begin
--	if save_button = '1' then --to detect "risingedge" for the button
--		ss1 <= '1';
--	elsif save_button = '0' then
--		ss1 <= '0';
--	end if;
--	
--	if ss2 = '0' and ss1 = '1' then
--	WriteEnable <= not WriteEnable;
--	ReadEnable <= not ReadEnable;
--	end if;
--	
--	ss2 <= ss1;--
--end process;
	
ut0 : timer port map (start_button, stop_button, RST, CLK, h2, h1, m2, m1, s2, s1, ms2, ms1);
ut1 : memory port map (CLK, RST, WriteEnable, DataIn, ReadEnable, DataOut, ReadEnd, MemPosition);

end Behavioral;

