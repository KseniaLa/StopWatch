----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:08 11/27/2019 
-- Design Name: 
-- Module Name:    stopwatch7seg_new - Behavioral 
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


entity stopwatch7seg_new is
    Port ( start_stop_button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           anode : out STD_LOGIC_VECTOR ( 7 downto 0 );
           cathode : out STD_LOGIC_VECTOR ( 7 downto 0));
end stopwatch7seg_new;

architecture Behavioral of stopwatch7seg_new is

	component timer_clocks_new
Port (start_stop_button : in  STD_LOGIC;
			RST : in  STD_LOGIC;
			CLK : in STD_LOGIC;
			clock_480 : out STD_LOGIC;
			h2 : inout integer;
			h1: inout integer;
			m2 : inout integer;
			m1 : inout integer;
			s2 : inout integer;
			s1 : inout integer;
			ms2 : inout integer;
			ms1 : inout integer);
end component;
	
	component sevensegm
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
	end component;
	
	signal clk1 , clk2 : STD_LOGIC ;
	signal h1, h2, m1, m2, s1, s2, ms1, ms2 : integer:=0;
begin

	ut0 : timer_clocks_new port map (start_stop_button => start_stop_button, RST => RST, CLK => CLK, clock_480 => clk1,
				h2 => h2, h1 => h1, m2 => m2, m1 => m1, s2 => s2, s1 => s1, ms2 => ms2, ms1 => ms1);
	ut1 : sevensegm port map (clock_480 => clk1, h2 => h2, h1 => h1, m2 => m2, m1 => m1, s2 => s2, s1 => s1,
				ms2 => ms2, ms1 => ms1 , anode => anode, cathode => cathode);

end Behavioral;

