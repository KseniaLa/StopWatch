----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:37:44 12/01/2019 
-- Design Name: 
-- Module Name:    vga_test - Behavioral 
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
use ieee.std_logic_unsigned.all;

package vga_controller_type is
        type data_array is array(0 to 71) of integer;
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.vga_controller_type.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_test is

Port (
		   CLK : in  STD_LOGIC;
		h_sync :	out STD_LOGIC;
		v_sync :	out STD_LOGIC;
		   red : out STD_LOGIC_VECTOR (4 downto 0);
       green : out STD_LOGIC_VECTOR (5 downto 0);
        blue : out STD_LOGIC_VECTOR (4 downto 0));
		  
end vga_test;

architecture Behavioral of vga_test is
	
	component vga_controller
		PORT(
		pixel_clk	:	IN		STD_LOGIC;
		data        :  IN    data_array;
		h_sync		:	OUT	STD_LOGIC;
		v_sync		:	OUT	STD_LOGIC;
		red : out  STD_LOGIC_VECTOR (4 downto 0);
      green : out  STD_LOGIC_VECTOR (5 downto 0);
      blue : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
begin
	process(CLK)
	begin
	
	-- variable data : data_array := 0; --72 digits
	
	end process;
		
	 --u1: 
	 --u2:

end Behavioral;

