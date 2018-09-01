library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_ALUSrc is

	Port ( 
		ALUSrc		: in  STD_LOGIC;
		RegB_mux		: in  STD_LOGIC_VECTOR (31 downto 0);
		SignExt		: in  STD_LOGIC_VECTOR (31 downto 0);
		WriteR		: out STD_LOGIC_VECTOR (31 downto 0)
	);
	
end mux_ALUSrc;

architecture Behavioral of mux_ALUSrc is

begin
    WriteR <= SignExt when (ALUSrc = '1') else RegB_mux;
	 
end Behavioral;