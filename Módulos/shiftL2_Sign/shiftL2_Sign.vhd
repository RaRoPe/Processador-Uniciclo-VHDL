library ieee;
use ieee.std_logic_1164.all;

entity shiftL2_Sign is

	port( 
		signextd			: in std_logic_vector(31 downto 0);
		to_sum			: out std_logic_vector(31 downto 0)
	);
	
end shiftL2_Sign;

architecture comportamental of shiftL2_Sign is

begin
	to_sum <= signextd (29 downto 0) & '0' & '0';
	
end architecture;