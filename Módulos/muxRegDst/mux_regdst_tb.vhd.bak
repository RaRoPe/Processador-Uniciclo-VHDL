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
-- Generated on "02/04/2017 22:32:44"
                                                            
-- Vhdl Test Bench template for design  :  mux_regdst
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_regdst_vhd_tst IS
END mux_regdst_vhd_tst;
ARCHITECTURE mux_regdst_arch OF mux_regdst_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL instA : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instB : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL WriteR : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT mux_regdst
	PORT (
	instA : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	instB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	RegDst : IN STD_LOGIC;
	WriteR : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_regdst
	PORT MAP (
-- list connections between master ports and signals
	instA => instA,
	instB => instB,
	RegDst => RegDst,
	WriteR => WriteR
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
END mux_regdst_arch;
