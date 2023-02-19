--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:05:39 11/26/2022
-- Design Name:   
-- Module Name:   C:/Users/ayroz/Desktop/four/shift_right/shift_right_ex3/testbench.vhd
-- Project Name:  shift_right_ex3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_right_ex3
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
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_right_ex3
    PORT(
         diff : IN  std_logic_vector(2 downto 0);
         str : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal diff : std_logic_vector(2 downto 0) := (others => '0');
   signal str : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_right_ex3 PORT MAP (
          diff => diff,
          str => str,
          output => output
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		str <= "01010101";
		diff <="101";
		wait for 100 ns;
		
		str <="11100011";
		diff <="001";
		wait for 100 ns;
		
		str <="10010011";
		diff <="110";
		wait for 100 ns;
		
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
