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
-- Generated on "02/07/2017 14:04:18"
                                                            
-- Vhdl Test Bench template for design  :  concatShamt
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY concatShamt_tb IS
END concatShamt_tb;
ARCHITECTURE concatShamt_arch OF concatShamt_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL exitShamt : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inShamt : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT concatShamt
	PORT (
	exitShamt : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inShamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : concatShamt
	PORT MAP (
-- list connections between master ports and signals
	exitShamt => exitShamt,
	inShamt => inShamt
	);
init : PROCESS (inShamt)
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
	inShamt <= "10001";
END PROCESS init;                                           
always : PROCESS (inShamt)
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
		  inShamt <= "10001";

END PROCESS always;                                          
END concatShamt_arch;
