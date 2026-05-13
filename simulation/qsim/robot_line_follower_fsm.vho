-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/12/2026 22:18:32"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	block_diagram_V2 IS
    PORT (
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	rightMotor : OUT std_logic_vector(1 DOWNTO 0);
	reset : IN std_logic;
	clock : IN std_logic;
	leftSensor : IN std_logic;
	rightSensor : IN std_logic;
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	state : OUT std_logic_vector(2 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	leftMotor : OUT std_logic_vector(1 DOWNTO 0);
	MAX10_CLK1_50 : IN std_logic
	);
END block_diagram_V2;

-- Design Ports Information
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rightMotor[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rightMotor[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftMotor[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftMotor[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftSensor	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rightSensor	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF block_diagram_V2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rightMotor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_leftSensor : std_logic;
SIGNAL ww_rightSensor : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leftMotor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \rightMotor[1]~output_o\ : std_logic;
SIGNAL \rightMotor[0]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \leftMotor[1]~output_o\ : std_logic;
SIGNAL \leftMotor[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \leftSensor~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \rightSensor~input_o\ : std_logic;
SIGNAL \inst|reg_fstate.turningRight~2_combout\ : std_logic;
SIGNAL \inst|reg_fstate.stationary~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.straightLine~0_combout\ : std_logic;
SIGNAL \inst|fstate.straightLine~q\ : std_logic;
SIGNAL \inst|reg_fstate.turningLeft~3_combout\ : std_logic;
SIGNAL \inst|reg_fstate.turningLeft~2_combout\ : std_logic;
SIGNAL \inst|reg_fstate.turningLeft~4_combout\ : std_logic;
SIGNAL \inst|fstate.turningLeft~q\ : std_logic;
SIGNAL \inst|reg_fstate~2_combout\ : std_logic;
SIGNAL \inst|reg_fstate.searchLeft~0_combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|reg_fstate.stationary~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.searchLeft~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.searchLeft~2_combout\ : std_logic;
SIGNAL \inst|fstate.searchLeft~q\ : std_logic;
SIGNAL \inst|reg_fstate.searchRight~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.searchRight~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.searchRight~2_combout\ : std_logic;
SIGNAL \inst|fstate.searchRight~q\ : std_logic;
SIGNAL \inst|reg_fstate.stationary~2_combout\ : std_logic;
SIGNAL \inst|reg_fstate.stationary~3_combout\ : std_logic;
SIGNAL \inst|fstate.stationary~q\ : std_logic;
SIGNAL \inst|reg_fstate.turningRight~3_combout\ : std_logic;
SIGNAL \inst|reg_fstate.turningRight~4_combout\ : std_logic;
SIGNAL \inst|fstate.turningRight~q\ : std_logic;
SIGNAL \inst|rightMotorBit0~0_combout\ : std_logic;
SIGNAL \inst|rightMotorBit1~0_combout\ : std_logic;
SIGNAL \inst|stateBit0~0_combout\ : std_logic;
SIGNAL \inst|stateBit1~0_combout\ : std_logic;
SIGNAL \inst|stateBit2~0_combout\ : std_logic;
SIGNAL \inst|leftMotorBit0~0_combout\ : std_logic;
SIGNAL \inst|leftMotorBit1~0_combout\ : std_logic;
SIGNAL \inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
rightMotor <= ww_rightMotor;
ww_reset <= reset;
ww_clock <= clock;
ww_leftSensor <= leftSensor;
ww_rightSensor <= rightSensor;
HEX1 <= ww_HEX1;
state <= ww_state;
HEX2 <= ww_HEX2;
leftMotor <= ww_leftMotor;
ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|rightMotorBit1~0_combout\ & \inst|rightMotorBit0~0_combout\);

\inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|altsyncram_component|auto_generated|q_a\(3) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|altsyncram_component|auto_generated|q_a\(4) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|altsyncram_component|auto_generated|q_a\(5) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|altsyncram_component|auto_generated|q_a\(6) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|altsyncram_component|auto_generated|q_a\(7) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|stateBit2~0_combout\ & \inst|stateBit1~0_combout\ & \inst|stateBit0~0_combout\);

\inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst3|altsyncram_component|auto_generated|q_a\(2) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst3|altsyncram_component|auto_generated|q_a\(3) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst3|altsyncram_component|auto_generated|q_a\(4) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst3|altsyncram_component|auto_generated|q_a\(5) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst3|altsyncram_component|auto_generated|q_a\(6) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst3|altsyncram_component|auto_generated|q_a\(7) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|leftMotorBit1~0_combout\ & \inst|leftMotorBit0~0_combout\);

\inst1|altsyncram_component|auto_generated|q_a\(0) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|altsyncram_component|auto_generated|q_a\(1) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|altsyncram_component|auto_generated|q_a\(2) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|altsyncram_component|auto_generated|q_a\(3) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|altsyncram_component|auto_generated|q_a\(4) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|altsyncram_component|auto_generated|q_a\(5) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|altsyncram_component|auto_generated|q_a\(6) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|altsyncram_component|auto_generated|q_a\(7) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\rightMotor[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|rightMotorBit1~0_combout\,
	devoe => ww_devoe,
	o => \rightMotor[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\rightMotor[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|rightMotorBit0~0_combout\,
	devoe => ww_devoe,
	o => \rightMotor[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|stateBit2~0_combout\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|stateBit1~0_combout\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|stateBit0~0_combout\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\leftMotor[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|leftMotorBit1~0_combout\,
	devoe => ww_devoe,
	o => \leftMotor[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\leftMotor[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|leftMotorBit0~0_combout\,
	devoe => ww_devoe,
	o => \leftMotor[0]~output_o\);

-- Location: IOIBUF_X31_Y0_N1
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X66_Y54_N22
\leftSensor~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_leftSensor,
	o => \leftSensor~input_o\);

-- Location: IOIBUF_X71_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\rightSensor~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rightSensor,
	o => \rightSensor~input_o\);

-- Location: LCCOMB_X71_Y50_N8
\inst|reg_fstate.turningRight~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.turningRight~2_combout\ = (!\reset~input_o\ & (\inst|fstate.turningRight~q\ & (\rightSensor~input_o\ $ (\leftSensor~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightSensor~input_o\,
	datab => \reset~input_o\,
	datac => \leftSensor~input_o\,
	datad => \inst|fstate.turningRight~q\,
	combout => \inst|reg_fstate.turningRight~2_combout\);

-- Location: LCCOMB_X70_Y50_N0
\inst|reg_fstate.stationary~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.stationary~1_combout\ = (\leftSensor~input_o\) # ((\rightSensor~input_o\) # (\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leftSensor~input_o\,
	datac => \rightSensor~input_o\,
	datad => \reset~input_o\,
	combout => \inst|reg_fstate.stationary~1_combout\);

-- Location: LCCOMB_X71_Y50_N22
\inst|reg_fstate.straightLine~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.straightLine~0_combout\ = (!\reset~input_o\ & ((!\leftSensor~input_o\) # (!\rightSensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightSensor~input_o\,
	datac => \leftSensor~input_o\,
	datad => \reset~input_o\,
	combout => \inst|reg_fstate.straightLine~0_combout\);

-- Location: FF_X71_Y50_N23
\inst|fstate.straightLine\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.straightLine~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.straightLine~q\);

-- Location: LCCOMB_X71_Y50_N26
\inst|reg_fstate.turningLeft~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.turningLeft~3_combout\ = (\leftSensor~input_o\ & ((\inst|fstate.searchLeft~q\) # ((\inst|fstate.stationary~q\) # (!\inst|fstate.straightLine~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leftSensor~input_o\,
	datab => \inst|fstate.searchLeft~q\,
	datac => \inst|fstate.straightLine~q\,
	datad => \inst|fstate.stationary~q\,
	combout => \inst|reg_fstate.turningLeft~3_combout\);

-- Location: LCCOMB_X71_Y50_N20
\inst|reg_fstate.turningLeft~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.turningLeft~2_combout\ = (!\reset~input_o\ & (\inst|fstate.turningLeft~q\ & (\rightSensor~input_o\ $ (\leftSensor~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightSensor~input_o\,
	datab => \reset~input_o\,
	datac => \leftSensor~input_o\,
	datad => \inst|fstate.turningLeft~q\,
	combout => \inst|reg_fstate.turningLeft~2_combout\);

-- Location: LCCOMB_X71_Y50_N24
\inst|reg_fstate.turningLeft~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.turningLeft~4_combout\ = (\inst|reg_fstate.turningLeft~2_combout\) # ((!\rightSensor~input_o\ & (!\reset~input_o\ & \inst|reg_fstate.turningLeft~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightSensor~input_o\,
	datab => \reset~input_o\,
	datac => \inst|reg_fstate.turningLeft~3_combout\,
	datad => \inst|reg_fstate.turningLeft~2_combout\,
	combout => \inst|reg_fstate.turningLeft~4_combout\);

-- Location: FF_X71_Y50_N25
\inst|fstate.turningLeft\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.turningLeft~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.turningLeft~q\);

-- Location: LCCOMB_X70_Y50_N18
\inst|reg_fstate~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate~2_combout\ = (\leftSensor~input_o\) # (\rightSensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leftSensor~input_o\,
	datac => \rightSensor~input_o\,
	combout => \inst|reg_fstate~2_combout\);

-- Location: LCCOMB_X70_Y50_N4
\inst|reg_fstate.searchLeft~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.searchLeft~0_combout\ = (!\leftSensor~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \leftSensor~input_o\,
	datad => \reset~input_o\,
	combout => \inst|reg_fstate.searchLeft~0_combout\);

-- Location: LCCOMB_X70_Y50_N20
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X70_Y50_N30
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X70_Y50_N21
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst|reg_fstate~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X70_Y50_N22
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X70_Y50_N23
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst|reg_fstate~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X70_Y50_N24
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X70_Y50_N25
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst|reg_fstate~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X70_Y50_N26
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X70_Y50_N27
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst|reg_fstate~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X70_Y50_N16
\inst|reg_fstate.stationary~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.stationary~0_combout\ = (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- !\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|reg_fstate.stationary~0_combout\);

-- Location: LCCOMB_X70_Y50_N2
\inst|reg_fstate.searchLeft~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.searchLeft~1_combout\ = (\inst|fstate.searchLeft~q\ & (\inst|reg_fstate.searchLeft~0_combout\ & ((\inst|reg_fstate~2_combout\) # (!\inst|reg_fstate.stationary~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg_fstate~2_combout\,
	datab => \inst|fstate.searchLeft~q\,
	datac => \inst|reg_fstate.searchLeft~0_combout\,
	datad => \inst|reg_fstate.stationary~0_combout\,
	combout => \inst|reg_fstate.searchLeft~1_combout\);

-- Location: LCCOMB_X70_Y50_N28
\inst|reg_fstate.searchLeft~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.searchLeft~2_combout\ = (\inst|reg_fstate.searchLeft~1_combout\) # ((\inst|fstate.turningLeft~q\ & (!\inst|reg_fstate~2_combout\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.turningLeft~q\,
	datab => \inst|reg_fstate~2_combout\,
	datac => \reset~input_o\,
	datad => \inst|reg_fstate.searchLeft~1_combout\,
	combout => \inst|reg_fstate.searchLeft~2_combout\);

-- Location: FF_X70_Y50_N29
\inst|fstate.searchLeft\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.searchLeft~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.searchLeft~q\);

-- Location: LCCOMB_X70_Y50_N10
\inst|reg_fstate.searchRight~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.searchRight~0_combout\ = (!\rightSensor~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rightSensor~input_o\,
	datad => \reset~input_o\,
	combout => \inst|reg_fstate.searchRight~0_combout\);

-- Location: LCCOMB_X70_Y50_N12
\inst|reg_fstate.searchRight~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.searchRight~1_combout\ = (\inst|reg_fstate.searchRight~0_combout\ & (\inst|fstate.searchRight~q\ & ((\inst|reg_fstate~2_combout\) # (!\inst|reg_fstate.stationary~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg_fstate.searchRight~0_combout\,
	datab => \inst|reg_fstate~2_combout\,
	datac => \inst|fstate.searchRight~q\,
	datad => \inst|reg_fstate.stationary~0_combout\,
	combout => \inst|reg_fstate.searchRight~1_combout\);

-- Location: LCCOMB_X70_Y50_N8
\inst|reg_fstate.searchRight~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.searchRight~2_combout\ = (\inst|reg_fstate.searchRight~1_combout\) # ((\inst|fstate.turningRight~q\ & (!\inst|reg_fstate~2_combout\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.turningRight~q\,
	datab => \inst|reg_fstate~2_combout\,
	datac => \reset~input_o\,
	datad => \inst|reg_fstate.searchRight~1_combout\,
	combout => \inst|reg_fstate.searchRight~2_combout\);

-- Location: FF_X70_Y50_N9
\inst|fstate.searchRight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.searchRight~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.searchRight~q\);

-- Location: LCCOMB_X70_Y50_N6
\inst|reg_fstate.stationary~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.stationary~2_combout\ = (\inst|reg_fstate.stationary~0_combout\ & ((\inst|fstate.searchLeft~q\) # (\inst|fstate.searchRight~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.searchLeft~q\,
	datac => \inst|fstate.searchRight~q\,
	datad => \inst|reg_fstate.stationary~0_combout\,
	combout => \inst|reg_fstate.stationary~2_combout\);

-- Location: LCCOMB_X70_Y50_N14
\inst|reg_fstate.stationary~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.stationary~3_combout\ = (!\inst|reg_fstate.stationary~1_combout\ & (((\inst|fstate.stationary~q\) # (\inst|reg_fstate.stationary~2_combout\)) # (!\inst|fstate.straightLine~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg_fstate.stationary~1_combout\,
	datab => \inst|fstate.straightLine~q\,
	datac => \inst|fstate.stationary~q\,
	datad => \inst|reg_fstate.stationary~2_combout\,
	combout => \inst|reg_fstate.stationary~3_combout\);

-- Location: FF_X70_Y50_N15
\inst|fstate.stationary\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.stationary~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.stationary~q\);

-- Location: LCCOMB_X71_Y50_N18
\inst|reg_fstate.turningRight~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.turningRight~3_combout\ = (\rightSensor~input_o\ & ((\inst|fstate.stationary~q\) # ((\inst|fstate.searchRight~q\) # (!\inst|fstate.straightLine~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.stationary~q\,
	datab => \rightSensor~input_o\,
	datac => \inst|fstate.straightLine~q\,
	datad => \inst|fstate.searchRight~q\,
	combout => \inst|reg_fstate.turningRight~3_combout\);

-- Location: LCCOMB_X71_Y50_N6
\inst|reg_fstate.turningRight~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.turningRight~4_combout\ = (\inst|reg_fstate.turningRight~2_combout\) # ((!\leftSensor~input_o\ & (!\reset~input_o\ & \inst|reg_fstate.turningRight~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leftSensor~input_o\,
	datab => \reset~input_o\,
	datac => \inst|reg_fstate.turningRight~2_combout\,
	datad => \inst|reg_fstate.turningRight~3_combout\,
	combout => \inst|reg_fstate.turningRight~4_combout\);

-- Location: FF_X71_Y50_N7
\inst|fstate.turningRight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|reg_fstate.turningRight~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.turningRight~q\);

-- Location: LCCOMB_X71_Y50_N12
\inst|rightMotorBit0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|rightMotorBit0~0_combout\ = (!\reset~input_o\ & ((\inst|fstate.turningRight~q\) # (\inst|fstate.searchLeft~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.turningRight~q\,
	datab => \inst|fstate.searchLeft~q\,
	datad => \reset~input_o\,
	combout => \inst|rightMotorBit0~0_combout\);

-- Location: LCCOMB_X71_Y50_N4
\inst|rightMotorBit1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|rightMotorBit1~0_combout\ = (!\reset~input_o\ & ((\inst|fstate.turningLeft~q\) # (!\inst|fstate.straightLine~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.turningLeft~q\,
	datac => \inst|fstate.straightLine~q\,
	datad => \reset~input_o\,
	combout => \inst|rightMotorBit1~0_combout\);

-- Location: M9K_X73_Y53_N0
\inst2|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"002C000A4003E400C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "display7_decoder_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display7_decoder:inst2|altsyncram:altsyncram_component|altsyncram_96s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 2,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X71_Y50_N30
\inst|stateBit0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|stateBit0~0_combout\ = (!\inst|fstate.stationary~q\ & (!\inst|fstate.searchLeft~q\ & (!\inst|fstate.turningLeft~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.stationary~q\,
	datab => \inst|fstate.searchLeft~q\,
	datac => \inst|fstate.turningLeft~q\,
	datad => \reset~input_o\,
	combout => \inst|stateBit0~0_combout\);

-- Location: LCCOMB_X71_Y50_N16
\inst|stateBit1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|stateBit1~0_combout\ = (!\inst|fstate.stationary~q\ & (!\reset~input_o\ & (!\inst|fstate.turningRight~q\ & !\inst|fstate.searchRight~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.stationary~q\,
	datab => \reset~input_o\,
	datac => \inst|fstate.turningRight~q\,
	datad => \inst|fstate.searchRight~q\,
	combout => \inst|stateBit1~0_combout\);

-- Location: LCCOMB_X71_Y50_N10
\inst|stateBit2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|stateBit2~0_combout\ = (!\inst|fstate.turningRight~q\ & (!\reset~input_o\ & (!\inst|fstate.turningLeft~q\ & !\inst|fstate.stationary~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.turningRight~q\,
	datab => \reset~input_o\,
	datac => \inst|fstate.turningLeft~q\,
	datad => \inst|fstate.stationary~q\,
	combout => \inst|stateBit2~0_combout\);

-- Location: M9K_X73_Y50_N0
\inst3|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"003E00082002480099002C000A4003E400C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "display7_decoder_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display7_decoder:inst3|altsyncram:altsyncram_component|altsyncram_96s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X71_Y50_N2
\inst|leftMotorBit0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|leftMotorBit0~0_combout\ = (!\reset~input_o\ & ((\inst|fstate.searchRight~q\) # (\inst|fstate.turningLeft~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.searchRight~q\,
	datab => \inst|fstate.turningLeft~q\,
	datad => \reset~input_o\,
	combout => \inst|leftMotorBit0~0_combout\);

-- Location: LCCOMB_X71_Y50_N28
\inst|leftMotorBit1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|leftMotorBit1~0_combout\ = (!\reset~input_o\ & ((\inst|fstate.turningRight~q\) # (!\inst|fstate.straightLine~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.turningRight~q\,
	datac => \inst|fstate.straightLine~q\,
	datad => \reset~input_o\,
	combout => \inst|leftMotorBit1~0_combout\);

-- Location: M9K_X73_Y43_N0
\inst1|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"002C000A4003E400C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "display7_decoder_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display7_decoder:inst1|altsyncram:altsyncram_component|altsyncram_96s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 2,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => VCC,
	portaaddr => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_rightMotor(1) <= \rightMotor[1]~output_o\;

ww_rightMotor(0) <= \rightMotor[0]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_state(2) <= \state[2]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_leftMotor(1) <= \leftMotor[1]~output_o\;

ww_leftMotor(0) <= \leftMotor[0]~output_o\;
END structure;


