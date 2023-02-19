-----------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity small_alu is
    Port ( exp1 : in  STD_LOGIC_VECTOR (7 downto 0);
           exp2 : in  STD_LOGIC_VECTOR (7 downto 0);
           borrow : out  STD_LOGIC;
           difference : out  STD_LOGIC_VECTOR (7 downto 0));
end small_alu;

architecture Behavioral of small_alu is

signal temp_exp1 : STD_LOGIC_VECTOR(8 downto 0) := '0' & exp1;
signal temp_exp2 : STD_LOGIC_VECTOR(8 downto 0) := '0' & exp2;

signal temp_exp1_cmp: STD_LOGIC_VECTOR (8 downto 0);
signal temp_exp2_cmp: STD_LOGIC_VECTOR (8 downto 0);

signal temp_exp12_cmp: STD_LOGIC_VECTOR (8 DOWNTO 0);
signal temp_exp21_cmp: STD_LOGIC_VECTOR (8 DOWNTO 0);

signal temp_borrow : STD_LOGIC;
signal temp_difference : STD_LOGIC_VECTOR (8 DOWNTO 0);

begin

temp_exp1_cmp <= not temp_exp1 + 1;
temp_exp2_cmp <= not temp_exp2 + 1;

temp_exp12_cmp <= temp_exp1 + temp_exp2_cmp;
temp_exp21_cmp <= temp_exp2 + temp_exp1_cmp;

temp_borrow <= '0' WHEN exp1 > exp2 ELSE '1';
temp_difference <= (not temp_exp12_cmp + 1) WHEN temp_borrow='0' ELSE (not temp_exp21_cmp +1);
-- The differnce is for sure a positive number, therefor there's no need to convert to signed form

borrow <= temp_borrow;
difference <= temp_difference(7 downto 0);
-- last bit is ignored

end Behavioral;

