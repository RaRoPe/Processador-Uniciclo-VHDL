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

-- DATE "02/06/2017 14:30:24"

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

ENTITY 	MI IS
    PORT (
	address : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	q : OUT std_logic_vector(31 DOWNTO 0)
	);
END MI;

-- Design Ports Information
-- q[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[5]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[8]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[10]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[11]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[12]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[13]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[14]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[15]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[16]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[17]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[18]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[19]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[20]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[21]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[22]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[23]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[24]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[25]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[26]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[27]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[28]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[29]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[30]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[31]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[6]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[7]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus : std_logic_vector(13 DOWNTO 0);
SIGNAL clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL clock_acombout : std_logic;
SIGNAL clock_aclkctrl_outclk : std_logic;
SIGNAL address_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL altsyncram_component_aauto_generated_aq_a : std_logic_vector(31 DOWNTO 0);
SIGNAL altsyncram_component_aauto_generated_aram_block1a0_CLK0_driver : std_logic;
SIGNAL altsyncram_component_aauto_generated_aram_block1a18_CLK0_driver : std_logic;
SIGNAL q_a0_a_DATAIN_driver : std_logic;
SIGNAL q_a1_a_DATAIN_driver : std_logic;
SIGNAL q_a2_a_DATAIN_driver : std_logic;
SIGNAL q_a3_a_DATAIN_driver : std_logic;
SIGNAL q_a4_a_DATAIN_driver : std_logic;
SIGNAL q_a5_a_DATAIN_driver : std_logic;
SIGNAL q_a6_a_DATAIN_driver : std_logic;
SIGNAL q_a7_a_DATAIN_driver : std_logic;
SIGNAL q_a8_a_DATAIN_driver : std_logic;
SIGNAL q_a9_a_DATAIN_driver : std_logic;
SIGNAL q_a10_a_DATAIN_driver : std_logic;
SIGNAL q_a11_a_DATAIN_driver : std_logic;
SIGNAL q_a12_a_DATAIN_driver : std_logic;
SIGNAL q_a13_a_DATAIN_driver : std_logic;
SIGNAL q_a14_a_DATAIN_driver : std_logic;
SIGNAL q_a15_a_DATAIN_driver : std_logic;
SIGNAL q_a16_a_DATAIN_driver : std_logic;
SIGNAL q_a17_a_DATAIN_driver : std_logic;
SIGNAL q_a18_a_DATAIN_driver : std_logic;
SIGNAL q_a19_a_DATAIN_driver : std_logic;
SIGNAL q_a20_a_DATAIN_driver : std_logic;
SIGNAL q_a21_a_DATAIN_driver : std_logic;
SIGNAL q_a22_a_DATAIN_driver : std_logic;
SIGNAL q_a23_a_DATAIN_driver : std_logic;
SIGNAL q_a24_a_DATAIN_driver : std_logic;
SIGNAL q_a25_a_DATAIN_driver : std_logic;
SIGNAL q_a26_a_DATAIN_driver : std_logic;
SIGNAL q_a27_a_DATAIN_driver : std_logic;
SIGNAL q_a28_a_DATAIN_driver : std_logic;
SIGNAL q_a29_a_DATAIN_driver : std_logic;
SIGNAL q_a30_a_DATAIN_driver : std_logic;
SIGNAL q_a31_a_DATAIN_driver : std_logic;

BEGIN

ww_address <= address;
ww_clock <= clock;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

altsyncram_component_aauto_generated_aq_a(0) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
altsyncram_component_aauto_generated_aq_a(1) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
altsyncram_component_aauto_generated_aq_a(2) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
altsyncram_component_aauto_generated_aq_a(3) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
altsyncram_component_aauto_generated_aq_a(4) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
altsyncram_component_aauto_generated_aq_a(5) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
altsyncram_component_aauto_generated_aq_a(6) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
altsyncram_component_aauto_generated_aq_a(7) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);
altsyncram_component_aauto_generated_aq_a(8) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(8);
altsyncram_component_aauto_generated_aq_a(9) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(9);
altsyncram_component_aauto_generated_aq_a(10) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(10);
altsyncram_component_aauto_generated_aq_a(11) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(11);
altsyncram_component_aauto_generated_aq_a(12) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(12);
altsyncram_component_aauto_generated_aq_a(13) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(13);
altsyncram_component_aauto_generated_aq_a(14) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(14);
altsyncram_component_aauto_generated_aq_a(15) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(15);
altsyncram_component_aauto_generated_aq_a(16) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(16);
altsyncram_component_aauto_generated_aq_a(17) <= altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(17);

