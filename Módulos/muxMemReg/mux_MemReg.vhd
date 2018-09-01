library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_MemReg is

	Port ( 
		MemtoReg		: in  STD_LOGIC;
		q_mux			: in  STD_LOGIC_VECTOR (31 downto 0);
		aluout_mux	: in  STD_LOGIC_VECTOR (31 downto 0);
		d_in_mux		: out STD_LOGIC_VECTOR (31 downto 0)
	);
	
end mux_MemReg;

architecture Behavioral of mux_MemReg is

begin
    d_in_mux <= aluout_mux when (MemtoReg = '0') else q_mux;
	 
end Behavioral;