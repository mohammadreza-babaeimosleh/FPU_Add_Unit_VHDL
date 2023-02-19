
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rounding is
    Port ( frac_in : in  STD_LOGIC_VECTOR (27 downto 0);
           frac_out : out  STD_LOGIC_VECTOR (24 downto 0));
end rounding;

architecture Behavioral of rounding is

signal rounded_up : std_logic_vector (27 downto 0);
signal fgrs        : std_logic_vector (3 downto 0);
signal frac_out_temp: std_logic_vector(27 downto 0);

begin

fgrs <= frac_in(3 downto 0);

rounded_up <= std_logic_vector(unsigned(frac_in)+1);


frac_out_temp <= rounded_up when fgrs(2 downto 0)>"100" else
					frac_in	  when fgrs(2 downto 0)<"100" else
					rounded_up when fgrs = "1100" else
					frac_in	  when fgrs = "0100";
frac_out <= frac_out_temp(27 downto 3);

end Behavioral;

