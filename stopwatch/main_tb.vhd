--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:31:40 12/01/2019
-- Design Name:   
-- Module Name:   D:/github/POCP/StopWatch/stopwatch/main_tb.vhd
-- Project Name:  stopwatch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
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
 
ENTITY main_tb IS
END main_tb;
 
ARCHITECTURE behavior OF main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         start_button : IN  std_logic;
         stop_button : IN  std_logic;
         save_button : IN  std_logic;
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         red : OUT  std_logic_vector(4 downto 0);
         green : OUT  std_logic_vector(5 downto 0);
         blue : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal start_button : std_logic := '0';
   signal stop_button : std_logic := '0';
   signal save_button : std_logic := '0';

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal red : std_logic_vector(4 downto 0);
   signal green : std_logic_vector(5 downto 0);
   signal blue : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity Work.main (Behavioral)
		PORT MAP (
          CLK => CLK,
          RST => RST,
          start_button => start_button,
          stop_button => stop_button,
          save_button => save_button,
          hsync => hsync,
          vsync => vsync,
          red => red,
          green => green,
          blue => blue
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
