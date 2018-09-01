library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity concatShamt is
	port(
		inShamt: in std_logic_vector(4 downto 0);
		exitShamt: out std_logic_vector(31 downto 0)
	);
end concatShamt;

architecture Behavioral of concatShamt is

begin

	process (inShamt)
	begin
			exitShamt <= "000000000000000000000000000" & inShamt;
	end process;
	  
end architecture;