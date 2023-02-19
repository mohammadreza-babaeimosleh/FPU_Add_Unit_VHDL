library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity small_alu is
    Port ( one_bit_and : in  STD_LOGIC;
           num_1 : in  STD_LOGIC_VECTOR (3 downto 0);
           num_2 : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end small_alu;

architecture Behavioral of small_alu is

signal anded_num : std_logic_vector(3 downto 0);

begin

anded_num <=  num_1 when one_bit_and = '1' else "0000";

output <= anded_num + num_2;

end Behavioral;

