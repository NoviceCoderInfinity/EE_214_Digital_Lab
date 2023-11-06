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

-- DATE "10/27/2023 18:59:00"

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

ENTITY 	compute IS
    PORT (
	word1 : IN std_logic_vector(12 DOWNTO 0);
	u1 : IN std_logic;
	sw1 : IN std_logic_vector(8 DOWNTO 0);
	dw1 : IN std_logic_vector(8 DOWNTO 0);
	out_word1 : BUFFER std_logic_vector(19 DOWNTO 0)
	);
END compute;

-- Design Ports Information
-- out_word1[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[1]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[4]	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[8]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[9]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[10]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[11]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[12]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[13]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[14]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[15]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[16]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[17]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[18]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_word1[19]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[0]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[1]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[4]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[5]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[7]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[8]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[9]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u1	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[8]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[7]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[5]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[4]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[3]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[12]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[1]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[11]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[0]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word1[10]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[8]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[7]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[5]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[1]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dw1[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF compute IS
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
SIGNAL ww_u1 : std_logic;
SIGNAL ww_sw1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_dw1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_out_word1 : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \out_word1[0]~output_o\ : std_logic;
SIGNAL \out_word1[1]~output_o\ : std_logic;
SIGNAL \out_word1[2]~output_o\ : std_logic;
SIGNAL \out_word1[3]~output_o\ : std_logic;
SIGNAL \out_word1[4]~output_o\ : std_logic;
SIGNAL \out_word1[5]~output_o\ : std_logic;
SIGNAL \out_word1[6]~output_o\ : std_logic;
SIGNAL \out_word1[7]~output_o\ : std_logic;
SIGNAL \out_word1[8]~output_o\ : std_logic;
SIGNAL \out_word1[9]~output_o\ : std_logic;
SIGNAL \out_word1[10]~output_o\ : std_logic;
SIGNAL \out_word1[11]~output_o\ : std_logic;
SIGNAL \out_word1[12]~output_o\ : std_logic;
SIGNAL \out_word1[13]~output_o\ : std_logic;
SIGNAL \out_word1[14]~output_o\ : std_logic;
SIGNAL \out_word1[15]~output_o\ : std_logic;
SIGNAL \out_word1[16]~output_o\ : std_logic;
SIGNAL \out_word1[17]~output_o\ : std_logic;
SIGNAL \out_word1[18]~output_o\ : std_logic;
SIGNAL \out_word1[19]~output_o\ : std_logic;
SIGNAL \word1[0]~input_o\ : std_logic;
SIGNAL \word1[1]~input_o\ : std_logic;
SIGNAL \word1[2]~input_o\ : std_logic;
SIGNAL \word1[3]~input_o\ : std_logic;
SIGNAL \word1[4]~input_o\ : std_logic;
SIGNAL \word1[5]~input_o\ : std_logic;
SIGNAL \word1[6]~input_o\ : std_logic;
SIGNAL \word1[7]~input_o\ : std_logic;
SIGNAL \word1[8]~input_o\ : std_logic;
SIGNAL \word1[9]~input_o\ : std_logic;
SIGNAL \u1~input_o\ : std_logic;
SIGNAL \dw1[8]~input_o\ : std_logic;
SIGNAL \sw1[8]~input_o\ : std_logic;
SIGNAL \sw1[7]~input_o\ : std_logic;
SIGNAL \sw1[6]~input_o\ : std_logic;
SIGNAL \sw1[5]~input_o\ : std_logic;
SIGNAL \sw1[4]~input_o\ : std_logic;
SIGNAL \sw1[3]~input_o\ : std_logic;
SIGNAL \word1[12]~input_o\ : std_logic;
SIGNAL \sw1[2]~input_o\ : std_logic;
SIGNAL \sw1[1]~input_o\ : std_logic;
SIGNAL \word1[11]~input_o\ : std_logic;
SIGNAL \sw1[0]~input_o\ : std_logic;
SIGNAL \word1[10]~input_o\ : std_logic;
SIGNAL \module1|Add0~1\ : std_logic;
SIGNAL \module1|Add0~3\ : std_logic;
SIGNAL \module1|Add0~5\ : std_logic;
SIGNAL \module1|Add0~7\ : std_logic;
SIGNAL \module1|Add0~9\ : std_logic;
SIGNAL \module1|Add0~11\ : std_logic;
SIGNAL \module1|Add0~13\ : std_logic;
SIGNAL \module1|Add0~15\ : std_logic;
SIGNAL \module1|Add0~16_combout\ : std_logic;
SIGNAL \dw1[7]~input_o\ : std_logic;
SIGNAL \module1|Add0~14_combout\ : std_logic;
SIGNAL \module1|Add0~12_combout\ : std_logic;
SIGNAL \dw1[6]~input_o\ : std_logic;
SIGNAL \module1|Add0~10_combout\ : std_logic;
SIGNAL \dw1[5]~input_o\ : std_logic;
SIGNAL \module1|Add0~8_combout\ : std_logic;
SIGNAL \dw1[4]~input_o\ : std_logic;
SIGNAL \dw1[3]~input_o\ : std_logic;
SIGNAL \module1|Add0~6_combout\ : std_logic;
SIGNAL \dw1[2]~input_o\ : std_logic;
SIGNAL \module1|Add0~4_combout\ : std_logic;
SIGNAL \dw1[1]~input_o\ : std_logic;
SIGNAL \module1|Add0~2_combout\ : std_logic;
SIGNAL \dw1[0]~input_o\ : std_logic;
SIGNAL \module1|Add0~0_combout\ : std_logic;
SIGNAL \module1|LessThan0~1_cout\ : std_logic;
SIGNAL \module1|LessThan0~3_cout\ : std_logic;
SIGNAL \module1|LessThan0~5_cout\ : std_logic;
SIGNAL \module1|LessThan0~7_cout\ : std_logic;
SIGNAL \module1|LessThan0~9_cout\ : std_logic;
SIGNAL \module1|LessThan0~11_cout\ : std_logic;
SIGNAL \module1|LessThan0~13_cout\ : std_logic;
SIGNAL \module1|LessThan0~15_cout\ : std_logic;
SIGNAL \module1|LessThan0~16_combout\ : std_logic;
SIGNAL \module1|u_out~0_combout\ : std_logic;
SIGNAL \module1|fw[0]~0_combout\ : std_logic;
SIGNAL \module1|fw[1]~1_combout\ : std_logic;
SIGNAL \module1|fw[2]~2_combout\ : std_logic;
SIGNAL \module1|fw[3]~3_combout\ : std_logic;
SIGNAL \module1|fw[4]~4_combout\ : std_logic;
SIGNAL \module1|fw[5]~5_combout\ : std_logic;
SIGNAL \module1|fw[6]~6_combout\ : std_logic;
SIGNAL \module1|fw[7]~7_combout\ : std_logic;
SIGNAL \module1|fw[8]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_word1 <= word1;
ww_u1 <= u1;
ww_sw1 <= sw1;
ww_dw1 <= dw1;
out_word1 <= ww_out_word1;
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

-- Location: LCCOMB_X26_Y23_N24
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

-- Location: IOOBUF_X25_Y29_N23
\out_word1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[0]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[0]~output_o\);

-- Location: IOOBUF_X60_Y8_N16
\out_word1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[1]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[1]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\out_word1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[2]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[2]~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\out_word1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[3]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\out_word1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[4]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[4]~output_o\);

