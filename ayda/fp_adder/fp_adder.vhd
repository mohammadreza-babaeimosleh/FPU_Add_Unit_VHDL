?----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:39:47 11/24/2022 
-- Design Name: 
-- Module Name:    fp_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fp_adder is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           s : out  STD_LOGIC_VECTOR (31 downto 0));
end fp_adder;

architecture Behavioral of fp_adder is

	signal S_a : STD_LOGIC; --Sign Bit of a
	signal S_b : STD_LOGIC; --Sign Bit of b
	
	signal final_sign : STD_LOGIC; --Sign Bit of sum
	signal final_Ex : STD_LOGIC_VECTOR (7 downto 0);  --largest Exponent		
	signal final_Ex2 : STD_LOGIC_VECTOR (7 downto 0); --binary form of Final_Ex1
	signal final_Ex3 : STD_LOGIC_VECTOR (7 downto 0); --Final Exponent after final normalization	


	
	signal E_a : STD_LOGIC_VECTOR (7 downto 0); --Exponent of a
	signal E_b : STD_LOGIC_VECTOR (7 downto 0); --Exponent of b

	signal E_large : STD_LOGIC_VECTOR (7 downto 0); --Larger Exponent
	signal E_small : STD_LOGIC_VECTOR (7 downto 0); --Smaller Exponent

	signal F_a : STD_LOGIC_VECTOR (22 downto 0); --Mantissa (Fraction) of a
	signal F_b : STD_LOGIC_VECTOR (22 downto 0); --Mantissa (Fraction) of b

	signal HB_a : STD_LOGIC; --Hidden Bit of a
	signal HB_b : STD_LOGIC; --Hidden Bit of b

	signal eF_a : STD_LOGIC_VECTOR (24 downto 0); -- Extended-Fraction of a
	signal eF_b : STD_LOGIC_VECTOR (24 downto 0); -- Extended-Fraction of b

	signal seF_Shift : STD_LOGIC_VECTOR (25 downto 0); -- Shifted Smaller Extended Mantissa
	signal leF :       STD_LOGIC_VECTOR (25 downto 0); -- Larger Extended Mantissa (No Shift Needed)

	signal diff_E : STD_LOGIC_VECTOR (7 downto 0); --Difference of Exponents

	signal G: STD_LOGIC; --Guard Bit
	signal R: STD_LOGIC; --Round Bit
	signal Stc: STD_LOGIC; --Sticky Bit

	signal i: integer;
	signal j: integer;
	
	signal HB_eF_a : STD_LOGIC_VECTOR (25 downto 0); -- Extended-Fraction of A With The Hidden Bit
	signal HB_eF_b : STD_LOGIC_VECTOR (25 downto 0); -- Extended-Fraction of B With The Hidden Bit

	signal HB_eF_a_2s : STD_LOGIC_VECTOR (26 downto 0); -- 2's complement of Extended-Fraction of A With The Hidden Bit
	signal HB_eF_b_2s : STD_LOGIC_VECTOR (26 downto 0); -- 2's complement of Extended-Fraction of B With The Hidden Bit

	signal seF_Shift_final : STD_LOGIC_VECTOR (26 downto 0); -- Final Smaller Mantissa (Shifted)
	signal leF_final :       STD_LOGIC_VECTOR (26 downto 0); -- Final Larger Mantissa  (No Shift Needed)
	
	signal C_seF_Shift : STD_LOGIC_VECTOR (26 downto 0); -- Concatenated Smaller Mantissa with Stc
	signal C_leF :       STD_LOGIC_VECTOR (26 downto 0); -- Concatenated Larger Mantissa  with '0'	
	
	signal BA_S : STD_LOGIC_VECTOR (27 downto 0); -- Big_Adder's Sum (seF_shift_final + leF_final)
	signal BA_S_F : STD_LOGIC_VECTOR (27 downto 0); -- BA_S 2's complement
	signal sign_BA_S_F : STD_LOGIC_VECTOR (28 downto 0); -- BA_S_F with sign bit	
	signal BA_S_F_shr : STD_LOGIC_VECTOR (27 downto 0); -- BA_S_F with 1 right shift
	signal norm_sum : STD_LOGIC_VECTOR (26 downto 0); -- normalized sum	
	
	signal norm_sum1 : unsigned (27 downto 0); -- left shifted BA_S_F
	
	signal frac_norm : STD_LOGIC_VECTOR (26 downto 0); -- fraction part of normalized sum	
	signal frac_final : STD_LOGIC_VECTOR (27 downto 0); -- rounded fraction	
	signal frac_final2 : STD_LOGIC_VECTOR (22 downto 0); -- 23 bit fraction part (frac_final without hidden bit and G,R,S)	
	signal frac_final3 : STD_LOGIC_VECTOR (22 downto 0); -- final fraction of output
		
	signal HB_sum : STD_LOGIC; --Hidden Bit of right shifted sum	

