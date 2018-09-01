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
-- Generated on "02/06/2017 11:15:11"
                                                            
-- Vhdl Test Bench template for design  :  ORBne
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ORBne_tb IS
END ORBne_tb;
ARCHITECTURE ORBne_arch OF ORBne_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL AND_BEQ : STD_LOGIC;
SIGNAL AND_BNE : STD_LOGIC;
SIGNAL OR_out : STD_LOGIC;
COMPONENT ORBne
	PORT (
	AND_BEQ : IN STD_LOGIC;
	AND_BNE : IN STD_LOGIC;
	OR_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ORBne
	PORT MAP (
-- list connections between master ports and signals
	AND_BEQ => AND_BEQ,
	AND_BNE => AND_BNE,
	OR_out => OR_out
	);
init : PROCESS    (AND_BEQ, AND_BNE)                                            
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      

END PROCESS init;                                           
always : PROCESS  (AND_BEQ, AND_BNE)                                            
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  AND_BEQ <= '1';
		  AND_BNE <= '0';

END PROCESS always;                                          
END ORBne_arch;
