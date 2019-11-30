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

ENTITY vga_controller IS
	GENERIC(
		h_pulse 	:	INTEGER := 120;
		h_bp	 	:	INTEGER := 64;
		h_pixels	:	INTEGER := 800;
		h_fp	 	:	INTEGER := 56;	
		h_pol		:	STD_LOGIC := '0';
		v_pulse 	:	INTEGER := 6;
		v_bp	 	:	INTEGER := 23;
		v_pixels	:	INTEGER := 600;
		v_fp	 	:	INTEGER := 37;
		v_pol		:	STD_LOGIC := '1');
	PORT(
		pixel_clk	:	IN		STD_LOGIC;
		h_sync		:	OUT	STD_LOGIC;
		v_sync		:	OUT	STD_LOGIC;
		red : out  STD_LOGIC_VECTOR (4 downto 0);
      green : out  STD_LOGIC_VECTOR (5 downto 0);
      blue : out  STD_LOGIC_VECTOR (4 downto 0));
END vga_controller;

ARCHITECTURE behavior OF vga_controller IS
	CONSTANT	h_period	:	INTEGER := h_pulse + h_bp + h_pixels + h_fp;
	CONSTANT	v_period	:	INTEGER := v_pulse + v_bp + v_pixels + v_fp;
BEGIN

	PROCESS(pixel_clk)
		VARIABLE h_count	:	INTEGER RANGE 0 TO h_period - 1 := 0;
		VARIABLE v_count	:	INTEGER RANGE 0 TO v_period - 1 := 0;
	BEGIN
	
		IF(pixel_clk'EVENT AND pixel_clk = '1') THEN
			IF(h_count < h_period - 1) THEN
				h_count := h_count + 1;
			ELSE
				h_count := 0;
				IF(v_count < v_period - 1) THEN	
					v_count := v_count + 1;
				ELSE
					v_count := 0;
				END IF;
			END IF;

			IF(h_count < h_pixels + h_fp OR h_count >= h_pixels + h_fp + h_pulse) THEN
				h_sync <= '1';--NOT h_pol;		
			ELSE
				h_sync <= '0';--h_pol;			
			END IF;
			
			IF(v_count < v_pixels + v_fp OR v_count >= v_pixels + v_fp + v_pulse) THEN
				v_sync <= '1';--NOT v_pol;		
			ELSE
				v_sync <= '0';--v_pol;			
			END IF;
			
			if (h_count > h_pixels + h_fp) then
				red <= "00000";
				green <= "000000";
				blue <= "00000";
			else
				if (((h_count > 19) and (h_count < 28)) and ((v_count > 19) and (v_count < 36))) then
					if (((h_count >=22)  and (h_count <= 25) and (v_count >=22)  and (v_count <= 26)) or 
					   ((h_count >=22)  and (h_count <= 25) and (v_count >=29)  and (v_count <= 33))) then
						red <= "00000";
						green <= "011111";
						blue <= "00000";
					else
						red <= "11111";
						green <= "000000";
						blue <= "00000";
					end if;
				else
					red <= "00000";
					green <= "011111";
					blue <= "00000";
				end if;
			end if;
		END IF;
	END PROCESS;

END behavior;