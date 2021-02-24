-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/06/2020 19:18:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Checker
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Checker_vhd_vec_tst IS
END Checker_vhd_vec_tst;
ARCHITECTURE Checker_arch OF Checker_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL arIn : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL errorOut : STD_LOGIC;
COMPONENT Checker
	PORT (
	arIn : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
	errorOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Checker
	PORT MAP (
-- list connections between master ports and signals
	arIn => arIn,
	errorOut => errorOut
	);
-- arIn[23]
t_prcs_arIn_23: PROCESS
BEGIN
	arIn(23) <= '1';
WAIT;
END PROCESS t_prcs_arIn_23;
-- arIn[22]
t_prcs_arIn_22: PROCESS
BEGIN
	arIn(22) <= '0';
WAIT;
END PROCESS t_prcs_arIn_22;
-- arIn[21]
t_prcs_arIn_21: PROCESS
BEGIN
	arIn(21) <= '0';
WAIT;
END PROCESS t_prcs_arIn_21;
-- arIn[20]
t_prcs_arIn_20: PROCESS
BEGIN
	arIn(20) <= '1';
WAIT;
END PROCESS t_prcs_arIn_20;
-- arIn[19]
t_prcs_arIn_19: PROCESS
BEGIN
	arIn(19) <= '0';
WAIT;
END PROCESS t_prcs_arIn_19;
-- arIn[18]
t_prcs_arIn_18: PROCESS
BEGIN
	arIn(18) <= '0';
WAIT;
END PROCESS t_prcs_arIn_18;
-- arIn[17]
t_prcs_arIn_17: PROCESS
BEGIN
	arIn(17) <= '0';
WAIT;
END PROCESS t_prcs_arIn_17;
-- arIn[16]
t_prcs_arIn_16: PROCESS
BEGIN
	arIn(16) <= '0';
WAIT;
END PROCESS t_prcs_arIn_16;
-- arIn[15]
t_prcs_arIn_15: PROCESS
BEGIN
	arIn(15) <= '1';
WAIT;
END PROCESS t_prcs_arIn_15;
-- arIn[14]
t_prcs_arIn_14: PROCESS
BEGIN
	arIn(14) <= '1';
WAIT;
END PROCESS t_prcs_arIn_14;
-- arIn[13]
t_prcs_arIn_13: PROCESS
BEGIN
	arIn(13) <= '1';
WAIT;
END PROCESS t_prcs_arIn_13;
-- arIn[12]
t_prcs_arIn_12: PROCESS
BEGIN
	arIn(12) <= '1';
WAIT;
END PROCESS t_prcs_arIn_12;
-- arIn[11]
t_prcs_arIn_11: PROCESS
BEGIN
	arIn(11) <= '0';
WAIT;
END PROCESS t_prcs_arIn_11;
-- arIn[10]
t_prcs_arIn_10: PROCESS
BEGIN
	arIn(10) <= '1';
WAIT;
END PROCESS t_prcs_arIn_10;
-- arIn[9]
t_prcs_arIn_9: PROCESS
BEGIN
	arIn(9) <= '1';
WAIT;
END PROCESS t_prcs_arIn_9;
-- arIn[8]
t_prcs_arIn_8: PROCESS
BEGIN
	arIn(8) <= '0';
WAIT;
END PROCESS t_prcs_arIn_8;
-- arIn[7]
t_prcs_arIn_7: PROCESS
BEGIN
	arIn(7) <= '0';
WAIT;
END PROCESS t_prcs_arIn_7;
-- arIn[6]
t_prcs_arIn_6: PROCESS
BEGIN
	arIn(6) <= '0';
WAIT;
END PROCESS t_prcs_arIn_6;
-- arIn[5]
t_prcs_arIn_5: PROCESS
BEGIN
	arIn(5) <= '0';
WAIT;
END PROCESS t_prcs_arIn_5;
-- arIn[4]
t_prcs_arIn_4: PROCESS
BEGIN
	arIn(4) <= '1';
WAIT;
END PROCESS t_prcs_arIn_4;
-- arIn[3]
t_prcs_arIn_3: PROCESS
BEGIN
	arIn(3) <= '1';
WAIT;
END PROCESS t_prcs_arIn_3;
-- arIn[2]
t_prcs_arIn_2: PROCESS
BEGIN
	arIn(2) <= '0';
WAIT;
END PROCESS t_prcs_arIn_2;
-- arIn[1]
t_prcs_arIn_1: PROCESS
BEGIN
	arIn(1) <= '1';
WAIT;
END PROCESS t_prcs_arIn_1;
-- arIn[0]
t_prcs_arIn_0: PROCESS
BEGIN
	arIn(0) <= '1';
WAIT;
END PROCESS t_prcs_arIn_0;
END Checker_arch;
