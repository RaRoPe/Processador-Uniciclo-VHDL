library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumPC is

	port( 
		sumPC_in				: in std_logic_vector(31 downto 0);
		quatro				: in std_logic_vector(31 downto 0);
		sumPC_out			: out std_logic_vector(31 downto 0)
	);
    
end sumPC;

Architecture Behavioral of sumPC is

begin
	sumPC_out <= std_logic_vector(unsigned(sumPC_in) + unsigned(quatro));
    
end Architecture;
--
--sumPC:	entity work.sumPC port map(	
	--	sumPC_in		=> pc_out ,
	--	sumBranch_in    => sumPC_out  ,
	--);
