
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shift_right_ex3_tb IS
END shift_right_ex3_tb;
 
ARCHITECTURE behavior OF shift_right_ex3_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_right_ex3
    PORT(
         diff : IN  std_logic_vector(2 downto 0);
         str : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal diff : std_logic_vector(2 downto 0) := (others => '0');
   signal str : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
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
		diff <= "101";
		str  <= "01010101";
		wait for 100 ns;
		
		diff <= "011";
		str  <= "11100011";
		wait for 100 ns;
		
		diff <= "111";
		str  <= "10111000";
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
