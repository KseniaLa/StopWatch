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
         h2_timer : OUT  integer;
         h1_timer : OUT  integer;
         m2_timer : OUT  integer;
         m1_timer : OUT  integer;
         s2_timer : OUT  integer;
         s1_timer : OUT  integer;
         ms2_timer : OUT  integer;
         ms1_timer : OUT  integer;
         h2_mem : OUT  integer;
         h1_mem : OUT  integer;
         m2_mem : OUT  integer;
         m1_mem : OUT  integer;
         s2_mem : OUT  integer;
         s1_mem : OUT  integer;
         ms2_mem : OUT  integer;
         ms1_mem : OUT  integer;
         mem_position : OUT  integer
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal start_button : std_logic := '0';
   signal stop_button : std_logic := '0';
   signal RST : std_logic := '0';
   signal save_button : std_logic := '0';

 	--Outputs
   signal h2_timer : integer;
   signal h1_timer : integer;
   signal m2_timer : integer;
   signal m1_timer : integer;
   signal s2_timer : integer;
   signal s1_timer : integer;
   signal ms2_timer : integer;
   signal ms1_timer : integer;
   signal h2_mem : integer;
   signal h1_mem : integer;
   signal m2_mem : integer;
   signal m1_mem : integer;
   signal s2_mem : integer;
   signal s1_mem : integer;
   signal ms2_mem : integer;
   signal ms1_mem : integer;
   signal mem_position : integer;

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
          h2_timer => h2_timer,
          h1_timer => h1_timer,
          m2_timer => m2_timer,
          m1_timer => m1_timer,
          s2_timer => s2_timer,
          s1_timer => s1_timer,
          ms2_timer => ms2_timer,
          ms1_timer => ms1_timer,
          h2_mem => h2_mem,
          h1_mem => h1_mem,
          m2_mem => m2_mem,
          m1_mem => m1_mem,
          s2_mem => s2_mem,
          s1_mem => s1_mem,
          ms2_mem => ms2_mem,
          ms1_mem => ms1_mem,
          mem_position => mem_position
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
