library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity c_ula is
port (
   func : in std_logic_vector(5 downto 0);
   opUla : in std_logic_vector(1 downto 0);  
   ctrula : out std_logic_vector(3 downto 0)
	);
end c_ula;

architecture rtl2 of c_ula is

-- Controle ULAmips
constant ULA_AND : std_logic_vector(3 downto 0) := "0000"; -- 0
constant ULA_OR : std_logic_vector(3 downto 0) := "0001"; -- 1
constant ULA_ADD : std_logic_vector(3 downto 0) := "0010"; -- 2
constant ULA_SUB : std_logic_vector(3 downto 0) := "0110"; -- 6
constant ULA_SLT : std_logic_vector(3 downto 0) := "0111"; -- 7
constant ULA_NOR : std_logic_vector(3 downto 0) := "1100"; -- 12
constant ULA_UKW : std_logic_vector(3 downto 0) := "XXXX";

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