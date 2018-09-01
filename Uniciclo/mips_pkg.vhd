library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package mips_pkg is

-- Declaracao de componentes
	component ula 
	generic ( WSIZE : natural := 32);
	port (
		ulop 		: in std_logic_vector(3 downto 0);
		A, B 		: in std_logic_vector(WSIZE-1 downto 0);
		aluout	: out std_logic_vector(WSIZE-1 downto 0);
		zero 		: out std_logic
		);
	end component;
	
	component breg	generic ( WSIZE : natural := 32; ISIZE : natural := 5; BREGSIZE : natural := 32 );
	port(
		clk		: in std_logic;
		we	 		: in std_logic;
		rs	 		: in std_logic_vector(ISIZE-1 downto 0);
		rt			: in std_logic_vector(ISIZE-1 downto 0);
		rd 		: in std_logic_vector(ISIZE-1 downto 0);
		d_in		: in std_logic_vector(WSIZE-1 downto 0);
		regA		: out std_logic_vector(WSIZE-1 downto 0);
		regB 		: out std_logic_vector(WSIZE-1 downto 0)
		);
	end component;
	
	component MD 
	port (
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC;
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC;
		q			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	
	component MI
	port (
		address				: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock					: IN STD_LOGIC;
		q						: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	
	component mux_regdst
	port ( 
		RegDst	: in  STD_LOGIC;
		instA		: in  STD_LOGIC_VECTOR (4 downto 0);
		instB		: in  STD_LOGIC_VECTOR (4 downto 0);
		WriteR	: out STD_LOGIC_VECTOR (4 downto 0)
	);
	end component;
	
	component mux_ALUSrc
	port (
		ALUSrc		: in  STD_LOGIC;
		RegB_mux		: in  STD_LOGIC_VECTOR (31 downto 0);
		SignExt		: in  STD_LOGIC_VECTOR (31 downto 0);
		ADDISign		: in  STD_LOGIC_VECTOR (31 downto 0);
		WriteR		: out STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	component mux_MemReg
	port ( 
		MemtoReg		: in  STD_LOGIC;
		q_mux			: in  STD_LOGIC_VECTOR (31 downto 0);
		aluout_mux	: in  STD_LOGIC_VECTOR (31 downto 0);
		d_in_mux		: out STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	component shiftL2_Sign
	port( 
		signextd			: in std_logic_vector(31 downto 0);
		to_sum			: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component signExtd
	port(
		IMM16				: in std_logic_vector(15 downto 0);
		IMM32				: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component muxBranch
	port ( 
		BranchSg			: in  STD_LOGIC;
		PC_4				: in  STD_LOGIC_VECTOR (31 downto 0);
		AddedBranch		: in  STD_LOGIC_VECTOR (31 downto 0);
		MuxBranchExit	: out STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	component muxJump
	port ( 
		JumpSg			: in  STD_LOGIC;
		mux_shift		: in  STD_LOGIC_VECTOR (31 downto 0);
		muxBr_exit		: in  STD_LOGIC_VECTOR (31 downto 0);
		MuxJumpExit		: out STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	component sumPC
	port ( 
		sumPC_in				: in std_logic_vector(31 downto 0);
		quatro				: in std_logic_vector(31 downto 0);
		sumPC_out			: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component sumBranch
	port ( 
		sumBranch_inA		: in std_logic_vector(31 downto 0);
		sumBranch_inB 		: in std_logic_vector(31 downto 0);
		sumBranch_out		: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component shiftL2_Jump
	port( 
		insJump			: in std_logic_vector(25 downto 0);
		j_address		: out std_logic_vector(27 downto 0)
	);
	end component;
	
	component orJump
	port( 
		PCSomado			: in std_logic_vector(31 downto 0);
		jumpshift		: in std_logic_vector(27 downto 0);
		exitToMux		: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component pc
	port ( 
		clk			: in  STD_LOGIC;
		nextIns		: in  STD_LOGIC_VECTOR (31 downto 0);
		reset			: in  STD_LOGIC;
		c_out			: out STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	component andPort
	port ( 
		branchControl			: in  STD_LOGIC;
		zeroULA					: in  STD_LOGIC;
		and_out					: out STD_LOGIC
	);
	end component;
	
	component controle
	port( 
		op							: in std_logic_vector(5 downto 0);
		funct						: in std_logic_vector(5 downto 0);
		RegDst					: out std_logic;
		ULAsrc					: out std_logic_vector(1 downto 0);
		MemToReg 				: out std_logic;
		RegWrite 				: out std_logic;
		MemRead 					: out std_logic;
		MemWrite 				: out std_logic;
		Jump						: out std_logic;
		BranchEQ					: out std_logic;
		BranchNE					: out std_logic;
		ctrula					: out std_logic_vector (3 downto 0);
		sinais_controles		: out std_logic_vector(11 downto 0)
	);
	end component;
	
	component addiComplete
	port( 
		IMM16Addi		: in std_logic_vector(15 downto 0);
		exitToMuxSrc	: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component ANDBne
	port ( 
		bneControl				: in  STD_LOGIC;
		zeroULABne				: in  STD_LOGIC;
		andBne_out				: out STD_LOGIC
	);
	end component;
	
	component ORBne
	port ( 
		AND_BEQ				: in  STD_LOGIC;
		AND_BNE				: in  STD_LOGIC;
		OR_out				: out STD_LOGIC
	);
	end component;
	
	component MODULO_SAIDA
	port ( 
		SAIDA_PC				: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_MI				: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_MD				: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_BREG			: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_ULA			: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_SUMDESVIO	: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		SAIDA_SUMPC			: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
		
		-- V = VALOR DE SAIDA
		VSAIDA_PC				: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_MI				: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_MD				: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_BREG				: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_ULA				: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_SUMDESVIO		: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		VSAIDA_SUMPC			: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	
	component MODULO_SAIDA_SECUNDARIO
	port ( 
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
	end component;
	
	component MODULO_SAIDA_INSTRUCTION
	port ( 
		SAIDA_INS_RS				: in STD_LOGIC_VECTOR (4 DOWNTO 0);
		SAIDA_INS_RT				: in STD_LOGIC_VECTOR (4 DOWNTO 0);
		SAIDA_INS_RD				: in STD_LOGIC_VECTOR (4 DOWNTO 0);
		SAIDA_INS_SHAMT			: in STD_LOGIC_VECTOR (4 DOWNTO 0);
		SAIDA_INS_FUNCT			: in STD_LOGIC_VECTOR (5 DOWNTO 0);
		SAIDA_INS_OPCODE			: in STD_LOGIC_VECTOR (5 DOWNTO 0);
		SAIDA_INS_IMM16			: in STD_LOGIC_VECTOR (15 DOWNTO 0);
		SAIDA_INS_IMM26			: in STD_LOGIC_VECTOR (25 DOWNTO 0);		
		
		-- V = VALOR DE SAIDA
		VSAIDA_INS_RS				: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_RT				: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_RD				: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_SHAMT			: out STD_LOGIC_VECTOR (4 DOWNTO 0);
		VSAIDA_INS_FUNCT			: out STD_LOGIC_VECTOR (5 DOWNTO 0);
		VSAIDA_INS_OPCODE			: out STD_LOGIC_VECTOR (5 DOWNTO 0);
		VSAIDA_INS_IMM16			: out STD_LOGIC_VECTOR (15 DOWNTO 0);
		VSAIDA_INS_IMM26			: out STD_LOGIC_VECTOR (25 DOWNTO 0)
	);
	end component;
	
	component concatShamt
	port(
		inShamt: in std_logic_vector(4 downto 0);
		exitShamt: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component muxShamt
	port ( 
		ShamtSg			: in  STD_LOGIC;
		A1					: in  STD_LOGIC_VECTOR (31 downto 0);
		A2					: in  STD_LOGIC_VECTOR (31 downto 0);
		MuxShamtExit	: out STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	component address_calc
	port (
		aluResult			: IN std_logic_vector(31 DOWNTO 0);
		addressToMem		: OUT std_logic_vector(7 DOWNTO 0)
	);
	end component;
	
	--component sign_extend
	--port (
	--	instruction : in std_logic_vector(31 downto 0);
		
	--);
	--end component
	
	-- Controle ULAmips
	constant ULA_AND : std_logic_vector(3 downto 0) := "0010"; -- 0
	constant ULA_OR  : std_logic_vector(3 downto 0) := "0011"; -- 1
	constant ULA_ADD : std_logic_vector(3 downto 0) := "0000"; -- 2
	constant ULA_XOR : std_logic_vector(3 downto 0) := "0101"; -- 3
	constant ULA_SLL : std_logic_vector(3 downto 0) := "0110"; -- 4
	constant ULA_SRL : std_logic_vector(3 downto 0) := "0111"; -- 5
	constant ULA_SUB : std_logic_vector(3 downto 0) := "0001"; -- 6
	constant ULA_SLT : std_logic_vector(3 downto 0) := "1111"; -- 7
	constant ULA_SRA : std_logic_vector(3 downto 0) := "1110"; -- 9
	constant ULA_NOR : std_logic_vector(3 downto 0) := "1001"; -- 12
	constant ULA_UKW : std_logic_vector(3 downto 0) := "XXXX";
	
	--constant ULA_XOR : std_logic_vector(3 downto 0) := "0011"; -- 3
	--constant ULA_SLL : std_logic_vector(3 downto 0) := "0100"; -- 4
	--constant ULA_SRL : std_logic_vector(3 downto 0) := "0101"; -- 5
	--constant ULA_SRA : std_logic_vector(3 downto 0) := "1001"; -- 9

end mips_pkg;