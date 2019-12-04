----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:43:00 12/04/2019 
-- Design Name: 
-- Module Name:    test_timer - Behavioral 
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
use ieee.std_logic_unsigned.all;

--package vga_controller_type is
--        type data_array is array(0 to 71) of integer;
--end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.vga_controller_type.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_timer is
    Port ( CLK : in  STD_LOGIC;
           h_sync : out  STD_LOGIC;
           v_sync : out  STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (4 downto 0);
           green : out  STD_LOGIC_VECTOR (5 downto 0);
           blue : out  STD_LOGIC_VECTOR (4 downto 0));
end test_timer;

architecture Behavioral of test_timer is

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
	
	
component timer_for_test
Port (
			CLK : in STD_LOGIC;
			h2_out : out integer;
			h1_out: out integer;
			m2_out : out integer;
			m1_out : out integer;
			s2_out : out integer;
			s1_out : out integer;
			ms2_out : out integer;
			ms1_out : out integer);
end component;
	

--type data_array is array(0 to 71) of integer;
signal digits_array: data_array;
signal DataOut_timer, DataOut1, DataOut2, DataOut3, DataOut4, DataOut5, DataOut6, DataOut7, DataOut8 : STD_LOGIC_VECTOR (31 downto 0);
signal dig : integer:=0;
signal count2 : std_logic_vector (16 downto 0):="00000000000000000";
signal h2_out,h1_out,  m2_out, m1_out, s2_out, s1_out,ms2_out,ms1_out : integer :=0;
begin

clk1 : process (CLK) 
	begin
		if (rising_edge(CLK)) then
			if count2 = "11000011010100000" then 
				digits_array(0) <= h2_out;
				digits_array(1) <= h1_out;
				digits_array(2) <= m2_out;
				digits_array(3) <= m1_out;
				digits_array(4) <= s2_out;
				digits_array(5) <= s1_out;
				digits_array(6) <= ms2_out;
				digits_array(7) <= ms1_out;
				
				for i in 8 to 71 loop
					digits_array(i) <= 0;
				end loop;
				count2 <= "00000000000000000";
			end if;
			count2 <= std_logic_vector( unsigned(count2) + 1 );
		end if;
	end process;
	
	
g1 : timer_for_test port map (CLK,  h2_out,h1_out,  m2_out, m1_out, s2_out, s1_out, ms2_out, ms1_out);
g2 : vga_controller port map(CLK, digits_array, h_sync, v_sync, red, green, blue);


end Behavioral;

