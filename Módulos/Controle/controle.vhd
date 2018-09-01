library ieee;
use ieee.Std_Logic_1164.all;
use ieee.numeric_std.all;

entity controle is
	port( 
		op,funct : in std_logic_vector(5 downto 0);
		RegDst	: out std_logic;
		ULAsrc	: out std_logic_vector(1 downto 0);
		MemToReg : out std_logic;
		RegWrite : out std_logic;
		MemRead 	: out std_logic;
		MemWrite : out std_logic;
		Jump		: out std_logic;
		BranchEQ	: out std_logic;
		BranchNE : out std_logic;
		opUla		: out std_logic_vector (1 downto 0);
		sinais_controles: out std_logic_vector(10 downto 0)
	);
end controle;

architecture Behavioral of controle is

	signal controles  : std_logic_vector(10 downto 0);
	signal ctrula		: std_logic_vector (3 downto 0);
	signal ula			: std_logic_vector (3 downto 0);
	signal ULAop		: std_logic_vector (1 downto 0);
	signal clk			: std_logic;
	signal ulaOP1		: std_logic;
	signal ulaOP2		: std_logic;
	signal ulasrc1		: std_logic;
	signal ulasrc2		: std_logic;
	-- controles(branchNE, regDst, ulasrc, memToReg, regWrite, memread, memWrite, branchEQ,ulactrl(21), jump)
	
	begin
		controles <= "01001000100" when op = "000000" else --instrucao tipo R
						 "00101000000" when op = "001000" else --addi
						 "00111100000" when op = "100011" else --lw
						 "00100010000" when op = "101011" else --sw
						 "00000001010" when op = "000100" else --beq
						 "10000000010" when op = "000101" else --bne
						 "00000000001" when op = "000010" else --jump
						 "-----------";
		
		ulaOP1 	<= controles(2);
		ulaOP2	<= controles(1);
		ULAop 	<= ulaOP1 & ulaOP2;
		
		ctrula <=
			"0000" when ULAop = "00" else -- lw sw addi
			"0001" when ULAop = "01" else -- beq bne
			"0000" when ULAop = "10" and funct = "100000" else -- add 
			"0001" when ULAop = "10" and funct = "100010" else -- sub 
			"0010" when ULAop = "10" and funct = "100100" else -- and 
			"0011" when ULAop = "10" and funct = "100101" else -- or 
			"1001" when ULAop = "10" and funct = "100111" else -- nor 
			"0101" when ULAop = "10" and funct = "100110" else -- xor 
			"0110" when ULAop = "10" and funct = "000000" else -- sll 
			"0111" when ULAop = "10" and funct = "000010" else -- srl 
			"1110" when ULAop = "10" and funct = "000011" else -- sra 
			"1111" when ULAop = "10" and funct = "101010" else -- slt 
			 "----";
				
		ulasrc2 <= 	'1' when ula = "0110" or ula = "0111" or ula = "1110" else
						'0';
			
		BranchNE <= controles(10);
		RegDst 	<= controles(9);
		ulasrc1  <= controles(8);
		MemToReg <= controles(7);
		RegWrite <= controles(6);
		MemRead  <= controles(5);
		MemWrite <= controles(4);
		BranchEQ <= controles(3);
		Jump     <= controles(0);
		ctrula   <= ula;
		ULAsrc	<= ulasrc1 & ulasrc2;
		opUla 	<= ULAop;
		
		sinais_controles <= controles(0) & controles(1) & controles(2) & controles(3) & controles(4) & controles(5) & controles(6) & controles(7) & controles(8) & controles(9) & controles(10);
		
end Behavioral;