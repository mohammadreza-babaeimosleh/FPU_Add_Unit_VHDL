--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:00:46 11/27/2022
-- Design Name:   
-- Module Name:   G:/onlinelessons/computer architecture/VHDL/project_FPA/four/four/round/rounding/tst.vhd
-- Project Name:  rounding
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rounding
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
 
ENTITY tst IS
END tst;
 
ARCHITECTURE behavior OF tst IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rounding
    PORT(
         frac_in : IN  std_logic_vector(27 downto 0);
         frac_out : OUT  std_logic_vector(24 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal frac_in : std_logic_vector(27 downto 0) := (others => '0');

 	--Outputs
   signal frac_out : std_logic_vector(24 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rounding PORT MAP (
          frac_in => frac_in,
          frac_out => frac_out
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		frac_in<="0000000000000000000000011000";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000011001";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000011010";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000011011";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000011100";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000011101";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000011110";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000011111";
		wait for 100 ns;
		--------------------------------------
		frac_in<="0000000000000000000000000000";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000000001";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000000010";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000000011";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000000100";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000000101";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000000110";
		wait for 100 ns;
		
		frac_in<="0000000000000000000000000111";
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
