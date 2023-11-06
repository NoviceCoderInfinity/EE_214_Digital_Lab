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

-- DATE "10/20/2023 16:28:02"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Traffic IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	led : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Traffic;

-- Design Ports Information
-- led[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Traffic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk1|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector16~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clk1|count[0]~93_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk1|count[6]~42\ : std_logic;
SIGNAL \clk1|count[7]~43_combout\ : std_logic;
SIGNAL \clk1|count[7]~44\ : std_logic;
SIGNAL \clk1|count[8]~45_combout\ : std_logic;
SIGNAL \clk1|count[8]~46\ : std_logic;
SIGNAL \clk1|count[9]~47_combout\ : std_logic;
SIGNAL \clk1|count[9]~48\ : std_logic;
SIGNAL \clk1|count[10]~49_combout\ : std_logic;
SIGNAL \clk1|count[10]~50\ : std_logic;
SIGNAL \clk1|count[11]~51_combout\ : std_logic;
SIGNAL \clk1|count[11]~52\ : std_logic;
SIGNAL \clk1|count[12]~53_combout\ : std_logic;
SIGNAL \clk1|count[12]~54\ : std_logic;
SIGNAL \clk1|count[13]~55_combout\ : std_logic;
SIGNAL \clk1|count[13]~56\ : std_logic;
SIGNAL \clk1|count[14]~57_combout\ : std_logic;
SIGNAL \clk1|count[14]~58\ : std_logic;
SIGNAL \clk1|count[15]~59_combout\ : std_logic;
SIGNAL \clk1|count[15]~60\ : std_logic;
SIGNAL \clk1|count[16]~61_combout\ : std_logic;
SIGNAL \clk1|count[16]~62\ : std_logic;
SIGNAL \clk1|count[17]~63_combout\ : std_logic;
SIGNAL \clk1|count[17]~64\ : std_logic;
SIGNAL \clk1|count[18]~65_combout\ : std_logic;
SIGNAL \clk1|count[18]~66\ : std_logic;
SIGNAL \clk1|count[19]~67_combout\ : std_logic;
SIGNAL \clk1|count[19]~68\ : std_logic;
SIGNAL \clk1|count[20]~69_combout\ : std_logic;
SIGNAL \clk1|count[20]~70\ : std_logic;
SIGNAL \clk1|count[21]~71_combout\ : std_logic;
SIGNAL \clk1|count[21]~72\ : std_logic;
SIGNAL \clk1|count[22]~73_combout\ : std_logic;
SIGNAL \clk1|count[22]~74\ : std_logic;
SIGNAL \clk1|count[23]~75_combout\ : std_logic;
SIGNAL \clk1|count[23]~76\ : std_logic;
SIGNAL \clk1|count[24]~77_combout\ : std_logic;
SIGNAL \clk1|count[24]~78\ : std_logic;
SIGNAL \clk1|count[25]~79_combout\ : std_logic;
SIGNAL \clk1|count[25]~80\ : std_logic;
SIGNAL \clk1|count[26]~81_combout\ : std_logic;
SIGNAL \clk1|count[26]~82\ : std_logic;
SIGNAL \clk1|count[27]~83_combout\ : std_logic;
SIGNAL \clk1|Equal0~7_combout\ : std_logic;
SIGNAL \clk1|Equal0~5_combout\ : std_logic;
SIGNAL \clk1|Equal0~6_combout\ : std_logic;
SIGNAL \clk1|count[27]~84\ : std_logic;
SIGNAL \clk1|count[28]~85_combout\ : std_logic;
SIGNAL \clk1|count[28]~86\ : std_logic;
SIGNAL \clk1|count[29]~87_combout\ : std_logic;
SIGNAL \clk1|count[29]~88\ : std_logic;
SIGNAL \clk1|count[30]~89_combout\ : std_logic;
SIGNAL \clk1|count[30]~90\ : std_logic;
SIGNAL \clk1|count[31]~91_combout\ : std_logic;
SIGNAL \clk1|Equal0~8_combout\ : std_logic;
SIGNAL \clk1|Equal0~9_combout\ : std_logic;
SIGNAL \clk1|output~1_combout\ : std_logic;
SIGNAL \clk1|count[1]~31_combout\ : std_logic;
SIGNAL \clk1|count[1]~32\ : std_logic;
SIGNAL \clk1|count[2]~33_combout\ : std_logic;
SIGNAL \clk1|count[2]~34\ : std_logic;
SIGNAL \clk1|count[3]~35_combout\ : std_logic;
SIGNAL \clk1|count[3]~36\ : std_logic;
SIGNAL \clk1|count[4]~37_combout\ : std_logic;
SIGNAL \clk1|count[4]~38\ : std_logic;
SIGNAL \clk1|count[5]~39_combout\ : std_logic;
SIGNAL \clk1|count[5]~40\ : std_logic;
SIGNAL \clk1|count[6]~41_combout\ : std_logic;
SIGNAL \clk1|Equal0~1_combout\ : std_logic;
SIGNAL \clk1|Equal0~2_combout\ : std_logic;
SIGNAL \clk1|Equal0~3_combout\ : std_logic;
SIGNAL \clk1|Equal0~0_combout\ : std_logic;
SIGNAL \clk1|Equal0~4_combout\ : std_logic;
SIGNAL \clk1|output~0_combout\ : std_logic;
SIGNAL \clk1|output~combout\ : std_logic;
SIGNAL \clk1|output~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \count1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count1~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count1~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~3clkctrl_outclk\ : std_logic;
SIGNAL \next_state.s2_609~combout\ : std_logic;
SIGNAL \present_state.s2~q\ : std_logic;
SIGNAL \next_state.s3_585~combout\ : std_logic;
SIGNAL \present_state.s3~q\ : std_logic;
SIGNAL \next_state.s4_561~combout\ : std_logic;
SIGNAL \present_state.s4~q\ : std_logic;
SIGNAL \next_state.s5_537~combout\ : std_logic;
SIGNAL \present_state.s5~q\ : std_logic;
SIGNAL \next_state.s6_513~combout\ : std_logic;
SIGNAL \present_state.s6~q\ : std_logic;
SIGNAL \next_state.s7_489~combout\ : std_logic;
SIGNAL \present_state.s7~q\ : std_logic;
SIGNAL \next_state.s8_465~combout\ : std_logic;
SIGNAL \present_state.s8~q\ : std_logic;
SIGNAL \next_state.s1_633~combout\ : std_logic;
SIGNAL \present_state.s1~0_combout\ : std_logic;
SIGNAL \present_state.s1~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \clk1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL count1 : std_logic_vector(31 DOWNTO 0);
SIGNAL leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \clk1|ALT_INV_output~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk1|output~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1|output~combout\);

