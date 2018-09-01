library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity pc is

	Port ( 
		clk			: in STD_LOGIC;
		nextIns		: in STD_LOGIC_VECTOR (31 downto 0);
		reset			: in std_logic;
		c_out			: out STD_LOGIC_VECTOR (31 downto 0)
	);
	
end pc;

architecture Behavioral of pc is

SIGNAL ExitPC: std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');

BEGIN

		c_out <= ExitPC;
		
		process(clk)
		
		begin
		
			if(rising_edge(clk)) then
				if(reset = '1') then
					ExitPC <= nextIns;
				end if;
			end if;
			
		end process;
end Behavioral;