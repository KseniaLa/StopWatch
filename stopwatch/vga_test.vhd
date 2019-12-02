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
	
		GENERIC(
		h_pulse 	:	INTEGER := 96;
		h_bp	 	:	INTEGER := 48;
		h_pixels	:	INTEGER := 640;
		h_fp	 	:	INTEGER := 16;	
		h_pol		:	STD_LOGIC := '0';
		v_pulse 	:	INTEGER := 2;
		v_bp	 	:	INTEGER := 60;
		v_pixels	:	INTEGER := 350;
		v_fp	 	:	INTEGER := 37;
		v_pol		:	STD_LOGIC := '1');
		
		PORT(
		pixel_clk	:	IN		STD_LOGIC;
		data        :  IN    data_array;
		h_sync		:	OUT	STD_LOGIC;
		v_sync		:	OUT	STD_LOGIC;
		red : out  STD_LOGIC_VECTOR (4 downto 0);
      green : out  STD_LOGIC_VECTOR (5 downto 0);
      blue : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
	CONSTANT digits : data_array := (
		1, 2, 3, 4, 5, 6, 7, 8,
		2, 3, 4, 5, 6, 7, 8, 9,
		3, 4, 5, 6, 7, 8, 9, 0,
		4, 5, 6, 7, 8, 9, 0, 1,
		5, 6, 7, 8, 9, 0, 1, 2,
		6, 7, 8, 9, 0, 1, 2, 3,
		7, 8, 9, 0, 1, 2, 3, 4,
		8, 9, 0, 1, 2, 3, 4, 5,
		9, 0, 1, 2, 3, 4, 5, 6);
		
begin
		 
	 u1: vga_controller port map(pixel_clk => CLK, data => digits, 
										  h_sync => h_sync, v_sync => v_sync, 
										  red => red, green => green, blue => blue);
	 
end Behavioral;

