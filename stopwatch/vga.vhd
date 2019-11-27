----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:26 11/26/2019 
-- Design Name: 
-- Module Name:    vga - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga is
    Port ( CLK : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (4 downto 0);
           green : out  STD_LOGIC_VECTOR (5 downto 0);
           blue : out  STD_LOGIC_VECTOR (4 downto 0);
			  clk1: out STD_LOGIC);
end vga;

architecture Behavioral of vga is
signal clk25 : std_logic; --need to set 0????????
signal hs : std_logic_vector (10 downto 0) := "00000000000";
signal vs : std_logic_vector (10 downto 0) := "00000000000";
signal clk_divider : unsigned(3 downto 0):=(others=>'0');
begin

--	process(CLK)
--	begin
--	  if(rising_edge(CLK)) then
--		 clk_divider   <= clk_divider + 1;
--	  end if;
--	  clk25   <= clk_divider(2);
--	  clk1 <= clk_divider(2);
--	end process p_clk_divider;

--	process (CLK)
--	begin
--		if (rising_edge(CLK)) then
--			if (clk25 = '0') then              
--				clk25 <= '1';
--			else
--				clk25 <= '0';
--			end if;
--		end if;
--	end process;
--	
--	process (clk25)
--	begin
--		if (rising_edge(clk25)) then
--			if (clk1 = '0') then              
--				clk1 <= '1';
--			else
--				clk1 <= '0';
--			end if;
--		end if;
--	end process;

	process (CLK)
	begin
		if (rising_edge(CLK)) then
			if (hs > "1100100000") then
				red <= "00000";
				green <= "000000";
				blue <= "00000";
			else
				red <= "00000";
				green <= "011111";
				blue <= "00000";
			end if;
			
			if ((hs > "00000000000" ) and (hs < "01101011000" )) -- 01101011000
			then
				hsync <= '1';
			else
				hsync <= '0';
			end if;
			
			

			if ((vs > "0000000000" ) and (vs < "01001111101" )) then -- 01001111101
				vsync <= '1';
			else
				vsync <= '0';
			end if;

			hs <= hs + "00000000001" ;

			if (hs= "10000010000") then     --800
				vs <= vs + "00000000001";       
				hs <= "00000000000";
			end if;

			if (vs= "01010011010") then     --521           
				vs <= "00000000000";
			end if;
		end if;
	end process;
end Behavioral;

