
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT normalize
    PORT(
         exp_in : IN  std_logic_vector(7 downto 0);
         hhfgrs_in : IN  std_logic_vector(27 downto 0);
         exp_out : OUT  std_logic_vector(7 downto 0);
         hhfgrs_out : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal exp_in : std_logic_vector(7 downto 0) := (others => '0');
   signal hhfgrs_in : std_logic_vector(27 downto 0) := (others => '0');

 	--Outputs
   signal exp_out : std_logic_vector(7 downto 0);
   signal hhfgrs_out : std_logic_vector(27 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: normalize PORT MAP (
          exp_in => exp_in,
          hhfgrs_in => hhfgrs_in,
          exp_out => exp_out,
          hhfgrs_out => hhfgrs_out
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
		
		exp_in<="00000011";
		hhfgrs_in<="0000000000011100000000000000";
		wait for 100 ns;
		
		exp_in<="00011100";
		hhfgrs_in<="0001100000011100000000000000";
		wait for 100 ns;
		
		exp_in<="00011100";
		hhfgrs_in<="1000000000011100000000000000";
		wait for 100 ns;
---      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