\Selector16~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector16~3_combout\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\clk1|ALT_INV_output~1_combout\ <= NOT \clk1|output~1_combout\;
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

-- Location: IOOBUF_X16_Y0_N16
\led[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(1),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(2),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(3),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\led[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(4),
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\led[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(5),
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\led[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(6),
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\led[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => leds(7),
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOIBUF_X19_Y21_N22
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

-- Location: LCCOMB_X16_Y20_N14
\clk1|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[0]~93_combout\ = !\clk1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk1|count\(0),
	combout => \clk1|count[0]~93_combout\);

-- Location: IOIBUF_X16_Y21_N15
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

-- Location: LCCOMB_X17_Y20_N12
\clk1|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[6]~41_combout\ = (\clk1|count\(6) & (!\clk1|count[5]~40\)) # (!\clk1|count\(6) & ((\clk1|count[5]~40\) # (GND)))
-- \clk1|count[6]~42\ = CARRY((!\clk1|count[5]~40\) # (!\clk1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(6),
	datad => VCC,
	cin => \clk1|count[5]~40\,
	combout => \clk1|count[6]~41_combout\,
	cout => \clk1|count[6]~42\);

-- Location: LCCOMB_X17_Y20_N14
\clk1|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[7]~43_combout\ = (\clk1|count\(7) & (\clk1|count[6]~42\ $ (GND))) # (!\clk1|count\(7) & (!\clk1|count[6]~42\ & VCC))
-- \clk1|count[7]~44\ = CARRY((\clk1|count\(7) & !\clk1|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(7),
	datad => VCC,
	cin => \clk1|count[6]~42\,
	combout => \clk1|count[7]~43_combout\,
	cout => \clk1|count[7]~44\);

-- Location: FF_X17_Y20_N15
\clk1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[7]~43_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(7));

-- Location: LCCOMB_X17_Y20_N16
\clk1|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[8]~45_combout\ = (\clk1|count\(8) & (!\clk1|count[7]~44\)) # (!\clk1|count\(8) & ((\clk1|count[7]~44\) # (GND)))
-- \clk1|count[8]~46\ = CARRY((!\clk1|count[7]~44\) # (!\clk1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(8),
	datad => VCC,
	cin => \clk1|count[7]~44\,
	combout => \clk1|count[8]~45_combout\,
	cout => \clk1|count[8]~46\);

-- Location: FF_X17_Y20_N17
\clk1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[8]~45_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(8));

-- Location: LCCOMB_X17_Y20_N18
\clk1|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[9]~47_combout\ = (\clk1|count\(9) & (\clk1|count[8]~46\ $ (GND))) # (!\clk1|count\(9) & (!\clk1|count[8]~46\ & VCC))
-- \clk1|count[9]~48\ = CARRY((\clk1|count\(9) & !\clk1|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(9),
	datad => VCC,
	cin => \clk1|count[8]~46\,
	combout => \clk1|count[9]~47_combout\,
	cout => \clk1|count[9]~48\);

-- Location: FF_X17_Y20_N19
\clk1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[9]~47_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(9));

-- Location: LCCOMB_X17_Y20_N20
\clk1|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[10]~49_combout\ = (\clk1|count\(10) & (!\clk1|count[9]~48\)) # (!\clk1|count\(10) & ((\clk1|count[9]~48\) # (GND)))
-- \clk1|count[10]~50\ = CARRY((!\clk1|count[9]~48\) # (!\clk1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(10),
	datad => VCC,
	cin => \clk1|count[9]~48\,
	combout => \clk1|count[10]~49_combout\,
	cout => \clk1|count[10]~50\);

-- Location: FF_X17_Y20_N21
\clk1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[10]~49_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(10));

-- Location: LCCOMB_X17_Y20_N22
\clk1|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[11]~51_combout\ = (\clk1|count\(11) & (\clk1|count[10]~50\ $ (GND))) # (!\clk1|count\(11) & (!\clk1|count[10]~50\ & VCC))
-- \clk1|count[11]~52\ = CARRY((\clk1|count\(11) & !\clk1|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(11),
	datad => VCC,
	cin => \clk1|count[10]~50\,
	combout => \clk1|count[11]~51_combout\,
	cout => \clk1|count[11]~52\);

-- Location: FF_X17_Y20_N23
\clk1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[11]~51_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(11));

-- Location: LCCOMB_X17_Y20_N24
\clk1|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[12]~53_combout\ = (\clk1|count\(12) & (!\clk1|count[11]~52\)) # (!\clk1|count\(12) & ((\clk1|count[11]~52\) # (GND)))
-- \clk1|count[12]~54\ = CARRY((!\clk1|count[11]~52\) # (!\clk1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(12),
	datad => VCC,
	cin => \clk1|count[11]~52\,
	combout => \clk1|count[12]~53_combout\,
	cout => \clk1|count[12]~54\);

-- Location: FF_X17_Y20_N25
\clk1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[12]~53_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(12));

-- Location: LCCOMB_X17_Y20_N26
\clk1|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[13]~55_combout\ = (\clk1|count\(13) & (\clk1|count[12]~54\ $ (GND))) # (!\clk1|count\(13) & (!\clk1|count[12]~54\ & VCC))
-- \clk1|count[13]~56\ = CARRY((\clk1|count\(13) & !\clk1|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(13),
	datad => VCC,
	cin => \clk1|count[12]~54\,
	combout => \clk1|count[13]~55_combout\,
	cout => \clk1|count[13]~56\);

-- Location: FF_X17_Y20_N27
\clk1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[13]~55_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(13));

-- Location: LCCOMB_X17_Y20_N28
\clk1|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[14]~57_combout\ = (\clk1|count\(14) & (!\clk1|count[13]~56\)) # (!\clk1|count\(14) & ((\clk1|count[13]~56\) # (GND)))
-- \clk1|count[14]~58\ = CARRY((!\clk1|count[13]~56\) # (!\clk1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(14),
	datad => VCC,
	cin => \clk1|count[13]~56\,
	combout => \clk1|count[14]~57_combout\,
	cout => \clk1|count[14]~58\);

-- Location: FF_X17_Y20_N29
\clk1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[14]~57_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(14));

