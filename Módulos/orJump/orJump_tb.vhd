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
-- Generated on "02/06/2017 00:11:59"
                                                            
-- Vhdl Test Bench template for design  :  orJump
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY orJump_tb IS
END orJump_tb;

ARCHITECTURE orJump_arch OF orJump_tb IS

	-- constants
	-- signals
	SIGNAL exitToMux 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL jumpshift 	: STD_LOGIC_VECTOR(27 DOWNTO 0);
	SIGNAL PCSomado 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	COMPONENT orJump
	
		PORT (
			exitToMux 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			jumpshift 	: IN STD_LOGIC_VECTOR(27 DOWNTO 0);
			PCSomado 	: IN STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
		
	END COMPONENT;
	
	BEGIN
		i1 : orJump
		
		PORT MAP (
			-- list connections between master ports and signals
			exitToMux 	=> exitToMux,
			jumpshift 	=> jumpshift,
			PCSomado 	=> PCSomado
		);
		
	init : PROCESS (jumpshift, PCSomado)
	-- variable declarations
	
	BEGIN
		-- code that executes only once
	
	END PROCESS init;
	
	always : PROCESS (jumpshift, PCSomado)
	-- optional sensitivity list
	-- (        )
	-- variable declarations
	BEGIN
		-- code executes for every event on sensitivity list
		jumpshift <= "0000000000000000000000000001";
		PCSomado <= "10000000000000000000000000000000";
	
	END PROCESS always;
END orJump_arch;