-- Location: IOOBUF_X60_Y23_N9
\out_word1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[5]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\out_word1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[6]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[6]~output_o\);

-- Location: IOOBUF_X38_Y36_N16
\out_word1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[7]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\out_word1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[8]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\out_word1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \word1[9]~input_o\,
	devoe => ww_devoe,
	o => \out_word1[9]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\out_word1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|u_out~0_combout\,
	devoe => ww_devoe,
	o => \out_word1[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\out_word1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_word1[11]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\out_word1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_word1[12]~output_o\);

-- Location: IOOBUF_X14_Y21_N2
\out_word1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_word1[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\out_word1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_word1[14]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\out_word1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_word1[15]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\out_word1[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_word1[16]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\out_word1[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_word1[17]~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\out_word1[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_word1[18]~output_o\);

-- Location: IOOBUF_X25_Y27_N16
\out_word1[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \module1|fw[8]~8_combout\,
	devoe => ww_devoe,
	o => \out_word1[19]~output_o\);

-- Location: IOIBUF_X25_Y29_N15
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

-- Location: IOIBUF_X60_Y8_N1
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

-- Location: IOIBUF_X8_Y21_N15
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

-- Location: IOIBUF_X60_Y2_N1
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

-- Location: IOIBUF_X0_Y13_N22
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

-- Location: IOIBUF_X60_Y23_N1
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

-- Location: IOIBUF_X0_Y3_N15
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

-- Location: IOIBUF_X40_Y36_N29
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

-- Location: IOIBUF_X16_Y0_N29
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

-- Location: IOIBUF_X40_Y0_N1
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

-- Location: IOIBUF_X14_Y21_N29
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
\dw1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(8),
	o => \dw1[8]~input_o\);

-- Location: IOIBUF_X60_Y22_N15
\sw1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(8),
	o => \sw1[8]~input_o\);

-- Location: IOIBUF_X12_Y21_N1
\sw1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(7),
	o => \sw1[7]~input_o\);

