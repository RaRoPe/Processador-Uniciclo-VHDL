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
-- Generated on "02/06/2017 04:59:16"
                                                            
-- Vhdl Test Bench template for design  :  andPort
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY andPort_vhd_tst IS
END andPort_vhd_tst;
ARCHITECTURE andPort_arch OF andPort_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL and_out : STD_LOGIC;
SIGNAL branchControl : STD_LOGIC;
SIGNAL zeroULA : STD_LOGIC;
COMPONENT andPort
	PORT (
	and_out : OUT STD_LOGIC;
	branchControl : IN STD_LOGIC;
	zeroULA : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : andPort
	PORT MAP (
-- list connections between master ports and signals
	and_out => and_out,
	branchControl => branchControl,
	zeroULA => zeroULA
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
END andPort_arch;
