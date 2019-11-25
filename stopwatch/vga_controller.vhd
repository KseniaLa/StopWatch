----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:06:04 11/26/2019 
-- Design Name: 
-- Module Name:    vga_controller - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_controller is
    Port ( CLK : in  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           red : out  STD_LOGIC;
           green : out  STD_LOGIC;
           blue : out  STD_LOGIC);
end vga_controller;

architecture Behavioral of vga_controller is
signal h_sync, v_sync: STD_LOGIC;
signal video_en, horizontal_en, vertical_en: STD_LOGIC;
signal red_signal, green_signal, blue_signal: STD_LOGIC;
signal h_cnt, v_cnt : STD_LOGIC_VECTOR(9 downto 0);
begin
	video_en <= horizontal_en AND vertical_en;
	red_signal <= '0';
	green_signal <= '1';
	blue_signal <= '0';
	
	process(CLK)
	begin
		if (rising_edge(CLK)) then
			if (h_cnt = 799) then
				h_cnt <= "0000000000";
			else
				h_cnt <= h_cnt + 1;
			end if;
			
			if ((h_cnt <= 755) and (h_cnt >= 659)) then
				h_sync <= '0';
			else
				h_sync <= '1';
			end if;
			
			if ((v_cnt >= 524) and (h_cnt >= 699)) then
				v_cnt <= "0000000000";
			elsif (h_cnt = 699) then
				v_cnt <= v_cnt + 1;
			end if;
			
			if ((v_cnt <= 494) and (v_cnt >= 493)) then
				v_sync <= '0';
			else
				v_sync <= '1';
			end if;
			
			if (h_cnt <= 639) then
				horizontal_en <= '1';
			else
				horizontal_en <= '0';
			end if;
			
			if (v_cnt <= 479) then
				vertical_en <= '1';
			else
				vertical_en <= '0';
			end if;
			
			red<= red_signal AND video_en;
			green<= green_signal AND video_en;
			blue<= blue_signal AND video_en;
			
			hsync<= h_sync;
			vsync<= v_sync;
		end if;		
	end process;
end Behavioral;