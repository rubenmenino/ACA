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
-- Generated on "12/06/2020 16:56:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Encoder_vhd_vec_tst IS
END Encoder_vhd_vec_tst;
ARCHITECTURE Encoder_arch OF Encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL arOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Encoder
	PORT (
	aIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	arOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Encoder
	PORT MAP (
-- list connections between master ports and signals
	aIn => aIn,
	arOut => arOut
	);
-- aIn[15]
t_prcs_aIn_15: PROCESS
BEGIN
	aIn(15) <= '1';
WAIT;
END PROCESS t_prcs_aIn_15;
-- aIn[14]
t_prcs_aIn_14: PROCESS
BEGIN
	aIn(14) <= '0';
WAIT;
END PROCESS t_prcs_aIn_14;
-- aIn[13]
t_prcs_aIn_13: PROCESS
BEGIN
	aIn(13) <= '0';
WAIT;
END PROCESS t_prcs_aIn_13;
-- aIn[12]
t_prcs_aIn_12: PROCESS
BEGIN
	aIn(12) <= '1';
WAIT;
END PROCESS t_prcs_aIn_12;
-- aIn[11]
t_prcs_aIn_11: PROCESS
BEGIN
	aIn(11) <= '0';
WAIT;
END PROCESS t_prcs_aIn_11;
-- aIn[10]
t_prcs_aIn_10: PROCESS
BEGIN
	aIn(10) <= '0';
WAIT;
END PROCESS t_prcs_aIn_10;
-- aIn[9]
t_prcs_aIn_9: PROCESS
BEGIN
	aIn(9) <= '0';
WAIT;
END PROCESS t_prcs_aIn_9;
-- aIn[8]
t_prcs_aIn_8: PROCESS
BEGIN
	aIn(8) <= '0';
WAIT;
END PROCESS t_prcs_aIn_8;
-- aIn[7]
t_prcs_aIn_7: PROCESS
BEGIN
	aIn(7) <= '1';
WAIT;
END PROCESS t_prcs_aIn_7;
-- aIn[6]
t_prcs_aIn_6: PROCESS
BEGIN
	aIn(6) <= '1';
WAIT;
END PROCESS t_prcs_aIn_6;
-- aIn[5]
t_prcs_aIn_5: PROCESS
BEGIN
	aIn(5) <= '1';
WAIT;
END PROCESS t_prcs_aIn_5;
-- aIn[4]
t_prcs_aIn_4: PROCESS
BEGIN
	aIn(4) <= '1';
WAIT;
END PROCESS t_prcs_aIn_4;
-- aIn[3]
t_prcs_aIn_3: PROCESS
BEGIN
	aIn(3) <= '0';
WAIT;
END PROCESS t_prcs_aIn_3;
-- aIn[2]
t_prcs_aIn_2: PROCESS
BEGIN
	aIn(2) <= '0';
WAIT;
END PROCESS t_prcs_aIn_2;
-- aIn[1]
t_prcs_aIn_1: PROCESS
BEGIN
	aIn(1) <= '1';
WAIT;
END PROCESS t_prcs_aIn_1;
-- aIn[0]
t_prcs_aIn_0: PROCESS
BEGIN
	aIn(0) <= '1';
WAIT;
END PROCESS t_prcs_aIn_0;
END Encoder_arch;
