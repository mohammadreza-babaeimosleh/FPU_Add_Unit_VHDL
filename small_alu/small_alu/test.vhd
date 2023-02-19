--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:44:38 11/26/2022
-- Design Name:   
-- Module Name:   G:/onlinelessons/computer architecture/VHDL/project_FPA/four/four/small_alu/small_alu/test.vhd
-- Project Name:  small_alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: small_alu
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
 
    COMPONENT small_alu
    PORT(
         exp1 : IN  std_logic_vector(7 downto 0);
         exp2 : IN  std_logic_vector(7 downto 0);
         borrow : OUT  std_logic;
         difference : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal exp1 : std_logic_vector(7 downto 0) := (others => '0');
   signal exp2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal borrow : std_logic;
   signal difference : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: small_alu PORT MAP (
          exp1 => exp1,
          exp2 => exp2,
          borrow => borrow,
          difference => difference
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		exp1<="00000011";
		exp2<="00010001";

     

      -- insert stimulus here 

      wait;
   end process;

END;
