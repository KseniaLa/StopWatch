--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:10:25 11/27/2019
-- Design Name:   
-- Module Name:   C:/GitHub/StopWatch/stopwatch/vga_controller_tb.vhd
-- Project Name:  stopwatch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_controller
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
 
ENTITY vga_controller_tb IS
END vga_controller_tb;
 
ARCHITECTURE behavior OF vga_controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_controller
    PORT(
         pixel_clk : IN  std_logic;
         h_sync : OUT  std_logic;
         v_sync : OUT  std_logic;
         red : OUT  std_logic_vector(4 downto 0);
         green : OUT  std_logic_vector(5 downto 0);
         blue : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    
	 
	constant ClockFrequency : integer := 50e6; -- 50 MHz
   constant ClockPeriod    : time    := 1000 ms / ClockFrequency;

   --Inputs
   signal pixel_clk : std_logic := '0';

 	--Outputs
   signal h_sync : std_logic;
   signal v_sync : std_logic;
   signal red : std_logic_vector(4 downto 0);
   signal green : std_logic_vector(5 downto 0);
   signal blue : std_logic_vector(4 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_controller PORT MAP (
          pixel_clk => pixel_clk,
          h_sync => h_sync,
          v_sync => v_sync,
          red => red,
          green => green,
          blue => blue
        );

   pixel_clk <= not pixel_clk after ClockPeriod / 2;
	
END;
