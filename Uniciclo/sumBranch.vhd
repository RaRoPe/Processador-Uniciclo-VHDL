library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumBranch is

	port( 
		sumBranch_inA		: in std_logic_vector(31 downto 0);
		sumBranch_inB 		: in std_logic_vector(31 downto 0);
		sumBranch_out		: out std_logic_vector(31 downto 0)
	);
    
end sumBranch;

Architecture Behavioral of sumBranch is

begin
		sumBranch_out <= std_logic_vector(unsigned(sumBranch_inA)+ unsigned(sumBranch_inB));
	  
end Architecture;