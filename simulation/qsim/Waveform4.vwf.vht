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
-- Generated on "05/12/2026 21:42:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          robot_line_follower_fsmV2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY robot_line_follower_fsmV2_vhd_vec_tst IS
END robot_line_follower_fsmV2_vhd_vec_tst;
ARCHITECTURE robot_line_follower_fsmV2_arch OF robot_line_follower_fsmV2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL leftMotorBit0 : STD_LOGIC;
SIGNAL leftMotorBit1 : STD_LOGIC;
SIGNAL leftSensor : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rightMotorBit0 : STD_LOGIC;
SIGNAL rightMotorBit1 : STD_LOGIC;
SIGNAL rightSensor : STD_LOGIC;
SIGNAL searchTimeout : STD_LOGIC;
SIGNAL stateBit0 : STD_LOGIC;
SIGNAL stateBit1 : STD_LOGIC;
SIGNAL stateBit2 : STD_LOGIC;
COMPONENT robot_line_follower_fsmV2
	PORT (
	clock : IN STD_LOGIC;
	leftMotorBit0 : BUFFER STD_LOGIC;
	leftMotorBit1 : BUFFER STD_LOGIC;
	leftSensor : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	rightMotorBit0 : BUFFER STD_LOGIC;
	rightMotorBit1 : BUFFER STD_LOGIC;
	rightSensor : IN STD_LOGIC;
	searchTimeout : IN STD_LOGIC;
	stateBit0 : BUFFER STD_LOGIC;
	stateBit1 : BUFFER STD_LOGIC;
	stateBit2 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : robot_line_follower_fsmV2
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	leftMotorBit0 => leftMotorBit0,
	leftMotorBit1 => leftMotorBit1,
	leftSensor => leftSensor,
	reset => reset,
	rightMotorBit0 => rightMotorBit0,
	rightMotorBit1 => rightMotorBit1,
	rightSensor => rightSensor,
	searchTimeout => searchTimeout,
	stateBit0 => stateBit0,
	stateBit1 => stateBit1,
	stateBit2 => stateBit2
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- leftSensor
t_prcs_leftSensor: PROCESS
BEGIN
	leftSensor <= '0';
WAIT;
END PROCESS t_prcs_leftSensor;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- rightSensor
t_prcs_rightSensor: PROCESS
BEGIN
	rightSensor <= '0';
WAIT;
END PROCESS t_prcs_rightSensor;

-- searchTimeout
t_prcs_searchTimeout: PROCESS
BEGIN
	searchTimeout <= '0';
WAIT;
END PROCESS t_prcs_searchTimeout;
END robot_line_follower_fsmV2_arch;
