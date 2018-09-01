library ieee;
use ieee.Std_Logic_1164.all;
use ieee.numeric_std.all;

entity controle is
	port( 
		op			: in std_logic_vector(5 downto 0);
		funct		: in std_logic_vector(5 downto 0);
		RegDst	: out std_logic;
		ULAsrc	: out std_logic_vector(1 downto 0);
		MemToReg : out std_logic;
		RegWrite : out std_logic;
		MemRead 	: out std_logic;
		MemWrite : out std_logic;
		Jump		: out std_logic;
		BranchEQ	: out std_logic;
		BranchNE : out std_logic;
		Shamt		: out std_logic;
		ctrula	: out std_logic_vector (3 downto 0);
		sinais_controles: out std_logic_vector(11 downto 0)
	);
end controle;

architecture Behavioral of controle is

	signal controles  : std_logic_vector(11 downto 0);
	signal ctrulaS		: std_logic_vector (3 downto 0);
	signal ULAop		: std_logic_vector (1 downto 0);
	signal clk			: std_logic;
	signal ulaOP1		: std_logic;
	signal ulaOP2		: std_logic;
	signal ulasrc1		: std_logic;
	signal ulasrc2		: std_logic;
	-- controles(Shamt, branchNE, regDst, ulasrc1, memToReg, regWrite, memread, memWrite, branchEQ, ulactrl(2 e 1), jump)
	
	begin
		
		process (funct, controles, op)
		begin
			if ((funct = "000000") or (funct = "000010") or (funct = "000011")) then -- SLL, SRL, SRA
				if op = "000000" then -- TIPO R
					controles <="101001000100";
				elsif op = "001000" then -- ADDI
					controles <="000101000110";
				elsif op = "100011" then -- LW
					controles <="000111100000";
				elsif op = "101011" then -- SW
					controles <="000100010000";
				elsif op = "000100" then -- BEQ
					controles <="000000001010";
				elsif op = "000101" then -- BNE
					controles <="010000000010";
				elsif op = "000010" then -- JUMP
					controles <="000000000001";
				end if;
			else 
				if op = "000000" then -- TIPO R
					controles <="001001000100";
				elsif op = "001000" then  -- ADDI
					controles <="000101000110";
				elsif op = "100011" then -- LW
					controles <="000111100000";
				elsif op = "101011" then -- SW
					controles <="000100010000";
				elsif op = "000100" then -- BEQ
					controles <="000000001010";
				elsif op = "000101" then -- BNE
					controles <="010000000010";
				elsif op = "000010" then --JUMP
					controles <="000000000001";
				end if;
			end if;
		end process;
		
		ulaOP1 	<= controles(2);
		ulaOP2	<= controles(1);
		ULAop 	<= ulaOP1 & ulaOP2;
		
		ctrulaS <=
			"0000" when ULAop = "00" else -- lw sw
			"0000" when ULAop = "11" else -- addi
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
				
			process (ULAop)
			begin
				if  ULAop = "01" or ULAop = "10" then
					ULAsrc <= "00";
					elsif ULAop = "00" then
					ULAsrc <= "01";
					elsIF ULAop = "11" then
					ULAsrc <= "10";					
				end if;
			end process;
		
		Shamt <= controles(11);
		BranchNE <= controles(10);
		RegDst 	<= controles(9);
		ulasrc1  <= controles(8);
		MemToReg <= controles(7);
		RegWrite <= controles(6);
		MemRead  <= controles(5);
		MemWrite <= controles(4);
		BranchEQ <= controles(3);
		Jump     <= controles(0);
		--ULAsrc	<= ulasrc1 & ulasrc2;
		
		ctrula 	<= ctrulaS;
		
		sinais_controles <= controles(0) & controles(1) & controles(2) & controles(3) & controles(4) & controles(5) & controles(6) & controles(7) & controles(8) & controles(9) & controles(10) & controles (11);
		
end Behavioral;