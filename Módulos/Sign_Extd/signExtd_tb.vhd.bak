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
-- Generated on "02/05/2017 15:50:22"
                                                            
-- Vhdl Test Bench template for design  :  signExtd
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY signExtd_vhd_tst IS
END signExtd_vhd_tst;
ARCHITECTURE signExtd_arch OF signExtd_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL IMM16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IMM32 : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT signExtd
	PORT (
	IMM16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	IMM32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : signExtd
	PORT MAP (
-- list connections between master ports and signals
	IMM16 => IMM16,
	IMM32 => IMM32
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
END signExtd_arch;
