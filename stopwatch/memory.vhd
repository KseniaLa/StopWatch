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
		DataOut	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		ReadEnd	: out STD_LOGIC;
		Empty	: out STD_LOGIC
	);
end memory;

architecture Behavioral of memory is

begin
	fifo_proc : process (CLK)
		type FIFO_Memory is array (0 to FIFO_DEPTH - 1) of STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		variable Memory : FIFO_Memory;
		
		variable ReadPtr : integer range -1 to FIFO_DEPTH - 1;
		variable WritePtr : natural range 0 to FIFO_DEPTH - 1;
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				ReadPtr := FIFO_DEPTH - 1;
				WritePtr := 0;
				
				ReadEnd <= '0';
			else
				if (ReadEn = '1') then
					DataOut <= Memory(ReadPtr);
					
					if (ReadPtr = 0) then
						ReadPtr := FIFO_DEPTH - 1;
						ReadEnd <= '1';
					else
						ReadPtr := ReadPtr - 1;
					end if;
				end if;
				
				if (WriteEn = '1') then
						for ptr in FIFO_DEPTH - 2 downto 0 loop
							Memory(ptr + 1) := Memory(ptr);
						end loop;

						Memory(WritePtr) := DataIn;
						ReadPtr := FIFO_DEPTH - 1;
				end if;
				
			end if;
		end if;
	end process;
end Behavioral;

