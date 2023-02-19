
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity c2s is
    Port ( input : in  STD_LOGIC_VECTOR (28 downto 0);
           signed_output : out  STD_LOGIC_VECTOR (27 downto 0);
           sign : out  STD_LOGIC);
end c2s;

architecture Behavioral of c2s is

signal case_neg : STD_LOGIC_VECTOR (28 downto 0)

begin

sign <= input(28);

case_neg <= not input + 1;

signed_output <= input when input(28)='0' else case_neg;

end Behavioral;


-- NOTE THAT THE MOST NEGATIVE RESULT, IS THE ONLY REASON THAT THE OUTPUT IS 29 BITS, INSTEAD OF 28 BITS + 1 SIGN BITS
