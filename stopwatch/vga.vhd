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
           red : out  STD_LOGIC;
           green : out  STD_LOGIC;
           blue : out  STD_LOGIC);
end vga;

architecture Behavioral of vga is
signal clk25 : std_logic; --need to set 0????????
signal hs : std_logic_vector (9 downto 0) := "0000000000";
signal vs : std_logic_vector (9 downto 0) := "0000000000";
begin
	process (CLK)
	begin
		if (rising_edge(CLK)) then
			if (clk25 = '0') then              
				clk25 <= '1';
			else
				clk25 <= '0';
			end if;
		end if;
	end process;

	process (clk25)
	begin
		if (rising_edge(clk25)) then
			red <= '0';
			green <= '1';
			blue <= '0';
			
			if ((hs > "0000000000" ) and (hs < "0001100001" )) -- 96+1
			then
				hsync <= '0';
			else
				hsync <= '1';
			end if;

			if ((vs > "0000000000" ) and (vs < "0000000011" )) -- 2+1   
			then
				vsync <= '0';
			else
				vsync <= '1';
			end if;

			hs <= hs + "0000000001" ;

			if (hs= "1100100000") then     --800
				vs <= vs + "0000000001";       
				hs <= "0000000000";
			end if;

			if (vs= "1000001101") then     --525            
				vs <= "0000000000";
			end if;
		end if;
	end process;
end Behavioral;

