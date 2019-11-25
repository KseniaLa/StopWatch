----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:05:21 11/25/2019 
-- Design Name: 
-- Module Name:    sevensegm - Behavioral 
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

use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevensegm is
    Port ( clock_480 : in  STD_LOGIC;
			  h2 : in integer;
			  h1 : in integer;
			  m2 : in integer;
			  m1 : in integer;
			  s2 : in integer;
			  s1 : in integer;
			  ms2 : in integer;
			  ms1 : in integer;
           anode : out STD_LOGIC_VECTOR (7 downto 0);
           cathode : out STD_LOGIC_VECTOR (7 downto 0));
end sevensegm;

architecture Behavioral of sevensegm is

function get_segment_view_of_digit(
	digit : in integer)
	return std_logic_vector is
	variable vect : std_logic_vector(7 downto 0);
	begin
	case (digit) is
		when 0 =>
			return "00000011";
		when 1 =>
			return "10011111";
		when 2 =>
			return "00100101";
		when 3 =>
			return "00001101";
		when 4 =>
			return "10011001";
		when 5 =>
			return "01001001";
		when 6 =>
			return "01000001";
		when 7 =>
			return "00011111";
		when 8 =>
			return "00000001";
		when 9 =>
			return "00011001";
		when others =>
			return "11111111";
	end case;
	end function get_segment_view_of_digit;
	
	function get_segment_view_of_digit_with_point(
	digit : in integer)
	return std_logic_vector is
	variable vect : std_logic_vector(7 downto 0);
	begin
	case (digit) is
		when 0 =>
			return "00000010";
		when 1 =>
			return "10011110";
		when 2 =>
			return "00100100";
		when 3 =>
			return "00001100";
		when 4 =>
			return "10011000";
		when 5 =>
			return "01001000";
		when 6 =>
			return "01000000";
		when 7 =>
			return "00011110";
		when 8 =>
			return "00000000";
		when 9 =>
			return "00011000";
		when others =>
			return "11111110";
	end case;	
	end function get_segment_view_of_digit_with_point;
	
	function get_led_number(
	vec3 : in std_logic_vector(2 downto 0))
	return std_logic_vector is
	variable vect : std_logic_vector(7 downto 0);
	begin
	case (vec3) is
		when "000" =>
			return "10000000";
		when "001" =>
			return "01000000";
		when "010" =>
			return "00100000";
		when "011" =>
			return "00010000";
		when "100" =>
			return "00001000";
		when "101" =>
			return "00000100";
		when "110" =>
			return "00000010";
		when "111" =>
			return "00000001";
		when others =>
			return "00000000";
	end case;	
	end function get_led_number;
	
	signal digit1: std_logic_vector (2 downto 0):="000";

begin
	
led : process (clock_480)
	begin
		if (rising_edge(clock_480)) then
		
			anode <= get_led_number(digit1);
			
			case (digit1) is
				when "000" =>
					cathode <= get_segment_view_of_digit(h2);
				when "001" =>
					cathode <= get_segment_view_of_digit_with_point(h1);
				when "010" =>
					cathode <= get_segment_view_of_digit(m2);
				when "011" =>
					cathode <= get_segment_view_of_digit_with_point(m1);
				when "100" =>
					cathode <= get_segment_view_of_digit(s2);
				when "101" =>
					cathode <= get_segment_view_of_digit_with_point(s1);
				when "110" =>
					cathode <= get_segment_view_of_digit(ms2);
				when "111" =>
					cathode <= get_segment_view_of_digit(ms1);
				when others =>
					null;
			end case;
			digit1 <= std_logic_vector( unsigned(digit1) + 1 );
		end if;
	end process;

end Behavioral;

