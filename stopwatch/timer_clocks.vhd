----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:21 11/24/2019 
-- Design Name: 
-- Module Name:    timer_clocks - Behavioral 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timer_clocks is
Port (
			start_button : in  STD_LOGIC;
			stop_button : in STD_LOGIC;
			RST : in  STD_LOGIC;
			CLK : in STD_LOGIC;
			clock_480 : out STD_LOGIC;
			h2_out : out integer;
			h1_out: out integer;
			m2_out : out integer;
			m1_out : out integer;
			s2_out : out integer;
			s1_out : out integer;
			ms2_out : out integer;
			ms1_out : out integer);
end timer_clocks;

architecture Behavioral of timer_clocks is

signal ClockFrequencyHz : integer := 500000;
signal Ticks : integer := 0;
signal count2 : std_logic_vector (16 downto 0):="00000000000000000";
signal clk2 : STD_LOGIC := '0';
signal h1, h2, m1, m2, s1, s2, ms1, ms2 : integer:=0;
signal en : STD_LOGIC := '0';

begin

process(Clk) is
    begin
        if rising_edge(Clk) then
		  
				if start_button = '1' then
					en <= '1';
				end if;
				
				if stop_button = '1' then
					en <= '0';
				end if;
 
            -- If the negative reset signal is active
            if RST = '1' then
                Ticks   <= 0;
                h1 <= 0;
					h2 <= 0;
					m1 <= 0;
					m2 <= 0;
					s1 <= 0;
					s2 <= 0;
					ms1 <= 0;
					ms2 <= 0;
            else
 
                -- True once every second
                if Ticks = ClockFrequencyHz - 1 then
                    Ticks <= 0;
 
						  if en = '1' then
                    -- True once every minute
						   ms1 <= ms1 + 1;
							if ms1 = 9 then
								ms2 <= ms2 + 1;
								ms1 <= 0;
								if ms2 = 9 then
									s1 <= s1 + 1;
									ms2 <= 0;
									if s1 = 9 then
										s2 <= s2 + 1;
										s1 <= 0;
										if s2 = 5 then 
											m1 <= m1 + 1;
											s2 <= 0;
											if m1 = 9 then
												m2 <= m2 + 1;
												m1 <= 0;
												if m2 = 5 then
													h1 <= h1 + 1;
													m2 <= 0;
													if h1 = 9 then
														h2 <= h2 +1;
														h1 <= 0;
														if h2 = 9 then
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
							end if;
 
                else
                    Ticks <= Ticks + 1;
                end if;
 
            end if;
        end if;
    end process;
	 
clk1 : process (CLK) 
	begin
		if (rising_edge(CLK)) then
			if count2 = "11000011010100000" then 
				clk2 <= not clk2;
				count2 <= "00000000000000000";
			end if;
			count2 <= std_logic_vector( unsigned(count2) + 1 );
		end if;
	end process;

clock_480 <= clk2;
h2_out <= h2;
h1_out <= h1;
m2_out <= m2;
m1_out <= m1;
s2_out <= s2;
s1_out <= s1;
ms2_out <= ms2;
ms1_out <= ms1;

end Behavioral;

