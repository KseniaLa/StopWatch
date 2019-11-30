--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:08:20 11/30/2019
-- Design Name:   
-- Module Name:   D:/github/POCP/StopWatch/stopwatch/timer_memory_tb.vhd
-- Project Name:  stopwatch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: timer_memory
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
 
ENTITY timer_memory_tb IS
END timer_memory_tb;
 
ARCHITECTURE behavior OF timer_memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT timer_memory
    PORT(
         CLK : IN  std_logic;
         start_button : IN  std_logic;
         stop_button : IN  std_logic;
         RST : IN  std_logic;
         save_button : IN  std_logic;
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
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal start_button : std_logic := '0';
   signal stop_button : std_logic := '0';
   signal RST : std_logic := '0';
   signal save_button : std_logic := '0';

 	--Outputs
   signal DataOut_timer	:  STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut1	: STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut2	: STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut3	: STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut4	: STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut5	: STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut6	: STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut7	: STD_LOGIC_VECTOR (31 downto 0);
	signal DataOut8	: STD_LOGIC_VECTOR (31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity Work.timer_memory (Behavioral)
	PORT MAP (
          CLK => CLK,
          start_button => start_button,
          stop_button => stop_button,
          RST => RST,
          save_button => save_button,
          DataOut_timer => DataOut_timer,
			 DataOut1 => DataOut1,
			 DataOut2 => DataOut2,
			 DataOut3 => DataOut3,
			 DataOut4 => DataOut4,
			 DataOut5 => DataOut5,
			 DataOut6 => DataOut6,
			 DataOut7 => DataOut7,
			 DataOut8 => DataOut8
        );
		  
 CLK <= not CLK after 10 ns;

 process
	begin
		wait for 10 ms;
		start_button <= '1';
		wait for 100 ms;
		save_button <= '1';
		wait for 10 ms;
		save_button <= '0';
	end process;
	

END;
