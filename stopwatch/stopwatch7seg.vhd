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
    Port ( start_stop_button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           anode : out STD_LOGIC_VECTOR ( 7 downto 0 );
           cathode : out STD_LOGIC_VECTOR ( 7 downto 0));
end stopwatch7seg;

architecture Behavioral of stopwatch7seg is
	component timer_clocks
		Port ( CLK : in STD_LOGIC ;
		clock_480 : out STD_LOGIC ;
		clock_centi: out STD_LOGIC );
	end component ;
	
	component sevensegm
		Port ( start_stop_button : in STD_LOGIC ;
		RST : in STD_LOGIC ;
		CLK : in STD_LOGIC ;
		clock_480 : in STD_LOGIC ;
		clock_centi: in STD_LOGIC ;
		anode : out STD_LOGIC_VECTOR ( 7 downto 0 ) ;
		cathode : out STD_LOGIC_VECTOR ( 7 downto 0 )) ;
	end component ;
	
	signal clk1 , clk2 : STD_LOGIC ;
begin

	ut0 : timer_clocks port map (CLK => CLK, clock_480 => clk1, clock_centi => clk2);
	ut1 : sevensegm port map (CLK => CLK, clock_480 => clk1, clock_centi => clk2, start_stop_button => start_stop_button, RST => RST, anode => anode, cathode => cathode);

end Behavioral;

