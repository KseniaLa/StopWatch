----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:55:16 11/24/2019 
-- Design Name: 
-- Module Name:    stopwatch7seg - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stopwatch7seg is
    Port ( button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           anode : out STD_LOGIC_VECTOR ( 7 downto 0 );
           cathode : out STD_LOGIC_VECTOR ( 7 downto 0));
end stopwatch7seg;

architecture Behavioral of stopwatch7seg is
	component clocks
		Port ( CLK : in STD_LOGIC ;
		clock_led : out STD_LOGIC ;
		clock_stopwatch : out STD_LOGIC );
	end component ;
	
	component sevenseg
		Port ( button : in STD_LOGIC ;
		RST : in STD_LOGIC ;
		CLK : in STD_LOGIC ;
		clock_led : in STD_LOGIC ;
		clock_stopwatch : in STD_LOGIC ;
		anode : out STD_LOGIC_VECTOR ( 7 downto 0 ) ;
		cathode : out STD_LOGIC_VECTOR ( 7 downto 0 )) ;
	end component ;
	
	signal clk1 , clk2 : STD_LOGIC ;
begin

	ut0 : clocks port map (CLK => CLK, clock_led => clk1, clock_stopwatch => clk2);
	ut1 : sevenseg port map (CLK => CLK, clock_led => clk1, clock_stopwatch => clk2, button => button, RST => RST, anode => anode, cathode => cathode);

end Behavioral;

