
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity s2c is
    Port ( num : in  STD_LOGIC_VECTOR (26 downto 0);
           sign : in  STD_LOGIC;
           comp : out  STD_LOGIC_VECTOR (27 downto 0));
end s2c;

architecture Behavioral of s2c is

signal pos : STD_LOGIC_VECTOR (27 downto 0) := '0' & num;
signal neg : STD_LOGIC_VECTOR (27 downto 0);

begin

neg <= '1' & (not num + 1);

comp <= pos when sign='0' else neg;

end Behavioral;

