library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxJump is

	Port ( 
		JumpSg			: in  STD_LOGIC;
		mux_shift		: in  STD_LOGIC_VECTOR (31 downto 0);
		muxBr_exit		: in  STD_LOGIC_VECTOR (31 downto 0);
		MuxJumpExit		: out STD_LOGIC_VECTOR (31 downto 0)
	);
	
end muxJump;

architecture Behavioral of muxJump is

begin
    MuxJumpExit <= muxBr_exit when (JumpSg = '0') else mux_shift;
	 
end Behavioral;