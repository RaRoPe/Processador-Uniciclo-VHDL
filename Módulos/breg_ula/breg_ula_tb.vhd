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
-- Generated on "01/24/2017 19:16:45"
                                                            
-- Vhdl Test Bench template for design  :  breg_ula
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.mips_pkg.all;

ENTITY breg_ula_tb IS
END breg_ula_tb;

ARCHITECTURE breg_ula_arch OF breg_ula_tb IS

-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL d_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL func : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL opula : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rs : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rt : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL we : STD_LOGIC;
SIGNAL zero : STD_LOGIC;

	COMPONENT breg_ula
		PORT (
			clk : IN STD_LOGIC;
			d_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			d_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			func : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			opula : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			rs : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			rt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			we : IN STD_LOGIC;
			zero : OUT STD_LOGIC
		);
	END COMPONENT;

	BEGIN

	i1 : breg_ula
	
	PORT MAP (
		-- list connections between master ports and signals
		clk => clk,
		d_in => d_in,
		d_out => d_out,
		func => func,
		opUla => opUla,
		rd => rd,
		rs => rs,
		rt => rt,
		we => we,
		zero => zero
	);
	
	init : PROCESS (clk, we)                                               
	-- variable declarations                                     

	BEGIN                                                        
		-- code that executes only once
		we <= '1';
		opUla <= "10";
		func <= "000000";
		rt <= "00000";
		
	END PROCESS init;                                           

	always : PROCESS (rs, d_in)

	BEGIN		
		-- code executes for every event on sensitivity list
		
	END PROCESS always;
	
	for_process : process
	begin 
		for i in 0 to 31 loop
			rs <= std_logic_vector(to_unsigned(i, 5));
			d_in <= std_logic_vector(to_unsigned(i, 32));
			rd <= d_in(4 downto 0);
			wait for 15 ps;
		end loop;
	end process;
	
	clk_process : process
	begin
		clk <= '0';
		wait for 15 ps;
		clk <= '1';
		wait for 15 ps;
	end process;
	
END breg_ula_arch;
