library ieee;
use ieee.std_logic_1164.all;

entity shiftL2_Jump is

	port( 
		insJump			: in std_logic_vector(25 downto 0);
		j_address		: out std_logic_vector(27 downto 0)
	);
	
end shiftL2_Jump;

architecture comportamental of shiftL2_Jump is

begin
	j_address <= insJump (25 downto 0) & '0' & '0';
	
end architecture;