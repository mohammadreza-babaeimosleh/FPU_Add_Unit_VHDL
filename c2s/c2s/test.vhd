--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:13:48 11/27/2022
-- Design Name:   
-- Module Name:   G:/onlinelessons/computer architecture/VHDL/project_FPA/four/four/c2s/c2s/test.vhd
-- Project Name:  c2s
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: c2s
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT c2s
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         signed_output : OUT  std_logic_vector(2 downto 0);
         sign : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal signed_output : std_logic_vector(2 downto 0);
   signal sign : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: c2s PORT MAP (
          input => input,
          signed_output => signed_output,
          sign => sign
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		input <= "0001";
		
		wait for 100 ns;	
		input <= "0101";
		
		wait for 100 ns;	
		input <= "1011";
		
		wait for 100 ns;	
		input <= "1001";
		
		wait for 100 ns;	
		input <= "1000";
      wait;
   end process;

END;
