library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signExtd is
	port(
		IMM16: in std_logic_vector(15 downto 0);
		IMM32: out std_logic_vector(31 downto 0)
	);
end entity;

architecture Behavioral of  signExtd is

begin

	process (IMM16)
	begin
		if IMM16(15) = '0' then
			IMM32 <= "0000000000000000" & IMM16;
		else
			IMM32 <= "1111111111111111" & IMM16;
		end if;
	end process;
	  
end architecture;