begin
	-- Extracting Sign, Mantissa and Exponent of each Operand
	S_a <= a(31);
	S_b <= b(31);

	E_a <= a(30 downto 23);
	E_b <= b(30 downto 23);

	F_a <= a(22 downto 0);
	F_b <= b(22 downto 0);


	-- Adding 2 extra Bits to the right of Mantissa(For Final Rounding)
	eF_a <= F_a & "00";
	eF_b <= F_b & "00";




	process (E_a , E_b , S_a , S_b , final_sign , BA_S_F , Stc )

		variable deleted_bits_int: integer range 0 to (2**28) - 1 ;
	   variable final_Ex1: integer range 0 to (2**28) - 1 ;
	   variable number_shift: integer range 0 to (2**28) - 1 ;
		variable k: integer range 0 to (2**28) - 1 ;
		variable n: integer range 0 to (2**28) - 1 ;

		begin


		-- Extracting Hidden Bit of each Operand
		if (E_a = "00000000") then
			HB_a <= '0';
		else
			HB_a <= '1';
		end if;


		if (E_b = "00000000") then
			HB_b <= '0';
		else
			HB_b <= '1';

		end if;


		--Attaching Hidden Bit to the Mantissa
		HB_eF_a <= HB_a & eF_a;
		HB_eF_b <= HB_b & eF_b;



		-- Finding the Larger Exponent and Shifting the Mantissa+HB of the Smaller Operand to Right
		if (E_a > E_b) then
			E_large <= E_a;
			E_small <= E_b;

			---- Shift and Hold the Shifted Value
			diff_E <= E_large - E_small;
			seF_Shift <= shr(HB_eF_b, diff_E);
			---- Hold the other Value
			leF <= HB_eF_a;
			---- Finding Guard & Round Value
			R <= seF_Shift(0);
			G <= seF_Shift(1);
			--Finding Sticky Value:
			deleted_bits_int := to_integer(unsigned(diff_E)) - 1;
			Stc <= or_reduce(eF_b (deleted_bits_int downto 0));
			---- Build concatenated Final Mantissas
			C_seF_Shift <= seF_Shift & Stc ;
			C_leF <= leF & '0' ;

			--Check if two's Complementation is needed
			if (S_a = '1') then
				HB_eF_a_2s <= (C_leF xor "111111111111111111111111111") + "000000000000000000000000001";
				leF_final <= HB_eF_a_2s;
				seF_Shift_final <= C_seF_Shift;
			end if;

			if (S_b = '1') then
				HB_eF_b_2s <= (C_seF_Shift xor "111111111111111111111111111") + "000000000000000000000000001";
				seF_Shift_final <= HB_eF_b_2s;
				leF_final <= C_leF;
			end if;

			final_sign <= S_a ;
			final_Ex <= E_a ;

		elsif ((E_a < E_b) or (E_a = E_b)) then
			E_large <= E_b;
			E_small <= E_b;

			---- Shift and Hold the Shifted Value
			diff_E <= E_large - E_small;
			seF_Shift <= shr(HB_eF_a, diff_E);
			
			---- Hold the other Value
			leF <= HB_eF_b;
			
			---- Finding Guard & Round Value
			R <= seF_Shift(0);
			G <= seF_Shift(1);
			
			--Finding Sticky Value:
			deleted_bits_int := to_integer(unsigned(diff_E)) - 1;
			Stc <= or_reduce(eF_a (deleted_bits_int downto 0));
			---- Build concatenated Final Mantissas
			C_seF_Shift <= seF_Shift & Stc ;
			C_leF <= leF & '0' ;

			--Check if two's Complementation is needed
			if (S_b = '1') then
				HB_eF_b_2s <= (C_leF xor "111111111111111111111111111") + "000000000000000000000000001";
				leF_final <= HB_eF_a_2s;
				seF_Shift_final <= C_seF_Shift;
			end if;

			if (S_a = '1') then
				HB_eF_a_2s <= (C_seF_Shift xor "111111111111111111111111111") + "000000000000000000000000001";
				seF_Shift_final <= HB_eF_b_2s;
				leF_final <= C_leF;
			end if;
			final_sign <= S_b;
			final_Ex <= E_b ;

		end if;
		
		----Building 29 Bit Big-Adder
		BA_S <= seF_Shift_final + leF_final ;
		
		---- Return sum of Big_Adder from 2's complement to sign-number form
		if (final_sign ='1') then
			BA_S_F <= (BA_S xor "1111111111111111111111111111") + "0000000000000000000000000001";
			sign_BA_S_F <= '1' & BA_S_F ;
		elsif (final_sign ='0') then
			BA_S_F <= BA_S ;
			sign_BA_S_F <= '0' & BA_S_F ;
		end if;



      ----normalization
		
		if (BA_S_F(27) = '1') then
			norm_sum <= BA_S_F(27 downto 1);
		elsif (BA_S_F(27) = '0') then
			if (BA_S_F(26)='1') then
				norm_sum <= BA_S_F(26 downto 0);	
         elsif (BA_S_F(26)='0') then	
				for i in 27 downto 0 loop
					if (BA_S_F(i) = '1') then
						k := i;
						EXIT;
					else
						if ( (to_integer(signed(final_Ex)) - i + 27) > 0 ) then
							NEXT ;
						else 
							k := i;
							EXIT;
						end if;
					end if;
				end loop;
				
				n := 27-k-1;
				norm_sum1 <= shift_left (unsigned(BA_S_F) ,n);
				norm_sum <= std_logic_vector (norm_sum1(26 downto 0));
			end if;
		end if;
		
			
		---- rounding
		
		frac_norm <= norm_sum;
		if (G = '1' and Stc = '1') then
			frac_final <= frac_norm + "00000000000000000000000001";
		elsif(G = '1' and R = '1' and Stc ='0') then
			frac_final <= frac_norm + "00000000000000000000000001";
		else
			frac_final <= '0' & frac_norm ;			
		end if;
		frac_final2 <= frac_final (25 downto 3);
		---- Building s
		final_Ex1 := to_integer(signed(final_Ex)) - k + 27 ;
		final_Ex2 <= std_logic_vector (to_unsigned(final_Ex1 , final_Ex2'length));
		
		if (frac_final(27) = '0') then
			frac_final3 <= frac_final2;
			final_Ex3 <= final_Ex2;
		else
			frac_final3 <= frac_final (26 downto 4);
			final_Ex3 <= final_Ex2 + 1;
		end if;
		s <= final_sign & final_Ex3 & frac_final3;
		
	end process;


end Behavioral;
