----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:05:40 12/01/2019 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity main is
    Port ( CLK : in  STD_LOGIC;
			  RST : in  STD_LOGIC;
           start_button : in  STD_LOGIC;
           stop_button : in  STD_LOGIC;
           save_button : in  STD_LOGIC;
           h_sync : out  STD_LOGIC;
           v_sync : out  STD_LOGIC;
           red : out  STD_LOGIC_VECTOR (4 downto 0);
           green : out  STD_LOGIC_VECTOR (5 downto 0);
           blue : out  STD_LOGIC_VECTOR (4 downto 0));
end main;

architecture Behavioral of main is

function get_digit_of_vector(
	vect : in std_logic_vector(3 downto 0))
	return integer is
	variable digit : integer;
	begin
	case (vect) is
		when "0000" =>
			return 0;
		when "0001" =>
			return 1;
		when "0010" =>
			return 2;
		when "0011" =>
			return 3;
		when "0100" =>
			return 4;
		when "0101" =>
			return 5;
		when "0110" =>
			return 6;
		when "0111" =>
			return 7;
		when "1000" =>
			return 8;
		when "1001" =>
			return 9;
		when others =>
			return 0;
	end case;	
	end function get_digit_of_vector;

function get_parameter(
		param : in integer;
		DataIn : in std_logic_vector(31 downto 0))
		return integer is
		variable digit : integer;
	begin
		case (param) is
			when 0 =>
				return get_digit_of_vector(DataIn(31 downto 28));
			when 1 =>
				return get_digit_of_vector(DataIn(27 downto 24));
			when 2 =>
				return get_digit_of_vector(DataIn(23 downto 20));
			when 3 =>
				return get_digit_of_vector(DataIn(19 downto 16));
			when 4 =>
				return get_digit_of_vector(DataIn(15 downto 12));
			when 5 =>
				return get_digit_of_vector(DataIn(11 downto 8));
			when 6 =>
				return get_digit_of_vector(DataIn(7 downto 4));
			when 7 =>
				return get_digit_of_vector(DataIn(3 downto 0));
			when others =>
				return get_digit_of_vector("0001");
		end case;	
	end get_parameter;
	
component timer_memory
    Port ( CLK : in  STD_LOGIC;
			  start_button : in  STD_LOGIC;
			  stop_button : in STD_LOGIC;
			  RST : in  STD_LOGIC;
           save_button : in  STD_LOGIC;
			  DataOut_timer	: out STD_LOGIC_VECTOR (31 downto 0);
			  DataOut1	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut2	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut3	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut4	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut5	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut6	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut7	: out STD_LOGIC_VECTOR (31 downto 0);
				DataOut8	: out STD_LOGIC_VECTOR (31 downto 0)
           );
end component;

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

--type data_array is array(0 to 71) of integer;
signal digits_array: data_array;
signal DataOut_timer, DataOut1, DataOut2, DataOut3, DataOut4, DataOut5, DataOut6, DataOut7, DataOut8 : STD_LOGIC_VECTOR (31 downto 0);

begin

process(DataOut_timer)
variable index : integer := 0;
variable DataIn : std_logic_vector(31 downto 0);
	begin
		for i in 0 to 8 loop
	
			case (i) is
				when 0 =>
					DataIn := DataOut_timer;
				when 1 =>
					DataIn := DataOut1;
				when 2 =>
					DataIn := DataOut2;
				when 3 =>
					DataIn := DataOut3;
				when 4 =>
					DataIn := DataOut4;
				when 5 =>
					DataIn := DataOut5;
				when 6 =>
					DataIn := DataOut6;
				when 7 =>
					DataIn := DataOut7;
				when 8 =>
					DataIn := DataOut8;
				when others => 
					DataIn := DataOut8;
			end case;
			
			for y in 0 to 7 loop
				digits_array(index) <= get_parameter(y, DataIn);
				index := index + 1;
			end loop;
			
		end loop;
		
		index := 0;
	end process;
	
g1 : timer_memory port map (CLK, start_button, stop_button, RST, save_button, DataOut_timer, DataOut1, DataOut2,
		DataOut3, DataOut4, DataOut5, DataOut6, DataOut7, DataOut8);
g2 : vga_controller port map(CLK, digits_array, h_sync, v_sync, red, green, blue);

end Behavioral;