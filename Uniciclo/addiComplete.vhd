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
	process (IMM16Addi)
	begin
		if IMM16Addi(15) = '0' then
			exitToMuxSrc <= "0000000000000000" & IMM16Addi;
		else
			exitToMuxSrc <= "1111111111111111" & IMM16Addi;
		end if;
	end process;
	
end architecture;