-- Location: LCCOMB_X17_Y20_N30
\clk1|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[15]~59_combout\ = (\clk1|count\(15) & (\clk1|count[14]~58\ $ (GND))) # (!\clk1|count\(15) & (!\clk1|count[14]~58\ & VCC))
-- \clk1|count[15]~60\ = CARRY((\clk1|count\(15) & !\clk1|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(15),
	datad => VCC,
	cin => \clk1|count[14]~58\,
	combout => \clk1|count[15]~59_combout\,
	cout => \clk1|count[15]~60\);

-- Location: FF_X17_Y20_N31
\clk1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[15]~59_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(15));

-- Location: LCCOMB_X17_Y19_N0
\clk1|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[16]~61_combout\ = (\clk1|count\(16) & (!\clk1|count[15]~60\)) # (!\clk1|count\(16) & ((\clk1|count[15]~60\) # (GND)))
-- \clk1|count[16]~62\ = CARRY((!\clk1|count[15]~60\) # (!\clk1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(16),
	datad => VCC,
	cin => \clk1|count[15]~60\,
	combout => \clk1|count[16]~61_combout\,
	cout => \clk1|count[16]~62\);

-- Location: FF_X17_Y19_N1
\clk1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[16]~61_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(16));

-- Location: LCCOMB_X17_Y19_N2
\clk1|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[17]~63_combout\ = (\clk1|count\(17) & (\clk1|count[16]~62\ $ (GND))) # (!\clk1|count\(17) & (!\clk1|count[16]~62\ & VCC))
-- \clk1|count[17]~64\ = CARRY((\clk1|count\(17) & !\clk1|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(17),
	datad => VCC,
	cin => \clk1|count[16]~62\,
	combout => \clk1|count[17]~63_combout\,
	cout => \clk1|count[17]~64\);

-- Location: FF_X17_Y19_N3
\clk1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[17]~63_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(17));

-- Location: LCCOMB_X17_Y19_N4
\clk1|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[18]~65_combout\ = (\clk1|count\(18) & (!\clk1|count[17]~64\)) # (!\clk1|count\(18) & ((\clk1|count[17]~64\) # (GND)))
-- \clk1|count[18]~66\ = CARRY((!\clk1|count[17]~64\) # (!\clk1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(18),
	datad => VCC,
	cin => \clk1|count[17]~64\,
	combout => \clk1|count[18]~65_combout\,
	cout => \clk1|count[18]~66\);

-- Location: FF_X17_Y19_N5
\clk1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[18]~65_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(18));

-- Location: LCCOMB_X17_Y19_N6
\clk1|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[19]~67_combout\ = (\clk1|count\(19) & (\clk1|count[18]~66\ $ (GND))) # (!\clk1|count\(19) & (!\clk1|count[18]~66\ & VCC))
-- \clk1|count[19]~68\ = CARRY((\clk1|count\(19) & !\clk1|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(19),
	datad => VCC,
	cin => \clk1|count[18]~66\,
	combout => \clk1|count[19]~67_combout\,
	cout => \clk1|count[19]~68\);

-- Location: FF_X17_Y19_N7
\clk1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[19]~67_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(19));

-- Location: LCCOMB_X17_Y19_N8
\clk1|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[20]~69_combout\ = (\clk1|count\(20) & (!\clk1|count[19]~68\)) # (!\clk1|count\(20) & ((\clk1|count[19]~68\) # (GND)))
-- \clk1|count[20]~70\ = CARRY((!\clk1|count[19]~68\) # (!\clk1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(20),
	datad => VCC,
	cin => \clk1|count[19]~68\,
	combout => \clk1|count[20]~69_combout\,
	cout => \clk1|count[20]~70\);

-- Location: FF_X17_Y19_N9
\clk1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[20]~69_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(20));

