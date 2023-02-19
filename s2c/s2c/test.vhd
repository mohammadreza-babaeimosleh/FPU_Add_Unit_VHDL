--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:31:32 11/26/2022
-- Design Name:   
-- Module Name:   G:/onlinelessons/computer architecture/VHDL/project_FPA/four/four/s2c/s2c/test.vhd
-- Project Name:  s2c
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: s2c
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
 
    COMPONENT s2c
    PORT(
         num : IN  std_logic_vector(26 downto 0);
         sign : IN  std_logic;
         comp : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal num : std_logic_vector(26 downto 0) := (others => '0');
   signal sign : std_logic := '0';

 	--Outputs
   signal comp : std_logic_vector(27 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: s2c PORT MAP (
          num => num,
          sign => sign,
          comp => comp
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		num <= "000000000000000000000000001";
		sign<= '0';

      wait for 100 ns;	

		num <= "000000000000000000000000001";
		sign<= '0';
      wait;
   end process;

END;
