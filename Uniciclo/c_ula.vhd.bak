library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity c_ula is
port (
   func : in std_logic_vector(5 downto 0);
   opUla : in std_logic_vector(1 downto 0);
   ctrula : out std_logic_vector(3 downto 0)
	);
end c_ula;

architecture rtl2 of c_ula is

begin

process (func,opUla)

begin

	if (opUla <= "00") then
		ctrula <= ULA_ADD ;--ADD
	else 
		if(opUla <= "01") then
			ctrula <= ULA_SUB ;--SUB
		end if;
	end if;

	if(opUla<="10") then

		case func is
			when "000000" => --ADD
				ctrula <= ULA_ADD;
			when "000010" => --SUB
				ctrula <= ULA_SUB;
			when "000100" => --AND
				ctrula <= ULA_AND ;
			when "000101" => --OR
				ctrula <= ULA_OR;
			when "001010" => --SLT
				ctrula <= ULA_SLT;
			when "000111" => --NOR
				ctrula <= ULA_NOR;
			when others => --UKW
				ctrula <= ULA_UKW ; 

		end case;

	end if;

end process;
end rtl2;