altsyncram_component_aauto_generated_aq_a(18) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(0);
altsyncram_component_aauto_generated_aq_a(19) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(1);
altsyncram_component_aauto_generated_aq_a(20) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(2);
altsyncram_component_aauto_generated_aq_a(21) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(3);
altsyncram_component_aauto_generated_aq_a(22) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(4);
altsyncram_component_aauto_generated_aq_a(23) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(5);
altsyncram_component_aauto_generated_aq_a(24) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(6);
altsyncram_component_aauto_generated_aq_a(25) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(7);
altsyncram_component_aauto_generated_aq_a(26) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(8);
altsyncram_component_aauto_generated_aq_a(27) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(9);
altsyncram_component_aauto_generated_aq_a(28) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(10);
altsyncram_component_aauto_generated_aq_a(29) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(11);
altsyncram_component_aauto_generated_aq_a(30) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(12);
altsyncram_component_aauto_generated_aq_a(31) <= altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus(13);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
clock_aI : cycloneii_io
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
	padio => ww_clock,
	combout => clock_acombout);

clock_aclkctrl_INCLK_a0_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clock_acombout,
	dataout => clock_aclkctrl_INCLK_bus(0));

clock_aclkctrl_INCLK_a1_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => clock_aclkctrl_INCLK_bus(1));

clock_aclkctrl_INCLK_a2_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => clock_aclkctrl_INCLK_bus(2));

clock_aclkctrl_INCLK_a3_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => gnd,
	dataout => clock_aclkctrl_INCLK_bus(3));

-- Location: CLKCTRL_G3
clock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => clock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clock_aclkctrl_outclk);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a0_a_aI : cycloneii_io
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
	padio => ww_address(0),
	combout => address_acombout(0));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a1_a_aI : cycloneii_io
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
	padio => ww_address(1),
	combout => address_acombout(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a2_a_aI : cycloneii_io
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
	padio => ww_address(2),
	combout => address_acombout(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a3_a_aI : cycloneii_io
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
	padio => ww_address(3),
	combout => address_acombout(3));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a4_a_aI : cycloneii_io
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
	padio => ww_address(4),
	combout => address_acombout(4));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a5_a_aI : cycloneii_io
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
	padio => ww_address(5),
	combout => address_acombout(5));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a6_a_aI : cycloneii_io
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
	padio => ww_address(6),
	combout => address_acombout(6));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
address_a7_a_aI : cycloneii_io
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
	padio => ww_address(7),
	combout => address_acombout(7));

altsyncram_component_aauto_generated_aram_block1a0_CLK0_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clock_aclkctrl_outclk,
	dataout => altsyncram_component_aauto_generated_aram_block1a0_CLK0_driver);

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a0_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(0),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(0));

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a1_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(1),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(1));

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a2_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(2),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(2));

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a3_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(3),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(3));

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a4_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(4),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(4));

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a5_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(5),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(5));

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a6_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(6),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(6));

altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_a7_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(7),
	dataout => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus(7));

-- Location: M4K_X37_Y50
altsyncram_component_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000A000000000000010003BFF80382708020FFE300000000000000000C72108000000000000000022C043DE20270265008A682558092582A000000000000022008000000000000010012000000000000004820000000000000000029",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "text.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_tl71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => altsyncram_component_aauto_generated_aram_block1a0_CLK0_driver,
	portaaddr => altsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => altsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

altsyncram_component_aauto_generated_aram_block1a18_CLK0_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => clock_aclkctrl_outclk,
	dataout => altsyncram_component_aauto_generated_aram_block1a18_CLK0_driver);

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a0_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(0),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(0));

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a1_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(1),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(1));

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a2_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(2),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(2));

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a3_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(3),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(3));

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a4_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(4),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(4));

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a5_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(5),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(5));

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a6_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(6),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(6));

altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_a7_a_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => address_acombout(7),
	dataout => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus(7));

-- Location: M4K_X37_Y49
altsyncram_component_aauto_generated_aram_block1a18 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000000000542110805BAC0854200000000000200000800000000001100002000804A012804A014804A000000000023020000000000044A0000000000004200000000000802",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "text.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_tl71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => altsyncram_component_aauto_generated_aram_block1a18_CLK0_driver,
	portaaddr => altsyncram_component_aauto_generated_aram_block1a18_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => altsyncram_component_aauto_generated_aram_block1a18_PORTADATAOUT_bus);

q_a0_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(0),
	dataout => q_a0_a_DATAIN_driver);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a0_a_aI : cycloneii_io
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
	datain => q_a0_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(0));

q_a1_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(1),
	dataout => q_a1_a_DATAIN_driver);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a1_a_aI : cycloneii_io
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
	datain => q_a1_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(1));

q_a2_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(2),
	dataout => q_a2_a_DATAIN_driver);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a2_a_aI : cycloneii_io
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
	datain => q_a2_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(2));