-- Location: LCCOMB_X17_Y19_N10
\clk1|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[21]~71_combout\ = (\clk1|count\(21) & (\clk1|count[20]~70\ $ (GND))) # (!\clk1|count\(21) & (!\clk1|count[20]~70\ & VCC))
-- \clk1|count[21]~72\ = CARRY((\clk1|count\(21) & !\clk1|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(21),
	datad => VCC,
	cin => \clk1|count[20]~70\,
	combout => \clk1|count[21]~71_combout\,
	cout => \clk1|count[21]~72\);

-- Location: FF_X17_Y19_N11
\clk1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[21]~71_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(21));

-- Location: LCCOMB_X17_Y19_N12
\clk1|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[22]~73_combout\ = (\clk1|count\(22) & (!\clk1|count[21]~72\)) # (!\clk1|count\(22) & ((\clk1|count[21]~72\) # (GND)))
-- \clk1|count[22]~74\ = CARRY((!\clk1|count[21]~72\) # (!\clk1|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(22),
	datad => VCC,
	cin => \clk1|count[21]~72\,
	combout => \clk1|count[22]~73_combout\,
	cout => \clk1|count[22]~74\);

-- Location: FF_X17_Y19_N13
\clk1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[22]~73_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(22));

-- Location: LCCOMB_X17_Y19_N14
\clk1|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[23]~75_combout\ = (\clk1|count\(23) & (\clk1|count[22]~74\ $ (GND))) # (!\clk1|count\(23) & (!\clk1|count[22]~74\ & VCC))
-- \clk1|count[23]~76\ = CARRY((\clk1|count\(23) & !\clk1|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(23),
	datad => VCC,
	cin => \clk1|count[22]~74\,
	combout => \clk1|count[23]~75_combout\,
	cout => \clk1|count[23]~76\);

-- Location: FF_X17_Y19_N15
\clk1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[23]~75_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(23));

-- Location: LCCOMB_X17_Y19_N16
\clk1|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[24]~77_combout\ = (\clk1|count\(24) & (!\clk1|count[23]~76\)) # (!\clk1|count\(24) & ((\clk1|count[23]~76\) # (GND)))
-- \clk1|count[24]~78\ = CARRY((!\clk1|count[23]~76\) # (!\clk1|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(24),
	datad => VCC,
	cin => \clk1|count[23]~76\,
	combout => \clk1|count[24]~77_combout\,
	cout => \clk1|count[24]~78\);

-- Location: FF_X17_Y19_N17
\clk1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[24]~77_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(24));

-- Location: LCCOMB_X17_Y19_N18
\clk1|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[25]~79_combout\ = (\clk1|count\(25) & (\clk1|count[24]~78\ $ (GND))) # (!\clk1|count\(25) & (!\clk1|count[24]~78\ & VCC))
-- \clk1|count[25]~80\ = CARRY((\clk1|count\(25) & !\clk1|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(25),
	datad => VCC,
	cin => \clk1|count[24]~78\,
	combout => \clk1|count[25]~79_combout\,
	cout => \clk1|count[25]~80\);

-- Location: FF_X17_Y19_N19
\clk1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[25]~79_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(25));

-- Location: LCCOMB_X17_Y19_N20
\clk1|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[26]~81_combout\ = (\clk1|count\(26) & (!\clk1|count[25]~80\)) # (!\clk1|count\(26) & ((\clk1|count[25]~80\) # (GND)))
-- \clk1|count[26]~82\ = CARRY((!\clk1|count[25]~80\) # (!\clk1|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(26),
	datad => VCC,
	cin => \clk1|count[25]~80\,
	combout => \clk1|count[26]~81_combout\,
	cout => \clk1|count[26]~82\);

-- Location: FF_X17_Y19_N21
\clk1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[26]~81_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(26));

-- Location: LCCOMB_X17_Y19_N22
\clk1|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[27]~83_combout\ = (\clk1|count\(27) & (\clk1|count[26]~82\ $ (GND))) # (!\clk1|count\(27) & (!\clk1|count[26]~82\ & VCC))
-- \clk1|count[27]~84\ = CARRY((\clk1|count\(27) & !\clk1|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(27),
	datad => VCC,
	cin => \clk1|count[26]~82\,
	combout => \clk1|count[27]~83_combout\,
	cout => \clk1|count[27]~84\);

-- Location: FF_X17_Y19_N23
\clk1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[27]~83_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(27));

