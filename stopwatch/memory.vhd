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
		Position	: out integer
	);
end memory;

architecture Behavioral of memory is
type FIFO_Memory is array (0 to FIFO_DEPTH - 1) of STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		signal Memory : FIFO_Memory := (others => (others => '0'));
		
		signal ReadPtr : integer range -1 to FIFO_DEPTH - 1 := -1;
		signal WritePtr : natural range 0 to FIFO_DEPTH - 1;
		signal ReadPtrMax : integer range -1 to FIFO_DEPTH - 1;

begin
	fifo_proc : process (CLK)
			begin
		if rising_edge(CLK) then
			if RST = '1' then
				ReadPtr <= -1;
				ReadPtrMax <= -1;
				WritePtr <= 0;
				
				ReadEnd <= '0';
			else
				if (ReadEn = '1' and WriteEn = '0') then
					if ((ReadPtr <= ReadPtrMax) and (ReadPtrMax > -1)) then
						DataOut <= Memory(ReadPtr);
						Position <= ReadPtr;
						ReadPtr <= ReadPtr + 1;
					else
						if (ReadPtr > 0) then
							ReadPtr <= 0;
						end if;
						ReadEnd <= '1';
					end if;
				end if;
				
				if (WriteEn = '1' and ReadEn = '0') then
						for ptr in FIFO_DEPTH - 2 downto 0 loop
							Memory(ptr + 1) <= Memory(ptr);
						end loop;

						Memory(WritePtr) <= DataIn;
						if (ReadPtrMax < FIFO_DEPTH - 1) then
							ReadPtrMax <= ReadPtrMax + 1;
						end if;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

