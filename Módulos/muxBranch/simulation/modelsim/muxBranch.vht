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
-- Generated on "02/05/2017 17:51:42"
                                                            
-- Vhdl Test Bench template for design  :  muxBranch
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY muxBranch_vhd_tst IS
END muxBranch_vhd_tst;
ARCHITECTURE muxBranch_arch OF muxBranch_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BranchSg : STD_LOGIC;
SIGNAL MuxBranchExit : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC_4 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SumBranch : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT muxBranch
	PORT (
	BranchSg : IN STD_LOGIC;
	MuxBranchExit : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC_4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SumBranch : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : muxBranch
	PORT MAP (
-- list connections between master ports and signals
	BranchSg => BranchSg,
	MuxBranchExit => MuxBranchExit,
	PC_4 => PC_4,
	SumBranch => SumBranch
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
END muxBranch_arch;
