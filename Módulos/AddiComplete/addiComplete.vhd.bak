library ieee;
use ieee.std_logic_1164.all;

entity orJump is

	port( 
		PCSomado			: in std_logic_vector(31 downto 0);
		jumpshift		: in std_logic_vector(27 downto 0);
		exitToMux		: out std_logic_vector(31 downto 0)
	);
	
end orJump;

architecture comportamental of orJump is

begin
	exitToMux <= (PCSomado(31 downto 28) & "0000000000000000000000000000") or ("0000" & jumpshift(27 downto 0));
	
end architecture;