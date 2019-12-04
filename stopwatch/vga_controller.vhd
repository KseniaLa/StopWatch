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

--package vga_controller_type is
--        type data_array is array(0 to 71) of integer;
--end package;

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
END vga_controller;

ARCHITECTURE behavior OF vga_controller IS
	signal clk25 : std_logic;
	CONSTANT	h_period	:	INTEGER := h_pulse + h_bp + h_pixels + h_fp;
	CONSTANT	v_period	:	INTEGER := v_pulse + v_bp + v_pixels + v_fp;
BEGIN

		process (pixel_clk)
		begin
			if (rising_edge(pixel_clk)) then
				if (clk25 = '0') then              
					clk25 <= '1';
				else
					clk25 <= '0';
				end if;
			end if;
		end process;

	PROCESS(clk25)
	--PROCESS(pixel_clk)
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
	
		IF(clk25'EVENT AND clk25 = '1') THEN
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
			
			
			-- red rectangle 
			if ((h_count >= 20) and (h_count < 28)) then -- 1
				col := 0;
				h_min := 20;
				h_max := 27;
			elsif ((h_count >= 32) and (h_count < 40)) then -- 2
				col := 1;
				h_min := 32;
				h_max := 39;
			elsif ((h_count >= 44) and (h_count < 52)) then -- 3
				col := 2;
				h_min := 44;
				h_max := 51;
			elsif ((h_count >= 56) and (h_count < 64)) then -- 4
				col := 3;
				h_min := 56;
				h_max := 63;
			elsif ((h_count >= 68) and (h_count < 76)) then -- 5
				col := 4;
				h_min := 68;
				h_max := 75;
			elsif ((h_count >= 80) and (h_count < 88)) then -- 6
				col := 5;
				h_min := 80;
				h_max := 87;
			elsif ((h_count >= 92) and (h_count < 100)) then -- 7
				col := 6;
				h_min := 92;
				h_max := 99;
			elsif ((h_count >= 104) and (h_count < 112)) then -- 8
				col := 7;
				h_min := 104;
				h_max := 111;
			else
				col := 0;
				h_min := 0;
				h_max := 0;
			end if;
			
			if ((v_count >= 20) and (v_count < 36)) then
				row := 0;				
				v_min := 20; --for red square
				v_max := 36; 
			elsif ((v_count >= 52) and (v_count < 68)) then
				row := 1;
				v_min := 52; 
				v_max := 67;
			elsif ((v_count >= 76) and (v_count < 92)) then
				row := 2;
				v_min := 76; 
				v_max := 91;
			elsif ((v_count >= 100) and (v_count < 116)) then
				row := 3;
				v_min := 100; 
				v_max := 115;
			elsif ((v_count >= 124) and (v_count < 140)) then
				row := 4;
				v_min := 124; 
				v_max := 139;
			elsif ((v_count >= 148) and (v_count < 164)) then
				row := 5;
				v_min := 148; 
				v_max := 163;
			elsif ((v_count >= 172) and (v_count < 188)) then
				row := 6;
				v_min := 172; 
				v_max := 187;
			elsif ((v_count >= 196) and (v_count < 212)) then
				row := 7;
				v_min := 196; 
				v_max := 211;
			elsif ((v_count >= 220) and (v_count < 236)) then
				row := 8;
				v_min := 220; 
				v_max := 235;
			else
				row := 0;
				v_min := 0; 
				v_max := 0;
			end if;
			
			data_pos := 8 * row + col; 
			curr_digit := data(data_pos);
			
		-- choose green rects coordinates
		
		case curr_digit is
			when 1 =>
				h_sq11 := 0; -- top left (x; y) 
				v_sq11 := 0;
				
				h_sq12 := 6; -- bottom right (x; y)
				v_sq12 := 6;
				
				h_sq21 := 0; -- top left(x; y)
				v_sq21 := 7;
				
				h_sq22 := 6; -- bottom right (x; y)
				v_sq22 := 15;
			when 2 =>
				h_sq11 := 0; 
				v_sq11 := 1;
				
				h_sq12 := 6; 
				v_sq12 := 6;
				
				h_sq21 := 1; 
				v_sq21 := 8;
				
				h_sq22 := 7; 
				v_sq22 := 14;
			when 3 =>
				h_sq11 := 0; 
				v_sq11 := 1;
				
				h_sq12 := 6; 
				v_sq12 := 6;
				
				h_sq21 := 0; 
				v_sq21 := 8;
				
				h_sq22 := 6; 
				v_sq22 := 14;				
			when 4 =>
				h_sq11 := 1; 
				v_sq11 := 0;
				
				h_sq12 := 6; 
				v_sq12 := 6;
				
				h_sq21 := 0;
				v_sq21 := 8;
				
				h_sq22 := 6; 
				v_sq22 := 15;				
			when 5 =>
				h_sq11 := 1; 
				v_sq11 := 1;
				
				h_sq12 := 7; 
				v_sq12 := 6;
				
				h_sq21 := 0;
				v_sq21 := 8;
				
				h_sq22 := 6;
				v_sq22 := 14;				
			when 6 =>
				h_sq11 := 1;
				v_sq11 := 1;
				
				h_sq12 := 7;
				v_sq12 := 6;
				
				h_sq21 := 1;
				v_sq21 := 8;
				
				h_sq22 := 6;
				v_sq22 := 14;				
			when 7 =>
				h_sq11 := 0;
				v_sq11 := 1;
				
				h_sq12 := 6;
				v_sq12 := 6;
				
				h_sq21 := 0;
				v_sq21 := 7;
				
				h_sq22 := 6;
				v_sq22 := 15;				
			when 8 =>
				h_sq11 := 1; 
				v_sq11 := 1;
				
				h_sq12 := 6;
				v_sq12 := 6;
				
				h_sq21 := 1;
				v_sq21 := 8;
				
				h_sq22 := 6;
				v_sq22 := 14;				
			when 9 =>
				h_sq11 := 1;
				v_sq11 := 1;
				
				h_sq12 := 6;
				v_sq12 := 6;
				
				h_sq21 := 0;
				v_sq21 := 8;
				
				h_sq22 := 6;
				v_sq22 := 14;				
			when 0 =>
				h_sq11 := 1;
				v_sq11 := 1;
				
				h_sq12 := 6;
				v_sq12 := 6;
				
				h_sq21 := 1;
				v_sq21 := 7;
				
				h_sq22 := 6;
				v_sq22 := 14;
			when others => 
				h_sq11 := 0;
				v_sq11 := 0;
				
				h_sq12 := 0;
				v_sq12 := 0;
				
				h_sq21 := 0;
				v_sq21 := 0;
				
				h_sq22 := 0;
				v_sq22 := 0;
		end case;


			if (h_count > h_pixels + h_fp) then
				red <= "00000";
				green <= "000000";
				blue <= "00000";
			else
				if (((h_count >= h_min) and (h_count <= h_max)) and ((v_count >= v_min) and (v_count <= v_max))) then
					if (((h_count >= h_min + h_sq11)  and (h_count <= h_min + h_sq12) and (v_count >= v_min + v_sq11)  and (v_count <= v_min + v_sq12)) or 
					   ((h_count >= h_min + h_sq21)  and (h_count <= h_min + h_sq22) and (v_count >= v_min + v_sq21)  and (v_count <= v_min + v_sq22))) then
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