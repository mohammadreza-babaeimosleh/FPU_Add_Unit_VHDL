
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY test1 IS
END test1;
 
ARCHITECTURE behavior OF test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shfit_right
    PORT(
         diff : IN  std_logic_vector(7 downto 0);
         frac : IN  std_logic_vector(25 downto 0);
         shifted : OUT  std_logic_vector(26 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal diff : std_logic_vector(7 downto 0) := (others => '0');
   signal frac : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal shifted : std_logic_vector(26 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shfit_right PORT MAP (
          diff => diff,
          frac => frac,
          shifted => shifted
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
		
		frac <= "00000000001100000000000000";
		diff <= "00001100";
		wait for 100 ns;
		frac <= "00000100000001001011011000";
		diff <= "00000000";
		wait for 100 ns;

		frac <= "00000011000000000000111000";
		diff <= "00000111";
		wait for 100 ns;

		frac <= "00000111000000011001100000";
		diff <= "00001110";
		wait for 100 ns;

		frac <= "00001110000001100100011000";
		diff <= "11001001";
		wait for 100 ns;

		frac <= "00111001101101100001110000";
		diff <= "00010101";
		wait for 100 ns;

 --     wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