-- Location: IOIBUF_X12_Y21_N29
\sw1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(6),
	o => \sw1[6]~input_o\);

-- Location: IOIBUF_X60_Y15_N15
\sw1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(5),
	o => \sw1[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\sw1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(4),
	o => \sw1[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N1
\sw1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(3),
	o => \sw1[3]~input_o\);

-- Location: IOIBUF_X28_Y36_N1
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

-- Location: IOIBUF_X28_Y36_N8
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

-- Location: IOIBUF_X25_Y26_N22
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

-- Location: IOIBUF_X24_Y0_N29
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

-- Location: IOIBUF_X25_Y28_N15
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

-- Location: IOIBUF_X24_Y0_N8
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

-- Location: LCCOMB_X24_Y19_N10
\module1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~0_combout\ = (\sw1[0]~input_o\ & (\word1[10]~input_o\ $ (VCC))) # (!\sw1[0]~input_o\ & (\word1[10]~input_o\ & VCC))
-- \module1|Add0~1\ = CARRY((\sw1[0]~input_o\ & \word1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[0]~input_o\,
	datab => \word1[10]~input_o\,
	datad => VCC,
	combout => \module1|Add0~0_combout\,
	cout => \module1|Add0~1\);

-- Location: LCCOMB_X24_Y19_N12
\module1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~2_combout\ = (\sw1[1]~input_o\ & ((\word1[11]~input_o\ & (\module1|Add0~1\ & VCC)) # (!\word1[11]~input_o\ & (!\module1|Add0~1\)))) # (!\sw1[1]~input_o\ & ((\word1[11]~input_o\ & (!\module1|Add0~1\)) # (!\word1[11]~input_o\ & 
-- ((\module1|Add0~1\) # (GND)))))
-- \module1|Add0~3\ = CARRY((\sw1[1]~input_o\ & (!\word1[11]~input_o\ & !\module1|Add0~1\)) # (!\sw1[1]~input_o\ & ((!\module1|Add0~1\) # (!\word1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[1]~input_o\,
	datab => \word1[11]~input_o\,
	datad => VCC,
	cin => \module1|Add0~1\,
	combout => \module1|Add0~2_combout\,
	cout => \module1|Add0~3\);

-- Location: LCCOMB_X24_Y19_N14
\module1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~4_combout\ = ((\word1[12]~input_o\ $ (\sw1[2]~input_o\ $ (!\module1|Add0~3\)))) # (GND)
-- \module1|Add0~5\ = CARRY((\word1[12]~input_o\ & ((\sw1[2]~input_o\) # (!\module1|Add0~3\))) # (!\word1[12]~input_o\ & (\sw1[2]~input_o\ & !\module1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \word1[12]~input_o\,
	datab => \sw1[2]~input_o\,
	datad => VCC,
	cin => \module1|Add0~3\,
	combout => \module1|Add0~4_combout\,
	cout => \module1|Add0~5\);

-- Location: LCCOMB_X24_Y19_N16
\module1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~6_combout\ = (\sw1[3]~input_o\ & (!\module1|Add0~5\)) # (!\sw1[3]~input_o\ & ((\module1|Add0~5\) # (GND)))
-- \module1|Add0~7\ = CARRY((!\module1|Add0~5\) # (!\sw1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw1[3]~input_o\,
	datad => VCC,
	cin => \module1|Add0~5\,
	combout => \module1|Add0~6_combout\,
	cout => \module1|Add0~7\);

-- Location: LCCOMB_X24_Y19_N18
\module1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~8_combout\ = (\sw1[4]~input_o\ & (\module1|Add0~7\ $ (GND))) # (!\sw1[4]~input_o\ & (!\module1|Add0~7\ & VCC))
-- \module1|Add0~9\ = CARRY((\sw1[4]~input_o\ & !\module1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[4]~input_o\,
	datad => VCC,
	cin => \module1|Add0~7\,
	combout => \module1|Add0~8_combout\,
	cout => \module1|Add0~9\);

-- Location: LCCOMB_X24_Y19_N20
\module1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~10_combout\ = (\sw1[5]~input_o\ & (!\module1|Add0~9\)) # (!\sw1[5]~input_o\ & ((\module1|Add0~9\) # (GND)))
-- \module1|Add0~11\ = CARRY((!\module1|Add0~9\) # (!\sw1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[5]~input_o\,
	datad => VCC,
	cin => \module1|Add0~9\,
	combout => \module1|Add0~10_combout\,
	cout => \module1|Add0~11\);

-- Location: LCCOMB_X24_Y19_N22
\module1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~12_combout\ = (\sw1[6]~input_o\ & (\module1|Add0~11\ $ (GND))) # (!\sw1[6]~input_o\ & (!\module1|Add0~11\ & VCC))
-- \module1|Add0~13\ = CARRY((\sw1[6]~input_o\ & !\module1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw1[6]~input_o\,
	datad => VCC,
	cin => \module1|Add0~11\,
	combout => \module1|Add0~12_combout\,
	cout => \module1|Add0~13\);

-- Location: LCCOMB_X24_Y19_N24
\module1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~14_combout\ = (\sw1[7]~input_o\ & (!\module1|Add0~13\)) # (!\sw1[7]~input_o\ & ((\module1|Add0~13\) # (GND)))
-- \module1|Add0~15\ = CARRY((!\module1|Add0~13\) # (!\sw1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw1[7]~input_o\,
	datad => VCC,
	cin => \module1|Add0~13\,
	combout => \module1|Add0~14_combout\,
	cout => \module1|Add0~15\);

-- Location: LCCOMB_X24_Y19_N26
\module1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|Add0~16_combout\ = \module1|Add0~15\ $ (!\sw1[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sw1[8]~input_o\,
	cin => \module1|Add0~15\,
	combout => \module1|Add0~16_combout\);

-- Location: IOIBUF_X25_Y26_N15
\dw1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(7),
	o => \dw1[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\dw1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(6),
	o => \dw1[6]~input_o\);

-- Location: IOIBUF_X25_Y27_N22
\dw1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(5),
	o => \dw1[5]~input_o\);

-- Location: IOIBUF_X25_Y28_N22
\dw1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(4),
	o => \dw1[4]~input_o\);

-- Location: IOIBUF_X19_Y21_N29
\dw1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(3),
	o => \dw1[3]~input_o\);

-- Location: IOIBUF_X19_Y21_N22
\dw1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(2),
	o => \dw1[2]~input_o\);

-- Location: IOIBUF_X10_Y21_N1
\dw1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(1),
	o => \dw1[1]~input_o\);

-- Location: IOIBUF_X14_Y21_N22
\dw1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dw1(0),
	o => \dw1[0]~input_o\);

-- Location: LCCOMB_X22_Y19_N12
\module1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~1_cout\ = CARRY((\dw1[0]~input_o\ & !\module1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[0]~input_o\,
	datab => \module1|Add0~0_combout\,
	datad => VCC,
	cout => \module1|LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y19_N14
\module1|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~3_cout\ = CARRY((\dw1[1]~input_o\ & (\module1|Add0~2_combout\ & !\module1|LessThan0~1_cout\)) # (!\dw1[1]~input_o\ & ((\module1|Add0~2_combout\) # (!\module1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[1]~input_o\,
	datab => \module1|Add0~2_combout\,
	datad => VCC,
	cin => \module1|LessThan0~1_cout\,
	cout => \module1|LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y19_N16
\module1|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~5_cout\ = CARRY((\dw1[2]~input_o\ & ((!\module1|LessThan0~3_cout\) # (!\module1|Add0~4_combout\))) # (!\dw1[2]~input_o\ & (!\module1|Add0~4_combout\ & !\module1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[2]~input_o\,
	datab => \module1|Add0~4_combout\,
	datad => VCC,
	cin => \module1|LessThan0~3_cout\,
	cout => \module1|LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y19_N18
\module1|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~7_cout\ = CARRY((\dw1[3]~input_o\ & (\module1|Add0~6_combout\ & !\module1|LessThan0~5_cout\)) # (!\dw1[3]~input_o\ & ((\module1|Add0~6_combout\) # (!\module1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[3]~input_o\,
	datab => \module1|Add0~6_combout\,
	datad => VCC,
	cin => \module1|LessThan0~5_cout\,
	cout => \module1|LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y19_N20
\module1|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~9_cout\ = CARRY((\module1|Add0~8_combout\ & (\dw1[4]~input_o\ & !\module1|LessThan0~7_cout\)) # (!\module1|Add0~8_combout\ & ((\dw1[4]~input_o\) # (!\module1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \module1|Add0~8_combout\,
	datab => \dw1[4]~input_o\,
	datad => VCC,
	cin => \module1|LessThan0~7_cout\,
	cout => \module1|LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y19_N22
\module1|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~11_cout\ = CARRY((\module1|Add0~10_combout\ & ((!\module1|LessThan0~9_cout\) # (!\dw1[5]~input_o\))) # (!\module1|Add0~10_combout\ & (!\dw1[5]~input_o\ & !\module1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \module1|Add0~10_combout\,
	datab => \dw1[5]~input_o\,
	datad => VCC,
	cin => \module1|LessThan0~9_cout\,
	cout => \module1|LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y19_N24
\module1|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~13_cout\ = CARRY((\module1|Add0~12_combout\ & (\dw1[6]~input_o\ & !\module1|LessThan0~11_cout\)) # (!\module1|Add0~12_combout\ & ((\dw1[6]~input_o\) # (!\module1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \module1|Add0~12_combout\,
	datab => \dw1[6]~input_o\,
	datad => VCC,
	cin => \module1|LessThan0~11_cout\,
	cout => \module1|LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y19_N26
\module1|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~15_cout\ = CARRY((\dw1[7]~input_o\ & (\module1|Add0~14_combout\ & !\module1|LessThan0~13_cout\)) # (!\dw1[7]~input_o\ & ((\module1|Add0~14_combout\) # (!\module1|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[7]~input_o\,
	datab => \module1|Add0~14_combout\,
	datad => VCC,
	cin => \module1|LessThan0~13_cout\,
	cout => \module1|LessThan0~15_cout\);

-- Location: LCCOMB_X22_Y19_N28
\module1|LessThan0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|LessThan0~16_combout\ = (\dw1[8]~input_o\ & ((!\module1|Add0~16_combout\) # (!\module1|LessThan0~15_cout\))) # (!\dw1[8]~input_o\ & (!\module1|LessThan0~15_cout\ & !\module1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[8]~input_o\,
	datad => \module1|Add0~16_combout\,
	cin => \module1|LessThan0~15_cout\,
	combout => \module1|LessThan0~16_combout\);

-- Location: LCCOMB_X24_Y19_N8
\module1|u_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|u_out~0_combout\ = (\u1~input_o\ & \module1|LessThan0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1~input_o\,
	datad => \module1|LessThan0~16_combout\,
	combout => \module1|u_out~0_combout\);

-- Location: LCCOMB_X22_Y19_N8
\module1|fw[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[0]~0_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~0_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[0]~input_o\,
	datab => \module1|LessThan0~16_combout\,
	datac => \module1|Add0~0_combout\,
	combout => \module1|fw[0]~0_combout\);

-- Location: LCCOMB_X22_Y19_N10
\module1|fw[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[1]~1_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~2_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[1]~input_o\,
	datab => \module1|LessThan0~16_combout\,
	datac => \module1|Add0~2_combout\,
	combout => \module1|fw[1]~1_combout\);

-- Location: LCCOMB_X22_Y19_N4
\module1|fw[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[2]~2_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~4_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw1[2]~input_o\,
	datab => \module1|LessThan0~16_combout\,
	datad => \module1|Add0~4_combout\,
	combout => \module1|fw[2]~2_combout\);

-- Location: LCCOMB_X24_Y19_N2
\module1|fw[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[3]~3_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~6_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module1|LessThan0~16_combout\,
	datac => \dw1[3]~input_o\,
	datad => \module1|Add0~6_combout\,
	combout => \module1|fw[3]~3_combout\);

-- Location: LCCOMB_X24_Y19_N28
\module1|fw[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[4]~4_combout\ = (\module1|LessThan0~16_combout\ & (\module1|Add0~8_combout\)) # (!\module1|LessThan0~16_combout\ & ((\dw1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \module1|LessThan0~16_combout\,
	datab => \module1|Add0~8_combout\,
	datad => \dw1[4]~input_o\,
	combout => \module1|fw[4]~4_combout\);

-- Location: LCCOMB_X22_Y19_N30
\module1|fw[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[5]~5_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~10_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module1|LessThan0~16_combout\,
	datac => \dw1[5]~input_o\,
	datad => \module1|Add0~10_combout\,
	combout => \module1|fw[5]~5_combout\);

-- Location: LCCOMB_X22_Y19_N0
\module1|fw[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[6]~6_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~12_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw1[6]~input_o\,
	datac => \module1|Add0~12_combout\,
	datad => \module1|LessThan0~16_combout\,
	combout => \module1|fw[6]~6_combout\);

-- Location: LCCOMB_X22_Y19_N2
\module1|fw[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[7]~7_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~14_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module1|LessThan0~16_combout\,
	datac => \dw1[7]~input_o\,
	datad => \module1|Add0~14_combout\,
	combout => \module1|fw[7]~7_combout\);

-- Location: LCCOMB_X22_Y19_N6
\module1|fw[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \module1|fw[8]~8_combout\ = (\module1|LessThan0~16_combout\ & ((\module1|Add0~16_combout\))) # (!\module1|LessThan0~16_combout\ & (\dw1[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \module1|LessThan0~16_combout\,
	datac => \dw1[8]~input_o\,
	datad => \module1|Add0~16_combout\,
	combout => \module1|fw[8]~8_combout\);

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

ww_out_word1(0) <= \out_word1[0]~output_o\;

ww_out_word1(1) <= \out_word1[1]~output_o\;

ww_out_word1(2) <= \out_word1[2]~output_o\;

ww_out_word1(3) <= \out_word1[3]~output_o\;

ww_out_word1(4) <= \out_word1[4]~output_o\;

ww_out_word1(5) <= \out_word1[5]~output_o\;

ww_out_word1(6) <= \out_word1[6]~output_o\;

ww_out_word1(7) <= \out_word1[7]~output_o\;

ww_out_word1(8) <= \out_word1[8]~output_o\;

ww_out_word1(9) <= \out_word1[9]~output_o\;

ww_out_word1(10) <= \out_word1[10]~output_o\;

ww_out_word1(11) <= \out_word1[11]~output_o\;

ww_out_word1(12) <= \out_word1[12]~output_o\;

ww_out_word1(13) <= \out_word1[13]~output_o\;

ww_out_word1(14) <= \out_word1[14]~output_o\;

ww_out_word1(15) <= \out_word1[15]~output_o\;

ww_out_word1(16) <= \out_word1[16]~output_o\;

ww_out_word1(17) <= \out_word1[17]~output_o\;

ww_out_word1(18) <= \out_word1[18]~output_o\;

ww_out_word1(19) <= \out_word1[19]~output_o\;
END structure;