q_a3_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(3),
	dataout => q_a3_a_DATAIN_driver);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a3_a_aI : cycloneii_io
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
	datain => q_a3_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(3));

q_a4_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(4),
	dataout => q_a4_a_DATAIN_driver);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a4_a_aI : cycloneii_io
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
	datain => q_a4_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(4));

q_a5_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(5),
	dataout => q_a5_a_DATAIN_driver);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a5_a_aI : cycloneii_io
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
	datain => q_a5_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(5));

q_a6_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(6),
	dataout => q_a6_a_DATAIN_driver);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a6_a_aI : cycloneii_io
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
	datain => q_a6_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(6));

q_a7_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(7),
	dataout => q_a7_a_DATAIN_driver);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a7_a_aI : cycloneii_io
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
	datain => q_a7_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(7));

q_a8_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(8),
	dataout => q_a8_a_DATAIN_driver);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a8_a_aI : cycloneii_io
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
	datain => q_a8_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(8));

q_a9_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(9),
	dataout => q_a9_a_DATAIN_driver);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a9_a_aI : cycloneii_io
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
	datain => q_a9_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(9));

q_a10_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(10),
	dataout => q_a10_a_DATAIN_driver);

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a10_a_aI : cycloneii_io
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
	datain => q_a10_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(10));

q_a11_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(11),
	dataout => q_a11_a_DATAIN_driver);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a11_a_aI : cycloneii_io
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
	datain => q_a11_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(11));

q_a12_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(12),
	dataout => q_a12_a_DATAIN_driver);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a12_a_aI : cycloneii_io
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
	datain => q_a12_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(12));

q_a13_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(13),
	dataout => q_a13_a_DATAIN_driver);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a13_a_aI : cycloneii_io
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
	datain => q_a13_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(13));

q_a14_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(14),
	dataout => q_a14_a_DATAIN_driver);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a14_a_aI : cycloneii_io
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
	datain => q_a14_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(14));

q_a15_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(15),
	dataout => q_a15_a_DATAIN_driver);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a15_a_aI : cycloneii_io
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
	datain => q_a15_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(15));

q_a16_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(16),
	dataout => q_a16_a_DATAIN_driver);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a16_a_aI : cycloneii_io
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
	datain => q_a16_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(16));

q_a17_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(17),
	dataout => q_a17_a_DATAIN_driver);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a17_a_aI : cycloneii_io
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
	datain => q_a17_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(17));

q_a18_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(18),
	dataout => q_a18_a_DATAIN_driver);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a18_a_aI : cycloneii_io
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
	datain => q_a18_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(18));

q_a19_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(19),
	dataout => q_a19_a_DATAIN_driver);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a19_a_aI : cycloneii_io
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
	datain => q_a19_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(19));

q_a20_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(20),
	dataout => q_a20_a_DATAIN_driver);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a20_a_aI : cycloneii_io
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
	datain => q_a20_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(20));

q_a21_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(21),
	dataout => q_a21_a_DATAIN_driver);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a21_a_aI : cycloneii_io
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
	datain => q_a21_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(21));

q_a22_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(22),
	dataout => q_a22_a_DATAIN_driver);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a22_a_aI : cycloneii_io
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
	datain => q_a22_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(22));

q_a23_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(23),
	dataout => q_a23_a_DATAIN_driver);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a23_a_aI : cycloneii_io
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
	datain => q_a23_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(23));

q_a24_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(24),
	dataout => q_a24_a_DATAIN_driver);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a24_a_aI : cycloneii_io
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
	datain => q_a24_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(24));

q_a25_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(25),
	dataout => q_a25_a_DATAIN_driver);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a25_a_aI : cycloneii_io
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
	datain => q_a25_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(25));

q_a26_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(26),
	dataout => q_a26_a_DATAIN_driver);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a26_a_aI : cycloneii_io
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
	datain => q_a26_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(26));

q_a27_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(27),
	dataout => q_a27_a_DATAIN_driver);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a27_a_aI : cycloneii_io
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
	datain => q_a27_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(27));

q_a28_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(28),
	dataout => q_a28_a_DATAIN_driver);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a28_a_aI : cycloneii_io
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
	datain => q_a28_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(28));

q_a29_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(29),
	dataout => q_a29_a_DATAIN_driver);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a29_a_aI : cycloneii_io
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
	datain => q_a29_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(29));

q_a30_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(30),
	dataout => q_a30_a_DATAIN_driver);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a30_a_aI : cycloneii_io
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
	datain => q_a30_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(30));

q_a31_a_DATAIN_routing_wire_inst : cycloneii_routing_wire
PORT MAP (
	datain => altsyncram_component_aauto_generated_aq_a(31),
	dataout => q_a31_a_DATAIN_driver);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
q_a31_a_aI : cycloneii_io
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
	datain => q_a31_a_DATAIN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(31));
END structure;


