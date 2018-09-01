-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/06/2017 12:02:03"
                                                            
-- Vhdl Test Bench template for design  :  Uniciclo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Uniciclo_tb IS
END Uniciclo_tb;

ARCHITECTURE Uniciclo_arch OF Uniciclo_tb IS
	
	-- constants
	-- signals
	SIGNAL clk 						: STD_LOGIC;
	SIGNAL clk_mem 				: STD_LOGIC;
	SIGNAL MemRead 				: STD_LOGIC;
	SIGNAL quatro 					: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	signal VSAIDA_PC				: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_MI				: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_MD				: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_BREG			: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_ULA				: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_SUMDESVIO		: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_SUMPC			: STD_LOGIC_VECTOR (31 DOWNTO 0);
	
	-- MODULO_SAIDA_SECUNDARIO
	signal VSAIDA_MUXRD			: STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal VSAIDA_MUXALU			: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_CONTROLE		: STD_LOGIC_VECTOR (11 DOWNTO 0);
	signal VSAIDA_MUXAB			: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal VSAIDA_MUXB			: STD_LOGIC_VECTOR (31 DOWNTO 0);
	
	-- MODULO_SAIDA_INSTRUCTION
	signal VSAIDA_INS_RS					: STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal VSAIDA_INS_RT					: STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal VSAIDA_INS_RD					: STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal VSAIDA_INS_SHAMT				: STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal VSAIDA_INS_FUNCT				: STD_LOGIC_VECTOR (5 DOWNTO 0);
	signal VSAIDA_INS_OPCODE			: STD_LOGIC_VECTOR (5 DOWNTO 0);
	signal VSAIDA_INS_IMM16				: STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal VSAIDA_INS_IMM26				: STD_LOGIC_VECTOR (25 DOWNTO 0);
	
	COMPONENT Uniciclo

		PORT (
			quatro 					: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			clk 						: IN STD_LOGIC;
			clk_mem 					: IN STD_LOGIC;
			
			-- MODULO_SAIDA
			VSAIDA_PC				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_MI				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_MD				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_BREG				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_ULA				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_SUMDESVIO		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_SUMPC			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			
			-- MODULO_SAIDA_SECUNDARIO
			VSAIDA_MUXRD			: OUT  STD_LOGIC_VECTOR (4 DOWNTO 0);
			VSAIDA_MUXALU			: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_CONTROLE		: OUT  STD_LOGIC_VECTOR (11 DOWNTO 0);
			VSAIDA_MUXAB			: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
			VSAIDA_MUXB				: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
			
			-- MODULO_SAIDA_INSTRUCTION
			VSAIDA_INS_RS			: out STD_LOGIC_VECTOR (4 DOWNTO 0);
			VSAIDA_INS_RT			: out STD_LOGIC_VECTOR (4 DOWNTO 0);
			VSAIDA_INS_RD			: out STD_LOGIC_VECTOR (4 DOWNTO 0);
			VSAIDA_INS_SHAMT		: out STD_LOGIC_VECTOR (4 DOWNTO 0);
			VSAIDA_INS_FUNCT		: out STD_LOGIC_VECTOR (5 DOWNTO 0);
			VSAIDA_INS_OPCODE		: out STD_LOGIC_VECTOR (5 DOWNTO 0);
			VSAIDA_INS_IMM16		: out STD_LOGIC_VECTOR (15 DOWNTO 0);
			VSAIDA_INS_IMM26		: out STD_LOGIC_VECTOR (25 DOWNTO 0);
			
			MemRead 					: OUT STD_LOGIC
		);
		
	END COMPONENT;
	
	BEGIN
		i1 : Uniciclo
		
		PORT MAP (
			-- list connections between master ports and signals
			clk 					=> clk,
			clk_mem 				=> clk_mem,
			MemRead 				=> MemRead,
			quatro 				=> quatro,
			VSAIDA_BREG 		=> VSAIDA_BREG,
			VSAIDA_MD 			=> VSAIDA_MD,
			VSAIDA_MI			=> VSAIDA_MI,
			VSAIDA_PC			=> VSAIDA_PC,
			VSAIDA_SUMDESVIO	=> VSAIDA_SUMDESVIO,
			VSAIDA_SUMPC		=> VSAIDA_SUMPC,
			VSAIDA_ULA			=> VSAIDA_ULA,
			VSAIDA_MUXRD		=> VSAIDA_MUXRD,
			VSAIDA_MUXALU		=> VSAIDA_MUXALU,
			VSAIDA_CONTROLE	=> VSAIDA_CONTROLE,
			VSAIDA_MUXAB		=> VSAIDA_MUXAB,
			VSAIDA_MUXB			=> VSAIDA_MUXB,
			VSAIDA_INS_RS		=> VSAIDA_INS_RS,
			VSAIDA_INS_RT		=> VSAIDA_INS_RT,
			VSAIDA_INS_RD		=> VSAIDA_INS_RD,
			VSAIDA_INS_SHAMT	=> VSAIDA_INS_SHAMT,
			VSAIDA_INS_FUNCT	=> VSAIDA_INS_FUNCT,
			VSAIDA_INS_OPCODE	=> VSAIDA_INS_OPCODE,
			VSAIDA_INS_IMM16	=> VSAIDA_INS_IMM16,
			VSAIDA_INS_IMM26	=> VSAIDA_INS_IMM26
		);
		
	init: PROCESS (clk, clk_mem, VSAIDA_INS_RS, VSAIDA_INS_RD, VSAIDA_INS_SHAMT, VSAIDA_INS_FUNCT, VSAIDA_INS_OPCODE, VSAIDA_INS_IMM16, VSAIDA_INS_IMM26, VSAIDA_MUXB, VSAIDA_MUXAB, VSAIDA_MUXALU, VSAIDA_MUXRD, VSAIDA_BREG, VSAIDA_MD, VSAIDA_MI, VSAIDA_PC, VSAIDA_SUMDESVIO, VSAIDA_SUMPC, VSAIDA_ULA)
	-- variable declarations
	
	BEGIN
		-- code that executes only once  
	
	END PROCESS init;
	
	always: PROCESS (clk, clk_mem, VSAIDA_INS_RS, VSAIDA_INS_RD, VSAIDA_INS_SHAMT, VSAIDA_INS_FUNCT, VSAIDA_INS_OPCODE, VSAIDA_INS_IMM16, VSAIDA_INS_IMM26, VSAIDA_MUXB, VSAIDA_MUXAB, VSAIDA_MUXALU, VSAIDA_MUXRD, VSAIDA_BREG, VSAIDA_MD, VSAIDA_MI, VSAIDA_PC, VSAIDA_SUMDESVIO, VSAIDA_SUMPC, VSAIDA_ULA)
		-- optional sensitivity list
		-- (        )
		-- variable declarations
	
	BEGIN                                                         
		-- code executes for every event on sensitivity list  
		quatro <= "00000000000000000000000000000100";
		
	END PROCESS always;
	
	clk_process : process
	begin
		clk <= '0';
		wait for 5 ps;
		clk <= '1';
		wait for 5 ps;
	end process;
	
	clk_mem_process : process
	begin
		clk_mem <= '0';
		wait for 1 ps;
		clk_mem <= '1';
		wait for 1 ps;
	end process;
	
END Uniciclo_arch;
