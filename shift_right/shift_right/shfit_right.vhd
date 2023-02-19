
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shfit_right is
    Port ( diff : in  STD_LOGIC_VECTOR (7 downto 0);
           frac : in  STD_LOGIC_VECTOR (25 downto 0);
           shifted : out  STD_LOGIC_VECTOR (26 downto 0));
end shfit_right;

architecture Behavioral of shfit_right is

signal int1 : std_logic_vector(51 downto 0);
signal int2 : std_logic_vector(51 downto 0);
signal s : std_logic;
begin

int1 <= frac & "00000000000000000000000000";	
int2 <= std_logic_vector(shift_right(unsigned(int1) , to_integer(unsigned(diff))));
s <= int2(25) or int2(24) or int2(24) or int2(23) or int2(22) or int2(21) or int2(20) or int2(19) or int2(18) or int2(17) or int2(16) or int2(15) or int2(14) or int2(13) or int2(12) or int2(11) or int2(10) or int2(9) or int2(8) or int2(7) or int2(6) or int2(5) or int2(4) or int2(3) or int2(2) or int2(1) or int2(0);
shifted <= int2(51 downto 26) & s;

end Behavioral;

