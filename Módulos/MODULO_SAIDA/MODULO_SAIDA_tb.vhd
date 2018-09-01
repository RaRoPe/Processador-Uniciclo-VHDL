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
-- Generated on "02/06/2017 21:48:33"
                                                            
-- Vhdl Test Bench template for design  :  MODULO_SAIDA
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MODULO_SAIDA_tb IS
END MODULO_SAIDA_tb;
ARCHITECTURE MODULO_SAIDA_arch OF MODULO_SAIDA_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL SAIDA_BREG : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SAIDA_MD : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SAIDA_MI : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SAIDA_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SAIDA_SUMDESVIO : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SAIDA_SUMPC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SAIDA_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL VSAIDA_BREG : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL VSAIDA_MD : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL VSAIDA_MI : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL VSAIDA_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL VSAIDA_SUMDESVIO : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL VSAIDA_SUMPC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL VSAIDA_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MODULO_SAIDA
	PORT (
	SAIDA_BREG : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SAIDA_MD : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SAIDA_MI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SAIDA_PC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SAIDA_SUMDESVIO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SAIDA_SUMPC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SAIDA_ULA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	VSAIDA_BREG : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	VSAIDA_MD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	VSAIDA_MI : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	VSAIDA_PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	VSAIDA_SUMDESVIO : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	VSAIDA_SUMPC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	VSAIDA_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MODULO_SAIDA
	PORT MAP (
-- list connections between master ports and signals
	SAIDA_BREG => SAIDA_BREG,
	SAIDA_MD => SAIDA_MD,
	SAIDA_MI => SAIDA_MI,
	SAIDA_PC => SAIDA_PC,
	SAIDA_SUMDESVIO => SAIDA_SUMDESVIO,
	SAIDA_SUMPC => SAIDA_SUMPC,
	SAIDA_ULA => SAIDA_ULA,
	VSAIDA_BREG => VSAIDA_BREG,
	VSAIDA_MD => VSAIDA_MD,
	VSAIDA_MI => VSAIDA_MI,
	VSAIDA_PC => VSAIDA_PC,
	VSAIDA_SUMDESVIO => VSAIDA_SUMDESVIO,
	VSAIDA_SUMPC => VSAIDA_SUMPC,
	VSAIDA_ULA => VSAIDA_ULA
	);
init : PROCESS (SAIDA_BREG, SAIDA_MD, SAIDA_MI, SAIDA_PC, SAIDA_SUMDESVIO, SAIDA_SUMPC, SAIDA_ULA)
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      

END PROCESS init;                                           
always : PROCESS (SAIDA_BREG, SAIDA_MD, SAIDA_MI, SAIDA_PC, SAIDA_SUMDESVIO, SAIDA_SUMPC, SAIDA_ULA)
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	SAIDA_BREG 				<= "00000000000000000000000000000001";
	SAIDA_MD 				<= "00000000000000000000000000000010";
	SAIDA_MI 				<= "00000000000000000000000000000011";
	SAIDA_PC 				<= "00000000000000000000000000000100";
	SAIDA_SUMDESVIO 		<= "00000000000000000000000000000101";
	SAIDA_SUMPC 			<= "00000000000000000000000000000110";
	SAIDA_ULA 				<= "00000000000000000000000000000111";
END PROCESS always;                                          
END MODULO_SAIDA_arch;
