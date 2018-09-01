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
-- Generated on "02/05/2017 23:41:57"
                                                            
-- Vhdl Test Bench template for design  :  shiftL2_Jump
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY shiftL2_Jump_tb IS
END shiftL2_Jump_tb;

ARCHITECTURE shiftL2_Jump_arch OF shiftL2_Jump_tb IS

	-- constants
	-- signals
	SIGNAL insJump : STD_LOGIC_VECTOR(25 DOWNTO 0);
	SIGNAL j_address : STD_LOGIC_VECTOR(27 DOWNTO 0);
	
	COMPONENT shiftL2_Jump
	
		PORT (
			insJump : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
			j_address : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
		);
		
	END COMPONENT;
	
	BEGIN
	
		i1 : shiftL2_Jump
		
		PORT MAP (
			-- list connections between master ports and signals
			insJump => insJump,
			j_address => j_address
		);
		
	init : PROCESS (insJump)
	-- variable declarations
	
	BEGIN                                                        
		-- code that executes only once                      
	
	END PROCESS init;
	
	always : PROCESS (insJump)
		-- optional sensitivity list
		-- (        )
		-- variable declarations
	BEGIN                                                         
		-- code executes for every event on sensitivity list
		insJump <= "00000000000000000000000001";
	
	END PROCESS always;
	
END shiftL2_Jump_arch;