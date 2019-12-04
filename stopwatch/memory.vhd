----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:42 11/14/2019 
-- Design Name: 
-- Module Name:    memory - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory is
	Generic (
		constant DATA_WIDTH  : positive := 32;
		constant FIFO_DEPTH	: positive := 8
	);
	Port ( 
		CLK		: in  STD_LOGIC;
		RST		: in  STD_LOGIC;
		WriteEn	: in  STD_LOGIC;
		DataIn	: in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		ReadEn	: in  STD_LOGIC;
		DataOut1	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut2	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut3	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut4	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut5	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut6	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut7	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		DataOut8	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0)
	);
end memory;

architecture Behavioral of memory is
type FIFO_Memory is array (0 to FIFO_DEPTH - 1) of STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		signal Memory : FIFO_Memory := (others => (others => '0'));
		signal WritePtr : natural range 0 to FIFO_DEPTH - 1;

begin
	fifo_proc : process (WriteEn, RST)
			begin
			if(rising_edge(CLK)) then
				if RST = '1' then
					WritePtr <= 0;
					DataOut1 <= "00000000000000000000000000000000";
					DataOut2 <= "00000000000000000000000000000000";
					DataOut3 <= "00000000000000000000000000000000";
					DataOut4 <= "00000000000000000000000000000000";
					DataOut5 <= "00000000000000000000000000000000";
					DataOut6 <= "00000000000000000000000000000000";
					DataOut7 <= "00000000000000000000000000000000";
					DataOut8 <= "00000000000000000000000000000000";
				else
					if (ReadEn = '1' and WriteEn = '0') then
						DataOut1 <= Memory(0);
						DataOut2 <= Memory(1);
						DataOut3 <= Memory(2);
						DataOut4 <= Memory(3);
						DataOut5 <= Memory(4);
						DataOut6 <= Memory(5);
						DataOut7 <= Memory(6);
						DataOut8 <= Memory(7);
					end if;
					
					if (WriteEn = '1' and ReadEn = '0') then
						for ptr in FIFO_DEPTH - 2 downto 0 loop
							Memory(ptr + 1) <= Memory(ptr);
						end loop;

						Memory(WritePtr) <= DataIn;
					end if;
				end if;
			end if;
	end process;
end Behavioral;

