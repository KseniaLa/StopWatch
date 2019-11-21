--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:55:11 11/21/2019
-- Design Name:   
-- Module Name:   D:/github/POCP/StopWatch/stopwatch/memory_write_tb.vhd
-- Project Name:  stopwatch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memory
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY memory_write_tb IS
Generic (
		constant DATA_WIDTH  : positive := 32;
		constant FIFO_DEPTH	: positive := 8
	);
END memory_write_tb;
 
ARCHITECTURE behavior OF memory_write_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memory
	 Generic (
		constant DATA_WIDTH  : positive := 32;
		constant FIFO_DEPTH	: positive := 8
	);
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         WriteEn : IN  std_logic;
         DataIn : IN  std_logic_vector(DATA_WIDTH - 1 downto 0);
         ReadEn : IN  std_logic;
         DataOut : OUT  std_logic_vector(DATA_WIDTH - 1 downto 0);
         ReadEnd : OUT  std_logic;
         Empty : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal WriteEn : std_logic := '0';
   signal DataIn : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
   signal ReadEn : std_logic := '0';

 	--Outputs
   signal DataOut : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal ReadEnd : std_logic;
   signal Empty : std_logic;
	
	signal x : std_logic := '1';

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity Work.memory(Behavioral)
	PORT MAP (
          CLK => CLK,
          RST => RST,
          WriteEn => WriteEn,
          DataIn => DataIn,
          ReadEn => ReadEn,
          DataOut => DataOut,
          ReadEnd => ReadEnd,
          Empty => Empty
        );
		  
  simulate: process
	begin	
		wait for 2 * clock_period;
		for i in DataIn'length-2 downto 0 loop
			DataIn(i + 1) <= DataIn(i);
		end loop;	
		DataIn(0) <= x;
	end process;
	
	CLK <= not CLK after clock_period;
	x <= not x after 64 * clock_period;
	WriteEn <= not WriteEn after clock_period;
	ReadEn <= not ReadEn after clock_period;
END;
