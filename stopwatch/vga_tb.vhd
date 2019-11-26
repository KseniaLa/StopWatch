--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:35:10 11/26/2019
-- Design Name:   
-- Module Name:   C:/GitHub/StopWatch/stopwatch/vga_tb.vhd
-- Project Name:  stopwatch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga
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
 
ENTITY vga_tb IS
END vga_tb;
 
ARCHITECTURE behavior OF vga_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga
    PORT(
         CLK : IN  std_logic;
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         red : OUT  std_logic;
         green : OUT  std_logic;
         blue : OUT  std_logic
        );
    END COMPONENT;
    
	constant ClockFrequency : integer := 50e6; -- 50 MHz
   constant ClockPeriod    : time    := 1000 ms / ClockFrequency;

   --Inputs
   signal CLK : std_logic := '0';

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal red : std_logic;
   signal green : std_logic;
   signal blue : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga PORT MAP (
          CLK => CLK,
          hsync => hsync,
          vsync => vsync,
          red => red,
          green => green,
          blue => blue
        );

   CLK <= not CLK after ClockPeriod / 2;

END;
