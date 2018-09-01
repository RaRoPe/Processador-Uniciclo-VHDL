library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxBranch is

	Port ( 
		BranchSg			: in  STD_LOGIC;
		PC_4				: in  STD_LOGIC_VECTOR (31 downto 0);
		AddedBranch		: in  STD_LOGIC_VECTOR (31 downto 0);
		MuxBranchExit	: out STD_LOGIC_VECTOR (31 downto 0)
	);
	
end muxBranch;

architecture Behavioral of muxBranch is

begin
    MuxBranchExit <= AddedBranch when (BranchSg = '1') else PC_4;
	 
end Behavioral;