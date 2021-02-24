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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/08/2020 17:24:05"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Checker IS
    PORT (
	arIn : IN std_logic_vector(23 DOWNTO 0);
	checkError : OUT std_logic;
	errorOut0 : OUT std_logic;
	errorOut1 : OUT std_logic;
	errorOut2 : OUT std_logic;
	errorOut3 : OUT std_logic;
	errorOut4 : OUT std_logic;
	errorOut5 : OUT std_logic;
	errorOut6 : OUT std_logic;
	errorOut7 : OUT std_logic
	);
END Checker;

-- Design Ports Information
-- checkError	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut0	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut1	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut2	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut3	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut4	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut5	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut6	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- errorOut7	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[12]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[14]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[23]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[20]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[19]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[9]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[22]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[17]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[18]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[15]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[16]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[21]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arIn[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Checker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_arIn : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_checkError : std_logic;
SIGNAL ww_errorOut0 : std_logic;
SIGNAL ww_errorOut1 : std_logic;
SIGNAL ww_errorOut2 : std_logic;
SIGNAL ww_errorOut3 : std_logic;
SIGNAL ww_errorOut4 : std_logic;
SIGNAL ww_errorOut5 : std_logic;
SIGNAL ww_errorOut6 : std_logic;
SIGNAL ww_errorOut7 : std_logic;
SIGNAL \checkError~output_o\ : std_logic;
SIGNAL \errorOut0~output_o\ : std_logic;
SIGNAL \errorOut1~output_o\ : std_logic;
SIGNAL \errorOut2~output_o\ : std_logic;
SIGNAL \errorOut3~output_o\ : std_logic;
SIGNAL \errorOut4~output_o\ : std_logic;
SIGNAL \errorOut5~output_o\ : std_logic;
SIGNAL \errorOut6~output_o\ : std_logic;
SIGNAL \errorOut7~output_o\ : std_logic;
SIGNAL \arIn[16]~input_o\ : std_logic;
SIGNAL \arIn[15]~input_o\ : std_logic;
SIGNAL \arIn[18]~input_o\ : std_logic;
SIGNAL \arIn[17]~input_o\ : std_logic;
SIGNAL \xor10_9_8_7|y~0_combout\ : std_logic;
SIGNAL \arIn[19]~input_o\ : std_logic;
SIGNAL \arIn[11]~input_o\ : std_logic;
SIGNAL \arIn[8]~input_o\ : std_logic;
SIGNAL \arIn[20]~input_o\ : std_logic;
SIGNAL \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5_combout\ : std_logic;
SIGNAL \arIn[23]~input_o\ : std_logic;
SIGNAL \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~6_combout\ : std_logic;
SIGNAL \arIn[0]~input_o\ : std_logic;
SIGNAL \arIn[13]~input_o\ : std_logic;
SIGNAL \xor15_12_11_10_9_8_7_5_3_0_erro0|y~0_combout\ : std_logic;
SIGNAL \arIn[9]~input_o\ : std_logic;
SIGNAL \arIn[21]~input_o\ : std_logic;
SIGNAL \xor13_9_8_4_2_1_0_erro3|y~0_combout\ : std_logic;
SIGNAL \arIn[14]~input_o\ : std_logic;
SIGNAL \xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\ : std_logic;
SIGNAL \arIn[12]~input_o\ : std_logic;
SIGNAL \arIn[1]~input_o\ : std_logic;
SIGNAL \xor15_13_7_6_5_4_3_1_0_erro1|y~1_combout\ : std_logic;
SIGNAL \or8to1_y|b~0_combout\ : std_logic;
SIGNAL \arIn[10]~input_o\ : std_logic;
SIGNAL \xor13_9_8_4_2_1_0_erro3|y~1_combout\ : std_logic;
SIGNAL \arIn[3]~input_o\ : std_logic;
SIGNAL \xor13_9_8_4_2_1_0_erro3|y~2_combout\ : std_logic;
SIGNAL \arIn[22]~input_o\ : std_logic;
SIGNAL \xor14_11_10_9_8_7_6_4_2_erro7|y~0_combout\ : std_logic;
SIGNAL \arIn[7]~input_o\ : std_logic;
SIGNAL \xor14_11_10_9_8_7_6_4_2_erro7|y~1_combout\ : std_logic;
SIGNAL \arIn[6]~input_o\ : std_logic;
SIGNAL \xor13_10_9_8_7_6_5_3_1_erro6|y~0_combout\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0_erro5|y~0_combout\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0_erro5|y~1_combout\ : std_logic;
SIGNAL \arIn[5]~input_o\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0_erro5|y~2_combout\ : std_logic;
SIGNAL \xor14_10_9_5_3_2_1_erro4|y~0_combout\ : std_logic;
SIGNAL \xor14_10_9_5_3_2_1_erro4|y~1_combout\ : std_logic;
SIGNAL \arIn[4]~input_o\ : std_logic;
SIGNAL \xor14_10_9_5_3_2_1_erro4|y~2_combout\ : std_logic;
SIGNAL \or8to1_y|b~1_combout\ : std_logic;
SIGNAL \arIn[2]~input_o\ : std_logic;
SIGNAL \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~4_combout\ : std_logic;
SIGNAL \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~7_combout\ : std_logic;
SIGNAL \or8to1_y|b~2_combout\ : std_logic;
SIGNAL \xor15_13_7_6_5_4_3_1_0_erro1|y~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_arIn <= arIn;
checkError <= ww_checkError;
errorOut0 <= ww_errorOut0;
errorOut1 <= ww_errorOut1;
errorOut2 <= ww_errorOut2;
errorOut3 <= ww_errorOut3;
errorOut4 <= ww_errorOut4;
errorOut5 <= ww_errorOut5;
errorOut6 <= ww_errorOut6;
errorOut7 <= ww_errorOut7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y12_N9
\checkError~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or8to1_y|b~2_combout\,
	devoe => ww_devoe,
	o => \checkError~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\errorOut0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_12_11_10_9_8_7_5_3_0_erro0|y~0_combout\,
	devoe => ww_devoe,
	o => \errorOut0~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\errorOut1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_13_7_6_5_4_3_1_0_erro1|y~2_combout\,
	devoe => ww_devoe,
	o => \errorOut1~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\errorOut2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~7_combout\,
	devoe => ww_devoe,
	o => \errorOut2~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\errorOut3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor13_9_8_4_2_1_0_erro3|y~2_combout\,
	devoe => ww_devoe,
	o => \errorOut3~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\errorOut4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor14_10_9_5_3_2_1_erro4|y~2_combout\,
	devoe => ww_devoe,
	o => \errorOut4~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\errorOut5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor12_9_8_7_6_5_4_2_0_erro5|y~2_combout\,
	devoe => ww_devoe,
	o => \errorOut5~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\errorOut6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor13_10_9_8_7_6_5_3_1_erro6|y~0_combout\,
	devoe => ww_devoe,
	o => \errorOut6~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\errorOut7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor14_11_10_9_8_7_6_4_2_erro7|y~1_combout\,
	devoe => ww_devoe,
	o => \errorOut7~output_o\);

