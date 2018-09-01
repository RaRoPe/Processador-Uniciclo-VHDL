library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ANDBne is

	Port ( 
		bneControl				: in  STD_LOGIC;
		zeroULABne				: in  STD_LOGIC;
		andBne_out				: out STD_LOGIC
	);
	
end ANDBne;

architecture Behavioral of ANDBne is

begin
    andBne_out <= (bneControl and (not zeroULABne));
	 
end Behavioral;