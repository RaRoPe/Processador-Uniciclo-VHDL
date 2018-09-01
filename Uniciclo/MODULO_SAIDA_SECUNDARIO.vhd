library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MODULO_SAIDA_SECUNDARIO is

	Port ( 
		SAIDA_MUXRD			: in  STD_LOGIC_VECTOR (4 DOWNTO 0);
		SAIDA_MUXALU		: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_MUXAB			: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_MUXB			: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		
		-- V = VALOR DE SAIDA
		VSAIDA_MUXRD			: OUT  STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_MUXALU			: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_MUXAB			: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_MUXB				: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	
end MODULO_SAIDA_SECUNDARIO;

architecture Behavioral of MODULO_SAIDA_SECUNDARIO is

begin
    
	VSAIDA_MUXRD			<= SAIDA_MUXRD;
	VSAIDA_MUXALU			<= SAIDA_MUXALU;
	VSAIDA_MUXAB			<= SAIDA_MUXAB;
	VSAIDA_MUXB				<= SAIDA_MUXB;
	 
end Behavioral;