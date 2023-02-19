library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity main is
    Port ( num1 : in  STD_LOGIC_VECTOR (31 downto 0);
           num2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ans : out  STD_LOGIC_VECTOR (31 downto 0));
end main;

architecture Behavioral of main is

signal exp1 : std_logic_vector(7 downto 0) := num1(30 downto 23);
signal exp2 : std_logic_vector(7 downto 0) := num2(30 downto 23);

signal frac1_norm : std_logic_vector(25 downto 0);
signal frac1_denorm : std_logic_vector(25 downto 0);

signal frac2_norm : std_logic_vector(25 downto 0);
signal frac2_denorm : std_logic_vector(25 downto 0);

begin

frac1_norm <= '1' & num1(22 downto 0) & "00";
frac1_denorm <= '0' & num1(22 downto 0) & "00";
frac2_norm <= '1' & num2(22 downto 0) & "00";
frac2_denorm <= '0' & num2(22 downto 0) & "00";


end Behavioral;

