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
		h_pulse 	:	INTEGER := 120;    	--horiztonal sync pulse width in pixels
		h_bp	 	:	INTEGER := 64;		--horiztonal back porch width in pixels
		h_pixels	:	INTEGER := 800;		--horiztonal display width in pixels
		h_fp	 	:	INTEGER := 56;		--horiztonal front porch width in pixels
		h_pol		:	STD_LOGIC := '0';		--horizontal sync pulse polarity (1 = positive, 0 = negative)
		v_pulse 	:	INTEGER := 6;			--vertical sync pulse width in rows
		v_bp	 	:	INTEGER := 23;			--vertical back porch width in rows
		v_pixels	:	INTEGER := 600;		--vertical display width in rows
		v_fp	 	:	INTEGER := 37;			--vertical front porch width in rows
		v_pol		:	STD_LOGIC := '1');	--vertical sync pulse polarity (1 = positive, 0 = negative)
	PORT(
		pixel_clk	:	IN		STD_LOGIC;	--pixel clock at frequency of VGA mode being used
		h_sync		:	OUT	STD_LOGIC;	--horiztonal sync pulse
		v_sync		:	OUT	STD_LOGIC;	--vertical sync pulse
		red : out  STD_LOGIC_VECTOR (4 downto 0);
      green : out  STD_LOGIC_VECTOR (5 downto 0);
      blue : out  STD_LOGIC_VECTOR (4 downto 0));
END vga_controller;

ARCHITECTURE behavior OF vga_controller IS
	CONSTANT	h_period	:	INTEGER := h_pulse + h_bp + h_pixels + h_fp;  --total number of pixel clocks in a row
	CONSTANT	v_period	:	INTEGER := v_pulse + v_bp + v_pixels + v_fp;  --total number of rows in column
BEGIN

	PROCESS(pixel_clk)
		VARIABLE h_count	:	INTEGER RANGE 0 TO h_period - 1 := 0;  --horizontal counter (counts the columns)
		VARIABLE v_count	:	INTEGER RANGE 0 TO v_period - 1 := 0;  --vertical counter (counts the rows)
	BEGIN
	
		IF(pixel_clk'EVENT AND pixel_clk = '1') THEN

			--counters
			IF(h_count < h_period - 1) THEN		--horizontal counter (pixels)
				h_count := h_count + 1;
			ELSE
				h_count := 0;
				IF(v_count < v_period - 1) THEN	--veritcal counter (rows)
					v_count := v_count + 1;
				ELSE
					v_count := 0;
				END IF;
			END IF;

			--horizontal sync signal
			IF(h_count < h_pixels + h_fp OR h_count >= h_pixels + h_fp + h_pulse) THEN
				h_sync <= NOT h_pol;		--deassert horiztonal sync pulse
			ELSE
				h_sync <= h_pol;			--assert horiztonal sync pulse
			END IF;
			
			--vertical sync signal
			IF(v_count < v_pixels + v_fp OR v_count >= v_pixels + v_fp + v_pulse) THEN
				v_sync <= NOT v_pol;		--deassert vertical sync pulse
			ELSE
				v_sync <= v_pol;			--assert vertical sync pulse
			END IF;
			
			if (h_count > h_pixels + h_fp) then
				red <= "00000";
				green <= "000000";
				blue <= "00000";
			else
				red <= "00000";
				green <= "011111";
				blue <= "00000";
			end if;

		END IF;
	END PROCESS;

END behavior;