-- Location: LCCOMB_X16_Y20_N22
\clk1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~7_combout\ = (\clk1|count\(27) & (\clk1|count\(25) & (\clk1|count\(26) & !\clk1|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(27),
	datab => \clk1|count\(25),
	datac => \clk1|count\(26),
	datad => \clk1|count\(24),
	combout => \clk1|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y20_N24
\clk1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~5_combout\ = (!\clk1|count\(16) & (!\clk1|count\(19) & (\clk1|count\(18) & \clk1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(16),
	datab => \clk1|count\(19),
	datac => \clk1|count\(18),
	datad => \clk1|count\(17),
	combout => \clk1|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y20_N8
\clk1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~6_combout\ = (\clk1|count\(21) & (\clk1|count\(22) & (!\clk1|count\(20) & \clk1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(21),
	datab => \clk1|count\(22),
	datac => \clk1|count\(20),
	datad => \clk1|count\(23),
	combout => \clk1|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y19_N24
\clk1|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[28]~85_combout\ = (\clk1|count\(28) & (!\clk1|count[27]~84\)) # (!\clk1|count\(28) & ((\clk1|count[27]~84\) # (GND)))
-- \clk1|count[28]~86\ = CARRY((!\clk1|count[27]~84\) # (!\clk1|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(28),
	datad => VCC,
	cin => \clk1|count[27]~84\,
	combout => \clk1|count[28]~85_combout\,
	cout => \clk1|count[28]~86\);

-- Location: FF_X17_Y19_N25
\clk1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[28]~85_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(28));

-- Location: LCCOMB_X17_Y19_N26
\clk1|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[29]~87_combout\ = (\clk1|count\(29) & (\clk1|count[28]~86\ $ (GND))) # (!\clk1|count\(29) & (!\clk1|count[28]~86\ & VCC))
-- \clk1|count[29]~88\ = CARRY((\clk1|count\(29) & !\clk1|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(29),
	datad => VCC,
	cin => \clk1|count[28]~86\,
	combout => \clk1|count[29]~87_combout\,
	cout => \clk1|count[29]~88\);

-- Location: FF_X17_Y19_N27
\clk1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[29]~87_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(29));

-- Location: LCCOMB_X17_Y19_N28
\clk1|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[30]~89_combout\ = (\clk1|count\(30) & (!\clk1|count[29]~88\)) # (!\clk1|count\(30) & ((\clk1|count[29]~88\) # (GND)))
-- \clk1|count[30]~90\ = CARRY((!\clk1|count[29]~88\) # (!\clk1|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(30),
	datad => VCC,
	cin => \clk1|count[29]~88\,
	combout => \clk1|count[30]~89_combout\,
	cout => \clk1|count[30]~90\);

-- Location: FF_X17_Y19_N29
\clk1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[30]~89_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(30));

-- Location: LCCOMB_X17_Y19_N30
\clk1|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[31]~91_combout\ = \clk1|count\(31) $ (!\clk1|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(31),
	cin => \clk1|count[30]~90\,
	combout => \clk1|count[31]~91_combout\);

-- Location: FF_X17_Y19_N31
\clk1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[31]~91_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(31));

-- Location: LCCOMB_X16_Y20_N20
\clk1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~8_combout\ = (!\clk1|count\(31) & (!\clk1|count\(28) & (!\clk1|count\(29) & !\clk1|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(31),
	datab => \clk1|count\(28),
	datac => \clk1|count\(29),
	datad => \clk1|count\(30),
	combout => \clk1|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y20_N12
\clk1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~9_combout\ = (\clk1|Equal0~7_combout\ & (\clk1|Equal0~5_combout\ & (\clk1|Equal0~6_combout\ & \clk1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~7_combout\,
	datab => \clk1|Equal0~5_combout\,
	datac => \clk1|Equal0~6_combout\,
	datad => \clk1|Equal0~8_combout\,
	combout => \clk1|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y20_N0
\clk1|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|output~1_combout\ = (\reset~input_o\) # ((\clk1|Equal0~4_combout\ & \clk1|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|Equal0~4_combout\,
	datac => \reset~input_o\,
	datad => \clk1|Equal0~9_combout\,
	combout => \clk1|output~1_combout\);

-- Location: FF_X16_Y20_N15
\clk1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[0]~93_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(0));

-- Location: LCCOMB_X17_Y20_N2
\clk1|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[1]~31_combout\ = (\clk1|count\(0) & (\clk1|count\(1) & VCC)) # (!\clk1|count\(0) & (\clk1|count\(1) $ (VCC)))
-- \clk1|count[1]~32\ = CARRY((!\clk1|count\(0) & \clk1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(0),
	datab => \clk1|count\(1),
	datad => VCC,
	combout => \clk1|count[1]~31_combout\,
	cout => \clk1|count[1]~32\);

-- Location: FF_X17_Y20_N3
\clk1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[1]~31_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(1));

-- Location: LCCOMB_X17_Y20_N4
\clk1|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[2]~33_combout\ = (\clk1|count\(2) & (!\clk1|count[1]~32\)) # (!\clk1|count\(2) & ((\clk1|count[1]~32\) # (GND)))
-- \clk1|count[2]~34\ = CARRY((!\clk1|count[1]~32\) # (!\clk1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(2),
	datad => VCC,
	cin => \clk1|count[1]~32\,
	combout => \clk1|count[2]~33_combout\,
	cout => \clk1|count[2]~34\);

-- Location: FF_X17_Y20_N5
\clk1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[2]~33_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(2));

-- Location: LCCOMB_X17_Y20_N6
\clk1|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[3]~35_combout\ = (\clk1|count\(3) & (\clk1|count[2]~34\ $ (GND))) # (!\clk1|count\(3) & (!\clk1|count[2]~34\ & VCC))
-- \clk1|count[3]~36\ = CARRY((\clk1|count\(3) & !\clk1|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(3),
	datad => VCC,
	cin => \clk1|count[2]~34\,
	combout => \clk1|count[3]~35_combout\,
	cout => \clk1|count[3]~36\);

-- Location: FF_X17_Y20_N7
\clk1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[3]~35_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(3));

-- Location: LCCOMB_X17_Y20_N8
\clk1|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[4]~37_combout\ = (\clk1|count\(4) & (!\clk1|count[3]~36\)) # (!\clk1|count\(4) & ((\clk1|count[3]~36\) # (GND)))
-- \clk1|count[4]~38\ = CARRY((!\clk1|count[3]~36\) # (!\clk1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|count\(4),
	datad => VCC,
	cin => \clk1|count[3]~36\,
	combout => \clk1|count[4]~37_combout\,
	cout => \clk1|count[4]~38\);

-- Location: FF_X17_Y20_N9
\clk1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[4]~37_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(4));

-- Location: LCCOMB_X17_Y20_N10
\clk1|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|count[5]~39_combout\ = (\clk1|count\(5) & (\clk1|count[4]~38\ $ (GND))) # (!\clk1|count\(5) & (!\clk1|count[4]~38\ & VCC))
-- \clk1|count[5]~40\ = CARRY((\clk1|count\(5) & !\clk1|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(5),
	datad => VCC,
	cin => \clk1|count[4]~38\,
	combout => \clk1|count[5]~39_combout\,
	cout => \clk1|count[5]~40\);

-- Location: FF_X17_Y20_N11
\clk1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[5]~39_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(5));

-- Location: FF_X17_Y20_N13
\clk1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clk1|count[6]~41_combout\,
	clrn => \clk1|ALT_INV_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|count\(6));

-- Location: LCCOMB_X16_Y20_N26
\clk1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~1_combout\ = (!\clk1|count\(6) & (\clk1|count\(7) & (!\clk1|count\(5) & !\clk1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(6),
	datab => \clk1|count\(7),
	datac => \clk1|count\(5),
	datad => \clk1|count\(4),
	combout => \clk1|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y20_N28
\clk1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~2_combout\ = (\clk1|count\(9) & (!\clk1|count\(11) & (!\clk1|count\(10) & !\clk1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(9),
	datab => \clk1|count\(11),
	datac => \clk1|count\(10),
	datad => \clk1|count\(8),
	combout => \clk1|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y20_N0
\clk1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~3_combout\ = (\clk1|count\(13) & (!\clk1|count\(14) & (\clk1|count\(15) & \clk1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(13),
	datab => \clk1|count\(14),
	datac => \clk1|count\(15),
	datad => \clk1|count\(12),
	combout => \clk1|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y20_N16
\clk1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~0_combout\ = (!\clk1|count\(2) & (\clk1|count\(0) & (!\clk1|count\(1) & !\clk1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|count\(2),
	datab => \clk1|count\(0),
	datac => \clk1|count\(1),
	datad => \clk1|count\(3),
	combout => \clk1|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\clk1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|Equal0~4_combout\ = (\clk1|Equal0~1_combout\ & (\clk1|Equal0~2_combout\ & (\clk1|Equal0~3_combout\ & \clk1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~1_combout\,
	datab => \clk1|Equal0~2_combout\,
	datac => \clk1|Equal0~3_combout\,
	datad => \clk1|Equal0~0_combout\,
	combout => \clk1|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y20_N2
\clk1|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|output~0_combout\ = ((\clk1|output~combout\) # (!\clk1|Equal0~9_combout\)) # (!\clk1|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|Equal0~4_combout\,
	datac => \clk1|output~combout\,
	datad => \clk1|Equal0~9_combout\,
	combout => \clk1|output~0_combout\);

-- Location: LCCOMB_X16_Y20_N18
\clk1|output\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk1|output~combout\ = (\clk1|output~1_combout\ & ((!\clk1|output~0_combout\))) # (!\clk1|output~1_combout\ & (\clk1|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|output~combout\,
	datac => \clk1|output~0_combout\,
	datad => \clk1|output~1_combout\,
	combout => \clk1|output~combout\);

-- Location: CLKCTRL_G4
\clk1|output~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1|output~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y19_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count1(0) $ (VCC)
-- \Add0~1\ = CARRY(count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X15_Y19_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count1(6) & (\Add0~11\ $ (GND))) # (!count1(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count1(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X15_Y19_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count1(7) & (!\Add0~13\)) # (!count1(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X15_Y19_N15
\count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(7));

-- Location: LCCOMB_X15_Y19_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count1(8) & (\Add0~15\ $ (GND))) # (!count1(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count1(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X15_Y19_N17
\count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(8));

-- Location: LCCOMB_X15_Y19_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count1(9) & (!\Add0~17\)) # (!count1(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X15_Y19_N19
\count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(9));

-- Location: LCCOMB_X15_Y19_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count1(10) & (\Add0~19\ $ (GND))) # (!count1(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count1(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X15_Y19_N21
\count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(10));

-- Location: LCCOMB_X15_Y19_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count1(11) & (!\Add0~21\)) # (!count1(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X15_Y19_N23
\count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(11));

-- Location: LCCOMB_X15_Y19_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count1(12) & (\Add0~23\ $ (GND))) # (!count1(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count1(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X15_Y19_N25
\count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(12));

-- Location: LCCOMB_X15_Y19_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count1(13) & (!\Add0~25\)) # (!count1(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X15_Y19_N27
\count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(13));

-- Location: LCCOMB_X15_Y19_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count1(14) & (\Add0~27\ $ (GND))) # (!count1(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count1(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X15_Y19_N29
\count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(14));

-- Location: LCCOMB_X15_Y19_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count1(15) & (!\Add0~29\)) # (!count1(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X15_Y19_N31
\count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(15));

-- Location: LCCOMB_X15_Y18_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count1(16) & (\Add0~31\ $ (GND))) # (!count1(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count1(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X15_Y18_N1
\count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(16));

-- Location: LCCOMB_X15_Y18_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count1(17) & (!\Add0~33\)) # (!count1(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X15_Y18_N3
\count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(17));

