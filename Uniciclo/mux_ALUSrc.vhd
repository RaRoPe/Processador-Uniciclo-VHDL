library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_ALUSrc is

	Port ( 
		ALUSrc		: in  STD_LOGIC_VECTOR (1 downto 0);
		RegB_mux		: in  STD_LOGIC_VECTOR (31 downto 0);
		SignExt		: in  STD_LOGIC_VECTOR (31 downto 0);
		ADDISign		: in  STD_LOGIC_VECTOR (31 downto 0);
		WriteR		: out STD_LOGIC_VECTOR (31 downto 0)
	);
	
end mux_ALUSrc;

architecture Behavioral of mux_ALUSrc is

begin
	
	process (ALUSrc, SignExt, RegB_mux, ADDISign)
	begin
		if (ALUSrc = "01") then
			WriteR <= SignExt;
		elsif (ALUSrc = "00") then
			WriteR <= RegB_mux;
		elsif (ALUSrc = "10") then
			WriteR <=  ADDISign;
		end if;
	 end process;
	 
end Behavioral;