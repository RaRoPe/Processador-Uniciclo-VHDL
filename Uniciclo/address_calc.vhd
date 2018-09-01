library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY address_calc IS

	port (
		aluResult			: IN std_logic_vector(31 DOWNTO 0);
		addressToMem		: OUT std_logic_vector(7 DOWNTO 0)
	);
	
END address_calc;

ARCHITECTURE Behavioral OF address_calc IS

	SIGNAL shift2		: std_logic_vector(31 DOWNTO 0);
	SIGNAL calcMem		: unsigned(31 downto 0);
	
BEGIN

	calcMem <= unsigned(aluResult) - X"2000";
	shift2 <= std_logic_vector(shift_right (calcMem,2));
	addressToMem <= std_logic_vector(shift2(7 DOWNTO 0));
	
END ARCHITECTURE Behavioral;