-- Location: LCCOMB_X15_Y18_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count1(18) & (\Add0~35\ $ (GND))) # (!count1(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count1(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X15_Y18_N5
\count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(18));

-- Location: LCCOMB_X15_Y18_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count1(19) & (!\Add0~37\)) # (!count1(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X15_Y18_N7
\count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(19));

-- Location: LCCOMB_X15_Y18_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count1(20) & (\Add0~39\ $ (GND))) # (!count1(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count1(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X15_Y18_N9
\count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(20));

-- Location: LCCOMB_X15_Y18_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count1(21) & (!\Add0~41\)) # (!count1(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X15_Y18_N11
\count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(21));

-- Location: LCCOMB_X15_Y18_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count1(22) & (\Add0~43\ $ (GND))) # (!count1(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count1(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X15_Y18_N13
\count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(22));

-- Location: LCCOMB_X15_Y18_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count1(23) & (!\Add0~45\)) # (!count1(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X15_Y18_N15
\count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(23));

-- Location: LCCOMB_X15_Y18_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count1(24) & (\Add0~47\ $ (GND))) # (!count1(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count1(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X15_Y18_N17
\count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(24));

-- Location: LCCOMB_X15_Y18_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count1(25) & (!\Add0~49\)) # (!count1(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X15_Y18_N19
\count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(25));

