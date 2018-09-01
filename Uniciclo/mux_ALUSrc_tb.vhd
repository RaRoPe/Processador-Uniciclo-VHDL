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
-- Generated on "02/04/2017 23:08:49"
                                                            
-- Vhdl Test Bench template for design  :  mux_ALUSrc
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_ALUSrc_tb IS
END mux_ALUSrc_tb;

ARCHITECTURE mux_ALUSrc_arch OF mux_ALUSrc_tb IS
	-- constants
	-- signals
	SIGNAL ALUSrc 		: STD_LOGIC;
	SIGNAL RegB_mux 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SignExt		: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL WriteR		: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	COMPONENT mux_ALUSrc
		PORT (
			ALUSrc 			: IN STD_LOGIC;
			RegB_mux 		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			SignExt 			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			WriteR 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;
	
	BEGIN
		i1 : mux_ALUSrc
		PORT MAP (
			-- list connections between master ports and signals
			RegB_mux		=> RegB_mux,
			ALUSrc		=> ALUSrc,
			SignExt		=> SignExt,
			WriteR 		=> WriteR
		);
		
	init : PROCESS (RegB_mux, SignExt)
	-- variable declarations
	BEGIN
		-- code that executes only once
		RegB_mux <= "00000000000000000000000000000000";
		SignExt <= "00000000000000000000000000000001";
	END PROCESS init;
	
	always : PROCESS (RegB_mux, SignExt)
		-- optional sensitivity list
		-- (        )
		-- variable declarations
	BEGIN
		-- code executes for every event on sensitivity list
		RegB_mux <= "00000000000000000000000000000000";
		SignExt <= "00000000000000000000000000000001";
	
	END PROCESS always;
	
	tb : process
	begin
			ALUSrc	<= '1';
			wait for 2 ns;
			ALUSrc	<= '0';
			wait for 2 ns;
	end process;
	
END mux_ALUSrc_arch;