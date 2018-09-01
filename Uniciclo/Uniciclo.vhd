library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity Uniciclo is
	port (
		quatro						: in std_logic_vector(31 downto 0);
		clk							: in std_logic;
		clk_mem						: in std_logic;
		
		-- MODULO_SAIDA
		VSAIDA_PC					: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_MI					: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_MD					: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_BREG					: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_ULA					: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_SUMDESVIO			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_SUMPC				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		
		-- MODULO_SAIDA_SECUNDARIO
		VSAIDA_MUXRD				: OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_MUXALU				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_CONTROLE			: OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
		VSAIDA_MUXAB				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_MUXB					: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		
		-- MODULO_SAIDA_INSTRUCTION
		VSAIDA_INS_RS				: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_RT				: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_RD				: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_SHAMT			: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_FUNCT			: out STD_LOGIC_VECTOR (5 DOWNTO 0);
		VSAIDA_INS_OPCODE			: out STD_LOGIC_VECTOR (5 DOWNTO 0);
		VSAIDA_INS_IMM16			: out STD_LOGIC_VECTOR (15 DOWNTO 0);
		VSAIDA_INS_IMM26			: out STD_LOGIC_VECTOR (25 DOWNTO 0);
		
		MemRead						: out std_logic
	);

end Uniciclo;

architecture rtl of Uniciclo is

signal r1, r2, r3					: std_logic_vector(31 downto 0);
signal r4							: std_logic_vector(4 downto 0); -- Saida do mux RegDst
signal r5							: std_logic_vector(31 downto 0); -- Saida do mux ALUSrc
signal r6							: std_logic_vector(31 downto 0); -- Saida da MD
signal r7							: std_logic_vector(31 downto 0); -- Saida do mux MemReg
signal r9							: std_logic_vector(31 downto 0); -- Saida do mux Shamt
signal r10							: std_logic_vector(31 downto 0); -- Saida do mux do A do BREG
signal r11							: std_logic_vector(7 downto 0); -- Saida do address_calc
signal addedPC						: std_logic_vector(31 downto 0); -- Saida do somador do PC
signal branchResult				: std_logic_vector(31 downto 0); -- Saida do somador do Branch
signal branchMux					: std_logic_vector(31 downto 0); -- Saida do mux do Branch
signal muxSL2_J					: std_logic_vector(31 downto 0); -- Saida do shift do Jump
signal signalExtd					: std_logic_vector(31 downto 0); -- Saida do Signal Extended
signal MI_ins						: std_logic_vector(31 downto 0);
signal to_sum						: std_logic_vector(31 downto 0); -- Saida do somador do Branch
signal pcIns		 				: std_logic_vector(31 downto 0); -- PC
signal PC_next						: std_logic_vector(31 downto 0); -- Saida do MUX do Jump para PC
signal ADDISign					: std_logic_vector(31 downto 0); -- Saida do MUX ALUSrc para ADDI
signal shftJump					: std_logic_vector(27 downto 0); -- Saida do Shift do Jump para o Modulo M1
signal ctrula						: std_logic_vector(3 downto 0);
signal zero							: std_logic;
signal BranchAND					: std_logic;
signal RegDst						: std_logic;
signal ALUSrc						: std_logic_vector(1 downto 0);
signal MemtoReg					: std_logic;
signal we							: std_logic;
signal wren							: std_logic;
signal Branch						: std_logic;
signal Jump							: std_logic;
signal BranchNE					: std_logic;
signal Or_inA						: std_logic;
signal Or_out_mux					: std_logic;
signal Shamt						: std_logic;

begin
--Colocar os sinais internos

ula: entity work.ula port map (
	  ulop 		=> ctrula,
	  A 			=> r10,
	  B			=> r5,
	  aluout		=> r3,
	  zero		=> zero
	);
	
breg: entity work.breg port map(
	  clk			=> clk,
	  we			=> we,
	  rs			=> MI_ins (25 downto 21),
	  rt			=> MI_ins (20 downto 16),
	  rd			=> r4,
	  d_in		=> r7,
	  regA		=> r1,
	  regB		=> r2
	);
	  
MD: entity work.MD port map(
		address	=> r11,
		clock		=> clk_mem,
		data		=> r2,
		wren		=> wren,
		q			=> r6
	);

MI: entity work.MI port map(
		address	=> pcIns (9 downto 2),
		clock		=> clk_mem,
		q			=> MI_ins
	);
	
mux_regdst: entity work.mux_regdst port map(
		RegDst	=> RegDst,
		instA		=> MI_ins (20 downto 16),
		instB		=> MI_ins (15 downto 11),
		WriteR	=> r4
	);
	
mux_ALUSrc: entity work.mux_ALUSrc port map(
		ALUSrc		=> ALUSrc,
		RegB_mux		=> r2,
		SignExt		=> signalExtd,
		ADDISign		=> ADDISign,
		WriteR		=> r5
	);
	
mux_MemReg:	entity work.mux_MemReg port map(	
		MemtoReg		=> MemtoReg,
		q_mux			=> r6,
		aluout_mux	=> r3,
		d_in_mux		=> r7
	);

shiftL2_Sign: entity work.shiftL2_Sign port map(
		signextd 	=> signalExtd,
		to_sum 		=> to_sum
	);

signExtd: entity work.signExtd port map(
		IMM16			=> MI_ins (15 downto 0),
		IMM32			=> signalExtd
	);

muxBranch: entity work.muxBranch port map(
		BranchSg			=> Or_out_mux,
		PC_4				=> addedPC,
		AddedBranch		=> branchResult,
		MuxBranchExit	=> branchMux
	);

muxJump: entity work.muxJump port map(
		JumpSg			=> Jump,
		mux_shift		=> muxSL2_J,
		muxBr_exit		=> branchMux,
		MuxJumpExit		=> PC_next
	);

