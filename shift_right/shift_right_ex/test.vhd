
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_right_ex
    PORT(
         i_Clock : IN  std_logic;
         output1 : OUT  std_logic_vector(7 downto 0);
         output2 : OUT  std_logic_vector(7 downto 0);
         input : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_Clock : std_logic := '0';
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output1 : std_logic_vector(7 downto 0);
   signal output2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant i_Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_right_ex PORT MAP (
          i_Clock => i_Clock,
          output1 => output1,
          output2 => output2,
          input => input
        );

   -- Clock process definitions
   i_Clock_process :process
   begin
		i_Clock <= '0';
		wait for i_Clock_period/2;
		i_Clock <= '1';
		wait for i_Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		input <= "1010";
		wait for 100 ns;
		input <= "1000";
		wait for 100 ns;
		input <= "0011";
      wait for i_Clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
