
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY teset IS
END teset;
 
ARCHITECTURE behavior OF teset IS 
 
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
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rounding PORT MAP (
          frac_in => frac_in,
          frac_out => frac_out
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
		
		
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
