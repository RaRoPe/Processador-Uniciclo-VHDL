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

ENTITY Uniciclo_vhd_tst IS
END Uniciclo_vhd_tst;
ARCHITECTURE Uniciclo_arch OF Uniciclo_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_mem : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL quatro : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_teste : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT Uniciclo
	PORT (
	clk : IN STD_LOGIC;
	clk_mem : IN STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	quatro : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_teste : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Uniciclo
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_mem => clk_mem,
	MemRead => MemRead,
	quatro => quatro,
	saida_teste => saida_teste
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
END Uniciclo_arch;
