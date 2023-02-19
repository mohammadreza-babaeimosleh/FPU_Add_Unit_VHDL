
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity shift_right_ex3 is
    Port ( diff   : in   STD_LOGIC_VECTOR (2 downto 0);
           str    : in   STD_LOGIC_VECTOR (7 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0)
			  );
end shift_right_ex3;

architecture Behavioral of shift_right_ex3 is

signal inner : std_logic_vector(15 downto 0);-- := "11110000";
signal inner2: std_logic_vector(15 downto 0);

begin

inner <= str & "00000000";
inner2 <= std_logic_vector(shift_right(unsigned(inner) , to_integer(unsigned(diff))));
output <= inner2;
end Behavioral;

