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
    Port ( start_stop_button : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           clock_480 : in  STD_LOGIC;
           clock_centi : in  STD_LOGIC;
           anode : out STD_LOGIC_VECTOR (7 downto 0);
           cathode : out STD_LOGIC_VECTOR (7 downto 0));
end sevensegm;

architecture Behavioral of sevensegm is

signal h1, h2, m1, m2, s1, s2, ms1, ms2 : integer:=0; --for the 8 leds on the seven-segment display
signal PS, NS : STD_LOGIC_VECTOR (1 downto 0):="00"; --present state/next state
signal ss1, ss2, en : STD_LOGIC:='0';

begin

process(CLK)
	begin
		if (rising_edge(CLK)) then
			PS <= NS;
		end if;
	end process;
	
adding : process (start_stop_button, RST, clock_centi, PS, NS, ss1, ss2)
	begin
		if RST = '1' then --if reset is "high" then the clock will display all zeros
			h1 <= 0;
			h2 <= 0;
			m1 <= 0;
			m2 <= 0;
			s1 <= 0;
			s2 <= 0;
			ms1 <= 0;
			ms2 <= 0;
		else
			if (rising_edge(clock_centi)) then
				if start_stop_button = '1' then --to detect "risingedge" for the button
					ss1 <= '1';
				elsif start_stop_button = '0' then
					ss1 <= '0';
				end if;
				ss2 <= ss1;
				
				if ss2 = '0' and ss1 = '1' then
					en <= not en;
				end if;
				
				case (PS) is
					when "11" => -- when the clock is already running
						if en = '1' then
							NS <= "11";
							ms1 <= ms1 + 1; --code to have the stopwatch actually count
							if ms1 = 10 then
								ms2 <= ms2 + 1;
								ms1 <= 0;
								if ms2 = 10 then
									s1 <= s1 + 1;
									ms2 <= 0;
									if s1 = 10 then
										s2 <= s2 + 1;
										s1 <= 0;
										if s2 = 6 then --rolls over when it gets to 99.99
											m1 <= m1 + 1;
											s2 <= 0;
											if m1 = 10 then
												m2 <= m2 + 1;
												m1 <= 0;
												if m2 = 6 then
													h1 <= h1 + 1;
													m2 <= 0;
													if h1 = 10 then
														h2 <= h2 +1;
														h1 <= 0;
														if h2 = 10 then
															h1 <= 0;
															h2 <= 0;
															m1 <= 0;
															m2 <= 0;
															s1 <= 0;
															s2 <= 0;
															ms1 <= 0;
															ms2 <= 0;
														end if;
													end if;
												end if;
											end if;
										end if;
									end if;
								end if;
							end if;
						elsif en = '0' then
							NS <= "00";
						end if;
						
					when "00" => --when the stopwatch is stopped
						if en = '0' then
							NS <= "00";
							h1 <= h1;
							h2 <= h2;
							m1 <= m1;
							m2 <= m2;
							s1 <= s1;
							s2 <= s2;
							ms1 <= ms1;
							ms2 <= ms2;
						elsif en = '1' then
							NS <= "11";
						end if;
						
					when others => --should never happen
						NS <= "00";
						h1 <= 0;
						h2 <= 0;
						m1 <= 0;
						m2 <= 0;
						s1 <= 0;
						s2 <= 0;
						ms1 <= 0;
						ms2 <= 0;
				end case;
			end if;
		end if;
	end process;
	
led : process (clock_480) --tells leds when to turn on
	variable digit1, digit2 : unsigned (2 downto 0):="000";
	begin
		if (rising_edge(clock_480)) then
			case (digit1) is
