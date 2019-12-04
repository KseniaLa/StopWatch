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
			  DataOut_timer	: out STD_LOGIC_VECTOR (31 downto 0);
			  DataOut1	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut2	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut3	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut4	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut5	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut6	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut7	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut8	: out STD_LOGIC_VECTOR (31 downto 0)
           );
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
		DataOut1	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut2	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut3	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut4	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut5	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut6	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut7	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut8	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0)
	);
end component;

signal h1, h2, m1, m2, s1, s2, ms1, ms2 : integer:=0;
signal WriteEnable : std_logic := '0';
signal ReadEnable : std_logic := '1';
signal pushed : std_logic := '0';
signal DataIn	:  STD_LOGIC_VECTOR (31 downto 0);
signal DataOut	:  STD_LOGIC_VECTOR (31 downto 0);
signal count2 : std_logic_vector (16 downto 0):="00000000000000000";

begin
	
process(CLK)
	begin
	if(rising_edge(CLK)) then
		if(save_button = '1' and pushed = '0') then
			pushed <= '1';
			WriteEnable <= '1';
			ReadEnable <= '0';
		else
			if(save_button = '0') then
				pushed <= '0';
			else
				WriteEnable <= '0';
				ReadEnable <= '1';
			end if;
		end if;

		DataIn <= get_vect_for_memory(h2, h1, m2, m1, s2, s1, ms2, ms1);
	end if;
	end process;
	
clk1 : process (CLK) 
	begin
		if (rising_edge(CLK)) then
			if count2 = "11000011010100000" then 
				DataOut_timer <= get_vect_for_memory(h2, h1, m2, m1, s2, s1, ms2, ms1);
				count2 <= "00000000000000000";
			end if;
			count2 <= std_logic_vector( unsigned(count2) + 1 );
		end if;
	end process;
	
ut0 : timer port map (start_button, stop_button, RST, CLK, h2, h1, m2, m1, s2, s1, ms2, ms1);
ut1 : memory port map (CLK, RST, WriteEnable, DataIn, ReadEnable, DataOut1, DataOut2,DataOut3,DataOut4,DataOut5,DataOut6,DataOut7,DataOut8);

end Behavioral;
