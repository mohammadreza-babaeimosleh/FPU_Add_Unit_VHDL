--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:10:16 11/25/2022
-- Design Name:   
-- Module Name:   C:/Users/ayroz/Desktop/four/adder/adder/adder_tb.vhd
-- Project Name:  adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
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
 
ENTITY adder_tb IS
END adder_tb;
 
ARCHITECTURE behavior OF adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         arg1 : IN  std_logic_vector(27 downto 0);
         arg2 : IN  std_logic_vector(27 downto 0);
         res : OUT  std_logic_vector(28 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal arg1 : std_logic_vector(27 downto 0) := (others => '0');
   signal arg2 : std_logic_vector(27 downto 0) := (others => '0');

 	--Outputs
   signal res : std_logic_vector(28 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          arg1 => arg1,
          arg2 => arg2,
          res => res
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		
		arg1 <= "1000000000000000000000000000";
		arg2 <= "1000000000000000000000000000";

		wait for 100 ns;
		
		arg1 <= "1000000100000000000000000000";
		arg2 <= "1000000000000000000000000000";

      wait;
   end process;

END;
