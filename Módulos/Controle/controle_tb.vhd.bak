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
-- Generated on "02/06/2017 01:00:05"
                                                            
-- Vhdl Test Bench template for design  :  controle
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controle_vhd_tst IS
END controle_vhd_tst;
ARCHITECTURE controle_arch OF controle_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BranchEQ : STD_LOGIC;
SIGNAL BranchNE : STD_LOGIC;
SIGNAL funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Jump : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemToReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL op : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL opUla : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
SIGNAL sinais_controles : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL ULAsrc : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT controle
	PORT (
	BranchEQ : OUT STD_LOGIC;
	BranchNE : OUT STD_LOGIC;
	funct : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	Jump : OUT STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	MemToReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	op : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	opUla : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC;
	sinais_controles : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	ULAsrc : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : controle
	PORT MAP (
-- list connections between master ports and signals
	BranchEQ => BranchEQ,
	BranchNE => BranchNE,
	funct => funct,
	Jump => Jump,
	MemRead => MemRead,
	MemToReg => MemToReg,
	MemWrite => MemWrite,
	op => op,
	opUla => opUla,
	RegDst => RegDst,
	RegWrite => RegWrite,
	sinais_controles => sinais_controles,
	ULAsrc => ULAsrc
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
END controle_arch;
