library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxShamt is

	Port ( 
		ShamtSg			: in  STD_LOGIC;
		A1					: in  STD_LOGIC_VECTOR (31 downto 0);
		A2					: in  STD_LOGIC_VECTOR (31 downto 0);
		MuxShamtExit	: out STD_LOGIC_VECTOR (31 downto 0)
	);
	
end muxShamt;

architecture Behavioral of muxShamt is

begin
    MuxShamtExit <= A2 when (ShamtSg = '1') else A1;
	 
end Behavioral;