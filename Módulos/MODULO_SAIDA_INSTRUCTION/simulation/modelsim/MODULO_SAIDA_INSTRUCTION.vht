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
-- Generated on "02/07/2017 10:30:48"
                                                            
-- Vhdl Test Bench template for design  :  MODULO_SAIDA_INSTRUCTION
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MODULO_SAIDA_INSTRUCTION_vhd_tst IS
END MODULO_SAIDA_INSTRUCTION_vhd_tst;
ARCHITECTURE MODULO_SAIDA_INSTRUCTION_arch OF MODULO_SAIDA_INSTRUCTION_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL SAIDA_INS_FUNCT : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SAIDA_INS_IMM16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SAIDA_INS_IMM26 : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL SAIDA_INS_OPCODE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SAIDA_INS_RD : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL SAIDA_INS_RS : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL SAIDA_INS_RT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL SAIDA_INS_SHAMT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL VSAIDA_INS_FUNCT : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL VSAIDA_INS_IMM16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL VSAIDA_INS_IMM26 : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL VSAIDA_INS_OPCODE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL VSAIDA_INS_RD : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL VSAIDA_INS_RS : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL VSAIDA_INS_RT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL VSAIDA_INS_SHAMT : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT MODULO_SAIDA_INSTRUCTION
	PORT (
	SAIDA_INS_FUNCT : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	SAIDA_INS_IMM16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SAIDA_INS_IMM26 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
	SAIDA_INS_OPCODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	SAIDA_INS_RD : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	SAIDA_INS_RS : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	SAIDA_INS_RT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	SAIDA_INS_SHAMT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	VSAIDA_INS_FUNCT : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	VSAIDA_INS_IMM16 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	VSAIDA_INS_IMM26 : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
	VSAIDA_INS_OPCODE : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	VSAIDA_INS_RD : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	VSAIDA_INS_RS : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	VSAIDA_INS_RT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	VSAIDA_INS_SHAMT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MODULO_SAIDA_INSTRUCTION
	PORT MAP (
-- list connections between master ports and signals
	SAIDA_INS_FUNCT => SAIDA_INS_FUNCT,
	SAIDA_INS_IMM16 => SAIDA_INS_IMM16,
	SAIDA_INS_IMM26 => SAIDA_INS_IMM26,
	SAIDA_INS_OPCODE => SAIDA_INS_OPCODE,
	SAIDA_INS_RD => SAIDA_INS_RD,
	SAIDA_INS_RS => SAIDA_INS_RS,
	SAIDA_INS_RT => SAIDA_INS_RT,
	SAIDA_INS_SHAMT => SAIDA_INS_SHAMT,
	VSAIDA_INS_FUNCT => VSAIDA_INS_FUNCT,
	VSAIDA_INS_IMM16 => VSAIDA_INS_IMM16,
	VSAIDA_INS_IMM26 => VSAIDA_INS_IMM26,
	VSAIDA_INS_OPCODE => VSAIDA_INS_OPCODE,
	VSAIDA_INS_RD => VSAIDA_INS_RD,
	VSAIDA_INS_RS => VSAIDA_INS_RS,
	VSAIDA_INS_RT => VSAIDA_INS_RT,
	VSAIDA_INS_SHAMT => VSAIDA_INS_SHAMT
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END MODULO_SAIDA_INSTRUCTION_arch;
