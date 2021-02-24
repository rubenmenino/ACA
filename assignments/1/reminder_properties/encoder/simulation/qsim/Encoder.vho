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

-- DATE "12/15/2020 14:29:54"

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

ENTITY 	Encoder IS
    PORT (
	aIn : IN std_logic_vector(15 DOWNTO 0);
	arOut : OUT std_logic_vector(23 DOWNTO 0)
	);
END Encoder;

-- Design Ports Information
-- arOut[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[4]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[8]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[10]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[11]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[15]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[16]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[17]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[18]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[19]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[20]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[22]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[23]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[15]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[12]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[11]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[9]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[14]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_arOut : std_logic_vector(23 DOWNTO 0);
SIGNAL \arOut[0]~output_o\ : std_logic;
SIGNAL \arOut[1]~output_o\ : std_logic;
SIGNAL \arOut[2]~output_o\ : std_logic;
SIGNAL \arOut[3]~output_o\ : std_logic;
SIGNAL \arOut[4]~output_o\ : std_logic;
SIGNAL \arOut[5]~output_o\ : std_logic;
SIGNAL \arOut[6]~output_o\ : std_logic;
SIGNAL \arOut[7]~output_o\ : std_logic;
SIGNAL \arOut[8]~output_o\ : std_logic;
SIGNAL \arOut[9]~output_o\ : std_logic;
SIGNAL \arOut[10]~output_o\ : std_logic;
SIGNAL \arOut[11]~output_o\ : std_logic;
SIGNAL \arOut[12]~output_o\ : std_logic;
SIGNAL \arOut[13]~output_o\ : std_logic;
SIGNAL \arOut[14]~output_o\ : std_logic;
SIGNAL \arOut[15]~output_o\ : std_logic;
SIGNAL \arOut[16]~output_o\ : std_logic;
SIGNAL \arOut[17]~output_o\ : std_logic;
SIGNAL \arOut[18]~output_o\ : std_logic;
SIGNAL \arOut[19]~output_o\ : std_logic;
SIGNAL \arOut[20]~output_o\ : std_logic;
SIGNAL \arOut[21]~output_o\ : std_logic;
SIGNAL \arOut[22]~output_o\ : std_logic;
SIGNAL \arOut[23]~output_o\ : std_logic;
SIGNAL \aIn[12]~input_o\ : std_logic;
SIGNAL \aIn[0]~input_o\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0|y~0_combout\ : std_logic;
SIGNAL \aIn[3]~input_o\ : std_logic;
SIGNAL \aIn[11]~input_o\ : std_logic;
SIGNAL \aIn[15]~input_o\ : std_logic;
SIGNAL \xor15_14_12_11_10_9_6_4_3_2_1_0|y~0_combout\ : std_logic;
SIGNAL \aIn[5]~input_o\ : std_logic;
SIGNAL \aIn[8]~input_o\ : std_logic;
SIGNAL \aIn[9]~input_o\ : std_logic;
SIGNAL \aIn[7]~input_o\ : std_logic;
SIGNAL \aIn[10]~input_o\ : std_logic;
SIGNAL \xor10_9_8_7|y~0_combout\ : std_logic;
SIGNAL \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\ : std_logic;
SIGNAL \aIn[13]~input_o\ : std_logic;
SIGNAL \aIn[1]~input_o\ : std_logic;
SIGNAL \aIn[4]~input_o\ : std_logic;
SIGNAL \xor13_9_8_4_2_1_0|y~2_combout\ : std_logic;
SIGNAL \aIn[6]~input_o\ : std_logic;
SIGNAL \xor15_13_7_6_5_4_3_1_0|y~0_combout\ : std_logic;
SIGNAL \xor15_13_7_6_5_4_3_1_0|y~1_combout\ : std_logic;
SIGNAL \aIn[2]~input_o\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0|y~1_combout\ : std_logic;
SIGNAL \aIn[14]~input_o\ : std_logic;
SIGNAL \xor14_10_9_5_3_2_1|y~0_combout\ : std_logic;
SIGNAL \xor15_14_12_11_10_9_6_4_3_2_1_0|y~1_combout\ : std_logic;
SIGNAL \xor13_9_8_4_2_1_0|y~3_combout\ : std_logic;
SIGNAL \xor14_10_9_5_3_2_1|y~1_combout\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0|y~2_combout\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0|y~3_combout\ : std_logic;
SIGNAL \xor13_10_9_8_7_6_5_3_1|y~0_combout\ : std_logic;
SIGNAL \xor14_11_10_9_8_7_6_4_2|y~0_combout\ : std_logic;
SIGNAL \xor14_11_10_9_8_7_6_4_2|y~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_aIn <= aIn;
arOut <= ww_arOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y11_N9
\arOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\,
	devoe => ww_devoe,
	o => \arOut[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\arOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_13_7_6_5_4_3_1_0|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\arOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_14_12_11_10_9_6_4_3_2_1_0|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\arOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor13_9_8_4_2_1_0|y~3_combout\,
	devoe => ww_devoe,
	o => \arOut[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\arOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor14_10_9_5_3_2_1|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[4]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\arOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor12_9_8_7_6_5_4_2_0|y~3_combout\,
	devoe => ww_devoe,
	o => \arOut[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\arOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor13_10_9_8_7_6_5_3_1|y~0_combout\,
	devoe => ww_devoe,
	o => \arOut[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\arOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor14_11_10_9_8_7_6_4_2|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[7]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\arOut[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[0]~input_o\,
	devoe => ww_devoe,
	o => \arOut[8]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\arOut[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[1]~input_o\,
	devoe => ww_devoe,
	o => \arOut[9]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\arOut[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[2]~input_o\,
	devoe => ww_devoe,
	o => \arOut[10]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\arOut[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[3]~input_o\,
	devoe => ww_devoe,
	o => \arOut[11]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\arOut[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[4]~input_o\,
	devoe => ww_devoe,
	o => \arOut[12]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\arOut[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[5]~input_o\,
	devoe => ww_devoe,
	o => \arOut[13]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\arOut[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[6]~input_o\,
	devoe => ww_devoe,
	o => \arOut[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\arOut[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[7]~input_o\,
	devoe => ww_devoe,
	o => \arOut[15]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\arOut[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[8]~input_o\,
	devoe => ww_devoe,
	o => \arOut[16]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\arOut[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[9]~input_o\,
	devoe => ww_devoe,
	o => \arOut[17]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\arOut[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[10]~input_o\,
	devoe => ww_devoe,
	o => \arOut[18]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\arOut[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[11]~input_o\,
	devoe => ww_devoe,
	o => \arOut[19]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\arOut[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[12]~input_o\,
	devoe => ww_devoe,
	o => \arOut[20]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\arOut[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[13]~input_o\,
	devoe => ww_devoe,
	o => \arOut[21]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\arOut[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[14]~input_o\,
	devoe => ww_devoe,
	o => \arOut[22]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\arOut[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aIn[15]~input_o\,
	devoe => ww_devoe,
	o => \arOut[23]~output_o\);

-- Location: IOIBUF_X29_Y0_N8
\aIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(12),
	o => \aIn[12]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\aIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(0),
	o => \aIn[0]~input_o\);

-- Location: LCCOMB_X32_Y12_N8
\xor12_9_8_7_6_5_4_2_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0|y~0_combout\ = \aIn[12]~input_o\ $ (\aIn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aIn[12]~input_o\,
	datad => \aIn[0]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0|y~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\aIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(3),
	o => \aIn[3]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\aIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(11),
	o => \aIn[11]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\aIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(15),
	o => \aIn[15]~input_o\);

-- Location: LCCOMB_X32_Y14_N8
\xor15_14_12_11_10_9_6_4_3_2_1_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_12_11_10_9_6_4_3_2_1_0|y~0_combout\ = \xor12_9_8_7_6_5_4_2_0|y~0_combout\ $ (\aIn[3]~input_o\ $ (\aIn[11]~input_o\ $ (\aIn[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor12_9_8_7_6_5_4_2_0|y~0_combout\,
	datab => \aIn[3]~input_o\,
	datac => \aIn[11]~input_o\,
	datad => \aIn[15]~input_o\,
	combout => \xor15_14_12_11_10_9_6_4_3_2_1_0|y~0_combout\);

-- Location: IOIBUF_X31_Y31_N1
\aIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(5),
	o => \aIn[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\aIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(8),
	o => \aIn[8]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\aIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(9),
	o => \aIn[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\aIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(7),
	o => \aIn[7]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\aIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(10),
	o => \aIn[10]~input_o\);

-- Location: LCCOMB_X32_Y14_N18
\xor10_9_8_7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor10_9_8_7|y~0_combout\ = \aIn[8]~input_o\ $ (\aIn[9]~input_o\ $ (\aIn[7]~input_o\ $ (\aIn[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[8]~input_o\,
	datab => \aIn[9]~input_o\,
	datac => \aIn[7]~input_o\,
	datad => \aIn[10]~input_o\,
	combout => \xor10_9_8_7|y~0_combout\);

-- Location: LCCOMB_X32_Y14_N4
\xor15_12_11_10_9_8_7_5_3_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\ = \xor15_14_12_11_10_9_6_4_3_2_1_0|y~0_combout\ $ (\aIn[5]~input_o\ $ (\xor10_9_8_7|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor15_14_12_11_10_9_6_4_3_2_1_0|y~0_combout\,
	datac => \aIn[5]~input_o\,
	datad => \xor10_9_8_7|y~0_combout\,
	combout => \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\);

-- Location: IOIBUF_X26_Y31_N8
\aIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(13),
	o => \aIn[13]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\aIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(1),
	o => \aIn[1]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\aIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(4),
	o => \aIn[4]~input_o\);

-- Location: LCCOMB_X32_Y14_N6
\xor13_9_8_4_2_1_0|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_9_8_4_2_1_0|y~2_combout\ = \aIn[13]~input_o\ $ (\aIn[0]~input_o\ $ (\aIn[1]~input_o\ $ (\aIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[13]~input_o\,
	datab => \aIn[0]~input_o\,
	datac => \aIn[1]~input_o\,
	datad => \aIn[4]~input_o\,
	combout => \xor13_9_8_4_2_1_0|y~2_combout\);

-- Location: IOIBUF_X33_Y24_N1
\aIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(6),
	o => \aIn[6]~input_o\);

-- Location: LCCOMB_X32_Y14_N16
\xor15_13_7_6_5_4_3_1_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_13_7_6_5_4_3_1_0|y~0_combout\ = \aIn[6]~input_o\ $ (\aIn[3]~input_o\ $ (\aIn[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[6]~input_o\,
	datab => \aIn[3]~input_o\,
	datac => \aIn[5]~input_o\,
	combout => \xor15_13_7_6_5_4_3_1_0|y~0_combout\);

-- Location: LCCOMB_X32_Y14_N2
\xor15_13_7_6_5_4_3_1_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_13_7_6_5_4_3_1_0|y~1_combout\ = \xor13_9_8_4_2_1_0|y~2_combout\ $ (\xor15_13_7_6_5_4_3_1_0|y~0_combout\ $ (\aIn[7]~input_o\ $ (\aIn[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor13_9_8_4_2_1_0|y~2_combout\,
	datab => \xor15_13_7_6_5_4_3_1_0|y~0_combout\,
	datac => \aIn[7]~input_o\,
	datad => \aIn[15]~input_o\,
	combout => \xor15_13_7_6_5_4_3_1_0|y~1_combout\);

-- Location: IOIBUF_X24_Y0_N1
\aIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(2),
	o => \aIn[2]~input_o\);

-- Location: LCCOMB_X32_Y14_N12
\xor12_9_8_7_6_5_4_2_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0|y~1_combout\ = \aIn[2]~input_o\ $ (\aIn[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aIn[2]~input_o\,
	datac => \aIn[9]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0|y~1_combout\);

-- Location: IOIBUF_X22_Y0_N8
\aIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(14),
	o => \aIn[14]~input_o\);

-- Location: LCCOMB_X32_Y14_N30
\xor14_10_9_5_3_2_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_10_9_5_3_2_1|y~0_combout\ = \xor12_9_8_7_6_5_4_2_0|y~1_combout\ $ (\aIn[14]~input_o\ $ (\aIn[1]~input_o\ $ (\aIn[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor12_9_8_7_6_5_4_2_0|y~1_combout\,
	datab => \aIn[14]~input_o\,
	datac => \aIn[1]~input_o\,
	datad => \aIn[10]~input_o\,
	combout => \xor14_10_9_5_3_2_1|y~0_combout\);

-- Location: LCCOMB_X32_Y14_N0
\xor15_14_12_11_10_9_6_4_3_2_1_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_12_11_10_9_6_4_3_2_1_0|y~1_combout\ = \aIn[6]~input_o\ $ (\xor15_14_12_11_10_9_6_4_3_2_1_0|y~0_combout\ $ (\xor14_10_9_5_3_2_1|y~0_combout\ $ (\aIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[6]~input_o\,
	datab => \xor15_14_12_11_10_9_6_4_3_2_1_0|y~0_combout\,
	datac => \xor14_10_9_5_3_2_1|y~0_combout\,
	datad => \aIn[4]~input_o\,
	combout => \xor15_14_12_11_10_9_6_4_3_2_1_0|y~1_combout\);

-- Location: LCCOMB_X32_Y14_N14
\xor13_9_8_4_2_1_0|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_9_8_4_2_1_0|y~3_combout\ = \aIn[8]~input_o\ $ (\aIn[2]~input_o\ $ (\aIn[9]~input_o\ $ (\xor13_9_8_4_2_1_0|y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[8]~input_o\,
	datab => \aIn[2]~input_o\,
	datac => \aIn[9]~input_o\,
	datad => \xor13_9_8_4_2_1_0|y~2_combout\,
	combout => \xor13_9_8_4_2_1_0|y~3_combout\);

-- Location: LCCOMB_X32_Y14_N10
\xor14_10_9_5_3_2_1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_10_9_5_3_2_1|y~1_combout\ = \xor14_10_9_5_3_2_1|y~0_combout\ $ (\aIn[3]~input_o\ $ (\aIn[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor14_10_9_5_3_2_1|y~0_combout\,
	datab => \aIn[3]~input_o\,
	datac => \aIn[5]~input_o\,
	combout => \xor14_10_9_5_3_2_1|y~1_combout\);

-- Location: LCCOMB_X32_Y14_N28
\xor12_9_8_7_6_5_4_2_0|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0|y~2_combout\ = \aIn[8]~input_o\ $ (\aIn[7]~input_o\ $ (\aIn[6]~input_o\ $ (\aIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[8]~input_o\,
	datab => \aIn[7]~input_o\,
	datac => \aIn[6]~input_o\,
	datad => \aIn[4]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0|y~2_combout\);

-- Location: LCCOMB_X32_Y14_N22
\xor12_9_8_7_6_5_4_2_0|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0|y~3_combout\ = \xor12_9_8_7_6_5_4_2_0|y~0_combout\ $ (\xor12_9_8_7_6_5_4_2_0|y~2_combout\ $ (\aIn[5]~input_o\ $ (\xor12_9_8_7_6_5_4_2_0|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor12_9_8_7_6_5_4_2_0|y~0_combout\,
	datab => \xor12_9_8_7_6_5_4_2_0|y~2_combout\,
	datac => \aIn[5]~input_o\,
	datad => \xor12_9_8_7_6_5_4_2_0|y~1_combout\,
	combout => \xor12_9_8_7_6_5_4_2_0|y~3_combout\);

-- Location: LCCOMB_X32_Y14_N24
\xor13_10_9_8_7_6_5_3_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_10_9_8_7_6_5_3_1|y~0_combout\ = \aIn[13]~input_o\ $ (\xor15_13_7_6_5_4_3_1_0|y~0_combout\ $ (\aIn[1]~input_o\ $ (\xor10_9_8_7|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[13]~input_o\,
	datab => \xor15_13_7_6_5_4_3_1_0|y~0_combout\,
	datac => \aIn[1]~input_o\,
	datad => \xor10_9_8_7|y~0_combout\,
	combout => \xor13_10_9_8_7_6_5_3_1|y~0_combout\);

-- Location: LCCOMB_X32_Y14_N26
\xor14_11_10_9_8_7_6_4_2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_11_10_9_8_7_6_4_2|y~0_combout\ = \aIn[6]~input_o\ $ (\aIn[2]~input_o\ $ (\aIn[11]~input_o\ $ (\aIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[6]~input_o\,
	datab => \aIn[2]~input_o\,
	datac => \aIn[11]~input_o\,
	datad => \aIn[4]~input_o\,
	combout => \xor14_11_10_9_8_7_6_4_2|y~0_combout\);

-- Location: LCCOMB_X32_Y14_N20
\xor14_11_10_9_8_7_6_4_2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_11_10_9_8_7_6_4_2|y~1_combout\ = \aIn[14]~input_o\ $ (\xor14_11_10_9_8_7_6_4_2|y~0_combout\ $ (\xor10_9_8_7|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aIn[14]~input_o\,
	datac => \xor14_11_10_9_8_7_6_4_2|y~0_combout\,
	datad => \xor10_9_8_7|y~0_combout\,
	combout => \xor14_11_10_9_8_7_6_4_2|y~1_combout\);

ww_arOut(0) <= \arOut[0]~output_o\;

ww_arOut(1) <= \arOut[1]~output_o\;

ww_arOut(2) <= \arOut[2]~output_o\;

ww_arOut(3) <= \arOut[3]~output_o\;

ww_arOut(4) <= \arOut[4]~output_o\;

ww_arOut(5) <= \arOut[5]~output_o\;

ww_arOut(6) <= \arOut[6]~output_o\;

ww_arOut(7) <= \arOut[7]~output_o\;

ww_arOut(8) <= \arOut[8]~output_o\;

ww_arOut(9) <= \arOut[9]~output_o\;

ww_arOut(10) <= \arOut[10]~output_o\;

ww_arOut(11) <= \arOut[11]~output_o\;

ww_arOut(12) <= \arOut[12]~output_o\;

ww_arOut(13) <= \arOut[13]~output_o\;

ww_arOut(14) <= \arOut[14]~output_o\;

ww_arOut(15) <= \arOut[15]~output_o\;

ww_arOut(16) <= \arOut[16]~output_o\;

ww_arOut(17) <= \arOut[17]~output_o\;

ww_arOut(18) <= \arOut[18]~output_o\;

ww_arOut(19) <= \arOut[19]~output_o\;

ww_arOut(20) <= \arOut[20]~output_o\;

ww_arOut(21) <= \arOut[21]~output_o\;

ww_arOut(22) <= \arOut[22]~output_o\;

ww_arOut(23) <= \arOut[23]~output_o\;
END structure;