-- Location: LCCOMB_X15_Y18_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count1(26) & (\Add0~51\ $ (GND))) # (!count1(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count1(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X15_Y18_N21
\count1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(26));

-- Location: LCCOMB_X15_Y18_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count1(27) & (!\Add0~53\)) # (!count1(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X15_Y18_N23
\count1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(27));

-- Location: LCCOMB_X15_Y18_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count1(28) & (\Add0~55\ $ (GND))) # (!count1(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count1(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X15_Y18_N25
\count1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(28));

-- Location: LCCOMB_X15_Y18_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count1(29) & (!\Add0~57\)) # (!count1(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X15_Y18_N27
\count1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(29));

-- Location: LCCOMB_X15_Y18_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count1(30) & (\Add0~59\ $ (GND))) # (!count1(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count1(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X15_Y18_N29
\count1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(30));

-- Location: LCCOMB_X15_Y18_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count1(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X15_Y18_N31
\count1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(31));

-- Location: LCCOMB_X16_Y19_N20
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count1(2) & count1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(2),
	datab => count1(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y19_N24
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!count1(31) & (\Equal0~0_combout\ & (!count1(0) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	datab => \Equal0~0_combout\,
	datac => count1(0),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X16_Y19_N4
\count1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~2_combout\ = (\Add0~0_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \count1~2_combout\);

-- Location: FF_X16_Y19_N5
\count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~clkctrl_outclk\,
	d => \count1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(0));

-- Location: LCCOMB_X15_Y19_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count1(1) & (!\Add0~1\)) # (!count1(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X16_Y19_N28
\count1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~1_combout\ = (\Add0~2_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \count1~1_combout\);

-- Location: FF_X16_Y19_N29
\count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \count1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(1));

-- Location: LCCOMB_X15_Y19_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count1(2) & (\Add0~3\ $ (GND))) # (!count1(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count1(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X16_Y19_N30
\count1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1~0_combout\ = (\Add0~4_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~10_combout\,
	combout => \count1~0_combout\);

-- Location: FF_X16_Y19_N31
\count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \count1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(2));

-- Location: LCCOMB_X15_Y19_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count1(3) & (!\Add0~5\)) # (!count1(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X15_Y19_N7
\count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(3));

-- Location: LCCOMB_X15_Y19_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count1(4) & (\Add0~7\ $ (GND))) # (!count1(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count1(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X15_Y19_N9
\count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(4));

-- Location: LCCOMB_X15_Y19_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count1(5) & (!\Add0~9\)) # (!count1(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X15_Y19_N11
\count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(5));

-- Location: FF_X15_Y19_N13
\count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(6));