-- Location: IOIBUF_X33_Y16_N8
\arIn[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(16),
	o => \arIn[16]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\arIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(15),
	o => \arIn[15]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\arIn[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(18),
	o => \arIn[18]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\arIn[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(17),
	o => \arIn[17]~input_o\);

-- Location: LCCOMB_X27_Y24_N30
\xor10_9_8_7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor10_9_8_7|y~0_combout\ = \arIn[16]~input_o\ $ (\arIn[15]~input_o\ $ (\arIn[18]~input_o\ $ (\arIn[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[16]~input_o\,
	datab => \arIn[15]~input_o\,
	datac => \arIn[18]~input_o\,
	datad => \arIn[17]~input_o\,
	combout => \xor10_9_8_7|y~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\arIn[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(19),
	o => \arIn[19]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\arIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(11),
	o => \arIn[11]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\arIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(8),
	o => \arIn[8]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\arIn[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(20),
	o => \arIn[20]~input_o\);

-- Location: LCCOMB_X27_Y24_N18
\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5_combout\ = \arIn[19]~input_o\ $ (\arIn[11]~input_o\ $ (\arIn[8]~input_o\ $ (\arIn[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[19]~input_o\,
	datab => \arIn[11]~input_o\,
	datac => \arIn[8]~input_o\,
	datad => \arIn[20]~input_o\,
	combout => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5_combout\);

-- Location: IOIBUF_X24_Y31_N8
\arIn[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(23),
	o => \arIn[23]~input_o\);

-- Location: LCCOMB_X27_Y23_N16
\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~6_combout\ = \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5_combout\ $ (\arIn[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5_combout\,
	datac => \arIn[23]~input_o\,
	combout => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~6_combout\);

-- Location: IOIBUF_X33_Y16_N1
\arIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(0),
	o => \arIn[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\arIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(13),
	o => \arIn[13]~input_o\);

-- Location: LCCOMB_X27_Y23_N12
\xor15_12_11_10_9_8_7_5_3_0_erro0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_12_11_10_9_8_7_5_3_0_erro0|y~0_combout\ = \xor10_9_8_7|y~0_combout\ $ (\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~6_combout\ $ (\arIn[0]~input_o\ $ (\arIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor10_9_8_7|y~0_combout\,
	datab => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~6_combout\,
	datac => \arIn[0]~input_o\,
	datad => \arIn[13]~input_o\,
	combout => \xor15_12_11_10_9_8_7_5_3_0_erro0|y~0_combout\);

-- Location: IOIBUF_X33_Y15_N1
\arIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(9),
	o => \arIn[9]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\arIn[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(21),
	o => \arIn[21]~input_o\);

-- Location: LCCOMB_X27_Y23_N30
\xor13_9_8_4_2_1_0_erro3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_9_8_4_2_1_0_erro3|y~0_combout\ = \arIn[9]~input_o\ $ (\arIn[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arIn[9]~input_o\,
	datad => \arIn[21]~input_o\,
	combout => \xor13_9_8_4_2_1_0_erro3|y~0_combout\);

-- Location: IOIBUF_X33_Y25_N8
\arIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(14),
	o => \arIn[14]~input_o\);

-- Location: LCCOMB_X27_Y23_N8
\xor15_13_7_6_5_4_3_1_0_erro1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\ = \xor13_9_8_4_2_1_0_erro3|y~0_combout\ $ (\arIn[11]~input_o\ $ (\arIn[14]~input_o\ $ (\arIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor13_9_8_4_2_1_0_erro3|y~0_combout\,
	datab => \arIn[11]~input_o\,
	datac => \arIn[14]~input_o\,
	datad => \arIn[13]~input_o\,
	combout => \xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\arIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(12),
	o => \arIn[12]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\arIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(1),
	o => \arIn[1]~input_o\);

-- Location: LCCOMB_X27_Y24_N16
\xor15_13_7_6_5_4_3_1_0_erro1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_13_7_6_5_4_3_1_0_erro1|y~1_combout\ = \arIn[12]~input_o\ $ (\arIn[8]~input_o\ $ (\arIn[15]~input_o\ $ (\arIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[12]~input_o\,
	datab => \arIn[8]~input_o\,
	datac => \arIn[15]~input_o\,
	datad => \arIn[1]~input_o\,
	combout => \xor15_13_7_6_5_4_3_1_0_erro1|y~1_combout\);

-- Location: LCCOMB_X27_Y23_N18
\or8to1_y|b~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \or8to1_y|b~0_combout\ = (\xor15_12_11_10_9_8_7_5_3_0_erro0|y~0_combout\) # (\xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\ $ (\arIn[23]~input_o\ $ (\xor15_13_7_6_5_4_3_1_0_erro1|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor15_12_11_10_9_8_7_5_3_0_erro0|y~0_combout\,
	datab => \xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\,
	datac => \arIn[23]~input_o\,
	datad => \xor15_13_7_6_5_4_3_1_0_erro1|y~1_combout\,
	combout => \or8to1_y|b~0_combout\);

-- Location: IOIBUF_X29_Y31_N1
\arIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(10),
	o => \arIn[10]~input_o\);

-- Location: LCCOMB_X27_Y24_N26
\xor13_9_8_4_2_1_0_erro3|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_9_8_4_2_1_0_erro3|y~1_combout\ = \arIn[12]~input_o\ $ (\arIn[10]~input_o\ $ (\arIn[8]~input_o\ $ (\arIn[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[12]~input_o\,
	datab => \arIn[10]~input_o\,
	datac => \arIn[8]~input_o\,
	datad => \arIn[17]~input_o\,
	combout => \xor13_9_8_4_2_1_0_erro3|y~1_combout\);

-- Location: IOIBUF_X33_Y27_N1
\arIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(3),
	o => \arIn[3]~input_o\);

-- Location: LCCOMB_X27_Y23_N28
\xor13_9_8_4_2_1_0_erro3|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_9_8_4_2_1_0_erro3|y~2_combout\ = \arIn[16]~input_o\ $ (\xor13_9_8_4_2_1_0_erro3|y~1_combout\ $ (\xor13_9_8_4_2_1_0_erro3|y~0_combout\ $ (\arIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[16]~input_o\,
	datab => \xor13_9_8_4_2_1_0_erro3|y~1_combout\,
	datac => \xor13_9_8_4_2_1_0_erro3|y~0_combout\,
	datad => \arIn[3]~input_o\,
	combout => \xor13_9_8_4_2_1_0_erro3|y~2_combout\);

-- Location: IOIBUF_X33_Y24_N1
\arIn[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(22),
	o => \arIn[22]~input_o\);

-- Location: LCCOMB_X27_Y24_N10
\xor14_11_10_9_8_7_6_4_2_erro7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_11_10_9_8_7_6_4_2_erro7|y~0_combout\ = \arIn[12]~input_o\ $ (\arIn[10]~input_o\ $ (\arIn[14]~input_o\ $ (\arIn[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[12]~input_o\,
	datab => \arIn[10]~input_o\,
	datac => \arIn[14]~input_o\,
	datad => \arIn[22]~input_o\,
	combout => \xor14_11_10_9_8_7_6_4_2_erro7|y~0_combout\);

-- Location: IOIBUF_X33_Y28_N8
\arIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(7),
	o => \arIn[7]~input_o\);

-- Location: LCCOMB_X27_Y24_N28
\xor14_11_10_9_8_7_6_4_2_erro7|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_11_10_9_8_7_6_4_2_erro7|y~1_combout\ = \xor14_11_10_9_8_7_6_4_2_erro7|y~0_combout\ $ (\xor10_9_8_7|y~0_combout\ $ (\arIn[7]~input_o\ $ (\arIn[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor14_11_10_9_8_7_6_4_2_erro7|y~0_combout\,
	datab => \xor10_9_8_7|y~0_combout\,
	datac => \arIn[7]~input_o\,
	datad => \arIn[19]~input_o\,
	combout => \xor14_11_10_9_8_7_6_4_2_erro7|y~1_combout\);

-- Location: IOIBUF_X24_Y31_N1
\arIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(6),
	o => \arIn[6]~input_o\);

-- Location: LCCOMB_X27_Y23_N24
\xor13_10_9_8_7_6_5_3_1_erro6|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_10_9_8_7_6_5_3_1_erro6|y~0_combout\ = \xor10_9_8_7|y~0_combout\ $ (\arIn[6]~input_o\ $ (\xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor10_9_8_7|y~0_combout\,
	datab => \arIn[6]~input_o\,
	datac => \xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\,
	combout => \xor13_10_9_8_7_6_5_3_1_erro6|y~0_combout\);

-- Location: LCCOMB_X27_Y24_N12
\xor12_9_8_7_6_5_4_2_0_erro5|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0_erro5|y~0_combout\ = \arIn[16]~input_o\ $ (\arIn[15]~input_o\ $ (\arIn[12]~input_o\ $ (\arIn[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[16]~input_o\,
	datab => \arIn[15]~input_o\,
	datac => \arIn[12]~input_o\,
	datad => \arIn[14]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0_erro5|y~0_combout\);

-- Location: LCCOMB_X27_Y24_N14
\xor12_9_8_7_6_5_4_2_0_erro5|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0_erro5|y~1_combout\ = \arIn[17]~input_o\ $ (\arIn[10]~input_o\ $ (\arIn[8]~input_o\ $ (\arIn[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[17]~input_o\,
	datab => \arIn[10]~input_o\,
	datac => \arIn[8]~input_o\,
	datad => \arIn[20]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0_erro5|y~1_combout\);

-- Location: IOIBUF_X31_Y31_N8
\arIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(5),
	o => \arIn[5]~input_o\);

-- Location: LCCOMB_X27_Y24_N24
\xor12_9_8_7_6_5_4_2_0_erro5|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0_erro5|y~2_combout\ = \xor12_9_8_7_6_5_4_2_0_erro5|y~0_combout\ $ (\xor12_9_8_7_6_5_4_2_0_erro5|y~1_combout\ $ (\arIn[13]~input_o\ $ (\arIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor12_9_8_7_6_5_4_2_0_erro5|y~0_combout\,
	datab => \xor12_9_8_7_6_5_4_2_0_erro5|y~1_combout\,
	datac => \arIn[13]~input_o\,
	datad => \arIn[5]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0_erro5|y~2_combout\);

-- Location: LCCOMB_X27_Y24_N4
\xor14_10_9_5_3_2_1_erro4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_10_9_5_3_2_1_erro4|y~0_combout\ = \arIn[17]~input_o\ $ (\arIn[18]~input_o\ $ (\arIn[10]~input_o\ $ (\arIn[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[17]~input_o\,
	datab => \arIn[18]~input_o\,
	datac => \arIn[10]~input_o\,
	datad => \arIn[22]~input_o\,
	combout => \xor14_10_9_5_3_2_1_erro4|y~0_combout\);

-- Location: LCCOMB_X27_Y23_N10
\xor14_10_9_5_3_2_1_erro4|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_10_9_5_3_2_1_erro4|y~1_combout\ = \xor14_10_9_5_3_2_1_erro4|y~0_combout\ $ (\arIn[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor14_10_9_5_3_2_1_erro4|y~0_combout\,
	datad => \arIn[9]~input_o\,
	combout => \xor14_10_9_5_3_2_1_erro4|y~1_combout\);

-- Location: IOIBUF_X33_Y14_N8
\arIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(4),
	o => \arIn[4]~input_o\);

-- Location: LCCOMB_X27_Y23_N22
\xor14_10_9_5_3_2_1_erro4|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_10_9_5_3_2_1_erro4|y~2_combout\ = \xor14_10_9_5_3_2_1_erro4|y~1_combout\ $ (\arIn[11]~input_o\ $ (\arIn[4]~input_o\ $ (\arIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor14_10_9_5_3_2_1_erro4|y~1_combout\,
	datab => \arIn[11]~input_o\,
	datac => \arIn[4]~input_o\,
	datad => \arIn[13]~input_o\,
	combout => \xor14_10_9_5_3_2_1_erro4|y~2_combout\);

-- Location: LCCOMB_X27_Y23_N26
\or8to1_y|b~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \or8to1_y|b~1_combout\ = (\xor14_11_10_9_8_7_6_4_2_erro7|y~1_combout\) # ((\xor13_10_9_8_7_6_5_3_1_erro6|y~0_combout\) # ((\xor12_9_8_7_6_5_4_2_0_erro5|y~2_combout\) # (\xor14_10_9_5_3_2_1_erro4|y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor14_11_10_9_8_7_6_4_2_erro7|y~1_combout\,
	datab => \xor13_10_9_8_7_6_5_3_1_erro6|y~0_combout\,
	datac => \xor12_9_8_7_6_5_4_2_0_erro5|y~2_combout\,
	datad => \xor14_10_9_5_3_2_1_erro4|y~2_combout\,
	combout => \or8to1_y|b~1_combout\);

-- Location: IOIBUF_X16_Y0_N8
\arIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arIn(2),
	o => \arIn[2]~input_o\);

-- Location: LCCOMB_X27_Y24_N0
\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~4_combout\ = \arIn[14]~input_o\ $ (\arIn[2]~input_o\ $ (\arIn[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arIn[14]~input_o\,
	datab => \arIn[2]~input_o\,
	datac => \arIn[12]~input_o\,
	combout => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~4_combout\);

-- Location: LCCOMB_X27_Y23_N0
\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~7_combout\ = \xor14_10_9_5_3_2_1_erro4|y~1_combout\ $ (\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5_combout\ $ (\arIn[23]~input_o\ $ (\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor14_10_9_5_3_2_1_erro4|y~1_combout\,
	datab => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~5_combout\,
	datac => \arIn[23]~input_o\,
	datad => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~4_combout\,
	combout => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~7_combout\);

-- Location: LCCOMB_X27_Y23_N20
\or8to1_y|b~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \or8to1_y|b~2_combout\ = (\or8to1_y|b~0_combout\) # ((\xor13_9_8_4_2_1_0_erro3|y~2_combout\) # ((\or8to1_y|b~1_combout\) # (\xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \or8to1_y|b~0_combout\,
	datab => \xor13_9_8_4_2_1_0_erro3|y~2_combout\,
	datac => \or8to1_y|b~1_combout\,
	datad => \xor15_14_11_10_9_6_4_3_2_1_0_erro2|y~7_combout\,
	combout => \or8to1_y|b~2_combout\);

-- Location: LCCOMB_X27_Y23_N6
\xor15_13_7_6_5_4_3_1_0_erro1|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_13_7_6_5_4_3_1_0_erro1|y~2_combout\ = \xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\ $ (\arIn[23]~input_o\ $ (\xor15_13_7_6_5_4_3_1_0_erro1|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor15_13_7_6_5_4_3_1_0_erro1|y~0_combout\,
	datac => \arIn[23]~input_o\,
	datad => \xor15_13_7_6_5_4_3_1_0_erro1|y~1_combout\,
	combout => \xor15_13_7_6_5_4_3_1_0_erro1|y~2_combout\);

ww_checkError <= \checkError~output_o\;

ww_errorOut0 <= \errorOut0~output_o\;

ww_errorOut1 <= \errorOut1~output_o\;

ww_errorOut2 <= \errorOut2~output_o\;

ww_errorOut3 <= \errorOut3~output_o\;

ww_errorOut4 <= \errorOut4~output_o\;

ww_errorOut5 <= \errorOut5~output_o\;

ww_errorOut6 <= \errorOut6~output_o\;

ww_errorOut7 <= \errorOut7~output_o\;
END structure;


