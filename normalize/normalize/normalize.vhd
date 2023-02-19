
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity normalize is
    Port ( exp_in : in  STD_LOGIC_VECTOR (7 downto 0);
           hhfgrs_in : in  STD_LOGIC_VECTOR (27 downto 0);
           exp_out : out  STD_LOGIC_VECTOR (7 downto 0);
           hhfgrs_out : out  STD_LOGIC_VECTOR (27 downto 0));
end normalize;

architecture Behavioral of normalize is

signal index              : unsigned(4 downto 0);
signal exp_out_norm  	  : std_logic_vector(7 downto 0);
signal exp_out_denorm	  : std_logic_vector(7 downto 0);
signal exp_out_overflow	  : std_logic_vector(7 downto 0);
signal hhfgrs_out_norm	  : std_logic_vector(27 downto 0);
signal hhfgrs_out_denorm  : std_logic_vector(27 downto 0);
signal hhfgrs_out_overflow: std_logic_vector(27 downto 0);
signal state				  : unsigned(1 downto 0);


begin

index <= "00001" when hhfgrs_in(27)='1' else
			"00010" when hhfgrs_in(26)='1' else
			"00011" when hhfgrs_in(25)='1' else
			"00100" when hhfgrs_in(24)='1' else
			"00101" when hhfgrs_in(23)='1' else
			"00110" when hhfgrs_in(22)='1' else
			"00111" when hhfgrs_in(21)='1' else
			"01000" when hhfgrs_in(20)='1' else
			"01001" when hhfgrs_in(19)='1' else
			"01010" when hhfgrs_in(18)='1' else
			"01011" when hhfgrs_in(17)='1' else
			"01100" when hhfgrs_in(16)='1' else
			"01101" when hhfgrs_in(15)='1' else
			"01110" when hhfgrs_in(14)='1' else
			"01111" when hhfgrs_in(13)='1' else
			"10000" when hhfgrs_in(12)='1' else
			"10001" when hhfgrs_in(11)='1' else
			"10010" when hhfgrs_in(10)='1' else
			"10011" when hhfgrs_in(9)='1' else
			"10100" when hhfgrs_in(8)='1' else
			"10101" when hhfgrs_in(7)='1' else
			"10110" when hhfgrs_in(6)='1' else
			"10111" when hhfgrs_in(5)='1' else
			"11000" when hhfgrs_in(4)='1' else
			"11001" when hhfgrs_in(3)='1' else
			"11010" when hhfgrs_in(2)='1' else
			"11011" when hhfgrs_in(1)='1' else
			"11100" when hhfgrs_in(0)='1';
			
-- case : answer is normal:
	exp_out_norm <= std_logic_vector(unsigned(exp_in) - index + 2);
	hhfgrs_out_norm <= std_logic_vector(shift_left(unsigned(hhfgrs_in) , to_integer(unsigned(index)-2)));

-- case : answer in denormal
	exp_out_denorm <= "00000001";
	hhfgrs_out_denorm <= std_logic_vector(shift_left(unsigned(hhfgrs_in) , to_integer(unsigned(exp_in))));
	
-- case overflow:
	exp_out_overflow <= std_logic_vector(unsigned(exp_in)+1);
	hhfgrs_out_overflow <= std_logic_vector(shift_right(unsigned(hhfgrs_in), 1));

	state <= "00" when index="0001" else
				"01" when unsigned(exp_in) > unsigned(index)+1 else
				"10";
				
	with state select			
		exp_out <= exp_out_overflow when "00",
					  exp_out_norm		 when "01",
					  exp_out_denorm   when "10";
 	with state select			
		hhfgrs_out <= hhfgrs_out_overflow when "00",
						  hhfgrs_out_norm		 when "01",
					     hhfgrs_out_denorm   when "10";

		


end Behavioral;

