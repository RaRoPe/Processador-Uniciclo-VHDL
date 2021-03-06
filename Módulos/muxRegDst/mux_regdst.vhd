library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_regdst is

	Port ( 
		RegDst	: in  STD_LOGIC;
		instA		: in  STD_LOGIC_VECTOR (4 downto 0);
		instB		: in  STD_LOGIC_VECTOR (4 downto 0);
		WriteR	: out STD_LOGIC_VECTOR (4 downto 0)
	);
	
end mux_regdst;

architecture Behavioral of mux_regdst is

begin
    WriteR <= instB when (RegDst = '1') else InstA;
	 
end Behavioral;