library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity adder is
    Port ( arg1 : in  STD_LOGIC_VECTOR (27 downto 0);
           arg2 : in  STD_LOGIC_VECTOR (27 downto 0);
           res : out  STD_LOGIC_VECTOR (28 downto 0));
end adder;

architecture Behavioral of adder is

begin

res <= (arg1(27) & arg1) + ( arg2(27) & arg2);

end Behavioral;

