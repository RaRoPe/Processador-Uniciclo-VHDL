library ieee;
use ieee.std_logic_1164.all;

entity addiComplete is

	port( 
		IMM16Addi		: in std_logic_vector(15 downto 0);
		exitToMuxSrc	: out std_logic_vector(31 downto 0)
	);
	
end addiComplete;

architecture comportamental of addiComplete is

begin
	exitToMuxSrc <= ("0000000000000000" & IMM16Addi(15 downto 0));
	
end architecture;