-- Location: LCCOMB_X16_Y19_N6
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count1(6) & (!count1(3) & (!count1(5) & !count1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datab => count1(3),
	datac => count1(5),
	datad => count1(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X16_Y19_N18
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count1(13) & (!count1(14) & (!count1(12) & !count1(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datab => count1(14),
	datac => count1(12),
	datad => count1(11),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X16_Y19_N14
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count1(8) & (!count1(9) & (!count1(10) & !count1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(8),
	datab => count1(9),
	datac => count1(10),
	datad => count1(7),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X16_Y19_N22
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count1(27) & (!count1(29) & (!count1(28) & !count1(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datab => count1(29),
	datac => count1(28),
	datad => count1(30),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X16_Y19_N16
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!count1(16) & (!count1(15) & (!count1(17) & !count1(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datab => count1(15),
	datac => count1(17),
	datad => count1(18),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X16_Y18_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count1(23) & (!count1(26) & (!count1(24) & !count1(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(23),
	datab => count1(26),
	datac => count1(24),
	datad => count1(25),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y19_N2
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count1(20) & (!count1(19) & (!count1(21) & !count1(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(20),
	datab => count1(19),
	datac => count1(21),
	datad => count1(22),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X16_Y19_N12
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~1_combout\ & (\Equal0~4_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X16_Y19_N10
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X16_Y18_N2
\Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\present_state.s4~q\) # ((\present_state.s8~q\) # ((\present_state.s6~q\) # (\present_state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s4~q\,
	datab => \present_state.s8~q\,
	datac => \present_state.s6~q\,
	datad => \present_state.s2~q\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X16_Y19_N26
\Selector16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = (count1(2) & ((count1(1) & ((count1(0)) # (!\Selector16~2_combout\))) # (!count1(1) & (count1(0) & !\Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(2),
	datab => count1(1),
	datac => count1(0),
	datad => \Selector16~2_combout\,
	combout => \Selector16~5_combout\);

-- Location: LCCOMB_X16_Y19_N0
\Selector16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (!count1(31) & ((\Selector16~5_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Selector16~5_combout\,
	datad => count1(31),
	combout => \Selector16~3_combout\);

-- Location: CLKCTRL_G1
\Selector16~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector16~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector16~3clkctrl_outclk\);

-- Location: LCCOMB_X16_Y18_N8
\next_state.s2_609\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s2_609~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((!\present_state.s1~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s2_609~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.s2_609~combout\,
	datac => \present_state.s1~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s2_609~combout\);

-- Location: FF_X16_Y18_N19
\present_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	asdata => \next_state.s2_609~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s2~q\);

-- Location: LCCOMB_X16_Y18_N30
\next_state.s3_585\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s3_585~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((\present_state.s2~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s3_585~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.s3_585~combout\,
	datab => \present_state.s2~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s3_585~combout\);

-- Location: FF_X16_Y18_N11
\present_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~clkctrl_outclk\,
	asdata => \next_state.s3_585~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s3~q\);

-- Location: LCCOMB_X16_Y18_N4
\next_state.s4_561\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s4_561~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((\present_state.s3~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s4_561~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.s4_561~combout\,
	datac => \present_state.s3~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s4_561~combout\);

-- Location: FF_X16_Y18_N25
\present_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	asdata => \next_state.s4_561~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s4~q\);

-- Location: LCCOMB_X16_Y18_N18
\next_state.s5_537\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s5_537~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((\present_state.s4~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s5_537~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.s5_537~combout\,
	datab => \present_state.s4~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s5_537~combout\);

-- Location: FF_X16_Y18_N17
\present_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~clkctrl_outclk\,
	asdata => \next_state.s5_537~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s5~q\);

-- Location: LCCOMB_X16_Y18_N14
\next_state.s6_513\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s6_513~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((\present_state.s5~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s6_513~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.s6_513~combout\,
	datac => \present_state.s5~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s6_513~combout\);

-- Location: FF_X16_Y18_N3
\present_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	asdata => \next_state.s6_513~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s6~q\);

-- Location: LCCOMB_X16_Y18_N26
\next_state.s7_489\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s7_489~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((\present_state.s6~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s7_489~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.s7_489~combout\,
	datac => \present_state.s6~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s7_489~combout\);

-- Location: FF_X16_Y18_N29
\present_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~clkctrl_outclk\,
	asdata => \next_state.s7_489~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s7~q\);

-- Location: LCCOMB_X16_Y18_N22
\next_state.s8_465\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s8_465~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((\present_state.s7~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s8_465~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.s8_465~combout\,
	datac => \present_state.s7~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s8_465~combout\);

-- Location: FF_X16_Y18_N31
\present_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~combout\,
	asdata => \next_state.s8_465~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s8~q\);

-- Location: LCCOMB_X16_Y18_N24
\next_state.s1_633\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state.s1_633~combout\ = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((\present_state.s8~q\))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\next_state.s1_633~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.s1_633~combout\,
	datab => \present_state.s8~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => \next_state.s1_633~combout\);

-- Location: LCCOMB_X16_Y18_N6
\present_state.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \present_state.s1~0_combout\ = !\next_state.s1_633~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.s1_633~combout\,
	combout => \present_state.s1~0_combout\);

-- Location: FF_X16_Y18_N7
\present_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|output~clkctrl_outclk\,
	d => \present_state.s1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s1~q\);

-- Location: LCCOMB_X16_Y18_N12
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\present_state.s1~q\ & (!\present_state.s2~q\ & !\present_state.s8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s1~q\,
	datab => \present_state.s2~q\,
	datad => \present_state.s8~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X16_Y18_N16
\leds[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- leds(1) = (GLOBAL(\Selector16~3clkctrl_outclk\) & (leds(1))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & ((\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => leds(1),
	datab => \Selector6~0_combout\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => leds(1));

-- Location: LCCOMB_X16_Y18_N28
\leds[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- leds(2) = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((leds(2)))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (!\present_state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s3~q\,
	datab => leds(2),
	datad => \Selector16~3clkctrl_outclk\,
	combout => leds(2));

-- Location: LCCOMB_X17_Y18_N12
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\present_state.s4~q\ & !\present_state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s4~q\,
	datab => \present_state.s2~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X17_Y18_N18
\leds[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- leds(3) = (GLOBAL(\Selector16~3clkctrl_outclk\) & (leds(3))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & ((\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => leds(3),
	datac => \Selector4~0_combout\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => leds(3));

-- Location: LCCOMB_X16_Y18_N10
\leds[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- leds(4) = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((leds(4)))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (!\present_state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s5~q\,
	datab => leds(4),
	datad => \Selector16~3clkctrl_outclk\,
	combout => leds(4));

-- Location: LCCOMB_X17_Y18_N14
\Selector16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (!\present_state.s4~q\ & !\present_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s4~q\,
	datad => \present_state.s6~q\,
	combout => \Selector16~4_combout\);

-- Location: LCCOMB_X21_Y18_N4
\leds[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- leds(5) = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((leds(5)))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (\Selector16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~4_combout\,
	datac => leds(5),
	datad => \Selector16~3clkctrl_outclk\,
	combout => leds(5));

-- Location: LCCOMB_X16_Y18_N20
\leds[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- leds(6) = (GLOBAL(\Selector16~3clkctrl_outclk\) & (leds(6))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & ((!\present_state.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => leds(6),
	datac => \present_state.s7~q\,
	datad => \Selector16~3clkctrl_outclk\,
	combout => leds(6));

-- Location: LCCOMB_X17_Y18_N28
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\present_state.s8~q\) # (\present_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.s8~q\,
	datab => \present_state.s6~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X21_Y18_N22
\leds[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- leds(7) = (GLOBAL(\Selector16~3clkctrl_outclk\) & ((leds(7)))) # (!GLOBAL(\Selector16~3clkctrl_outclk\) & (!\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => leds(7),
	datad => \Selector16~3clkctrl_outclk\,
	combout => leds(7));

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

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;
END structure;