--				when "000" =>
--					anode <= "01111111";
--				when "001" =>
--					anode <= "10111111";
--				when "010" =>
--					anode <= "11011111";
--				when "011" =>
--					anode <= "11101111";
--				when "100" =>
--					anode <= "11110111";
--				when "101" =>
--					anode <= "11111011";
--				when "110" =>
--					anode <= "11111101";
--				when "111" =>
--					anode <= "11111110";
--				when others =>
--					anode <= "11111111";
				when "000" =>
					anode <= "10000000";
				when "001" =>
					anode <= "01000000";
				when "010" =>
					anode <= "00100000";
				when "011" =>
					anode <= "00010000";
				when "100" =>
					anode <= "00001000";
				when "101" =>
					anode <= "00000100";
				when "110" =>
					anode <= "00000010";
				when "111" =>
					anode <= "00000001";
				when others =>
					anode <= "00000000";
			end case;
			
			case (digit2) is
				when "000" =>
					case (h2) is
						when 0 =>
						cathode <= "00000011";
						when 1 =>
						cathode <= "10011111";
						when 2 =>
						cathode <= "00100101";
						when 3 =>
						cathode <= "00001101";
						when 4 =>
						cathode <= "10011001";
						when 5 =>
						cathode <= "01001001";
						when 6 =>
						cathode <= "01000001";
						when 7 =>
						cathode <= "00011111";
						when 8 =>
						cathode <= "00000001";
						when 9 =>
						cathode <= "00011001";
						when others =>
						cathode <= "11111111";
					end case;
				when "001" =>
					case (h1) is
						when 0 =>
						cathode <= "00000010";
						when 1 =>
						cathode <= "10011110";
						when 2 =>
						cathode <= "00100100";
						when 3 =>
						cathode <= "00001100";
						when 4 =>
						cathode <= "10011000";
						when 5 =>
						cathode <= "01001000";
						when 6 =>
						cathode <= "01000000";
						when 7 =>
						cathode <= "00011110";
						when 8 =>
						cathode <= "00000000";
						when 9 =>
						cathode <= "00011000";
						when others =>
						cathode <= "11111111";
					end case;
				when "010" =>
					case (m2) is
						when 0 =>
						cathode <= "00000011";
						when 1 =>
						cathode <= "10011111";
						when 2 =>
						cathode <= "00100101";
						when 3 =>
						cathode <= "00001101";
						when 4 =>
						cathode <= "10011001";
						when 5 =>
						cathode <= "01001001";
						when 6 =>
						cathode <= "01000001";
						when 7 =>
						cathode <= "00011111";
						when 8 =>
						cathode <= "00000001";
						when 9 =>
						cathode <= "00011001";
						when others =>
						cathode <= "11111111";
					end case;
				when "011" =>
					case (m1) is
						when 0 =>
						cathode <= "00000010";
						when 1 =>
						cathode <= "10011110";
						when 2 =>
						cathode <= "00100100";
						when 3 =>
						cathode <= "00001100";
						when 4 =>
						cathode <= "10011000";
						when 5 =>
						cathode <= "01001000";
						when 6 =>
						cathode <= "01000000";
						when 7 =>
						cathode <= "00011110";
						when 8 =>
						cathode <= "00000000";
						when 9 =>
						cathode <= "00011000";
						when others =>
						cathode <= "11111111";
					end case;
				when "100" =>
					case (s2) is
						when 0 =>
						cathode <= "00000011";
						when 1 =>
						cathode <= "10011111";
						when 2 =>
						cathode <= "00100101";
						when 3 =>
						cathode <= "00001101";
						when 4 =>
						cathode <= "10011001";
						when 5 =>
						cathode <= "01001001";
						when others =>
						cathode <= "11111111";
					end case;
				when "101" =>
					case (s1) is
						when 0 =>
						cathode <= "00000010";
						when 1 =>
						cathode <= "10011110";
						when 2 =>
						cathode <= "00100100";
						when 3 =>
						cathode <= "00001100";
						when 4 =>
						cathode <= "10011000";
						when 5 =>
						cathode <= "01001000";
						when 6 =>
						cathode <= "01000000";
						when 7 =>
						cathode <= "00011110";
						when 8 =>
						cathode <= "00000000";
						when 9 =>
						cathode <= "00011000";
						when others =>
						cathode <= "11111111";
					end case;
				when "110" =>
					case (ms2) is
						when 0 =>
						cathode <= "00000011";
						when 1 =>
						cathode <= "10011111";
						when 2 =>
						cathode <= "00100101";
						when 3 =>
						cathode <= "00001101";
						when 4 =>
						cathode <= "10011001";
						when 5 =>
						cathode <= "01001001";
						when others =>
						cathode <= "11111111";
					end case;
				when "111" =>
					case (ms1) is
						when 0 =>
						cathode <= "00000010";
						when 1 =>
						cathode <= "10011110";
						when 2 =>
						cathode <= "00100100";
						when 3 =>
						cathode <= "00001100";
						when 4 =>
						cathode <= "10011000";
						when 5 =>
						cathode <= "01001000";
						when 6 =>
						cathode <= "01000000";
						when 7 =>
						cathode <= "00011110";
						when 8 =>
						cathode <= "00000000";
						when 9 =>
						cathode <= "00011000";
						when others =>
						cathode <= "11111111";
					end case;
				when others =>
			end case;
			digit1 := digit1 + 1;
			digit2 := digit2 + 1;
		end if;
	end process;

end Behavioral;

