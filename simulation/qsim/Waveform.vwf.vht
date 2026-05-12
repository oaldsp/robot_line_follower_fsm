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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/12/2026 19:52:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          block_diagram_V1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY block_diagram_V1_vhd_vec_tst IS
END block_diagram_V1_vhd_vec_tst;
ARCHITECTURE block_diagram_V1_arch OF block_diagram_V1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL leftMotor : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL leftSensor : STD_LOGIC;
SIGNAL MAX10_CLK1_50 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rightMotor : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rightSensor : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT block_diagram_V1
	PORT (
	clock : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	leftMotor : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	leftSensor : IN STD_LOGIC;
	MAX10_CLK1_50 : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	rightMotor : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rightSensor : IN STD_LOGIC;
	state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : block_diagram_V1
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	leftMotor => leftMotor,
	leftSensor => leftSensor,
	MAX10_CLK1_50 => MAX10_CLK1_50,
	reset => reset,
	rightMotor => rightMotor,
	rightSensor => rightSensor,
	state => state
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- leftSensor
t_prcs_leftSensor: PROCESS
BEGIN
	leftSensor <= '1';
	WAIT FOR 150000 ps;
	leftSensor <= '0';
	WAIT FOR 50000 ps;
	leftSensor <= '1';
	WAIT FOR 50000 ps;
	leftSensor <= '0';
WAIT;
END PROCESS t_prcs_leftSensor;

-- rightSensor
t_prcs_rightSensor: PROCESS
BEGIN
	rightSensor <= '1';
	WAIT FOR 50000 ps;
	rightSensor <= '0';
	WAIT FOR 50000 ps;
	rightSensor <= '1';
	WAIT FOR 150000 ps;
	rightSensor <= '0';
WAIT;
END PROCESS t_prcs_rightSensor;
END block_diagram_V1_arch;
