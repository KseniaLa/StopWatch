----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:56 11/26/2019 
-- Design Name: 
-- Module Name:    timer_const - Behavioral 
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

entity timer_const is
Port ( CLK : in  STD_LOGIC;
       anode : out STD_LOGIC_VECTOR ( 7 downto 0 );
       cathode : out STD_LOGIC_VECTOR ( 7 downto 0));
end timer_const;

architecture Behavioral of timer_const is

signal count1 : std_logic_vector (18 downto 0):="0000000000000000000";

begin

process (CLK) 
	begin
		if (rising_edge(CLK)) then
			if count1 = "0110010110111001101" then 
			   anode <= "10000000";
				cathode <= "10011111";
				count1 <= "0000000000000000000";
			end if;
			count1 <= std_logic_vector( unsigned(count1) + 1 );
		end if;
	end process;

end Behavioral;

