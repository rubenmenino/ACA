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

-- DATE "12/04/2020 17:39:31"

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
	arOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END Encoder;

-- Design Ports Information
-- arOut[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[4]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arOut[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[15]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[9]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[7]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[8]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[13]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[14]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aIn[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_arOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \arOut[0]~output_o\ : std_logic;
SIGNAL \arOut[1]~output_o\ : std_logic;
SIGNAL \arOut[2]~output_o\ : std_logic;
SIGNAL \arOut[3]~output_o\ : std_logic;
SIGNAL \arOut[4]~output_o\ : std_logic;
SIGNAL \arOut[5]~output_o\ : std_logic;
SIGNAL \arOut[6]~output_o\ : std_logic;
SIGNAL \arOut[7]~output_o\ : std_logic;
SIGNAL \aIn[12]~input_o\ : std_logic;
SIGNAL \aIn[7]~input_o\ : std_logic;
SIGNAL \aIn[8]~input_o\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0|y~0_combout\ : std_logic;
SIGNAL \aIn[3]~input_o\ : std_logic;
SIGNAL \aIn[5]~input_o\ : std_logic;
SIGNAL \xor5_3|y~0_combout\ : std_logic;
SIGNAL \aIn[0]~input_o\ : std_logic;
SIGNAL \aIn[9]~input_o\ : std_logic;
SIGNAL \aIn[11]~input_o\ : std_logic;
SIGNAL \aIn[10]~input_o\ : std_logic;
SIGNAL \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\ : std_logic;
SIGNAL \aIn[15]~input_o\ : std_logic;
SIGNAL \xor15_12_11_10_9_8_7_5_3_0|y~1_combout\ : std_logic;
SIGNAL \aIn[1]~input_o\ : std_logic;
SIGNAL \aIn[13]~input_o\ : std_logic;
SIGNAL \xor15_13_7_6_5_4_3_1_0|y~2_combout\ : std_logic;
SIGNAL \xor15_13_7_6_5_4_3_1_0|y~3_combout\ : std_logic;
SIGNAL \aIn[2]~input_o\ : std_logic;
SIGNAL \aIn[14]~input_o\ : std_logic;
SIGNAL \xor15_14_11_10_9_6_4_3_2_1_0|y~0_combout\ : std_logic;
SIGNAL \xor15_14_11_10_9_6_4_3_2_1_0|y~1_combout\ : std_logic;
SIGNAL \aIn[4]~input_o\ : std_logic;
SIGNAL \xor13_9_8_4_2_1_0|y~0_combout\ : std_logic;
SIGNAL \xor13_9_8_4_2_1_0|y~1_combout\ : std_logic;
SIGNAL \xor14_10_9_5_3_2_1|y~0_combout\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0|y~1_combout\ : std_logic;
SIGNAL \xor12_9_8_7_6_5_4_2_0|y~2_combout\ : std_logic;
SIGNAL \xor13_10_9_8_7_6_5_3_1|y~0_combout\ : std_logic;
SIGNAL \xor10_9_8_7|y~0_combout\ : std_logic;
SIGNAL \aIn[6]~input_o\ : std_logic;
SIGNAL \xor13_10_9_8_7_6_5_3_1|y~1_combout\ : std_logic;
SIGNAL \xor14_11_10_9_8_7_6_4_2|y~0_combout\ : std_logic;

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

-- Location: IOOBUF_X33_Y12_N2
\arOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_12_11_10_9_8_7_5_3_0|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\arOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_13_7_6_5_4_3_1_0|y~3_combout\,
	devoe => ww_devoe,
	o => \arOut[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\arOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor15_14_11_10_9_6_4_3_2_1_0|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\arOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor13_9_8_4_2_1_0|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\arOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor14_10_9_5_3_2_1|y~0_combout\,
	devoe => ww_devoe,
	o => \arOut[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\arOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor12_9_8_7_6_5_4_2_0|y~2_combout\,
	devoe => ww_devoe,
	o => \arOut[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\arOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor13_10_9_8_7_6_5_3_1|y~1_combout\,
	devoe => ww_devoe,
	o => \arOut[6]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\arOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor14_11_10_9_8_7_6_4_2|y~0_combout\,
	devoe => ww_devoe,
	o => \arOut[7]~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\aIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(12),
	o => \aIn[12]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\aIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(7),
	o => \aIn[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\aIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(8),
	o => \aIn[8]~input_o\);

-- Location: LCCOMB_X27_Y4_N20
\xor12_9_8_7_6_5_4_2_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0|y~0_combout\ = \aIn[12]~input_o\ $ (\aIn[7]~input_o\ $ (\aIn[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aIn[12]~input_o\,
	datac => \aIn[7]~input_o\,
	datad => \aIn[8]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0|y~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\aIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(3),
	o => \aIn[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\aIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(5),
	o => \aIn[5]~input_o\);

-- Location: LCCOMB_X27_Y4_N2
\xor5_3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor5_3|y~0_combout\ = \aIn[3]~input_o\ $ (\aIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aIn[3]~input_o\,
	datad => \aIn[5]~input_o\,
	combout => \xor5_3|y~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\aIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(0),
	o => \aIn[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\aIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(9),
	o => \aIn[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\aIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(11),
	o => \aIn[11]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\aIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(10),
	o => \aIn[10]~input_o\);

-- Location: LCCOMB_X27_Y4_N24
\xor15_12_11_10_9_8_7_5_3_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\ = \aIn[0]~input_o\ $ (\aIn[9]~input_o\ $ (\aIn[11]~input_o\ $ (\aIn[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[0]~input_o\,
	datab => \aIn[9]~input_o\,
	datac => \aIn[11]~input_o\,
	datad => \aIn[10]~input_o\,
	combout => \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\aIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(15),
	o => \aIn[15]~input_o\);

-- Location: LCCOMB_X27_Y4_N14
\xor15_12_11_10_9_8_7_5_3_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_12_11_10_9_8_7_5_3_0|y~1_combout\ = \xor12_9_8_7_6_5_4_2_0|y~0_combout\ $ (\xor5_3|y~0_combout\ $ (\xor15_12_11_10_9_8_7_5_3_0|y~0_combout\ $ (\aIn[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor12_9_8_7_6_5_4_2_0|y~0_combout\,
	datab => \xor5_3|y~0_combout\,
	datac => \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\,
	datad => \aIn[15]~input_o\,
	combout => \xor15_12_11_10_9_8_7_5_3_0|y~1_combout\);

-- Location: IOIBUF_X26_Y0_N8
\aIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(1),
	o => \aIn[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\aIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(13),
	o => \aIn[13]~input_o\);

-- Location: LCCOMB_X27_Y4_N8
\xor15_13_7_6_5_4_3_1_0|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_13_7_6_5_4_3_1_0|y~2_combout\ = \aIn[1]~input_o\ $ (\aIn[13]~input_o\ $ (\aIn[7]~input_o\ $ (\aIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[1]~input_o\,
	datab => \aIn[13]~input_o\,
	datac => \aIn[7]~input_o\,
	datad => \aIn[0]~input_o\,
	combout => \xor15_13_7_6_5_4_3_1_0|y~2_combout\);

-- Location: LCCOMB_X27_Y4_N6
\xor15_13_7_6_5_4_3_1_0|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_13_7_6_5_4_3_1_0|y~3_combout\ = \aIn[5]~input_o\ $ (\aIn[3]~input_o\ $ (\xor15_13_7_6_5_4_3_1_0|y~2_combout\ $ (\aIn[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[5]~input_o\,
	datab => \aIn[3]~input_o\,
	datac => \xor15_13_7_6_5_4_3_1_0|y~2_combout\,
	datad => \aIn[15]~input_o\,
	combout => \xor15_13_7_6_5_4_3_1_0|y~3_combout\);

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

-- Location: IOIBUF_X33_Y12_N8
\aIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(14),
	o => \aIn[14]~input_o\);

-- Location: LCCOMB_X27_Y4_N26
\xor15_14_11_10_9_6_4_3_2_1_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_11_10_9_6_4_3_2_1_0|y~0_combout\ = \aIn[1]~input_o\ $ (\aIn[2]~input_o\ $ (\aIn[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[1]~input_o\,
	datab => \aIn[2]~input_o\,
	datad => \aIn[14]~input_o\,
	combout => \xor15_14_11_10_9_6_4_3_2_1_0|y~0_combout\);

-- Location: LCCOMB_X27_Y4_N28
\xor15_14_11_10_9_6_4_3_2_1_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor15_14_11_10_9_6_4_3_2_1_0|y~1_combout\ = \aIn[3]~input_o\ $ (\xor15_12_11_10_9_8_7_5_3_0|y~0_combout\ $ (\xor15_14_11_10_9_6_4_3_2_1_0|y~0_combout\ $ (\aIn[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[3]~input_o\,
	datab => \xor15_12_11_10_9_8_7_5_3_0|y~0_combout\,
	datac => \xor15_14_11_10_9_6_4_3_2_1_0|y~0_combout\,
	datad => \aIn[15]~input_o\,
	combout => \xor15_14_11_10_9_6_4_3_2_1_0|y~1_combout\);

-- Location: IOIBUF_X26_Y0_N1
\aIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(4),
	o => \aIn[4]~input_o\);

-- Location: LCCOMB_X27_Y4_N30
\xor13_9_8_4_2_1_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_9_8_4_2_1_0|y~0_combout\ = \aIn[1]~input_o\ $ (\aIn[4]~input_o\ $ (\aIn[13]~input_o\ $ (\aIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[1]~input_o\,
	datab => \aIn[4]~input_o\,
	datac => \aIn[13]~input_o\,
	datad => \aIn[0]~input_o\,
	combout => \xor13_9_8_4_2_1_0|y~0_combout\);

-- Location: LCCOMB_X27_Y4_N0
\xor13_9_8_4_2_1_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_9_8_4_2_1_0|y~1_combout\ = \aIn[9]~input_o\ $ (\aIn[8]~input_o\ $ (\xor13_9_8_4_2_1_0|y~0_combout\ $ (\aIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[9]~input_o\,
	datab => \aIn[8]~input_o\,
	datac => \xor13_9_8_4_2_1_0|y~0_combout\,
	datad => \aIn[2]~input_o\,
	combout => \xor13_9_8_4_2_1_0|y~1_combout\);

-- Location: LCCOMB_X27_Y4_N10
\xor14_10_9_5_3_2_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_10_9_5_3_2_1|y~0_combout\ = \aIn[10]~input_o\ $ (\xor5_3|y~0_combout\ $ (\xor15_14_11_10_9_6_4_3_2_1_0|y~0_combout\ $ (\aIn[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[10]~input_o\,
	datab => \xor5_3|y~0_combout\,
	datac => \xor15_14_11_10_9_6_4_3_2_1_0|y~0_combout\,
	datad => \aIn[9]~input_o\,
	combout => \xor14_10_9_5_3_2_1|y~0_combout\);

-- Location: LCCOMB_X27_Y4_N4
\xor12_9_8_7_6_5_4_2_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0|y~1_combout\ = \aIn[0]~input_o\ $ (\aIn[12]~input_o\ $ (\aIn[7]~input_o\ $ (\aIn[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[0]~input_o\,
	datab => \aIn[12]~input_o\,
	datac => \aIn[7]~input_o\,
	datad => \aIn[8]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0|y~1_combout\);

-- Location: LCCOMB_X27_Y4_N22
\xor12_9_8_7_6_5_4_2_0|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor12_9_8_7_6_5_4_2_0|y~2_combout\ = \aIn[5]~input_o\ $ (\aIn[2]~input_o\ $ (\xor12_9_8_7_6_5_4_2_0|y~1_combout\ $ (\aIn[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[5]~input_o\,
	datab => \aIn[2]~input_o\,
	datac => \xor12_9_8_7_6_5_4_2_0|y~1_combout\,
	datad => \aIn[9]~input_o\,
	combout => \xor12_9_8_7_6_5_4_2_0|y~2_combout\);

-- Location: LCCOMB_X27_Y4_N18
\xor13_10_9_8_7_6_5_3_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_10_9_8_7_6_5_3_1|y~0_combout\ = \aIn[5]~input_o\ $ (\aIn[3]~input_o\ $ (\aIn[13]~input_o\ $ (\aIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[5]~input_o\,
	datab => \aIn[3]~input_o\,
	datac => \aIn[13]~input_o\,
	datad => \aIn[1]~input_o\,
	combout => \xor13_10_9_8_7_6_5_3_1|y~0_combout\);

-- Location: LCCOMB_X27_Y4_N16
\xor10_9_8_7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor10_9_8_7|y~0_combout\ = \aIn[10]~input_o\ $ (\aIn[8]~input_o\ $ (\aIn[7]~input_o\ $ (\aIn[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[10]~input_o\,
	datab => \aIn[8]~input_o\,
	datac => \aIn[7]~input_o\,
	datad => \aIn[9]~input_o\,
	combout => \xor10_9_8_7|y~0_combout\);

-- Location: IOIBUF_X33_Y11_N1
\aIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aIn(6),
	o => \aIn[6]~input_o\);

-- Location: LCCOMB_X32_Y11_N24
\xor13_10_9_8_7_6_5_3_1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor13_10_9_8_7_6_5_3_1|y~1_combout\ = \xor13_10_9_8_7_6_5_3_1|y~0_combout\ $ (\xor10_9_8_7|y~0_combout\ $ (\aIn[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor13_10_9_8_7_6_5_3_1|y~0_combout\,
	datab => \xor10_9_8_7|y~0_combout\,
	datad => \aIn[6]~input_o\,
	combout => \xor13_10_9_8_7_6_5_3_1|y~1_combout\);

-- Location: LCCOMB_X27_Y4_N12
\xor14_11_10_9_8_7_6_4_2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor14_11_10_9_8_7_6_4_2|y~0_combout\ = \aIn[14]~input_o\ $ (\aIn[2]~input_o\ $ (\aIn[11]~input_o\ $ (\xor10_9_8_7|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aIn[14]~input_o\,
	datab => \aIn[2]~input_o\,
	datac => \aIn[11]~input_o\,
	datad => \xor10_9_8_7|y~0_combout\,
	combout => \xor14_11_10_9_8_7_6_4_2|y~0_combout\);

ww_arOut(0) <= \arOut[0]~output_o\;

ww_arOut(1) <= \arOut[1]~output_o\;

ww_arOut(2) <= \arOut[2]~output_o\;

ww_arOut(3) <= \arOut[3]~output_o\;

ww_arOut(4) <= \arOut[4]~output_o\;

ww_arOut(5) <= \arOut[5]~output_o\;

ww_arOut(6) <= \arOut[6]~output_o\;

ww_arOut(7) <= \arOut[7]~output_o\;
END structure;


