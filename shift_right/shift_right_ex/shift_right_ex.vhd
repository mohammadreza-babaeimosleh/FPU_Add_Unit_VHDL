library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity shift_right_ex is
  port (
    i_Clock : in std_logic;
	 output1 : out std_logic_vector (7 downto 0);
	 output2 : out std_logic_vector (7 downto 0);
	 input	: in  std_logic_vector (3 downto 0)
    );
end shift_right_ex;
 
architecture behave of shift_right_ex is
 
  signal r_Shift_With_For : std_logic_vector(7 downto 0) := input & "0000";
  signal r_Shift_Regular  : std_logic_vector(7 downto 0) := input & "0010";
   
begin
 
  -- Creates a Left Shift using a For Loop
  p_Shift_With_For : process (i_Clock)
  begin
    if rising_edge(i_Clock) then
      for ii in 0 to 2 loop
        r_Shift_With_For(ii+1) <= r_Shift_With_For(ii);
      end loop;  -- ii
    end if;
  end process;
 
  -- Performs a shift left using regular assignments
  p_Shift_Without_For : process (i_Clock)
  begin
    if rising_edge(i_Clock) then
      r_Shift_Regular(1) <= r_Shift_Regular(0);
      r_Shift_Regular(2) <= r_Shift_Regular(1);
      r_Shift_Regular(3) <= r_Shift_Regular(2);
    end if;
  end process;
   
	output1 <= r_Shift_With_For;
	output2 <= r_Shift_Regular;
   
end behave;
