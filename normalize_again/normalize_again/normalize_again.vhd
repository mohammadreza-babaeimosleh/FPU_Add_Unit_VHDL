
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity normalize_again is
    Port ( exp_in : in  STD_LOGIC_VECTOR (7 downto 0);
           frac_in : in  STD_LOGIC_VECTOR (24 downto 0);
           exp_out : out  STD_LOGIC_VECTOR (7 downto 0);
           frac_out : out  STD_LOGIC_VECTOR (24 downto 0));
end normalize_again;

architecture Behavioral of normalize_again is


signal exp_out_inc : std_logic_vector(7 downto 0);

begin

exp_out_inc <= std_logic_vector(unsigned(exp_in)+1);


	frac_out <= frac_in when frac_in(24)='0' else
					'0' & frac_in(24 downto 1);

	exp_out <= exp_in when frac_in(24)='0' else
				  exp_out_inc;

end Behavioral;

