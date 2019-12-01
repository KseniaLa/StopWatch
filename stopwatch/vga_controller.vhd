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
		data        :  IN    data_array;
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
		variable h_min : integer := 0; --for square
		variable h_max : integer := 0; --for square
		variable v_min : integer := 0; --for square
		variable v_max : integer := 0; --for square
		variable col : integer := 0; --for array pos
		variable row : integer := 0; --for array pos
		variable data_pos : integer := 0;
		variable curr_digit: integer := 0;
		
		variable h_sq11 : integer := 0;
		variable h_sq12 : integer := 0;
		variable h_sq21 : integer := 0;
		variable h_sq22 : integer := 0;
		
		variable v_sq11 : integer := 0;
		variable v_sq12 : integer := 0;
		variable v_sq21 : integer := 0;
		variable v_sq22 : integer := 0;
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
			
			if ((h_count > 2) and (h_count < 3)) then -- 1
				col := 0;
			elsif ((h_count > 2) and (h_count < 3)) then -- 2
				col := 1;
			elsif ((h_count > 2) and (h_count < 3)) then -- 3
				col := 2;
			elsif ((h_count > 2) and (h_count < 3)) then -- 4
				col := 3;
			elsif ((h_count > 2) and (h_count < 3)) then -- 5
				col := 4;
			elsif ((h_count > 2) and (h_count < 3)) then -- 6
				col := 5;
			elsif ((h_count > 2) and (h_count < 3)) then -- 7
				col := 6;
			elsif ((h_count > 2) and (h_count < 3)) then -- 8
				col := 7;
			else
				col := 0;
			end if;
			
			if ((v_count > 2) and (v_count < 3)) then
				row := 0;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 1;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 2;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 3;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 4;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 5;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 6;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 7;
			elsif ((v_count > 2) and (v_count < 3)) then
				row := 8;
			else
				row := 0;
			end if;
			
			data_pos := 8 * row + col; --??????????????????????
			curr_digit := data(data_pos);
			
			-- here!
			
			if (h_count > h_pixels + h_fp) then
				red <= "00000";
				green <= "000000";
				blue <= "00000";
			else
				if (((h_count > h_min) and (h_count < h_max)) and ((v_count > v_min) and (v_count < v_max))) then
					if (((h_count >= h_sq11)  and (h_count <= h_sq12) and (v_count >= v_sq11)  and (v_count <= v_sq12)) or 
					   ((h_count >= h_sq21)  and (h_count <= h_sq22) and (v_count >= v_sq21)  and (v_count <= v_sq22))) then
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