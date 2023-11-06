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

-- DATE "10/29/2023 14:44:45"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
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
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	compare IS
    PORT (
	word1 : IN std_logic_vector(12 DOWNTO 0);
	word2 : IN std_logic_vector(12 DOWNTO 0);
	sw1 : IN std_logic_vector(2 DOWNTO 0);
	sw2 : IN std_logic_vector(2 DOWNTO 0);
	small_word : BUFFER std_logic_vector(12 DOWNTO 0);
	big_word : BUFFER std_logic_vector(12 DOWNTO 0);
	u1 : IN std_logic;
	u2 : IN std_logic;
	u1o : BUFFER std_logic;
	u2o : BUFFER std_logic
	);
END compare;

-- Design Ports Information
-- small_word[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[1]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[3]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[6]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[7]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[8]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[9]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[10]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[11]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- small_word[12]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[0]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[3]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[6]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[8]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[9]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[10]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[11]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- big_word[12]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u1o	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u2o	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u1	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[2]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[1]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[1]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[4]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[11]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[10]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[10]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[11]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[12]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[12]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u2	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[5]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[5]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[6]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[6]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[7]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[8]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[8]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[9]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word2[9]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF compare IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_word1 : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_word2 : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_sw1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sw2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_small_word : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_big_word : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_u1 : std_logic;
SIGNAL ww_u2 : std_logic;
SIGNAL ww_u1o : std_logic;
SIGNAL ww_u2o : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \small_word[0]~output_o\ : std_logic;
SIGNAL \small_word[1]~output_o\ : std_logic;
SIGNAL \small_word[2]~output_o\ : std_logic;
SIGNAL \small_word[3]~output_o\ : std_logic;
SIGNAL \small_word[4]~output_o\ : std_logic;
SIGNAL \small_word[5]~output_o\ : std_logic;
SIGNAL \small_word[6]~output_o\ : std_logic;
SIGNAL \small_word[7]~output_o\ : std_logic;
SIGNAL \small_word[8]~output_o\ : std_logic;
SIGNAL \small_word[9]~output_o\ : std_logic;
SIGNAL \small_word[10]~output_o\ : std_logic;
SIGNAL \small_word[11]~output_o\ : std_logic;
SIGNAL \small_word[12]~output_o\ : std_logic;
SIGNAL \big_word[0]~output_o\ : std_logic;
SIGNAL \big_word[1]~output_o\ : std_logic;
SIGNAL \big_word[2]~output_o\ : std_logic;
SIGNAL \big_word[3]~output_o\ : std_logic;
SIGNAL \big_word[4]~output_o\ : std_logic;
SIGNAL \big_word[5]~output_o\ : std_logic;
SIGNAL \big_word[6]~output_o\ : std_logic;
SIGNAL \big_word[7]~output_o\ : std_logic;
SIGNAL \big_word[8]~output_o\ : std_logic;
SIGNAL \big_word[9]~output_o\ : std_logic;
SIGNAL \big_word[10]~output_o\ : std_logic;
SIGNAL \big_word[11]~output_o\ : std_logic;
SIGNAL \big_word[12]~output_o\ : std_logic;
SIGNAL \u1o~output_o\ : std_logic;
SIGNAL \u2o~output_o\ : std_logic;
SIGNAL \word1[0]~input_o\ : std_logic;
SIGNAL \u1~input_o\ : std_logic;
SIGNAL \u2~input_o\ : std_logic;
SIGNAL \sw1[1]~input_o\ : std_logic;
SIGNAL \word1[11]~input_o\ : std_logic;
SIGNAL \sw1[0]~input_o\ : std_logic;
SIGNAL \word1[10]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sw2[1]~input_o\ : std_logic;
SIGNAL \word2[11]~input_o\ : std_logic;
SIGNAL \word2[10]~input_o\ : std_logic;
SIGNAL \sw2[0]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \small_word~4_combout\ : std_logic;
SIGNAL \word2[3]~input_o\ : std_logic;
SIGNAL \word1[3]~input_o\ : std_logic;
SIGNAL \word1[2]~input_o\ : std_logic;
SIGNAL \word2[2]~input_o\ : std_logic;
SIGNAL \word1[1]~input_o\ : std_logic;
SIGNAL \word2[1]~input_o\ : std_logic;
SIGNAL \word2[0]~input_o\ : std_logic;
SIGNAL \small_word~0_combout\ : std_logic;
SIGNAL \small_word~1_combout\ : std_logic;
SIGNAL \small_word~2_combout\ : std_logic;
SIGNAL \word1[4]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \word2[4]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \small_word~3_combout\ : std_logic;
SIGNAL \word2[12]~input_o\ : std_logic;
SIGNAL \sw2[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \word1[12]~input_o\ : std_logic;
SIGNAL \sw1[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \small_word~5_combout\ : std_logic;
SIGNAL \small_word~7_combout\ : std_logic;
SIGNAL \small_word~6_combout\ : std_logic;
SIGNAL \small_word~8_combout\ : std_logic;
SIGNAL \small_word~9_combout\ : std_logic;
SIGNAL \small_word~10_combout\ : std_logic;
SIGNAL \small_word~11_combout\ : std_logic;
SIGNAL \small_word~12_combout\ : std_logic;
SIGNAL \small_word~13_combout\ : std_logic;
SIGNAL \small_word~14_combout\ : std_logic;
SIGNAL \word1[5]~input_o\ : std_logic;
SIGNAL \word2[5]~input_o\ : std_logic;
SIGNAL \small_word~15_combout\ : std_logic;
SIGNAL \word2[6]~input_o\ : std_logic;
SIGNAL \word1[6]~input_o\ : std_logic;
SIGNAL \small_word~16_combout\ : std_logic;
SIGNAL \word1[7]~input_o\ : std_logic;
SIGNAL \word2[7]~input_o\ : std_logic;
SIGNAL \small_word~17_combout\ : std_logic;
SIGNAL \word2[8]~input_o\ : std_logic;
SIGNAL \word1[8]~input_o\ : std_logic;
SIGNAL \small_word~18_combout\ : std_logic;
SIGNAL \word2[9]~input_o\ : std_logic;
SIGNAL \word1[9]~input_o\ : std_logic;
SIGNAL \small_word~19_combout\ : std_logic;
SIGNAL \small_word~20_combout\ : std_logic;
SIGNAL \small_word~21_combout\ : std_logic;
SIGNAL \small_word~22_combout\ : std_logic;
SIGNAL \big_word~0_combout\ : std_logic;
SIGNAL \big_word~1_combout\ : std_logic;
SIGNAL \big_word~2_combout\ : std_logic;
SIGNAL \big_word~3_combout\ : std_logic;
SIGNAL \big_word~4_combout\ : std_logic;
SIGNAL \big_word~5_combout\ : std_logic;
SIGNAL \big_word~6_combout\ : std_logic;
SIGNAL \big_word~7_combout\ : std_logic;
SIGNAL \big_word~8_combout\ : std_logic;
SIGNAL \big_word~9_combout\ : std_logic;
SIGNAL \big_word~10_combout\ : std_logic;
SIGNAL \big_word~11_combout\ : std_logic;
SIGNAL \big_word~12_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_word1 <= word1;
ww_word2 <= word2;
ww_sw1 <= sw1;
ww_sw2 <= sw2;
small_word <= ww_small_word;
big_word <= ww_big_word;
ww_u1 <= u1;
ww_u2 <= u2;
u1o <= ww_u1o;
u2o <= ww_u2o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y30_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X25_Y27_N16
\small_word[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~10_combout\,
	devoe => ww_devoe,
	o => \small_word[0]~output_o\);

-- Location: IOOBUF_X25_Y29_N16
\small_word[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~11_combout\,
	devoe => ww_devoe,
	o => \small_word[1]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\small_word[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~12_combout\,
	devoe => ww_devoe,
	o => \small_word[2]~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\small_word[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~13_combout\,
	devoe => ww_devoe,
	o => \small_word[3]~output_o\);

-- Location: IOOBUF_X60_Y2_N16
\small_word[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~14_combout\,
	devoe => ww_devoe,
	o => \small_word[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\small_word[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~15_combout\,
	devoe => ww_devoe,
	o => \small_word[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\small_word[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~16_combout\,
	devoe => ww_devoe,
	o => \small_word[6]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\small_word[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~17_combout\,
	devoe => ww_devoe,
	o => \small_word[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\small_word[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~18_combout\,
	devoe => ww_devoe,
	o => \small_word[8]~output_o\);

-- Location: IOOBUF_X25_Y27_N23
\small_word[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~19_combout\,
	devoe => ww_devoe,
	o => \small_word[9]~output_o\);

-- Location: IOOBUF_X60_Y31_N16
\small_word[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~20_combout\,
	devoe => ww_devoe,
	o => \small_word[10]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\small_word[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~21_combout\,
	devoe => ww_devoe,
	o => \small_word[11]~output_o\);

-- Location: IOOBUF_X60_Y10_N2
\small_word[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \small_word~22_combout\,
	devoe => ww_devoe,
	o => \small_word[12]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\big_word[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~0_combout\,
	devoe => ww_devoe,
	o => \big_word[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\big_word[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~1_combout\,
	devoe => ww_devoe,
	o => \big_word[1]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\big_word[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~2_combout\,
	devoe => ww_devoe,
	o => \big_word[2]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\big_word[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~3_combout\,
	devoe => ww_devoe,
	o => \big_word[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\big_word[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~4_combout\,
	devoe => ww_devoe,
	o => \big_word[4]~output_o\);

-- Location: IOOBUF_X53_Y0_N9
\big_word[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~5_combout\,
	devoe => ww_devoe,
	o => \big_word[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\big_word[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~6_combout\,
	devoe => ww_devoe,
	o => \big_word[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\big_word[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~7_combout\,
	devoe => ww_devoe,
	o => \big_word[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\big_word[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~8_combout\,
	devoe => ww_devoe,
	o => \big_word[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\big_word[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~9_combout\,
	devoe => ww_devoe,
	o => \big_word[9]~output_o\);

-- Location: IOOBUF_X60_Y14_N16
\big_word[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~10_combout\,
	devoe => ww_devoe,
	o => \big_word[10]~output_o\);

-- Location: IOOBUF_X60_Y23_N2
\big_word[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~11_combout\,
	devoe => ww_devoe,
	o => \big_word[11]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\big_word[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \big_word~12_combout\,
	devoe => ww_devoe,
	o => \big_word[12]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\u1o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \u1o~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\u2o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \u2o~output_o\);

-- Location: IOIBUF_X14_Y21_N1
\word1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(0),
	o => \word1[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\u1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u1,
	o => \u1~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\u2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u2,
	o => \u2~input_o\);

-- Location: IOIBUF_X60_Y10_N15
\sw1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(1),
	o => \sw1[1]~input_o\);

-- Location: IOIBUF_X60_Y13_N22
\word1[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(11),
	o => \word1[11]~input_o\);

-- Location: IOIBUF_X60_Y14_N22
\sw1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(0),
	o => \sw1[0]~input_o\);

-- Location: IOIBUF_X60_Y31_N22
\word1[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(10),
	o => \word1[10]~input_o\);

-- Location: LCCOMB_X59_Y21_N4
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\sw1[0]~input_o\ & (\word1[10]~input_o\ $ (VCC))) # (!\sw1[0]~input_o\ & (\word1[10]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\sw1[0]~input_o\ & \word1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[0]~input_o\,
	datab => \word1[10]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X59_Y21_N6
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\sw1[1]~input_o\ & ((\word1[11]~input_o\ & (\Add0~1\ & VCC)) # (!\word1[11]~input_o\ & (!\Add0~1\)))) # (!\sw1[1]~input_o\ & ((\word1[11]~input_o\ & (!\Add0~1\)) # (!\word1[11]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\sw1[1]~input_o\ & (!\word1[11]~input_o\ & !\Add0~1\)) # (!\sw1[1]~input_o\ & ((!\Add0~1\) # (!\word1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[1]~input_o\,
	datab => \word1[11]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X60_Y23_N8
\sw2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(1),
	o => \sw2[1]~input_o\);

-- Location: IOIBUF_X60_Y23_N15
\word2[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(11),
	o => \word2[11]~input_o\);

-- Location: IOIBUF_X60_Y22_N23
\word2[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(10),
	o => \word2[10]~input_o\);

-- Location: IOIBUF_X60_Y22_N15
\sw2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(0),
	o => \sw2[0]~input_o\);

-- Location: LCCOMB_X59_Y21_N18
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\word2[10]~input_o\ & (\sw2[0]~input_o\ $ (VCC))) # (!\word2[10]~input_o\ & (\sw2[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\word2[10]~input_o\ & \sw2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word2[10]~input_o\,
	datab => \sw2[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X59_Y21_N20
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\sw2[1]~input_o\ & ((\word2[11]~input_o\ & (\Add1~1\ & VCC)) # (!\word2[11]~input_o\ & (!\Add1~1\)))) # (!\sw2[1]~input_o\ & ((\word2[11]~input_o\ & (!\Add1~1\)) # (!\word2[11]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\sw2[1]~input_o\ & (!\word2[11]~input_o\ & !\Add1~1\)) # (!\sw2[1]~input_o\ & ((!\Add1~1\) # (!\word2[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw2[1]~input_o\,
	datab => \word2[11]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X59_Y21_N10
\small_word~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~4_combout\ = (\Add0~2_combout\ & (\Add1~2_combout\ & (!\Add0~0_combout\ & \Add1~0_combout\))) # (!\Add0~2_combout\ & ((\Add1~2_combout\) # ((!\Add0~0_combout\ & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add1~0_combout\,
	combout => \small_word~4_combout\);

-- Location: IOIBUF_X19_Y21_N22
\word2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(3),
	o => \word2[3]~input_o\);

-- Location: IOIBUF_X14_Y21_N29
\word1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(3),
	o => \word1[3]~input_o\);

-- Location: IOIBUF_X25_Y28_N15
\word1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(2),
	o => \word1[2]~input_o\);

-- Location: IOIBUF_X14_Y21_N22
\word2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(2),
	o => \word2[2]~input_o\);

-- Location: IOIBUF_X25_Y26_N22
\word1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(1),
	o => \word1[1]~input_o\);

-- Location: IOIBUF_X60_Y8_N8
\word2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(1),
	o => \word2[1]~input_o\);

-- Location: IOIBUF_X12_Y21_N29
\word2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(0),
	o => \word2[0]~input_o\);

-- Location: LCCOMB_X26_Y21_N16
\small_word~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~0_combout\ = (\word1[1]~input_o\ & (!\word1[0]~input_o\ & (\word2[1]~input_o\ & \word2[0]~input_o\))) # (!\word1[1]~input_o\ & ((\word2[1]~input_o\) # ((!\word1[0]~input_o\ & \word2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[1]~input_o\,
	datab => \word1[0]~input_o\,
	datac => \word2[1]~input_o\,
	datad => \word2[0]~input_o\,
	combout => \small_word~0_combout\);

-- Location: LCCOMB_X26_Y21_N10
\small_word~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~1_combout\ = (\word1[2]~input_o\ & (\word2[2]~input_o\ & \small_word~0_combout\)) # (!\word1[2]~input_o\ & ((\word2[2]~input_o\) # (\small_word~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[2]~input_o\,
	datac => \word2[2]~input_o\,
	datad => \small_word~0_combout\,
	combout => \small_word~1_combout\);

-- Location: LCCOMB_X26_Y21_N12
\small_word~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~2_combout\ = (\word2[3]~input_o\ & ((\small_word~1_combout\) # (!\word1[3]~input_o\))) # (!\word2[3]~input_o\ & (!\word1[3]~input_o\ & \small_word~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word2[3]~input_o\,
	datac => \word1[3]~input_o\,
	datad => \small_word~1_combout\,
	combout => \small_word~2_combout\);

-- Location: IOIBUF_X60_Y8_N22
\word1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(4),
	o => \word1[4]~input_o\);

-- Location: LCCOMB_X26_Y21_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\word1[2]~input_o\ & (\word2[2]~input_o\ & (\word1[3]~input_o\ $ (!\word2[3]~input_o\)))) # (!\word1[2]~input_o\ & (!\word2[2]~input_o\ & (\word1[3]~input_o\ $ (!\word2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[2]~input_o\,
	datab => \word2[2]~input_o\,
	datac => \word1[3]~input_o\,
	datad => \word2[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X60_Y10_N23
\word2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(4),
	o => \word2[4]~input_o\);

-- Location: LCCOMB_X26_Y21_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\word2[1]~input_o\ & (\word1[1]~input_o\ & (\word1[4]~input_o\ $ (!\word2[4]~input_o\)))) # (!\word2[1]~input_o\ & (!\word1[1]~input_o\ & (\word1[4]~input_o\ $ (!\word2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word2[1]~input_o\,
	datab => \word1[4]~input_o\,
	datac => \word1[1]~input_o\,
	datad => \word2[4]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y21_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\word2[0]~input_o\ $ (!\word1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \word2[0]~input_o\,
	datac => \word1[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y21_N24
\small_word~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~3_combout\ = (\small_word~2_combout\ & (!\Equal0~2_combout\ & (\word1[4]~input_o\ $ (!\word2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~2_combout\,
	datab => \word1[4]~input_o\,
	datac => \Equal0~2_combout\,
	datad => \word2[4]~input_o\,
	combout => \small_word~3_combout\);

-- Location: IOIBUF_X60_Y10_N8
\word2[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(12),
	o => \word2[12]~input_o\);

-- Location: IOIBUF_X60_Y13_N15
\sw2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(2),
	o => \sw2[2]~input_o\);

-- Location: LCCOMB_X59_Y21_N22
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = \word2[12]~input_o\ $ (\Add1~3\ $ (!\sw2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \word2[12]~input_o\,
	datad => \sw2[2]~input_o\,
	cin => \Add1~3\,
	combout => \Add1~4_combout\);

-- Location: IOIBUF_X60_Y22_N8
\word1[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(12),
	o => \word1[12]~input_o\);

-- Location: IOIBUF_X60_Y23_N22
\sw1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(2),
	o => \sw1[2]~input_o\);

-- Location: LCCOMB_X59_Y21_N8
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \word1[12]~input_o\ $ (\Add0~3\ $ (!\sw1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \word1[12]~input_o\,
	datad => \sw1[2]~input_o\,
	cin => \Add0~3\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X59_Y21_N2
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = \Add1~4_combout\ $ (\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datac => \Add0~4_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y21_N28
\small_word~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~5_combout\ = (\small_word~3_combout\) # ((\small_word~4_combout\ & (\Equal0~2_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~4_combout\,
	datab => \small_word~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \small_word~5_combout\);

-- Location: LCCOMB_X26_Y21_N30
\small_word~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~7_combout\ = (\Equal0~0_combout\ & (\Add1~4_combout\ & (\word2[0]~input_o\ $ (!\word1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \word2[0]~input_o\,
	datac => \word1[0]~input_o\,
	datad => \Add1~4_combout\,
	combout => \small_word~7_combout\);

-- Location: LCCOMB_X26_Y21_N4
\small_word~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~6_combout\ = (\Add0~4_combout\) # (\word2[1]~input_o\ $ (\word1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word2[1]~input_o\,
	datab => \Add0~4_combout\,
	datac => \word1[1]~input_o\,
	combout => \small_word~6_combout\);

-- Location: LCCOMB_X26_Y21_N24
\small_word~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~8_combout\ = (\word1[4]~input_o\ & (\small_word~7_combout\ & (!\small_word~6_combout\ & \word2[4]~input_o\))) # (!\word1[4]~input_o\ & ((\word2[4]~input_o\) # ((\small_word~7_combout\ & !\small_word~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~7_combout\,
	datab => \word1[4]~input_o\,
	datac => \small_word~6_combout\,
	datad => \word2[4]~input_o\,
	combout => \small_word~8_combout\);

-- Location: LCCOMB_X26_Y4_N24
\small_word~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~9_combout\ = ((\u1~input_o\ & ((\small_word~5_combout\) # (\small_word~8_combout\)))) # (!\u2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1~input_o\,
	datab => \u2~input_o\,
	datac => \small_word~5_combout\,
	datad => \small_word~8_combout\,
	combout => \small_word~9_combout\);

-- Location: LCCOMB_X26_Y21_N2
\small_word~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~10_combout\ = (\small_word~9_combout\ & (\word1[0]~input_o\)) # (!\small_word~9_combout\ & ((\word2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word1[0]~input_o\,
	datac => \small_word~9_combout\,
	datad => \word2[0]~input_o\,
	combout => \small_word~10_combout\);

-- Location: LCCOMB_X26_Y21_N20
\small_word~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~11_combout\ = (\small_word~9_combout\ & ((\word1[1]~input_o\))) # (!\small_word~9_combout\ & (\word2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word2[1]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word1[1]~input_o\,
	combout => \small_word~11_combout\);

-- Location: LCCOMB_X26_Y21_N6
\small_word~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~12_combout\ = (\small_word~9_combout\ & (\word1[2]~input_o\)) # (!\small_word~9_combout\ & ((\word2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[2]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word2[2]~input_o\,
	combout => \small_word~12_combout\);

-- Location: LCCOMB_X26_Y21_N8
\small_word~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~13_combout\ = (\small_word~9_combout\ & (\word1[3]~input_o\)) # (!\small_word~9_combout\ & ((\word2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[3]~input_o\,
	datab => \word2[3]~input_o\,
	datac => \small_word~9_combout\,
	combout => \small_word~13_combout\);

-- Location: LCCOMB_X26_Y4_N10
\small_word~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~14_combout\ = (\small_word~9_combout\ & (\word1[4]~input_o\)) # (!\small_word~9_combout\ & ((\word2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[4]~input_o\,
	datab => \small_word~9_combout\,
	datad => \word2[4]~input_o\,
	combout => \small_word~14_combout\);

-- Location: IOIBUF_X25_Y26_N15
\word1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(5),
	o => \word1[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N29
\word2[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(5),
	o => \word2[5]~input_o\);

-- Location: LCCOMB_X26_Y4_N28
\small_word~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~15_combout\ = (\small_word~9_combout\ & (\word1[5]~input_o\)) # (!\small_word~9_combout\ & ((\word2[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[5]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word2[5]~input_o\,
	combout => \small_word~15_combout\);

-- Location: IOIBUF_X16_Y0_N29
\word2[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(6),
	o => \word2[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\word1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(6),
	o => \word1[6]~input_o\);

-- Location: LCCOMB_X26_Y4_N22
\small_word~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~16_combout\ = (\small_word~9_combout\ & ((\word1[6]~input_o\))) # (!\small_word~9_combout\ & (\word2[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word2[6]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word1[6]~input_o\,
	combout => \small_word~16_combout\);

-- Location: IOIBUF_X40_Y0_N29
\word1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(7),
	o => \word1[7]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\word2[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(7),
	o => \word2[7]~input_o\);

-- Location: LCCOMB_X26_Y4_N0
\small_word~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~17_combout\ = (\small_word~9_combout\ & (\word1[7]~input_o\)) # (!\small_word~9_combout\ & ((\word2[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \small_word~9_combout\,
	datac => \word1[7]~input_o\,
	datad => \word2[7]~input_o\,
	combout => \small_word~17_combout\);

-- Location: IOIBUF_X8_Y0_N15
\word2[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(8),
	o => \word2[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\word1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(8),
	o => \word1[8]~input_o\);

-- Location: LCCOMB_X26_Y4_N18
\small_word~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~18_combout\ = (\small_word~9_combout\ & ((\word1[8]~input_o\))) # (!\small_word~9_combout\ & (\word2[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word2[8]~input_o\,
	datac => \word1[8]~input_o\,
	datad => \small_word~9_combout\,
	combout => \small_word~18_combout\);

-- Location: IOIBUF_X21_Y0_N29
\word2[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word2(9),
	o => \word2[9]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\word1[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_word1(9),
	o => \word1[9]~input_o\);

-- Location: LCCOMB_X26_Y4_N4
\small_word~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~19_combout\ = (\small_word~9_combout\ & ((\word1[9]~input_o\))) # (!\small_word~9_combout\ & (\word2[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word2[9]~input_o\,
	datac => \word1[9]~input_o\,
	datad => \small_word~9_combout\,
	combout => \small_word~19_combout\);

-- Location: LCCOMB_X59_Y21_N14
\small_word~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~20_combout\ = (\small_word~9_combout\ & (\word1[10]~input_o\)) # (!\small_word~9_combout\ & ((\word2[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~9_combout\,
	datab => \word1[10]~input_o\,
	datad => \word2[10]~input_o\,
	combout => \small_word~20_combout\);

-- Location: LCCOMB_X59_Y21_N0
\small_word~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~21_combout\ = (\small_word~9_combout\ & ((\word1[11]~input_o\))) # (!\small_word~9_combout\ & (\word2[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~9_combout\,
	datab => \word2[11]~input_o\,
	datac => \word1[11]~input_o\,
	combout => \small_word~21_combout\);

-- Location: LCCOMB_X59_Y21_N16
\small_word~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \small_word~22_combout\ = (\small_word~9_combout\ & ((\word1[12]~input_o\))) # (!\small_word~9_combout\ & (\word2[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~9_combout\,
	datac => \word2[12]~input_o\,
	datad => \word1[12]~input_o\,
	combout => \small_word~22_combout\);

-- Location: LCCOMB_X26_Y21_N18
\big_word~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~0_combout\ = (\small_word~9_combout\ & ((\word2[0]~input_o\))) # (!\small_word~9_combout\ & (\word1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word1[0]~input_o\,
	datac => \small_word~9_combout\,
	datad => \word2[0]~input_o\,
	combout => \big_word~0_combout\);

-- Location: LCCOMB_X26_Y4_N14
\big_word~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~1_combout\ = (\small_word~9_combout\ & ((\word2[1]~input_o\))) # (!\small_word~9_combout\ & (\word1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[1]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word2[1]~input_o\,
	combout => \big_word~1_combout\);

-- Location: LCCOMB_X26_Y21_N28
\big_word~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~2_combout\ = (\small_word~9_combout\ & ((\word2[2]~input_o\))) # (!\small_word~9_combout\ & (\word1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[2]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word2[2]~input_o\,
	combout => \big_word~2_combout\);

-- Location: LCCOMB_X26_Y21_N14
\big_word~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~3_combout\ = (\small_word~9_combout\ & ((\word2[3]~input_o\))) # (!\small_word~9_combout\ & (\word1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[3]~input_o\,
	datab => \word2[3]~input_o\,
	datac => \small_word~9_combout\,
	combout => \big_word~3_combout\);

-- Location: LCCOMB_X26_Y4_N16
\big_word~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~4_combout\ = (\small_word~9_combout\ & ((\word2[4]~input_o\))) # (!\small_word~9_combout\ & (\word1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[4]~input_o\,
	datab => \small_word~9_combout\,
	datad => \word2[4]~input_o\,
	combout => \big_word~4_combout\);

-- Location: LCCOMB_X26_Y4_N26
\big_word~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~5_combout\ = (\small_word~9_combout\ & ((\word2[5]~input_o\))) # (!\small_word~9_combout\ & (\word1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word1[5]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word2[5]~input_o\,
	combout => \big_word~5_combout\);

-- Location: LCCOMB_X26_Y4_N12
\big_word~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~6_combout\ = (\small_word~9_combout\ & (\word2[6]~input_o\)) # (!\small_word~9_combout\ & ((\word1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word2[6]~input_o\,
	datab => \small_word~9_combout\,
	datac => \word1[6]~input_o\,
	combout => \big_word~6_combout\);

-- Location: LCCOMB_X26_Y4_N30
\big_word~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~7_combout\ = (\small_word~9_combout\ & ((\word2[7]~input_o\))) # (!\small_word~9_combout\ & (\word1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \small_word~9_combout\,
	datac => \word1[7]~input_o\,
	datad => \word2[7]~input_o\,
	combout => \big_word~7_combout\);

-- Location: LCCOMB_X26_Y4_N8
\big_word~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~8_combout\ = (\small_word~9_combout\ & (\word2[8]~input_o\)) # (!\small_word~9_combout\ & ((\word1[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word2[8]~input_o\,
	datac => \word1[8]~input_o\,
	datad => \small_word~9_combout\,
	combout => \big_word~8_combout\);

-- Location: LCCOMB_X26_Y4_N2
\big_word~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~9_combout\ = (\small_word~9_combout\ & (\word2[9]~input_o\)) # (!\small_word~9_combout\ & ((\word1[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word2[9]~input_o\,
	datac => \word1[9]~input_o\,
	datad => \small_word~9_combout\,
	combout => \big_word~9_combout\);

-- Location: LCCOMB_X59_Y21_N26
\big_word~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~10_combout\ = (\small_word~9_combout\ & ((\word2[10]~input_o\))) # (!\small_word~9_combout\ & (\word1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~9_combout\,
	datab => \word1[10]~input_o\,
	datad => \word2[10]~input_o\,
	combout => \big_word~10_combout\);

-- Location: LCCOMB_X59_Y21_N12
\big_word~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~11_combout\ = (\small_word~9_combout\ & (\word2[11]~input_o\)) # (!\small_word~9_combout\ & ((\word1[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~9_combout\,
	datab => \word2[11]~input_o\,
	datac => \word1[11]~input_o\,
	combout => \big_word~11_combout\);

-- Location: LCCOMB_X59_Y21_N30
\big_word~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \big_word~12_combout\ = (\small_word~9_combout\ & (\word2[12]~input_o\)) # (!\small_word~9_combout\ & ((\word1[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \small_word~9_combout\,
	datac => \word2[12]~input_o\,
	datad => \word1[12]~input_o\,
	combout => \big_word~12_combout\);

-- Location: UNVM_X0_Y22_N40
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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_small_word(0) <= \small_word[0]~output_o\;

ww_small_word(1) <= \small_word[1]~output_o\;

ww_small_word(2) <= \small_word[2]~output_o\;

ww_small_word(3) <= \small_word[3]~output_o\;

ww_small_word(4) <= \small_word[4]~output_o\;

ww_small_word(5) <= \small_word[5]~output_o\;

ww_small_word(6) <= \small_word[6]~output_o\;

ww_small_word(7) <= \small_word[7]~output_o\;

ww_small_word(8) <= \small_word[8]~output_o\;

ww_small_word(9) <= \small_word[9]~output_o\;

ww_small_word(10) <= \small_word[10]~output_o\;

ww_small_word(11) <= \small_word[11]~output_o\;

ww_small_word(12) <= \small_word[12]~output_o\;

ww_big_word(0) <= \big_word[0]~output_o\;

ww_big_word(1) <= \big_word[1]~output_o\;

ww_big_word(2) <= \big_word[2]~output_o\;

ww_big_word(3) <= \big_word[3]~output_o\;

ww_big_word(4) <= \big_word[4]~output_o\;

ww_big_word(5) <= \big_word[5]~output_o\;

ww_big_word(6) <= \big_word[6]~output_o\;

ww_big_word(7) <= \big_word[7]~output_o\;

ww_big_word(8) <= \big_word[8]~output_o\;

ww_big_word(9) <= \big_word[9]~output_o\;

ww_big_word(10) <= \big_word[10]~output_o\;

ww_big_word(11) <= \big_word[11]~output_o\;

ww_big_word(12) <= \big_word[12]~output_o\;

ww_u1o <= \u1o~output_o\;

ww_u2o <= \u2o~output_o\;
END structure;