sumPC: entity work.sumPC port map(
		sumPC_in			=> pcIns,
		quatro			=> quatro,
		sumPC_out		=> addedPC
	);
	
sumBranch: entity work.sumBranch port map(
		sumBranch_inA		=> addedPC,
		sumBranch_inB		=> to_sum,
		sumBranch_out		=> branchResult
	);
	
shiftL2_Jump: entity work.shiftL2_Jump port map(
		insJump				=> MI_ins (25 downto 0),
		j_address			=> shftJump
	);

orJump: entity work.orJump port map(
		PCSomado				=> addedPC,
		jumpshift			=> shftJump,
		exitToMux			=> muxSL2_J
	);

pc: entity work.pc port map(
		clk					=> clk,
		nextIns				=> PC_next,
		c_out					=> pcIns,
		reset					=> clk
	);
	
andPort: entity work.andPort port map(
		branchControl		=> Branch,
		zeroULA				=> zero,
		and_out				=> BranchAND
	);
	
controle: entity work.controle port map(
		op	 					=> MI_ins(31 downto 26),
		funct		 			=> MI_ins(5 downto 0),
		RegDst				=> RegDst,
		ULAsrc				=> ALUSrc,
		MemToReg 			=> MemToReg,
		RegWrite 			=> we,
		MemRead 				=> MemRead,
		MemWrite 			=> wren,
		Jump					=> Jump,
		BranchEQ				=> Branch,
		BranchNE				=> BranchNE,
		Shamt					=> Shamt,
		ctrula				=> ctrula,
		sinais_controles	=> VSAIDA_CONTROLE
	);
	
addiComplete: entity work.addiComplete port map(
		IMM16Addi			=> MI_ins(15 downto 0),
		exitToMuxSrc		=> ADDISign
	);

ANDBne: entity work.ANDBne port map(
		bneControl			=> BranchNE,
		zeroULABne			=> zero,
		andBne_out			=> OR_inA
	);
	
ORBne: entity work.ORBne port map(	
		AND_BNE				=> OR_inA,
		AND_BEQ				=> BranchAND,
		OR_out				=> Or_out_mux
	);

MODULO_SAIDA: entity work.MODULO_SAIDA port map(
		SAIDA_PC				=> pcins,
		SAIDA_MI				=> MI_ins,
		SAIDA_MD				=> r7,
		SAIDA_BREG			=> r1,
		SAIDA_ULA			=> r3,
		SAIDA_SUMDESVIO	=> branchResult,
		SAIDA_SUMPC			=> addedPC,
		-- V = VALOR DE SAIDA
		VSAIDA_PC				=> VSAIDA_PC,
		VSAIDA_MI				=> VSAIDA_MI,
		VSAIDA_MD				=> VSAIDA_MD,
		VSAIDA_BREG				=> VSAIDA_BREG,
		VSAIDA_ULA				=> VSAIDA_ULA,
		VSAIDA_SUMDESVIO		=> VSAIDA_SUMDESVIO,
		VSAIDA_SUMPC			=> VSAIDA_SUMPC
	);
	
MODULO_SAIDA_SECUNDARIO: entity work.MODULO_SAIDA_SECUNDARIO port map(
		SAIDA_MUXRD				=> r4,
		SAIDA_MUXALU			=> r5,
		--SAIDA_MUXALU			=> ADDISign,
		SAIDA_MUXAB				=> branchMux,
		SAIDA_MUXB				=> PC_next,
		
		-- V = VALOR DE SAIDA
		VSAIDA_MUXRD			=> VSAIDA_MUXRD,
		VSAIDA_MUXALU			=> VSAIDA_MUXALU,
		VSAIDA_MUXAB			=> VSAIDA_MUXAB,
		VSAIDA_MUXB				=> VSAIDA_MUXB
	);
	
MODULO_SAIDA_INSTRUCTION: entity work.MODULO_SAIDA_INSTRUCTION port map(
		SAIDA_INS_RS				=> MI_ins (25 downto 21),
		SAIDA_INS_RT				=> MI_ins (20 downto 16),
		SAIDA_INS_RD				=> MI_ins (15 downto 11),
		SAIDA_INS_SHAMT			=> MI_ins (10 downto 6),
		SAIDA_INS_FUNCT			=> MI_ins (5 downto 0),
		SAIDA_INS_OPCODE			=> MI_ins (31 downto 26),
		SAIDA_INS_IMM16			=> MI_ins (15 downto 0),
		SAIDA_INS_IMM26			=> MI_ins (25 downto 0),
		
		-- V = VALOR DE SAIDA
		VSAIDA_INS_RS				=> VSAIDA_INS_RS,
		VSAIDA_INS_RT				=> VSAIDA_INS_RT,
		VSAIDA_INS_RD				=> VSAIDA_INS_RD,
		VSAIDA_INS_SHAMT			=> VSAIDA_INS_SHAMT,
		VSAIDA_INS_FUNCT			=> VSAIDA_INS_FUNCT,
		VSAIDA_INS_OPCODE			=> VSAIDA_INS_OPCODE,
		VSAIDA_INS_IMM16			=> VSAIDA_INS_IMM16,
		VSAIDA_INS_IMM26			=> VSAIDA_INS_IMM26
	);
	
concatShamt: entity work.concatShamt port map(
		inShamt						=> MI_ins(10 downto 6),
		exitShamt					=> r9
	);

MuxShamt: entity work.MuxShamt port map(
		ShamtSg			=> Shamt,
		A1					=> r1,
		A2					=> r9,
		MuxShamtExit	=> r10
	);

address_calc: entity work.address_calc port map(	
		aluResult		=> r3,	
		addressToMem	=> r11
	);
end rtl;