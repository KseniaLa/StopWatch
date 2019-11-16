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
		DataOut	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0)
	);
end memory;

architecture Behavioral of memory is

begin
	fifo_proc : process (CLK)
		type FIFO_Memory is array (0 to FIFO_DEPTH - 1) of STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		variable Memory : FIFO_Memory;
		
		variable ReadPtr : natural range 0 to FIFO_DEPTH - 1;
		variable WritePtr : natural range 0 to FIFO_DEPTH - 1;
		variable Full : boolean;
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				ReadPtr := 0;
				WritePtr := 0;
				Full := false;
			else
				if (ReadEn = '1') then
					if (ReadPtr /= WritePtr) then
						DataOut <= Memory(ReadPtr);
						
						if (ReadPtr = FIFO_DEPTH - 1) then
							ReadPtr := 0;
						else
							ReadPtr := ReadPtr + 1;
						end if;
					end if;
				end if;
				
				if (WriteEn = '1') then
						if (Full) then
							WritePtr := FIFO_DEPTH - 1;
							
							-- or ReadPtr := 0 ???
							if (ReadPtr > 0) then
								ReadPtr := ReadPtr - 1;
							end if;
							
							for ptr in 1 to FIFO_DEPTH - 1 loop
								Memory(ptr - 1) := Memory(ptr);
							end loop;
						end if;

						Memory(WritePtr) := DataIn;
						
						if (WritePtr = FIFO_DEPTH - 1) then
							Full := true;
						else
							WritePtr := WritePtr + 1;
						end if;

				end if;
				
			end if;
		end if;
	end process;
end Behavioral;

