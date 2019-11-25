--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:52:35 11/25/2019
-- Design Name:   
-- Module Name:   D:/github/POCP/StopWatch/stopwatch/stopwatch7seg_tb.vhd
-- Project Name:  stopwatch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: stopwatch7seg
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
 
ENTITY stopwatch7seg_tb IS
END stopwatch7seg_tb;
 
ARCHITECTURE behavior OF stopwatch7seg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT stopwatch7seg
    PORT(
         start_stop_button : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         anode : OUT  std_logic_vector(7 downto 0);
         cathode : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal start_stop_button : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal anode : std_logic_vector(7 downto 0);
   signal cathode : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
 uut: entity Work.stopwatch7seg(Behavioral)
	PORT MAP(
		start_stop_button,
      CLK,
      RST,
      anode,
      cathode
	);
	
	CLK <= not CLK after 1 ns;
	start_stop_button <= '1' after 1 ns when start_stop_button = '0' else '0' after 1 ns;
	

END;
