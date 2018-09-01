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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 10.1 Build 153 11/29/2010 SJ Web Edition"

-- DATE "02/06/2017 05:08:16"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	andPort IS
    PORT (
	branchControl : IN std_logic;
	zeroULA : IN std_logic;
	and_out : OUT std_logic
	);
END andPort;

-- Design Ports Information
-- and_out	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- branchControl	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- zeroULA	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF andPort IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_branchControl : std_logic;
SIGNAL ww_zeroULA : std_logic;
SIGNAL ww_and_out : std_logic;
SIGNAL branchControl_acombout : std_logic;
SIGNAL zeroULA_acombout : std_logic;
SIGNAL and_out_a0_combout : std_logic;
SIGNAL and_out_a0_DATAB_driver : std_logic;
SIGNAL and_out_a0_DATAC_driver : std_logic;
SIGNAL and_out_DATAIN_driver : std_logic;

BEGIN

ww_branchControl <= branchControl;
ww_zeroULA <= zeroULA;
and_out <= ww_and_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
branchControl_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_branchControl,
	combout => branchControl_acombout);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
zeroULA_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_zeroULA,
	combout => zeroULA_acombout);

and_out_a0_DATAB_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => branchControl_acombout,
	dataout => and_out_a0_DATAB_driver);

and_out_a0_DATAC_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => zeroULA_acombout,
	dataout => and_out_a0_DATAC_driver);

-- Location: LCCOMB_X48_Y50_N0
and_out_a0 : cycloneii_lcell_comb
-- Equation(s):
-- and_out_a0_combout = (branchControl_acombout & zeroULA_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => and_out_a0_DATAB_driver,
	datac => and_out_a0_DATAC_driver,
	combout => and_out_a0_combout);

and_out_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => and_out_a0_combout,
	dataout => and_out_DATAIN_driver);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
and_out_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => and_out_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_and_out);
END structure;


