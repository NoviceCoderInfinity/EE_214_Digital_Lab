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

-- DATE "10/13/2023 17:13:10"

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

ENTITY 	Led_Sw IS
    PORT (
	swt : IN std_logic;
	clk1 : IN std_logic;
	clk2 : IN std_logic;
	reset : IN std_logic;
	leds : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Led_Sw;

-- Design Ports Information
-- reset	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- swt	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Led_Sw IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_swt : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \swt~input_o\ : std_logic;
SIGNAL \clk2~input_o\ : std_logic;
SIGNAL \clk2~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_div_1|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_1|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_1|count[1]~32\ : std_logic;
SIGNAL \clock_div_1|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_1|count[2]~34\ : std_logic;
SIGNAL \clock_div_1|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_1|count[3]~36\ : std_logic;
SIGNAL \clock_div_1|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_1|count[4]~38\ : std_logic;
SIGNAL \clock_div_1|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_1|count[5]~40\ : std_logic;
SIGNAL \clock_div_1|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_1|count[6]~42\ : std_logic;
SIGNAL \clock_div_1|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_1|count[7]~44\ : std_logic;
SIGNAL \clock_div_1|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_1|count[8]~46\ : std_logic;
SIGNAL \clock_div_1|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_1|count[9]~48\ : std_logic;
SIGNAL \clock_div_1|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_1|count[10]~feeder_combout\ : std_logic;
SIGNAL \clock_div_1|count[10]~50\ : std_logic;
SIGNAL \clock_div_1|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_1|count[11]~feeder_combout\ : std_logic;
SIGNAL \clock_div_1|count[11]~52\ : std_logic;
SIGNAL \clock_div_1|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_1|count[12]~54\ : std_logic;
SIGNAL \clock_div_1|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_1|count[13]~56\ : std_logic;
SIGNAL \clock_div_1|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_1|count[14]~58\ : std_logic;
SIGNAL \clock_div_1|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_1|count[15]~60\ : std_logic;
SIGNAL \clock_div_1|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_1|count[16]~62\ : std_logic;
SIGNAL \clock_div_1|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_1|count[17]~64\ : std_logic;
SIGNAL \clock_div_1|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_1|count[18]~66\ : std_logic;
SIGNAL \clock_div_1|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_1|count[19]~68\ : std_logic;
SIGNAL \clock_div_1|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_1|count[20]~70\ : std_logic;
SIGNAL \clock_div_1|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_1|count[21]~72\ : std_logic;
SIGNAL \clock_div_1|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_1|count[22]~74\ : std_logic;
SIGNAL \clock_div_1|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_1|count[23]~76\ : std_logic;
SIGNAL \clock_div_1|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_1|count[24]~78\ : std_logic;
SIGNAL \clock_div_1|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_1|count[25]~80\ : std_logic;
SIGNAL \clock_div_1|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_1|count[26]~82\ : std_logic;
SIGNAL \clock_div_1|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_1|count[27]~84\ : std_logic;
SIGNAL \clock_div_1|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_1|count[28]~86\ : std_logic;
SIGNAL \clock_div_1|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_1|count[29]~88\ : std_logic;
SIGNAL \clock_div_1|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_1|count[30]~90\ : std_logic;
SIGNAL \clock_div_1|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_1|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_1|output~0_combout\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_1|count[0]~93_combout\ : std_logic;
SIGNAL \clock_1|count[1]~31_combout\ : std_logic;
SIGNAL \clock_1|count[1]~32\ : std_logic;
SIGNAL \clock_1|count[2]~33_combout\ : std_logic;
SIGNAL \clock_1|count[2]~34\ : std_logic;
SIGNAL \clock_1|count[3]~35_combout\ : std_logic;
SIGNAL \clock_1|count[3]~36\ : std_logic;
SIGNAL \clock_1|count[4]~37_combout\ : std_logic;
SIGNAL \clock_1|count[4]~38\ : std_logic;
SIGNAL \clock_1|count[5]~39_combout\ : std_logic;
SIGNAL \clock_1|count[5]~40\ : std_logic;
SIGNAL \clock_1|count[6]~41_combout\ : std_logic;
SIGNAL \clock_1|count[6]~42\ : std_logic;
SIGNAL \clock_1|count[7]~43_combout\ : std_logic;
SIGNAL \clock_1|count[7]~44\ : std_logic;
SIGNAL \clock_1|count[8]~45_combout\ : std_logic;
SIGNAL \clock_1|count[8]~46\ : std_logic;
SIGNAL \clock_1|count[9]~47_combout\ : std_logic;
SIGNAL \clock_1|count[9]~48\ : std_logic;
SIGNAL \clock_1|count[10]~49_combout\ : std_logic;
SIGNAL \clock_1|count[10]~50\ : std_logic;
SIGNAL \clock_1|count[11]~51_combout\ : std_logic;
SIGNAL \clock_1|count[11]~52\ : std_logic;
SIGNAL \clock_1|count[12]~53_combout\ : std_logic;
SIGNAL \clock_1|count[12]~54\ : std_logic;
SIGNAL \clock_1|count[13]~55_combout\ : std_logic;
SIGNAL \clock_1|count[13]~56\ : std_logic;
SIGNAL \clock_1|count[14]~57_combout\ : std_logic;
SIGNAL \clock_1|count[14]~58\ : std_logic;
SIGNAL \clock_1|count[15]~59_combout\ : std_logic;
SIGNAL \clock_1|count[15]~60\ : std_logic;
SIGNAL \clock_1|count[16]~61_combout\ : std_logic;
SIGNAL \clock_1|count[16]~62\ : std_logic;
SIGNAL \clock_1|count[17]~63_combout\ : std_logic;
SIGNAL \clock_1|count[17]~64\ : std_logic;
SIGNAL \clock_1|count[18]~65_combout\ : std_logic;
SIGNAL \clock_1|count[18]~66\ : std_logic;
SIGNAL \clock_1|count[19]~67_combout\ : std_logic;
SIGNAL \clock_1|count[19]~68\ : std_logic;
SIGNAL \clock_1|count[20]~69_combout\ : std_logic;
SIGNAL \clock_1|count[20]~70\ : std_logic;
SIGNAL \clock_1|count[21]~71_combout\ : std_logic;
SIGNAL \clock_1|count[21]~72\ : std_logic;
SIGNAL \clock_1|count[22]~73_combout\ : std_logic;
SIGNAL \clock_1|count[22]~74\ : std_logic;
SIGNAL \clock_1|count[23]~75_combout\ : std_logic;
SIGNAL \clock_1|count[23]~76\ : std_logic;
SIGNAL \clock_1|count[24]~77_combout\ : std_logic;
SIGNAL \clock_1|count[24]~78\ : std_logic;
SIGNAL \clock_1|count[25]~79_combout\ : std_logic;
SIGNAL \clock_1|count[25]~80\ : std_logic;
SIGNAL \clock_1|count[26]~81_combout\ : std_logic;
SIGNAL \clock_1|count[26]~82\ : std_logic;
SIGNAL \clock_1|count[27]~83_combout\ : std_logic;
SIGNAL \clock_1|count[27]~84\ : std_logic;
SIGNAL \clock_1|count[28]~85_combout\ : std_logic;
SIGNAL \clock_1|count[28]~86\ : std_logic;
SIGNAL \clock_1|count[29]~87_combout\ : std_logic;
SIGNAL \clock_1|count[29]~88\ : std_logic;
SIGNAL \clock_1|count[30]~89_combout\ : std_logic;
SIGNAL \clock_1|count[30]~90\ : std_logic;
SIGNAL \clock_1|count[31]~91_combout\ : std_logic;
SIGNAL \clock_1|Equal0~0_combout\ : std_logic;
SIGNAL \clock_1|Equal1~0_combout\ : std_logic;
SIGNAL \clock_1|Equal0~3_combout\ : std_logic;
SIGNAL \clock_1|Equal0~2_combout\ : std_logic;
SIGNAL \clock_1|Equal0~1_combout\ : std_logic;
SIGNAL \clock_1|Equal0~4_combout\ : std_logic;
SIGNAL \clock_1|Equal0~5_combout\ : std_logic;
SIGNAL \clock_1|Equal0~9_combout\ : std_logic;
SIGNAL \clock_1|Equal3~0_combout\ : std_logic;
SIGNAL \clock_1|Equal3~1_combout\ : std_logic;
SIGNAL \clock_1|Equal3~2_combout\ : std_logic;
SIGNAL \clock_1|Equal2~0_combout\ : std_logic;
SIGNAL \clock_1|Equal0~7_combout\ : std_logic;
SIGNAL \clock_1|Equal0~6_combout\ : std_logic;
SIGNAL \clock_1|Equal0~8_combout\ : std_logic;
SIGNAL \clock_1|Equal2~2_combout\ : std_logic;
SIGNAL \clock_1|comb~2_combout\ : std_logic;
SIGNAL \clock_1|Equal1~1_combout\ : std_logic;
SIGNAL \clock_1|Equal1~2_combout\ : std_logic;
SIGNAL \clock_1|Equal1~3_combout\ : std_logic;
SIGNAL \clock_1|Equal0~10_combout\ : std_logic;
SIGNAL \clock_1|comb~3_combout\ : std_logic;
SIGNAL \clock_1|Equal2~1_combout\ : std_logic;
SIGNAL \clock_1|mode[1]~0_combout\ : std_logic;
SIGNAL \clock_1|comb~4_combout\ : std_logic;
SIGNAL \clock_1|comb~1_combout\ : std_logic;
SIGNAL \clock_1|comb~0_combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \clock_div_8|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_8|count[6]~42\ : std_logic;
SIGNAL \clock_div_8|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_8|count[7]~44\ : std_logic;
SIGNAL \clock_div_8|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_8|count[8]~46\ : std_logic;
SIGNAL \clock_div_8|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_8|count[9]~48\ : std_logic;
SIGNAL \clock_div_8|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_8|count[10]~50\ : std_logic;
SIGNAL \clock_div_8|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_8|count[11]~52\ : std_logic;
SIGNAL \clock_div_8|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_8|count[12]~54\ : std_logic;
SIGNAL \clock_div_8|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_8|count[13]~56\ : std_logic;
SIGNAL \clock_div_8|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_8|count[14]~58\ : std_logic;
SIGNAL \clock_div_8|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_8|count[15]~60\ : std_logic;
SIGNAL \clock_div_8|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_8|count[16]~62\ : std_logic;
SIGNAL \clock_div_8|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_8|count[17]~64\ : std_logic;
SIGNAL \clock_div_8|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_8|count[18]~66\ : std_logic;
SIGNAL \clock_div_8|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_8|count[19]~68\ : std_logic;
SIGNAL \clock_div_8|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_8|count[20]~70\ : std_logic;
SIGNAL \clock_div_8|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_8|count[21]~72\ : std_logic;
SIGNAL \clock_div_8|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_8|count[22]~74\ : std_logic;
SIGNAL \clock_div_8|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_8|count[23]~76\ : std_logic;
SIGNAL \clock_div_8|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_8|count[24]~78\ : std_logic;
SIGNAL \clock_div_8|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_8|count[25]~80\ : std_logic;
SIGNAL \clock_div_8|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_8|count[26]~82\ : std_logic;
SIGNAL \clock_div_8|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_8|count[27]~84\ : std_logic;
SIGNAL \clock_div_8|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_8|count[28]~86\ : std_logic;
SIGNAL \clock_div_8|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_8|count[29]~88\ : std_logic;
SIGNAL \clock_div_8|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_8|count[30]~90\ : std_logic;
SIGNAL \clock_div_8|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_8|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_8|count[1]~32\ : std_logic;
SIGNAL \clock_div_8|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_8|count[2]~34\ : std_logic;
SIGNAL \clock_div_8|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_8|count[3]~36\ : std_logic;
SIGNAL \clock_div_8|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_8|count[4]~38\ : std_logic;
SIGNAL \clock_div_8|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_8|count[5]~40\ : std_logic;
SIGNAL \clock_div_8|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_8|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_8|output~0_combout\ : std_logic;
SIGNAL \clock_div_8|output~1_combout\ : std_logic;
SIGNAL \clock_div_2|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_2|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_2|count[1]~32\ : std_logic;
SIGNAL \clock_div_2|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_2|count[2]~34\ : std_logic;
SIGNAL \clock_div_2|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_2|count[3]~36\ : std_logic;
SIGNAL \clock_div_2|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_2|count[4]~38\ : std_logic;
SIGNAL \clock_div_2|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_2|count[5]~40\ : std_logic;
SIGNAL \clock_div_2|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_2|count[6]~42\ : std_logic;
SIGNAL \clock_div_2|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_2|count[7]~44\ : std_logic;
SIGNAL \clock_div_2|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_2|count[8]~46\ : std_logic;
SIGNAL \clock_div_2|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_2|count[9]~48\ : std_logic;
SIGNAL \clock_div_2|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_2|count[10]~50\ : std_logic;
SIGNAL \clock_div_2|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_2|count[11]~52\ : std_logic;
SIGNAL \clock_div_2|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_2|count[12]~54\ : std_logic;
SIGNAL \clock_div_2|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_2|count[13]~56\ : std_logic;
SIGNAL \clock_div_2|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_2|count[14]~58\ : std_logic;
SIGNAL \clock_div_2|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_2|count[15]~60\ : std_logic;
SIGNAL \clock_div_2|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_2|count[16]~62\ : std_logic;
SIGNAL \clock_div_2|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_2|count[17]~64\ : std_logic;
SIGNAL \clock_div_2|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_2|count[18]~66\ : std_logic;
SIGNAL \clock_div_2|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_2|count[19]~68\ : std_logic;
SIGNAL \clock_div_2|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_2|count[20]~70\ : std_logic;
SIGNAL \clock_div_2|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_2|count[21]~72\ : std_logic;
SIGNAL \clock_div_2|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_2|count[22]~74\ : std_logic;
SIGNAL \clock_div_2|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_2|count[23]~76\ : std_logic;
SIGNAL \clock_div_2|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_2|count[24]~78\ : std_logic;
SIGNAL \clock_div_2|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_2|count[25]~80\ : std_logic;
SIGNAL \clock_div_2|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_2|count[26]~82\ : std_logic;
SIGNAL \clock_div_2|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_2|count[27]~84\ : std_logic;
SIGNAL \clock_div_2|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_2|count[28]~86\ : std_logic;
SIGNAL \clock_div_2|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_2|count[29]~88\ : std_logic;
SIGNAL \clock_div_2|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_2|count[30]~90\ : std_logic;
SIGNAL \clock_div_2|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_2|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_2|output~0_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \clock_div_7|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_7|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_7|count[1]~32\ : std_logic;
SIGNAL \clock_div_7|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_7|count[2]~34\ : std_logic;
SIGNAL \clock_div_7|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_7|count[3]~36\ : std_logic;
SIGNAL \clock_div_7|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_7|count[4]~38\ : std_logic;
SIGNAL \clock_div_7|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_7|count[5]~40\ : std_logic;
SIGNAL \clock_div_7|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_7|count[6]~42\ : std_logic;
SIGNAL \clock_div_7|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_7|count[7]~44\ : std_logic;
SIGNAL \clock_div_7|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_7|count[8]~46\ : std_logic;
SIGNAL \clock_div_7|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_7|count[9]~48\ : std_logic;
SIGNAL \clock_div_7|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_7|count[10]~50\ : std_logic;
SIGNAL \clock_div_7|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_7|count[11]~52\ : std_logic;
SIGNAL \clock_div_7|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_7|count[12]~54\ : std_logic;
SIGNAL \clock_div_7|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_7|count[13]~56\ : std_logic;
SIGNAL \clock_div_7|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_7|count[14]~58\ : std_logic;
SIGNAL \clock_div_7|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_7|count[15]~60\ : std_logic;
SIGNAL \clock_div_7|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_7|count[16]~62\ : std_logic;
SIGNAL \clock_div_7|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_7|count[17]~64\ : std_logic;
SIGNAL \clock_div_7|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_7|count[18]~66\ : std_logic;
SIGNAL \clock_div_7|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_7|count[19]~68\ : std_logic;
SIGNAL \clock_div_7|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_7|count[20]~70\ : std_logic;
SIGNAL \clock_div_7|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_7|count[21]~72\ : std_logic;
SIGNAL \clock_div_7|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_7|count[22]~74\ : std_logic;
SIGNAL \clock_div_7|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_7|count[23]~76\ : std_logic;
SIGNAL \clock_div_7|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_7|count[24]~78\ : std_logic;
SIGNAL \clock_div_7|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_7|count[25]~80\ : std_logic;
SIGNAL \clock_div_7|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_7|count[26]~82\ : std_logic;
SIGNAL \clock_div_7|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_7|count[27]~84\ : std_logic;
SIGNAL \clock_div_7|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_7|count[28]~86\ : std_logic;
SIGNAL \clock_div_7|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_7|count[29]~88\ : std_logic;
SIGNAL \clock_div_7|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_7|count[30]~90\ : std_logic;
SIGNAL \clock_div_7|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_7|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_7|output~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \leds~2_combout\ : std_logic;
SIGNAL \clock_div_3|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_3|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_3|count[1]~32\ : std_logic;
SIGNAL \clock_div_3|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_3|count[2]~34\ : std_logic;
SIGNAL \clock_div_3|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_3|count[3]~36\ : std_logic;
SIGNAL \clock_div_3|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_3|count[4]~38\ : std_logic;
SIGNAL \clock_div_3|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_3|count[5]~40\ : std_logic;
SIGNAL \clock_div_3|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_3|count[6]~42\ : std_logic;
SIGNAL \clock_div_3|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_3|count[7]~44\ : std_logic;
SIGNAL \clock_div_3|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_3|count[8]~46\ : std_logic;
SIGNAL \clock_div_3|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_3|count[9]~48\ : std_logic;
SIGNAL \clock_div_3|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_3|count[10]~50\ : std_logic;
SIGNAL \clock_div_3|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_3|count[11]~52\ : std_logic;
SIGNAL \clock_div_3|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_3|count[12]~54\ : std_logic;
SIGNAL \clock_div_3|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_3|count[13]~56\ : std_logic;
SIGNAL \clock_div_3|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_3|count[14]~58\ : std_logic;
SIGNAL \clock_div_3|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_3|count[15]~60\ : std_logic;
SIGNAL \clock_div_3|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_3|count[16]~62\ : std_logic;
SIGNAL \clock_div_3|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_3|count[17]~64\ : std_logic;
SIGNAL \clock_div_3|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_3|count[18]~66\ : std_logic;
SIGNAL \clock_div_3|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_3|count[19]~68\ : std_logic;
SIGNAL \clock_div_3|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_3|count[20]~70\ : std_logic;
SIGNAL \clock_div_3|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_3|count[21]~72\ : std_logic;
SIGNAL \clock_div_3|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_3|count[22]~74\ : std_logic;
SIGNAL \clock_div_3|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_3|count[23]~76\ : std_logic;
SIGNAL \clock_div_3|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_3|count[24]~78\ : std_logic;
SIGNAL \clock_div_3|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_3|count[25]~80\ : std_logic;
SIGNAL \clock_div_3|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_3|count[26]~82\ : std_logic;
SIGNAL \clock_div_3|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_3|count[27]~84\ : std_logic;
SIGNAL \clock_div_3|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_3|count[28]~86\ : std_logic;
SIGNAL \clock_div_3|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_3|count[29]~88\ : std_logic;
SIGNAL \clock_div_3|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_3|count[30]~90\ : std_logic;
SIGNAL \clock_div_3|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_3|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_3|output~0_combout\ : std_logic;
SIGNAL \clock_div_3|output~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \leds~3_combout\ : std_logic;
SIGNAL \leds~4_combout\ : std_logic;
SIGNAL \clock_div_4|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_4|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_4|count[1]~32\ : std_logic;
SIGNAL \clock_div_4|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_4|count[2]~34\ : std_logic;
SIGNAL \clock_div_4|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_4|count[3]~36\ : std_logic;
SIGNAL \clock_div_4|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_4|count[4]~38\ : std_logic;
SIGNAL \clock_div_4|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_4|count[5]~40\ : std_logic;
SIGNAL \clock_div_4|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_4|count[6]~42\ : std_logic;
SIGNAL \clock_div_4|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_4|count[7]~44\ : std_logic;
SIGNAL \clock_div_4|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_4|count[8]~46\ : std_logic;
SIGNAL \clock_div_4|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_4|count[9]~48\ : std_logic;
SIGNAL \clock_div_4|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_4|count[10]~50\ : std_logic;
SIGNAL \clock_div_4|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_4|count[11]~52\ : std_logic;
SIGNAL \clock_div_4|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_4|count[12]~54\ : std_logic;
SIGNAL \clock_div_4|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_4|count[13]~56\ : std_logic;
SIGNAL \clock_div_4|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_4|count[14]~58\ : std_logic;
SIGNAL \clock_div_4|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_4|count[15]~60\ : std_logic;
SIGNAL \clock_div_4|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_4|count[16]~62\ : std_logic;
SIGNAL \clock_div_4|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_4|count[17]~64\ : std_logic;
SIGNAL \clock_div_4|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_4|count[18]~66\ : std_logic;
SIGNAL \clock_div_4|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_4|count[19]~68\ : std_logic;
SIGNAL \clock_div_4|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_4|count[20]~70\ : std_logic;
SIGNAL \clock_div_4|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_4|count[21]~72\ : std_logic;
SIGNAL \clock_div_4|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_4|count[22]~74\ : std_logic;
SIGNAL \clock_div_4|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_4|count[23]~76\ : std_logic;
SIGNAL \clock_div_4|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_4|count[24]~78\ : std_logic;
SIGNAL \clock_div_4|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_4|count[25]~80\ : std_logic;
SIGNAL \clock_div_4|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_4|count[26]~82\ : std_logic;
SIGNAL \clock_div_4|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_4|count[27]~84\ : std_logic;
SIGNAL \clock_div_4|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_4|count[28]~86\ : std_logic;
SIGNAL \clock_div_4|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_4|count[29]~88\ : std_logic;
SIGNAL \clock_div_4|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_4|count[30]~90\ : std_logic;
SIGNAL \clock_div_4|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_4|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_4|output~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \leds~5_combout\ : std_logic;
SIGNAL \leds~6_combout\ : std_logic;
SIGNAL \clock_div_5|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_5|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_5|count[1]~32\ : std_logic;
SIGNAL \clock_div_5|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_5|count[2]~34\ : std_logic;
SIGNAL \clock_div_5|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_5|count[3]~36\ : std_logic;
SIGNAL \clock_div_5|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_5|count[4]~38\ : std_logic;
SIGNAL \clock_div_5|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_5|count[5]~40\ : std_logic;
SIGNAL \clock_div_5|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_5|count[6]~42\ : std_logic;
SIGNAL \clock_div_5|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_5|count[7]~44\ : std_logic;
SIGNAL \clock_div_5|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_5|count[8]~46\ : std_logic;
SIGNAL \clock_div_5|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_5|count[9]~48\ : std_logic;
SIGNAL \clock_div_5|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_5|count[10]~50\ : std_logic;
SIGNAL \clock_div_5|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_5|count[11]~52\ : std_logic;
SIGNAL \clock_div_5|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_5|count[12]~54\ : std_logic;
SIGNAL \clock_div_5|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_5|count[13]~56\ : std_logic;
SIGNAL \clock_div_5|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_5|count[14]~58\ : std_logic;
SIGNAL \clock_div_5|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_5|count[15]~60\ : std_logic;
SIGNAL \clock_div_5|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_5|count[16]~62\ : std_logic;
SIGNAL \clock_div_5|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_5|count[17]~64\ : std_logic;
SIGNAL \clock_div_5|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_5|count[18]~66\ : std_logic;
SIGNAL \clock_div_5|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_5|count[19]~68\ : std_logic;
SIGNAL \clock_div_5|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_5|count[20]~70\ : std_logic;
SIGNAL \clock_div_5|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_5|count[21]~72\ : std_logic;
SIGNAL \clock_div_5|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_5|count[22]~74\ : std_logic;
SIGNAL \clock_div_5|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_5|count[23]~76\ : std_logic;
SIGNAL \clock_div_5|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_5|count[24]~78\ : std_logic;
SIGNAL \clock_div_5|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_5|count[25]~80\ : std_logic;
SIGNAL \clock_div_5|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_5|count[26]~82\ : std_logic;
SIGNAL \clock_div_5|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_5|count[27]~84\ : std_logic;
SIGNAL \clock_div_5|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_5|count[28]~86\ : std_logic;
SIGNAL \clock_div_5|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_5|count[29]~88\ : std_logic;
SIGNAL \clock_div_5|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_5|count[30]~90\ : std_logic;
SIGNAL \clock_div_5|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_5|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_5|output~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \leds~7_combout\ : std_logic;
SIGNAL \clock_div_6|count[0]~93_combout\ : std_logic;
SIGNAL \clock_div_6|count[1]~31_combout\ : std_logic;
SIGNAL \clock_div_6|count[1]~32\ : std_logic;
SIGNAL \clock_div_6|count[2]~33_combout\ : std_logic;
SIGNAL \clock_div_6|count[2]~34\ : std_logic;
SIGNAL \clock_div_6|count[3]~35_combout\ : std_logic;
SIGNAL \clock_div_6|count[3]~36\ : std_logic;
SIGNAL \clock_div_6|count[4]~37_combout\ : std_logic;
SIGNAL \clock_div_6|count[4]~38\ : std_logic;
SIGNAL \clock_div_6|count[5]~39_combout\ : std_logic;
SIGNAL \clock_div_6|count[5]~40\ : std_logic;
SIGNAL \clock_div_6|count[6]~41_combout\ : std_logic;
SIGNAL \clock_div_6|count[6]~42\ : std_logic;
SIGNAL \clock_div_6|count[7]~43_combout\ : std_logic;
SIGNAL \clock_div_6|count[7]~44\ : std_logic;
SIGNAL \clock_div_6|count[8]~45_combout\ : std_logic;
SIGNAL \clock_div_6|count[8]~46\ : std_logic;
SIGNAL \clock_div_6|count[9]~47_combout\ : std_logic;
SIGNAL \clock_div_6|count[9]~48\ : std_logic;
SIGNAL \clock_div_6|count[10]~49_combout\ : std_logic;
SIGNAL \clock_div_6|count[10]~50\ : std_logic;
SIGNAL \clock_div_6|count[11]~51_combout\ : std_logic;
SIGNAL \clock_div_6|count[11]~52\ : std_logic;
SIGNAL \clock_div_6|count[12]~53_combout\ : std_logic;
SIGNAL \clock_div_6|count[12]~54\ : std_logic;
SIGNAL \clock_div_6|count[13]~55_combout\ : std_logic;
SIGNAL \clock_div_6|count[13]~56\ : std_logic;
SIGNAL \clock_div_6|count[14]~57_combout\ : std_logic;
SIGNAL \clock_div_6|count[14]~58\ : std_logic;
SIGNAL \clock_div_6|count[15]~59_combout\ : std_logic;
SIGNAL \clock_div_6|count[15]~60\ : std_logic;
SIGNAL \clock_div_6|count[16]~61_combout\ : std_logic;
SIGNAL \clock_div_6|count[16]~62\ : std_logic;
SIGNAL \clock_div_6|count[17]~63_combout\ : std_logic;
SIGNAL \clock_div_6|count[17]~64\ : std_logic;
SIGNAL \clock_div_6|count[18]~65_combout\ : std_logic;
SIGNAL \clock_div_6|count[18]~66\ : std_logic;
SIGNAL \clock_div_6|count[19]~67_combout\ : std_logic;
SIGNAL \clock_div_6|count[19]~68\ : std_logic;
SIGNAL \clock_div_6|count[20]~69_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_6|count[20]~70\ : std_logic;
SIGNAL \clock_div_6|count[21]~71_combout\ : std_logic;
SIGNAL \clock_div_6|count[21]~72\ : std_logic;
SIGNAL \clock_div_6|count[22]~73_combout\ : std_logic;
SIGNAL \clock_div_6|count[22]~74\ : std_logic;
SIGNAL \clock_div_6|count[23]~75_combout\ : std_logic;
SIGNAL \clock_div_6|count[23]~76\ : std_logic;
SIGNAL \clock_div_6|count[24]~77_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_6|count[24]~78\ : std_logic;
SIGNAL \clock_div_6|count[25]~79_combout\ : std_logic;
SIGNAL \clock_div_6|count[25]~80\ : std_logic;
SIGNAL \clock_div_6|count[26]~81_combout\ : std_logic;
SIGNAL \clock_div_6|count[26]~82\ : std_logic;
SIGNAL \clock_div_6|count[27]~83_combout\ : std_logic;
SIGNAL \clock_div_6|count[27]~84\ : std_logic;
SIGNAL \clock_div_6|count[28]~85_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_6|count[28]~86\ : std_logic;
SIGNAL \clock_div_6|count[29]~87_combout\ : std_logic;
SIGNAL \clock_div_6|count[29]~88\ : std_logic;
SIGNAL \clock_div_6|count[30]~89_combout\ : std_logic;
SIGNAL \clock_div_6|count[30]~90\ : std_logic;
SIGNAL \clock_div_6|count[31]~91_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~8_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~9_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_6|Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_6|output~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \leds~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \leds~9_combout\ : std_logic;
SIGNAL \leds~10_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \leds~11_combout\ : std_logic;
SIGNAL \clock_1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_8|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_7|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_3|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_4|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_5|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_6|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_1|mode\ : std_logic_vector(31 DOWNTO 0);
SIGNAL reverse_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_div_3|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_6|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_5|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_4|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_8|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_2|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_1|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_div_7|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \clock_1|ALT_INV_Equal3~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_swt <= swt;
ww_clk1 <= clk1;
ww_clk2 <= clk2;
ww_reset <= reset;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);

\clk2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk2~input_o\);
\clock_div_3|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_3|Equal0~10_combout\;
\clock_div_6|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_6|Equal0~10_combout\;
\clock_div_5|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_5|Equal0~10_combout\;
\clock_div_4|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_4|Equal0~10_combout\;
\clock_div_8|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_8|Equal0~10_combout\;
\clock_div_2|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_2|Equal0~10_combout\;
\clock_div_1|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_1|Equal0~10_combout\;
\clock_div_7|ALT_INV_Equal0~10_combout\ <= NOT \clock_div_7|Equal0~10_combout\;
\clock_1|ALT_INV_Equal3~2_combout\ <= NOT \clock_1|Equal3~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N12
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
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~1_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~2_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~4_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~5_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~7_combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~8_combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~10_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~11_combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\swt~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_swt,
	o => \swt~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\clk2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk2,
	o => \clk2~input_o\);

-- Location: CLKCTRL_G4
\clk2~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk2~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y2_N14
\clock_div_1|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[0]~93_combout\ = !\clock_div_1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_1|count\(0),
	combout => \clock_div_1|count[0]~93_combout\);

-- Location: FF_X20_Y2_N15
\clock_div_1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[0]~93_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(0));

-- Location: LCCOMB_X19_Y3_N2
\clock_div_1|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[1]~31_combout\ = (\clock_div_1|count\(1) & (\clock_div_1|count\(0) $ (GND))) # (!\clock_div_1|count\(1) & (!\clock_div_1|count\(0) & VCC))
-- \clock_div_1|count[1]~32\ = CARRY((\clock_div_1|count\(1) & !\clock_div_1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(1),
	datab => \clock_div_1|count\(0),
	datad => VCC,
	combout => \clock_div_1|count[1]~31_combout\,
	cout => \clock_div_1|count[1]~32\);

-- Location: FF_X19_Y3_N3
\clock_div_1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[1]~31_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(1));

-- Location: LCCOMB_X19_Y3_N4
\clock_div_1|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[2]~33_combout\ = (\clock_div_1|count\(2) & (!\clock_div_1|count[1]~32\)) # (!\clock_div_1|count\(2) & ((\clock_div_1|count[1]~32\) # (GND)))
-- \clock_div_1|count[2]~34\ = CARRY((!\clock_div_1|count[1]~32\) # (!\clock_div_1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(2),
	datad => VCC,
	cin => \clock_div_1|count[1]~32\,
	combout => \clock_div_1|count[2]~33_combout\,
	cout => \clock_div_1|count[2]~34\);

-- Location: FF_X19_Y3_N5
\clock_div_1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[2]~33_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(2));

-- Location: LCCOMB_X19_Y3_N6
\clock_div_1|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[3]~35_combout\ = (\clock_div_1|count\(3) & (\clock_div_1|count[2]~34\ $ (GND))) # (!\clock_div_1|count\(3) & (!\clock_div_1|count[2]~34\ & VCC))
-- \clock_div_1|count[3]~36\ = CARRY((\clock_div_1|count\(3) & !\clock_div_1|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(3),
	datad => VCC,
	cin => \clock_div_1|count[2]~34\,
	combout => \clock_div_1|count[3]~35_combout\,
	cout => \clock_div_1|count[3]~36\);

-- Location: FF_X19_Y3_N7
\clock_div_1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[3]~35_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(3));

-- Location: LCCOMB_X19_Y3_N8
\clock_div_1|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[4]~37_combout\ = (\clock_div_1|count\(4) & (!\clock_div_1|count[3]~36\)) # (!\clock_div_1|count\(4) & ((\clock_div_1|count[3]~36\) # (GND)))
-- \clock_div_1|count[4]~38\ = CARRY((!\clock_div_1|count[3]~36\) # (!\clock_div_1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(4),
	datad => VCC,
	cin => \clock_div_1|count[3]~36\,
	combout => \clock_div_1|count[4]~37_combout\,
	cout => \clock_div_1|count[4]~38\);

-- Location: FF_X19_Y3_N9
\clock_div_1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[4]~37_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(4));

-- Location: LCCOMB_X19_Y3_N10
\clock_div_1|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[5]~39_combout\ = (\clock_div_1|count\(5) & (\clock_div_1|count[4]~38\ $ (GND))) # (!\clock_div_1|count\(5) & (!\clock_div_1|count[4]~38\ & VCC))
-- \clock_div_1|count[5]~40\ = CARRY((\clock_div_1|count\(5) & !\clock_div_1|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(5),
	datad => VCC,
	cin => \clock_div_1|count[4]~38\,
	combout => \clock_div_1|count[5]~39_combout\,
	cout => \clock_div_1|count[5]~40\);

-- Location: FF_X19_Y3_N11
\clock_div_1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[5]~39_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(5));

-- Location: LCCOMB_X19_Y3_N12
\clock_div_1|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[6]~41_combout\ = (\clock_div_1|count\(6) & (!\clock_div_1|count[5]~40\)) # (!\clock_div_1|count\(6) & ((\clock_div_1|count[5]~40\) # (GND)))
-- \clock_div_1|count[6]~42\ = CARRY((!\clock_div_1|count[5]~40\) # (!\clock_div_1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(6),
	datad => VCC,
	cin => \clock_div_1|count[5]~40\,
	combout => \clock_div_1|count[6]~41_combout\,
	cout => \clock_div_1|count[6]~42\);

-- Location: FF_X19_Y3_N13
\clock_div_1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[6]~41_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(6));

-- Location: LCCOMB_X19_Y3_N14
\clock_div_1|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[7]~43_combout\ = (\clock_div_1|count\(7) & (\clock_div_1|count[6]~42\ $ (GND))) # (!\clock_div_1|count\(7) & (!\clock_div_1|count[6]~42\ & VCC))
-- \clock_div_1|count[7]~44\ = CARRY((\clock_div_1|count\(7) & !\clock_div_1|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(7),
	datad => VCC,
	cin => \clock_div_1|count[6]~42\,
	combout => \clock_div_1|count[7]~43_combout\,
	cout => \clock_div_1|count[7]~44\);

-- Location: FF_X19_Y3_N15
\clock_div_1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[7]~43_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(7));

-- Location: LCCOMB_X19_Y3_N16
\clock_div_1|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[8]~45_combout\ = (\clock_div_1|count\(8) & (!\clock_div_1|count[7]~44\)) # (!\clock_div_1|count\(8) & ((\clock_div_1|count[7]~44\) # (GND)))
-- \clock_div_1|count[8]~46\ = CARRY((!\clock_div_1|count[7]~44\) # (!\clock_div_1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(8),
	datad => VCC,
	cin => \clock_div_1|count[7]~44\,
	combout => \clock_div_1|count[8]~45_combout\,
	cout => \clock_div_1|count[8]~46\);

-- Location: FF_X19_Y3_N17
\clock_div_1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[8]~45_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(8));

-- Location: LCCOMB_X19_Y3_N18
\clock_div_1|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[9]~47_combout\ = (\clock_div_1|count\(9) & (\clock_div_1|count[8]~46\ $ (GND))) # (!\clock_div_1|count\(9) & (!\clock_div_1|count[8]~46\ & VCC))
-- \clock_div_1|count[9]~48\ = CARRY((\clock_div_1|count\(9) & !\clock_div_1|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(9),
	datad => VCC,
	cin => \clock_div_1|count[8]~46\,
	combout => \clock_div_1|count[9]~47_combout\,
	cout => \clock_div_1|count[9]~48\);

-- Location: FF_X19_Y3_N19
\clock_div_1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[9]~47_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(9));

-- Location: LCCOMB_X19_Y3_N20
\clock_div_1|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[10]~49_combout\ = (\clock_div_1|count\(10) & (!\clock_div_1|count[9]~48\)) # (!\clock_div_1|count\(10) & ((\clock_div_1|count[9]~48\) # (GND)))
-- \clock_div_1|count[10]~50\ = CARRY((!\clock_div_1|count[9]~48\) # (!\clock_div_1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(10),
	datad => VCC,
	cin => \clock_div_1|count[9]~48\,
	combout => \clock_div_1|count[10]~49_combout\,
	cout => \clock_div_1|count[10]~50\);

-- Location: LCCOMB_X20_Y2_N20
\clock_div_1|count[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[10]~feeder_combout\ = \clock_div_1|count[10]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_div_1|count[10]~49_combout\,
	combout => \clock_div_1|count[10]~feeder_combout\);

-- Location: FF_X20_Y2_N21
\clock_div_1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[10]~feeder_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(10));

-- Location: LCCOMB_X19_Y3_N22
\clock_div_1|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[11]~51_combout\ = (\clock_div_1|count\(11) & (\clock_div_1|count[10]~50\ $ (GND))) # (!\clock_div_1|count\(11) & (!\clock_div_1|count[10]~50\ & VCC))
-- \clock_div_1|count[11]~52\ = CARRY((\clock_div_1|count\(11) & !\clock_div_1|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(11),
	datad => VCC,
	cin => \clock_div_1|count[10]~50\,
	combout => \clock_div_1|count[11]~51_combout\,
	cout => \clock_div_1|count[11]~52\);

-- Location: LCCOMB_X20_Y2_N22
\clock_div_1|count[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[11]~feeder_combout\ = \clock_div_1|count[11]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_div_1|count[11]~51_combout\,
	combout => \clock_div_1|count[11]~feeder_combout\);

-- Location: FF_X20_Y2_N23
\clock_div_1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[11]~feeder_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(11));

-- Location: LCCOMB_X19_Y3_N24
\clock_div_1|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[12]~53_combout\ = (\clock_div_1|count\(12) & (!\clock_div_1|count[11]~52\)) # (!\clock_div_1|count\(12) & ((\clock_div_1|count[11]~52\) # (GND)))
-- \clock_div_1|count[12]~54\ = CARRY((!\clock_div_1|count[11]~52\) # (!\clock_div_1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(12),
	datad => VCC,
	cin => \clock_div_1|count[11]~52\,
	combout => \clock_div_1|count[12]~53_combout\,
	cout => \clock_div_1|count[12]~54\);

-- Location: FF_X19_Y3_N25
\clock_div_1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[12]~53_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(12));

-- Location: LCCOMB_X19_Y3_N26
\clock_div_1|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[13]~55_combout\ = (\clock_div_1|count\(13) & (\clock_div_1|count[12]~54\ $ (GND))) # (!\clock_div_1|count\(13) & (!\clock_div_1|count[12]~54\ & VCC))
-- \clock_div_1|count[13]~56\ = CARRY((\clock_div_1|count\(13) & !\clock_div_1|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(13),
	datad => VCC,
	cin => \clock_div_1|count[12]~54\,
	combout => \clock_div_1|count[13]~55_combout\,
	cout => \clock_div_1|count[13]~56\);

-- Location: FF_X19_Y3_N27
\clock_div_1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[13]~55_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(13));

-- Location: LCCOMB_X19_Y3_N28
\clock_div_1|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[14]~57_combout\ = (\clock_div_1|count\(14) & (!\clock_div_1|count[13]~56\)) # (!\clock_div_1|count\(14) & ((\clock_div_1|count[13]~56\) # (GND)))
-- \clock_div_1|count[14]~58\ = CARRY((!\clock_div_1|count[13]~56\) # (!\clock_div_1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(14),
	datad => VCC,
	cin => \clock_div_1|count[13]~56\,
	combout => \clock_div_1|count[14]~57_combout\,
	cout => \clock_div_1|count[14]~58\);

-- Location: FF_X20_Y2_N9
\clock_div_1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	asdata => \clock_div_1|count[14]~57_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(14));

-- Location: LCCOMB_X19_Y3_N30
\clock_div_1|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[15]~59_combout\ = (\clock_div_1|count\(15) & (\clock_div_1|count[14]~58\ $ (GND))) # (!\clock_div_1|count\(15) & (!\clock_div_1|count[14]~58\ & VCC))
-- \clock_div_1|count[15]~60\ = CARRY((\clock_div_1|count\(15) & !\clock_div_1|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(15),
	datad => VCC,
	cin => \clock_div_1|count[14]~58\,
	combout => \clock_div_1|count[15]~59_combout\,
	cout => \clock_div_1|count[15]~60\);

-- Location: FF_X19_Y3_N31
\clock_div_1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[15]~59_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(15));

-- Location: LCCOMB_X19_Y2_N0
\clock_div_1|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[16]~61_combout\ = (\clock_div_1|count\(16) & (!\clock_div_1|count[15]~60\)) # (!\clock_div_1|count\(16) & ((\clock_div_1|count[15]~60\) # (GND)))
-- \clock_div_1|count[16]~62\ = CARRY((!\clock_div_1|count[15]~60\) # (!\clock_div_1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(16),
	datad => VCC,
	cin => \clock_div_1|count[15]~60\,
	combout => \clock_div_1|count[16]~61_combout\,
	cout => \clock_div_1|count[16]~62\);

-- Location: FF_X19_Y2_N1
\clock_div_1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[16]~61_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(16));

-- Location: LCCOMB_X19_Y2_N2
\clock_div_1|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[17]~63_combout\ = (\clock_div_1|count\(17) & (\clock_div_1|count[16]~62\ $ (GND))) # (!\clock_div_1|count\(17) & (!\clock_div_1|count[16]~62\ & VCC))
-- \clock_div_1|count[17]~64\ = CARRY((\clock_div_1|count\(17) & !\clock_div_1|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(17),
	datad => VCC,
	cin => \clock_div_1|count[16]~62\,
	combout => \clock_div_1|count[17]~63_combout\,
	cout => \clock_div_1|count[17]~64\);

-- Location: FF_X19_Y2_N3
\clock_div_1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[17]~63_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(17));

-- Location: LCCOMB_X19_Y2_N4
\clock_div_1|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[18]~65_combout\ = (\clock_div_1|count\(18) & (!\clock_div_1|count[17]~64\)) # (!\clock_div_1|count\(18) & ((\clock_div_1|count[17]~64\) # (GND)))
-- \clock_div_1|count[18]~66\ = CARRY((!\clock_div_1|count[17]~64\) # (!\clock_div_1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(18),
	datad => VCC,
	cin => \clock_div_1|count[17]~64\,
	combout => \clock_div_1|count[18]~65_combout\,
	cout => \clock_div_1|count[18]~66\);

-- Location: FF_X19_Y2_N5
\clock_div_1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[18]~65_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(18));

-- Location: LCCOMB_X19_Y2_N6
\clock_div_1|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[19]~67_combout\ = (\clock_div_1|count\(19) & (\clock_div_1|count[18]~66\ $ (GND))) # (!\clock_div_1|count\(19) & (!\clock_div_1|count[18]~66\ & VCC))
-- \clock_div_1|count[19]~68\ = CARRY((\clock_div_1|count\(19) & !\clock_div_1|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(19),
	datad => VCC,
	cin => \clock_div_1|count[18]~66\,
	combout => \clock_div_1|count[19]~67_combout\,
	cout => \clock_div_1|count[19]~68\);

-- Location: FF_X19_Y2_N7
\clock_div_1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[19]~67_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(19));

-- Location: LCCOMB_X19_Y2_N8
\clock_div_1|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[20]~69_combout\ = (\clock_div_1|count\(20) & (!\clock_div_1|count[19]~68\)) # (!\clock_div_1|count\(20) & ((\clock_div_1|count[19]~68\) # (GND)))
-- \clock_div_1|count[20]~70\ = CARRY((!\clock_div_1|count[19]~68\) # (!\clock_div_1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(20),
	datad => VCC,
	cin => \clock_div_1|count[19]~68\,
	combout => \clock_div_1|count[20]~69_combout\,
	cout => \clock_div_1|count[20]~70\);

-- Location: FF_X19_Y2_N9
\clock_div_1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[20]~69_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(20));

-- Location: LCCOMB_X20_Y2_N30
\clock_div_1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~5_combout\ = (\clock_div_1|count\(20) & (!\clock_div_1|count\(18) & (\clock_div_1|count\(19) & !\clock_div_1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(20),
	datab => \clock_div_1|count\(18),
	datac => \clock_div_1|count\(19),
	datad => \clock_div_1|count\(17),
	combout => \clock_div_1|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y2_N10
\clock_div_1|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[21]~71_combout\ = (\clock_div_1|count\(21) & (\clock_div_1|count[20]~70\ $ (GND))) # (!\clock_div_1|count\(21) & (!\clock_div_1|count[20]~70\ & VCC))
-- \clock_div_1|count[21]~72\ = CARRY((\clock_div_1|count\(21) & !\clock_div_1|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(21),
	datad => VCC,
	cin => \clock_div_1|count[20]~70\,
	combout => \clock_div_1|count[21]~71_combout\,
	cout => \clock_div_1|count[21]~72\);

-- Location: FF_X19_Y2_N11
\clock_div_1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[21]~71_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(21));

-- Location: LCCOMB_X19_Y2_N12
\clock_div_1|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[22]~73_combout\ = (\clock_div_1|count\(22) & (!\clock_div_1|count[21]~72\)) # (!\clock_div_1|count\(22) & ((\clock_div_1|count[21]~72\) # (GND)))
-- \clock_div_1|count[22]~74\ = CARRY((!\clock_div_1|count[21]~72\) # (!\clock_div_1|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(22),
	datad => VCC,
	cin => \clock_div_1|count[21]~72\,
	combout => \clock_div_1|count[22]~73_combout\,
	cout => \clock_div_1|count[22]~74\);

-- Location: FF_X19_Y2_N13
\clock_div_1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[22]~73_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(22));

-- Location: LCCOMB_X19_Y2_N14
\clock_div_1|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[23]~75_combout\ = (\clock_div_1|count\(23) & (\clock_div_1|count[22]~74\ $ (GND))) # (!\clock_div_1|count\(23) & (!\clock_div_1|count[22]~74\ & VCC))
-- \clock_div_1|count[23]~76\ = CARRY((\clock_div_1|count\(23) & !\clock_div_1|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(23),
	datad => VCC,
	cin => \clock_div_1|count[22]~74\,
	combout => \clock_div_1|count[23]~75_combout\,
	cout => \clock_div_1|count[23]~76\);

-- Location: FF_X19_Y2_N15
\clock_div_1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[23]~75_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(23));

-- Location: LCCOMB_X19_Y2_N16
\clock_div_1|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[24]~77_combout\ = (\clock_div_1|count\(24) & (!\clock_div_1|count[23]~76\)) # (!\clock_div_1|count\(24) & ((\clock_div_1|count[23]~76\) # (GND)))
-- \clock_div_1|count[24]~78\ = CARRY((!\clock_div_1|count[23]~76\) # (!\clock_div_1|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(24),
	datad => VCC,
	cin => \clock_div_1|count[23]~76\,
	combout => \clock_div_1|count[24]~77_combout\,
	cout => \clock_div_1|count[24]~78\);

-- Location: FF_X19_Y2_N17
\clock_div_1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[24]~77_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(24));

-- Location: LCCOMB_X20_Y2_N24
\clock_div_1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~6_combout\ = (!\clock_div_1|count\(22) & (!\clock_div_1|count\(21) & (!\clock_div_1|count\(24) & \clock_div_1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(22),
	datab => \clock_div_1|count\(21),
	datac => \clock_div_1|count\(24),
	datad => \clock_div_1|count\(23),
	combout => \clock_div_1|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y2_N6
\clock_div_1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~7_combout\ = (\clock_div_1|Equal0~5_combout\ & \clock_div_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_1|Equal0~5_combout\,
	datad => \clock_div_1|Equal0~6_combout\,
	combout => \clock_div_1|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y2_N18
\clock_div_1|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[25]~79_combout\ = (\clock_div_1|count\(25) & (\clock_div_1|count[24]~78\ $ (GND))) # (!\clock_div_1|count\(25) & (!\clock_div_1|count[24]~78\ & VCC))
-- \clock_div_1|count[25]~80\ = CARRY((\clock_div_1|count\(25) & !\clock_div_1|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(25),
	datad => VCC,
	cin => \clock_div_1|count[24]~78\,
	combout => \clock_div_1|count[25]~79_combout\,
	cout => \clock_div_1|count[25]~80\);

-- Location: FF_X19_Y2_N19
\clock_div_1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[25]~79_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(25));

-- Location: LCCOMB_X19_Y2_N20
\clock_div_1|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[26]~81_combout\ = (\clock_div_1|count\(26) & (!\clock_div_1|count[25]~80\)) # (!\clock_div_1|count\(26) & ((\clock_div_1|count[25]~80\) # (GND)))
-- \clock_div_1|count[26]~82\ = CARRY((!\clock_div_1|count[25]~80\) # (!\clock_div_1|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(26),
	datad => VCC,
	cin => \clock_div_1|count[25]~80\,
	combout => \clock_div_1|count[26]~81_combout\,
	cout => \clock_div_1|count[26]~82\);

-- Location: FF_X19_Y2_N21
\clock_div_1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[26]~81_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(26));

-- Location: LCCOMB_X19_Y2_N22
\clock_div_1|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[27]~83_combout\ = (\clock_div_1|count\(27) & (\clock_div_1|count[26]~82\ $ (GND))) # (!\clock_div_1|count\(27) & (!\clock_div_1|count[26]~82\ & VCC))
-- \clock_div_1|count[27]~84\ = CARRY((\clock_div_1|count\(27) & !\clock_div_1|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(27),
	datad => VCC,
	cin => \clock_div_1|count[26]~82\,
	combout => \clock_div_1|count[27]~83_combout\,
	cout => \clock_div_1|count[27]~84\);

-- Location: FF_X19_Y2_N23
\clock_div_1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[27]~83_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(27));

-- Location: LCCOMB_X19_Y2_N24
\clock_div_1|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[28]~85_combout\ = (\clock_div_1|count\(28) & (!\clock_div_1|count[27]~84\)) # (!\clock_div_1|count\(28) & ((\clock_div_1|count[27]~84\) # (GND)))
-- \clock_div_1|count[28]~86\ = CARRY((!\clock_div_1|count[27]~84\) # (!\clock_div_1|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(28),
	datad => VCC,
	cin => \clock_div_1|count[27]~84\,
	combout => \clock_div_1|count[28]~85_combout\,
	cout => \clock_div_1|count[28]~86\);

-- Location: FF_X19_Y2_N25
\clock_div_1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[28]~85_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(28));

-- Location: LCCOMB_X20_Y2_N28
\clock_div_1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~8_combout\ = (!\clock_div_1|count\(25) & (!\clock_div_1|count\(26) & (!\clock_div_1|count\(28) & !\clock_div_1|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(25),
	datab => \clock_div_1|count\(26),
	datac => \clock_div_1|count\(28),
	datad => \clock_div_1|count\(27),
	combout => \clock_div_1|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y2_N26
\clock_div_1|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[29]~87_combout\ = (\clock_div_1|count\(29) & (\clock_div_1|count[28]~86\ $ (GND))) # (!\clock_div_1|count\(29) & (!\clock_div_1|count[28]~86\ & VCC))
-- \clock_div_1|count[29]~88\ = CARRY((\clock_div_1|count\(29) & !\clock_div_1|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(29),
	datad => VCC,
	cin => \clock_div_1|count[28]~86\,
	combout => \clock_div_1|count[29]~87_combout\,
	cout => \clock_div_1|count[29]~88\);

-- Location: FF_X19_Y2_N27
\clock_div_1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[29]~87_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(29));

-- Location: LCCOMB_X19_Y2_N28
\clock_div_1|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[30]~89_combout\ = (\clock_div_1|count\(30) & (!\clock_div_1|count[29]~88\)) # (!\clock_div_1|count\(30) & ((\clock_div_1|count[29]~88\) # (GND)))
-- \clock_div_1|count[30]~90\ = CARRY((!\clock_div_1|count[29]~88\) # (!\clock_div_1|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|count\(30),
	datad => VCC,
	cin => \clock_div_1|count[29]~88\,
	combout => \clock_div_1|count[30]~89_combout\,
	cout => \clock_div_1|count[30]~90\);

-- Location: FF_X19_Y2_N29
\clock_div_1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[30]~89_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(30));

-- Location: LCCOMB_X19_Y2_N30
\clock_div_1|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|count[31]~91_combout\ = \clock_div_1|count\(31) $ (!\clock_div_1|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(31),
	cin => \clock_div_1|count[30]~90\,
	combout => \clock_div_1|count[31]~91_combout\);

-- Location: FF_X19_Y2_N31
\clock_div_1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_1|count[31]~91_combout\,
	clrn => \clock_div_1|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_1|count\(31));

-- Location: LCCOMB_X20_Y2_N4
\clock_div_1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~9_combout\ = (!\clock_div_1|count\(31) & (\clock_div_1|count\(0) & (!\clock_div_1|count\(29) & !\clock_div_1|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(31),
	datab => \clock_div_1|count\(0),
	datac => \clock_div_1|count\(29),
	datad => \clock_div_1|count\(30),
	combout => \clock_div_1|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y2_N10
\clock_div_1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~0_combout\ = (!\clock_div_1|count\(3) & (!\clock_div_1|count\(2) & (!\clock_div_1|count\(4) & !\clock_div_1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(3),
	datab => \clock_div_1|count\(2),
	datac => \clock_div_1|count\(4),
	datad => \clock_div_1|count\(1),
	combout => \clock_div_1|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y2_N18
\clock_div_1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~3_combout\ = (\clock_div_1|count\(15) & (!\clock_div_1|count\(14) & (!\clock_div_1|count\(16) & !\clock_div_1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(15),
	datab => \clock_div_1|count\(14),
	datac => \clock_div_1|count\(16),
	datad => \clock_div_1|count\(13),
	combout => \clock_div_1|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y3_N0
\clock_div_1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~1_combout\ = (!\clock_div_1|count\(6) & (\clock_div_1|count\(7) & (!\clock_div_1|count\(5) & !\clock_div_1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(6),
	datab => \clock_div_1|count\(7),
	datac => \clock_div_1|count\(5),
	datad => \clock_div_1|count\(8),
	combout => \clock_div_1|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y2_N0
\clock_div_1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~2_combout\ = (!\clock_div_1|count\(11) & (\clock_div_1|count\(10) & (\clock_div_1|count\(12) & \clock_div_1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|count\(11),
	datab => \clock_div_1|count\(10),
	datac => \clock_div_1|count\(12),
	datad => \clock_div_1|count\(9),
	combout => \clock_div_1|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y2_N12
\clock_div_1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~4_combout\ = (\clock_div_1|Equal0~0_combout\ & (\clock_div_1|Equal0~3_combout\ & (\clock_div_1|Equal0~1_combout\ & \clock_div_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|Equal0~0_combout\,
	datab => \clock_div_1|Equal0~3_combout\,
	datac => \clock_div_1|Equal0~1_combout\,
	datad => \clock_div_1|Equal0~2_combout\,
	combout => \clock_div_1|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y2_N2
\clock_div_1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|Equal0~10_combout\ = (\clock_div_1|Equal0~7_combout\ & (\clock_div_1|Equal0~8_combout\ & (\clock_div_1|Equal0~9_combout\ & \clock_div_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_1|Equal0~7_combout\,
	datab => \clock_div_1|Equal0~8_combout\,
	datac => \clock_div_1|Equal0~9_combout\,
	datad => \clock_div_1|Equal0~4_combout\,
	combout => \clock_div_1|Equal0~10_combout\);

-- Location: LCCOMB_X20_Y2_N16
\clock_div_1|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_1|output~0_combout\ = \clock_div_1|output~0_combout\ $ (\clock_div_1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_1|output~0_combout\,
	datad => \clock_div_1|Equal0~10_combout\,
	combout => \clock_div_1|output~0_combout\);

-- Location: LCCOMB_X24_Y4_N0
\counter[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(0) = (\swt~input_o\ & ((\clock_div_1|output~0_combout\))) # (!\swt~input_o\ & (counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => \swt~input_o\,
	datad => \clock_div_1|output~0_combout\,
	combout => counter(0));

-- Location: LCCOMB_X19_Y4_N14
\reverse_counter[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(0) = (\swt~input_o\ & (counter(0))) # (!\swt~input_o\ & ((reverse_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => reverse_counter(0),
	datad => \swt~input_o\,
	combout => reverse_counter(0));

-- Location: IOIBUF_X0_Y13_N15
\clk1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G2
\clk1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y27_N0
\clock_1|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[0]~93_combout\ = !\clock_1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1|count\(0),
	combout => \clock_1|count[0]~93_combout\);

-- Location: FF_X36_Y27_N1
\clock_1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[0]~93_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(0));

-- Location: LCCOMB_X36_Y27_N2
\clock_1|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[1]~31_combout\ = (\clock_1|count\(1) & (\clock_1|count\(0) $ (GND))) # (!\clock_1|count\(1) & (!\clock_1|count\(0) & VCC))
-- \clock_1|count[1]~32\ = CARRY((\clock_1|count\(1) & !\clock_1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(1),
	datab => \clock_1|count\(0),
	datad => VCC,
	combout => \clock_1|count[1]~31_combout\,
	cout => \clock_1|count[1]~32\);

-- Location: FF_X36_Y27_N3
\clock_1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[1]~31_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(1));

-- Location: LCCOMB_X36_Y27_N4
\clock_1|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[2]~33_combout\ = (\clock_1|count\(2) & (!\clock_1|count[1]~32\)) # (!\clock_1|count\(2) & ((\clock_1|count[1]~32\) # (GND)))
-- \clock_1|count[2]~34\ = CARRY((!\clock_1|count[1]~32\) # (!\clock_1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(2),
	datad => VCC,
	cin => \clock_1|count[1]~32\,
	combout => \clock_1|count[2]~33_combout\,
	cout => \clock_1|count[2]~34\);

-- Location: FF_X36_Y27_N5
\clock_1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[2]~33_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(2));

-- Location: LCCOMB_X36_Y27_N6
\clock_1|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[3]~35_combout\ = (\clock_1|count\(3) & (\clock_1|count[2]~34\ $ (GND))) # (!\clock_1|count\(3) & (!\clock_1|count[2]~34\ & VCC))
-- \clock_1|count[3]~36\ = CARRY((\clock_1|count\(3) & !\clock_1|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(3),
	datad => VCC,
	cin => \clock_1|count[2]~34\,
	combout => \clock_1|count[3]~35_combout\,
	cout => \clock_1|count[3]~36\);

-- Location: FF_X36_Y27_N7
\clock_1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[3]~35_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(3));

-- Location: LCCOMB_X36_Y27_N8
\clock_1|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[4]~37_combout\ = (\clock_1|count\(4) & (!\clock_1|count[3]~36\)) # (!\clock_1|count\(4) & ((\clock_1|count[3]~36\) # (GND)))
-- \clock_1|count[4]~38\ = CARRY((!\clock_1|count[3]~36\) # (!\clock_1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(4),
	datad => VCC,
	cin => \clock_1|count[3]~36\,
	combout => \clock_1|count[4]~37_combout\,
	cout => \clock_1|count[4]~38\);

-- Location: FF_X36_Y27_N9
\clock_1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[4]~37_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(4));

-- Location: LCCOMB_X36_Y27_N10
\clock_1|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[5]~39_combout\ = (\clock_1|count\(5) & (\clock_1|count[4]~38\ $ (GND))) # (!\clock_1|count\(5) & (!\clock_1|count[4]~38\ & VCC))
-- \clock_1|count[5]~40\ = CARRY((\clock_1|count\(5) & !\clock_1|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(5),
	datad => VCC,
	cin => \clock_1|count[4]~38\,
	combout => \clock_1|count[5]~39_combout\,
	cout => \clock_1|count[5]~40\);

-- Location: FF_X36_Y27_N11
\clock_1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[5]~39_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(5));

-- Location: LCCOMB_X36_Y27_N12
\clock_1|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[6]~41_combout\ = (\clock_1|count\(6) & (!\clock_1|count[5]~40\)) # (!\clock_1|count\(6) & ((\clock_1|count[5]~40\) # (GND)))
-- \clock_1|count[6]~42\ = CARRY((!\clock_1|count[5]~40\) # (!\clock_1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(6),
	datad => VCC,
	cin => \clock_1|count[5]~40\,
	combout => \clock_1|count[6]~41_combout\,
	cout => \clock_1|count[6]~42\);

-- Location: FF_X36_Y27_N13
\clock_1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[6]~41_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(6));

-- Location: LCCOMB_X36_Y27_N14
\clock_1|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[7]~43_combout\ = (\clock_1|count\(7) & (\clock_1|count[6]~42\ $ (GND))) # (!\clock_1|count\(7) & (!\clock_1|count[6]~42\ & VCC))
-- \clock_1|count[7]~44\ = CARRY((\clock_1|count\(7) & !\clock_1|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(7),
	datad => VCC,
	cin => \clock_1|count[6]~42\,
	combout => \clock_1|count[7]~43_combout\,
	cout => \clock_1|count[7]~44\);

-- Location: FF_X36_Y27_N15
\clock_1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[7]~43_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(7));

-- Location: LCCOMB_X36_Y27_N16
\clock_1|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[8]~45_combout\ = (\clock_1|count\(8) & (!\clock_1|count[7]~44\)) # (!\clock_1|count\(8) & ((\clock_1|count[7]~44\) # (GND)))
-- \clock_1|count[8]~46\ = CARRY((!\clock_1|count[7]~44\) # (!\clock_1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(8),
	datad => VCC,
	cin => \clock_1|count[7]~44\,
	combout => \clock_1|count[8]~45_combout\,
	cout => \clock_1|count[8]~46\);

-- Location: FF_X36_Y27_N17
\clock_1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[8]~45_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(8));

-- Location: LCCOMB_X36_Y27_N18
\clock_1|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[9]~47_combout\ = (\clock_1|count\(9) & (\clock_1|count[8]~46\ $ (GND))) # (!\clock_1|count\(9) & (!\clock_1|count[8]~46\ & VCC))
-- \clock_1|count[9]~48\ = CARRY((\clock_1|count\(9) & !\clock_1|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(9),
	datad => VCC,
	cin => \clock_1|count[8]~46\,
	combout => \clock_1|count[9]~47_combout\,
	cout => \clock_1|count[9]~48\);

-- Location: FF_X36_Y27_N19
\clock_1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[9]~47_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(9));

-- Location: LCCOMB_X36_Y27_N20
\clock_1|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[10]~49_combout\ = (\clock_1|count\(10) & (!\clock_1|count[9]~48\)) # (!\clock_1|count\(10) & ((\clock_1|count[9]~48\) # (GND)))
-- \clock_1|count[10]~50\ = CARRY((!\clock_1|count[9]~48\) # (!\clock_1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(10),
	datad => VCC,
	cin => \clock_1|count[9]~48\,
	combout => \clock_1|count[10]~49_combout\,
	cout => \clock_1|count[10]~50\);

-- Location: FF_X36_Y27_N21
\clock_1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[10]~49_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(10));

-- Location: LCCOMB_X36_Y27_N22
\clock_1|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[11]~51_combout\ = (\clock_1|count\(11) & (\clock_1|count[10]~50\ $ (GND))) # (!\clock_1|count\(11) & (!\clock_1|count[10]~50\ & VCC))
-- \clock_1|count[11]~52\ = CARRY((\clock_1|count\(11) & !\clock_1|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(11),
	datad => VCC,
	cin => \clock_1|count[10]~50\,
	combout => \clock_1|count[11]~51_combout\,
	cout => \clock_1|count[11]~52\);

-- Location: FF_X36_Y27_N23
\clock_1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[11]~51_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(11));

-- Location: LCCOMB_X36_Y27_N24
\clock_1|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[12]~53_combout\ = (\clock_1|count\(12) & (!\clock_1|count[11]~52\)) # (!\clock_1|count\(12) & ((\clock_1|count[11]~52\) # (GND)))
-- \clock_1|count[12]~54\ = CARRY((!\clock_1|count[11]~52\) # (!\clock_1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(12),
	datad => VCC,
	cin => \clock_1|count[11]~52\,
	combout => \clock_1|count[12]~53_combout\,
	cout => \clock_1|count[12]~54\);

-- Location: FF_X36_Y27_N25
\clock_1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[12]~53_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(12));

-- Location: LCCOMB_X36_Y27_N26
\clock_1|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[13]~55_combout\ = (\clock_1|count\(13) & (\clock_1|count[12]~54\ $ (GND))) # (!\clock_1|count\(13) & (!\clock_1|count[12]~54\ & VCC))
-- \clock_1|count[13]~56\ = CARRY((\clock_1|count\(13) & !\clock_1|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(13),
	datad => VCC,
	cin => \clock_1|count[12]~54\,
	combout => \clock_1|count[13]~55_combout\,
	cout => \clock_1|count[13]~56\);

-- Location: FF_X36_Y27_N27
\clock_1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[13]~55_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(13));

-- Location: LCCOMB_X36_Y27_N28
\clock_1|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[14]~57_combout\ = (\clock_1|count\(14) & (!\clock_1|count[13]~56\)) # (!\clock_1|count\(14) & ((\clock_1|count[13]~56\) # (GND)))
-- \clock_1|count[14]~58\ = CARRY((!\clock_1|count[13]~56\) # (!\clock_1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(14),
	datad => VCC,
	cin => \clock_1|count[13]~56\,
	combout => \clock_1|count[14]~57_combout\,
	cout => \clock_1|count[14]~58\);

-- Location: FF_X36_Y27_N29
\clock_1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[14]~57_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(14));

-- Location: LCCOMB_X36_Y27_N30
\clock_1|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[15]~59_combout\ = (\clock_1|count\(15) & (\clock_1|count[14]~58\ $ (GND))) # (!\clock_1|count\(15) & (!\clock_1|count[14]~58\ & VCC))
-- \clock_1|count[15]~60\ = CARRY((\clock_1|count\(15) & !\clock_1|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(15),
	datad => VCC,
	cin => \clock_1|count[14]~58\,
	combout => \clock_1|count[15]~59_combout\,
	cout => \clock_1|count[15]~60\);

-- Location: FF_X36_Y27_N31
\clock_1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[15]~59_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(15));

-- Location: LCCOMB_X36_Y26_N0
\clock_1|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[16]~61_combout\ = (\clock_1|count\(16) & (!\clock_1|count[15]~60\)) # (!\clock_1|count\(16) & ((\clock_1|count[15]~60\) # (GND)))
-- \clock_1|count[16]~62\ = CARRY((!\clock_1|count[15]~60\) # (!\clock_1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(16),
	datad => VCC,
	cin => \clock_1|count[15]~60\,
	combout => \clock_1|count[16]~61_combout\,
	cout => \clock_1|count[16]~62\);

-- Location: FF_X36_Y26_N1
\clock_1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[16]~61_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(16));

-- Location: LCCOMB_X36_Y26_N2
\clock_1|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[17]~63_combout\ = (\clock_1|count\(17) & (\clock_1|count[16]~62\ $ (GND))) # (!\clock_1|count\(17) & (!\clock_1|count[16]~62\ & VCC))
-- \clock_1|count[17]~64\ = CARRY((\clock_1|count\(17) & !\clock_1|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(17),
	datad => VCC,
	cin => \clock_1|count[16]~62\,
	combout => \clock_1|count[17]~63_combout\,
	cout => \clock_1|count[17]~64\);

-- Location: FF_X36_Y26_N3
\clock_1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[17]~63_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(17));

-- Location: LCCOMB_X36_Y26_N4
\clock_1|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[18]~65_combout\ = (\clock_1|count\(18) & (!\clock_1|count[17]~64\)) # (!\clock_1|count\(18) & ((\clock_1|count[17]~64\) # (GND)))
-- \clock_1|count[18]~66\ = CARRY((!\clock_1|count[17]~64\) # (!\clock_1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(18),
	datad => VCC,
	cin => \clock_1|count[17]~64\,
	combout => \clock_1|count[18]~65_combout\,
	cout => \clock_1|count[18]~66\);

-- Location: FF_X36_Y26_N5
\clock_1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[18]~65_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(18));

-- Location: LCCOMB_X36_Y26_N6
\clock_1|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[19]~67_combout\ = (\clock_1|count\(19) & (\clock_1|count[18]~66\ $ (GND))) # (!\clock_1|count\(19) & (!\clock_1|count[18]~66\ & VCC))
-- \clock_1|count[19]~68\ = CARRY((\clock_1|count\(19) & !\clock_1|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(19),
	datad => VCC,
	cin => \clock_1|count[18]~66\,
	combout => \clock_1|count[19]~67_combout\,
	cout => \clock_1|count[19]~68\);

-- Location: FF_X36_Y26_N7
\clock_1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[19]~67_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(19));

-- Location: LCCOMB_X36_Y26_N8
\clock_1|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[20]~69_combout\ = (\clock_1|count\(20) & (!\clock_1|count[19]~68\)) # (!\clock_1|count\(20) & ((\clock_1|count[19]~68\) # (GND)))
-- \clock_1|count[20]~70\ = CARRY((!\clock_1|count[19]~68\) # (!\clock_1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(20),
	datad => VCC,
	cin => \clock_1|count[19]~68\,
	combout => \clock_1|count[20]~69_combout\,
	cout => \clock_1|count[20]~70\);

-- Location: FF_X36_Y26_N9
\clock_1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[20]~69_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(20));

-- Location: LCCOMB_X36_Y26_N10
\clock_1|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[21]~71_combout\ = (\clock_1|count\(21) & (\clock_1|count[20]~70\ $ (GND))) # (!\clock_1|count\(21) & (!\clock_1|count[20]~70\ & VCC))
-- \clock_1|count[21]~72\ = CARRY((\clock_1|count\(21) & !\clock_1|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(21),
	datad => VCC,
	cin => \clock_1|count[20]~70\,
	combout => \clock_1|count[21]~71_combout\,
	cout => \clock_1|count[21]~72\);

-- Location: FF_X36_Y26_N11
\clock_1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[21]~71_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(21));

-- Location: LCCOMB_X36_Y26_N12
\clock_1|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[22]~73_combout\ = (\clock_1|count\(22) & (!\clock_1|count[21]~72\)) # (!\clock_1|count\(22) & ((\clock_1|count[21]~72\) # (GND)))
-- \clock_1|count[22]~74\ = CARRY((!\clock_1|count[21]~72\) # (!\clock_1|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(22),
	datad => VCC,
	cin => \clock_1|count[21]~72\,
	combout => \clock_1|count[22]~73_combout\,
	cout => \clock_1|count[22]~74\);

-- Location: FF_X36_Y26_N13
\clock_1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[22]~73_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(22));

-- Location: LCCOMB_X36_Y26_N14
\clock_1|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[23]~75_combout\ = (\clock_1|count\(23) & (\clock_1|count[22]~74\ $ (GND))) # (!\clock_1|count\(23) & (!\clock_1|count[22]~74\ & VCC))
-- \clock_1|count[23]~76\ = CARRY((\clock_1|count\(23) & !\clock_1|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(23),
	datad => VCC,
	cin => \clock_1|count[22]~74\,
	combout => \clock_1|count[23]~75_combout\,
	cout => \clock_1|count[23]~76\);

-- Location: FF_X36_Y26_N15
\clock_1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[23]~75_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(23));

-- Location: LCCOMB_X36_Y26_N16
\clock_1|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[24]~77_combout\ = (\clock_1|count\(24) & (!\clock_1|count[23]~76\)) # (!\clock_1|count\(24) & ((\clock_1|count[23]~76\) # (GND)))
-- \clock_1|count[24]~78\ = CARRY((!\clock_1|count[23]~76\) # (!\clock_1|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(24),
	datad => VCC,
	cin => \clock_1|count[23]~76\,
	combout => \clock_1|count[24]~77_combout\,
	cout => \clock_1|count[24]~78\);

-- Location: FF_X36_Y26_N17
\clock_1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[24]~77_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(24));

-- Location: LCCOMB_X36_Y26_N18
\clock_1|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[25]~79_combout\ = (\clock_1|count\(25) & (\clock_1|count[24]~78\ $ (GND))) # (!\clock_1|count\(25) & (!\clock_1|count[24]~78\ & VCC))
-- \clock_1|count[25]~80\ = CARRY((\clock_1|count\(25) & !\clock_1|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(25),
	datad => VCC,
	cin => \clock_1|count[24]~78\,
	combout => \clock_1|count[25]~79_combout\,
	cout => \clock_1|count[25]~80\);

-- Location: FF_X36_Y26_N19
\clock_1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[25]~79_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(25));

-- Location: LCCOMB_X36_Y26_N20
\clock_1|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[26]~81_combout\ = (\clock_1|count\(26) & (!\clock_1|count[25]~80\)) # (!\clock_1|count\(26) & ((\clock_1|count[25]~80\) # (GND)))
-- \clock_1|count[26]~82\ = CARRY((!\clock_1|count[25]~80\) # (!\clock_1|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(26),
	datad => VCC,
	cin => \clock_1|count[25]~80\,
	combout => \clock_1|count[26]~81_combout\,
	cout => \clock_1|count[26]~82\);

-- Location: FF_X36_Y26_N21
\clock_1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[26]~81_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(26));

-- Location: LCCOMB_X36_Y26_N22
\clock_1|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[27]~83_combout\ = (\clock_1|count\(27) & (\clock_1|count[26]~82\ $ (GND))) # (!\clock_1|count\(27) & (!\clock_1|count[26]~82\ & VCC))
-- \clock_1|count[27]~84\ = CARRY((\clock_1|count\(27) & !\clock_1|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(27),
	datad => VCC,
	cin => \clock_1|count[26]~82\,
	combout => \clock_1|count[27]~83_combout\,
	cout => \clock_1|count[27]~84\);

-- Location: FF_X36_Y26_N23
\clock_1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[27]~83_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(27));

-- Location: LCCOMB_X36_Y26_N24
\clock_1|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[28]~85_combout\ = (\clock_1|count\(28) & (!\clock_1|count[27]~84\)) # (!\clock_1|count\(28) & ((\clock_1|count[27]~84\) # (GND)))
-- \clock_1|count[28]~86\ = CARRY((!\clock_1|count[27]~84\) # (!\clock_1|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(28),
	datad => VCC,
	cin => \clock_1|count[27]~84\,
	combout => \clock_1|count[28]~85_combout\,
	cout => \clock_1|count[28]~86\);

-- Location: FF_X36_Y26_N25
\clock_1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[28]~85_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(28));

-- Location: LCCOMB_X36_Y26_N26
\clock_1|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[29]~87_combout\ = (\clock_1|count\(29) & (\clock_1|count[28]~86\ $ (GND))) # (!\clock_1|count\(29) & (!\clock_1|count[28]~86\ & VCC))
-- \clock_1|count[29]~88\ = CARRY((\clock_1|count\(29) & !\clock_1|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(29),
	datad => VCC,
	cin => \clock_1|count[28]~86\,
	combout => \clock_1|count[29]~87_combout\,
	cout => \clock_1|count[29]~88\);

-- Location: FF_X36_Y26_N27
\clock_1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[29]~87_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(29));

-- Location: LCCOMB_X36_Y26_N28
\clock_1|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[30]~89_combout\ = (\clock_1|count\(30) & (!\clock_1|count[29]~88\)) # (!\clock_1|count\(30) & ((\clock_1|count[29]~88\) # (GND)))
-- \clock_1|count[30]~90\ = CARRY((!\clock_1|count[29]~88\) # (!\clock_1|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(30),
	datad => VCC,
	cin => \clock_1|count[29]~88\,
	combout => \clock_1|count[30]~89_combout\,
	cout => \clock_1|count[30]~90\);

-- Location: FF_X36_Y26_N29
\clock_1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[30]~89_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(30));

-- Location: LCCOMB_X36_Y26_N30
\clock_1|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|count[31]~91_combout\ = \clock_1|count\(31) $ (!\clock_1|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(31),
	cin => \clock_1|count[30]~90\,
	combout => \clock_1|count[31]~91_combout\);

-- Location: FF_X36_Y26_N31
\clock_1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clock_1|count[31]~91_combout\,
	clrn => \clock_1|ALT_INV_Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1|count\(31));

-- Location: LCCOMB_X37_Y26_N12
\clock_1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~0_combout\ = (!\clock_1|count\(31) & \clock_1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(31),
	datad => \clock_1|count\(0),
	combout => \clock_1|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y26_N18
\clock_1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal1~0_combout\ = (\clock_1|count\(22) & (\clock_1|count\(14) & (!\clock_1|count\(5) & !\clock_1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(22),
	datab => \clock_1|count\(14),
	datac => \clock_1|count\(5),
	datad => \clock_1|count\(10),
	combout => \clock_1|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y26_N22
\clock_1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~3_combout\ = (\clock_1|count\(20) & (\clock_1|count\(19) & (!\clock_1|count\(26) & \clock_1|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(20),
	datab => \clock_1|count\(19),
	datac => \clock_1|count\(26),
	datad => \clock_1|count\(21),
	combout => \clock_1|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y26_N24
\clock_1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~2_combout\ = (!\clock_1|count\(9) & (!\clock_1|count\(8) & (\clock_1|count\(12) & \clock_1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(9),
	datab => \clock_1|count\(8),
	datac => \clock_1|count\(12),
	datad => \clock_1|count\(13),
	combout => \clock_1|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y26_N26
\clock_1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~1_combout\ = (!\clock_1|count\(4) & (!\clock_1|count\(2) & (!\clock_1|count\(1) & !\clock_1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(4),
	datab => \clock_1|count\(2),
	datac => \clock_1|count\(1),
	datad => \clock_1|count\(3),
	combout => \clock_1|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y26_N20
\clock_1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~4_combout\ = (!\clock_1|count\(29) & (!\clock_1|count\(27) & (!\clock_1|count\(28) & !\clock_1|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(29),
	datab => \clock_1|count\(27),
	datac => \clock_1|count\(28),
	datad => \clock_1|count\(30),
	combout => \clock_1|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y26_N14
\clock_1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~5_combout\ = (\clock_1|Equal0~3_combout\ & (\clock_1|Equal0~2_combout\ & (\clock_1|Equal0~1_combout\ & \clock_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~3_combout\,
	datab => \clock_1|Equal0~2_combout\,
	datac => \clock_1|Equal0~1_combout\,
	datad => \clock_1|Equal0~4_combout\,
	combout => \clock_1|Equal0~5_combout\);

-- Location: LCCOMB_X37_Y26_N4
\clock_1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~9_combout\ = (\clock_1|count\(15) & (\clock_1|count\(17) & (\clock_1|count\(23) & !\clock_1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(15),
	datab => \clock_1|count\(17),
	datac => \clock_1|count\(23),
	datad => \clock_1|count\(6),
	combout => \clock_1|Equal0~9_combout\);

-- Location: LCCOMB_X37_Y26_N16
\clock_1|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal3~0_combout\ = (!\clock_1|count\(16) & (!\clock_1|count\(24) & (!\clock_1|count\(11) & \clock_1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(16),
	datab => \clock_1|count\(24),
	datac => \clock_1|count\(11),
	datad => \clock_1|count\(25),
	combout => \clock_1|Equal3~0_combout\);

-- Location: LCCOMB_X37_Y26_N10
\clock_1|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal3~1_combout\ = (\clock_1|count\(7) & (!\clock_1|count\(18) & (\clock_1|Equal0~9_combout\ & \clock_1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(7),
	datab => \clock_1|count\(18),
	datac => \clock_1|Equal0~9_combout\,
	datad => \clock_1|Equal3~0_combout\,
	combout => \clock_1|Equal3~1_combout\);

-- Location: LCCOMB_X37_Y26_N0
\clock_1|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal3~2_combout\ = (\clock_1|Equal0~0_combout\ & (\clock_1|Equal1~0_combout\ & (\clock_1|Equal0~5_combout\ & \clock_1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~0_combout\,
	datab => \clock_1|Equal1~0_combout\,
	datac => \clock_1|Equal0~5_combout\,
	datad => \clock_1|Equal3~1_combout\,
	combout => \clock_1|Equal3~2_combout\);

-- Location: LCCOMB_X36_Y25_N20
\clock_1|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal2~0_combout\ = (!\clock_1|count\(23) & (\clock_1|count\(6) & (!\clock_1|count\(15) & !\clock_1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(23),
	datab => \clock_1|count\(6),
	datac => \clock_1|count\(15),
	datad => \clock_1|count\(17),
	combout => \clock_1|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y25_N22
\clock_1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~7_combout\ = (\clock_1|count\(10) & (!\clock_1|count\(14) & (\clock_1|count\(5) & !\clock_1|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(10),
	datab => \clock_1|count\(14),
	datac => \clock_1|count\(5),
	datad => \clock_1|count\(22),
	combout => \clock_1|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y25_N12
\clock_1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~6_combout\ = (!\clock_1|count\(16) & (!\clock_1|count\(7) & (!\clock_1|count\(24) & \clock_1|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(16),
	datab => \clock_1|count\(7),
	datac => \clock_1|count\(24),
	datad => \clock_1|count\(18),
	combout => \clock_1|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y25_N28
\clock_1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~8_combout\ = (\clock_1|Equal0~5_combout\ & (\clock_1|Equal0~0_combout\ & (\clock_1|Equal0~7_combout\ & \clock_1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~5_combout\,
	datab => \clock_1|Equal0~0_combout\,
	datac => \clock_1|Equal0~7_combout\,
	datad => \clock_1|Equal0~6_combout\,
	combout => \clock_1|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y25_N4
\clock_1|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal2~2_combout\ = (\clock_1|count\(25) & (\clock_1|Equal2~0_combout\ & (!\clock_1|count\(11) & \clock_1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(25),
	datab => \clock_1|Equal2~0_combout\,
	datac => \clock_1|count\(11),
	datad => \clock_1|Equal0~8_combout\,
	combout => \clock_1|Equal2~2_combout\);

-- Location: LCCOMB_X36_Y24_N12
\clock_1|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|comb~2_combout\ = (\clock_1|Equal3~2_combout\) # (\clock_1|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|Equal3~2_combout\,
	datad => \clock_1|Equal2~2_combout\,
	combout => \clock_1|comb~2_combout\);

-- Location: LCCOMB_X36_Y25_N8
\clock_1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal1~1_combout\ = (\clock_1|count\(11) & (!\clock_1|count\(25) & (\clock_1|count\(18) & !\clock_1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(11),
	datab => \clock_1|count\(25),
	datac => \clock_1|count\(18),
	datad => \clock_1|count\(7),
	combout => \clock_1|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y25_N10
\clock_1|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal1~2_combout\ = (\clock_1|count\(16) & (\clock_1|Equal1~1_combout\ & (\clock_1|count\(24) & \clock_1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|count\(16),
	datab => \clock_1|Equal1~1_combout\,
	datac => \clock_1|count\(24),
	datad => \clock_1|Equal2~0_combout\,
	combout => \clock_1|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y25_N24
\clock_1|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal1~3_combout\ = (\clock_1|Equal0~5_combout\ & (\clock_1|Equal0~0_combout\ & (\clock_1|Equal1~0_combout\ & \clock_1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~5_combout\,
	datab => \clock_1|Equal0~0_combout\,
	datac => \clock_1|Equal1~0_combout\,
	datad => \clock_1|Equal1~2_combout\,
	combout => \clock_1|Equal1~3_combout\);

-- Location: LCCOMB_X36_Y25_N30
\clock_1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal0~10_combout\ = (\clock_1|Equal0~9_combout\ & (!\clock_1|count\(25) & (\clock_1|count\(11) & \clock_1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~9_combout\,
	datab => \clock_1|count\(25),
	datac => \clock_1|count\(11),
	datad => \clock_1|Equal0~8_combout\,
	combout => \clock_1|Equal0~10_combout\);

-- Location: LCCOMB_X36_Y24_N14
\clock_1|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|comb~3_combout\ = (!\clock_1|Equal2~2_combout\ & (!\clock_1|Equal3~2_combout\ & ((\clock_1|Equal1~3_combout\) # (\clock_1|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal1~3_combout\,
	datab => \clock_1|Equal2~2_combout\,
	datac => \clock_1|Equal0~10_combout\,
	datad => \clock_1|Equal3~2_combout\,
	combout => \clock_1|comb~3_combout\);

-- Location: LCCOMB_X36_Y24_N24
\clock_1|mode[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|mode\(1) = (!\clock_1|comb~2_combout\ & ((\clock_1|comb~3_combout\) # (\clock_1|mode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|comb~2_combout\,
	datac => \clock_1|comb~3_combout\,
	datad => \clock_1|mode\(1),
	combout => \clock_1|mode\(1));

-- Location: LCCOMB_X36_Y25_N26
\clock_1|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|Equal2~1_combout\ = (\clock_1|count\(25) & (!\clock_1|count\(11) & \clock_1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|count\(25),
	datac => \clock_1|count\(11),
	datad => \clock_1|Equal2~0_combout\,
	combout => \clock_1|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y25_N18
\clock_1|mode[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|mode[1]~0_combout\ = (!\clock_1|Equal3~2_combout\ & (!\clock_1|Equal1~3_combout\ & ((!\clock_1|Equal0~8_combout\) # (!\clock_1|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal2~1_combout\,
	datab => \clock_1|Equal0~8_combout\,
	datac => \clock_1|Equal3~2_combout\,
	datad => \clock_1|Equal1~3_combout\,
	combout => \clock_1|mode[1]~0_combout\);

-- Location: LCCOMB_X36_Y24_N4
\clock_1|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|comb~4_combout\ = (!\clock_1|Equal2~2_combout\ & ((\clock_1|Equal0~10_combout\) # (!\clock_1|mode[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|mode[1]~0_combout\,
	datac => \clock_1|Equal0~10_combout\,
	datad => \clock_1|Equal2~2_combout\,
	combout => \clock_1|comb~4_combout\);

-- Location: LCCOMB_X36_Y24_N10
\clock_1|mode[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|mode\(2) = (!\clock_1|comb~4_combout\ & ((\clock_1|Equal2~2_combout\) # (\clock_1|mode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|Equal2~2_combout\,
	datac => \clock_1|comb~4_combout\,
	datad => \clock_1|mode\(2),
	combout => \clock_1|mode\(2));

-- Location: LCCOMB_X36_Y24_N18
\clock_1|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|comb~1_combout\ = (!\clock_1|mode[1]~0_combout\ & ((\clock_1|Equal3~2_combout\) # (!\clock_1|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|Equal3~2_combout\,
	datac => \clock_1|mode[1]~0_combout\,
	datad => \clock_1|Equal2~2_combout\,
	combout => \clock_1|comb~1_combout\);

-- Location: LCCOMB_X36_Y24_N8
\clock_1|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|comb~0_combout\ = (\clock_1|mode[1]~0_combout\ & (\clock_1|Equal0~10_combout\)) # (!\clock_1|mode[1]~0_combout\ & (((!\clock_1|Equal3~2_combout\ & \clock_1|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|Equal0~10_combout\,
	datab => \clock_1|Equal3~2_combout\,
	datac => \clock_1|mode[1]~0_combout\,
	datad => \clock_1|Equal2~2_combout\,
	combout => \clock_1|comb~0_combout\);

-- Location: LCCOMB_X36_Y24_N2
\clock_1|mode[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_1|mode\(0) = (!\clock_1|comb~0_combout\ & ((\clock_1|comb~1_combout\) # (\clock_1|mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1|comb~1_combout\,
	datac => \clock_1|comb~0_combout\,
	datad => \clock_1|mode\(0),
	combout => \clock_1|mode\(0));

-- Location: LCCOMB_X22_Y4_N0
\leds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (!\clock_1|mode\(1) & (!\clock_1|mode\(2) & (!\swt~input_o\ & \clock_1|mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|mode\(1),
	datab => \clock_1|mode\(2),
	datac => \swt~input_o\,
	datad => \clock_1|mode\(0),
	combout => \leds~0_combout\);

-- Location: LCCOMB_X22_Y4_N2
\leds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (\leds~0_combout\) # ((reverse_counter(0) & \swt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(0),
	datac => \swt~input_o\,
	datad => \leds~0_combout\,
	combout => \leds~1_combout\);

-- Location: LCCOMB_X21_Y5_N0
\clock_div_8|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[0]~93_combout\ = !\clock_div_8|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_8|count\(0),
	combout => \clock_div_8|count[0]~93_combout\);

-- Location: LCCOMB_X21_Y5_N12
\clock_div_8|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[6]~41_combout\ = (\clock_div_8|count\(6) & (!\clock_div_8|count[5]~40\)) # (!\clock_div_8|count\(6) & ((\clock_div_8|count[5]~40\) # (GND)))
-- \clock_div_8|count[6]~42\ = CARRY((!\clock_div_8|count[5]~40\) # (!\clock_div_8|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(6),
	datad => VCC,
	cin => \clock_div_8|count[5]~40\,
	combout => \clock_div_8|count[6]~41_combout\,
	cout => \clock_div_8|count[6]~42\);

-- Location: LCCOMB_X21_Y5_N14
\clock_div_8|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[7]~43_combout\ = (\clock_div_8|count\(7) & (\clock_div_8|count[6]~42\ $ (GND))) # (!\clock_div_8|count\(7) & (!\clock_div_8|count[6]~42\ & VCC))
-- \clock_div_8|count[7]~44\ = CARRY((\clock_div_8|count\(7) & !\clock_div_8|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(7),
	datad => VCC,
	cin => \clock_div_8|count[6]~42\,
	combout => \clock_div_8|count[7]~43_combout\,
	cout => \clock_div_8|count[7]~44\);

-- Location: FF_X21_Y5_N15
\clock_div_8|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[7]~43_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(7));

-- Location: LCCOMB_X21_Y5_N16
\clock_div_8|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[8]~45_combout\ = (\clock_div_8|count\(8) & (!\clock_div_8|count[7]~44\)) # (!\clock_div_8|count\(8) & ((\clock_div_8|count[7]~44\) # (GND)))
-- \clock_div_8|count[8]~46\ = CARRY((!\clock_div_8|count[7]~44\) # (!\clock_div_8|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(8),
	datad => VCC,
	cin => \clock_div_8|count[7]~44\,
	combout => \clock_div_8|count[8]~45_combout\,
	cout => \clock_div_8|count[8]~46\);

-- Location: FF_X21_Y5_N17
\clock_div_8|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[8]~45_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(8));

-- Location: LCCOMB_X21_Y5_N18
\clock_div_8|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[9]~47_combout\ = (\clock_div_8|count\(9) & (\clock_div_8|count[8]~46\ $ (GND))) # (!\clock_div_8|count\(9) & (!\clock_div_8|count[8]~46\ & VCC))
-- \clock_div_8|count[9]~48\ = CARRY((\clock_div_8|count\(9) & !\clock_div_8|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(9),
	datad => VCC,
	cin => \clock_div_8|count[8]~46\,
	combout => \clock_div_8|count[9]~47_combout\,
	cout => \clock_div_8|count[9]~48\);

-- Location: FF_X21_Y5_N19
\clock_div_8|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[9]~47_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(9));

-- Location: LCCOMB_X21_Y5_N20
\clock_div_8|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[10]~49_combout\ = (\clock_div_8|count\(10) & (!\clock_div_8|count[9]~48\)) # (!\clock_div_8|count\(10) & ((\clock_div_8|count[9]~48\) # (GND)))
-- \clock_div_8|count[10]~50\ = CARRY((!\clock_div_8|count[9]~48\) # (!\clock_div_8|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(10),
	datad => VCC,
	cin => \clock_div_8|count[9]~48\,
	combout => \clock_div_8|count[10]~49_combout\,
	cout => \clock_div_8|count[10]~50\);

-- Location: FF_X21_Y5_N21
\clock_div_8|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[10]~49_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(10));

-- Location: LCCOMB_X21_Y5_N22
\clock_div_8|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[11]~51_combout\ = (\clock_div_8|count\(11) & (\clock_div_8|count[10]~50\ $ (GND))) # (!\clock_div_8|count\(11) & (!\clock_div_8|count[10]~50\ & VCC))
-- \clock_div_8|count[11]~52\ = CARRY((\clock_div_8|count\(11) & !\clock_div_8|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(11),
	datad => VCC,
	cin => \clock_div_8|count[10]~50\,
	combout => \clock_div_8|count[11]~51_combout\,
	cout => \clock_div_8|count[11]~52\);

-- Location: FF_X21_Y5_N23
\clock_div_8|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[11]~51_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(11));

-- Location: LCCOMB_X21_Y5_N24
\clock_div_8|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[12]~53_combout\ = (\clock_div_8|count\(12) & (!\clock_div_8|count[11]~52\)) # (!\clock_div_8|count\(12) & ((\clock_div_8|count[11]~52\) # (GND)))
-- \clock_div_8|count[12]~54\ = CARRY((!\clock_div_8|count[11]~52\) # (!\clock_div_8|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(12),
	datad => VCC,
	cin => \clock_div_8|count[11]~52\,
	combout => \clock_div_8|count[12]~53_combout\,
	cout => \clock_div_8|count[12]~54\);

-- Location: FF_X21_Y5_N25
\clock_div_8|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[12]~53_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(12));

-- Location: LCCOMB_X21_Y5_N26
\clock_div_8|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[13]~55_combout\ = (\clock_div_8|count\(13) & (\clock_div_8|count[12]~54\ $ (GND))) # (!\clock_div_8|count\(13) & (!\clock_div_8|count[12]~54\ & VCC))
-- \clock_div_8|count[13]~56\ = CARRY((\clock_div_8|count\(13) & !\clock_div_8|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(13),
	datad => VCC,
	cin => \clock_div_8|count[12]~54\,
	combout => \clock_div_8|count[13]~55_combout\,
	cout => \clock_div_8|count[13]~56\);

-- Location: FF_X21_Y5_N27
\clock_div_8|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[13]~55_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(13));

-- Location: LCCOMB_X21_Y5_N28
\clock_div_8|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[14]~57_combout\ = (\clock_div_8|count\(14) & (!\clock_div_8|count[13]~56\)) # (!\clock_div_8|count\(14) & ((\clock_div_8|count[13]~56\) # (GND)))
-- \clock_div_8|count[14]~58\ = CARRY((!\clock_div_8|count[13]~56\) # (!\clock_div_8|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(14),
	datad => VCC,
	cin => \clock_div_8|count[13]~56\,
	combout => \clock_div_8|count[14]~57_combout\,
	cout => \clock_div_8|count[14]~58\);

-- Location: FF_X21_Y5_N29
\clock_div_8|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[14]~57_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(14));

-- Location: LCCOMB_X21_Y5_N30
\clock_div_8|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[15]~59_combout\ = (\clock_div_8|count\(15) & (\clock_div_8|count[14]~58\ $ (GND))) # (!\clock_div_8|count\(15) & (!\clock_div_8|count[14]~58\ & VCC))
-- \clock_div_8|count[15]~60\ = CARRY((\clock_div_8|count\(15) & !\clock_div_8|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(15),
	datad => VCC,
	cin => \clock_div_8|count[14]~58\,
	combout => \clock_div_8|count[15]~59_combout\,
	cout => \clock_div_8|count[15]~60\);

-- Location: FF_X21_Y5_N31
\clock_div_8|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[15]~59_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(15));

-- Location: LCCOMB_X21_Y4_N0
\clock_div_8|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[16]~61_combout\ = (\clock_div_8|count\(16) & (!\clock_div_8|count[15]~60\)) # (!\clock_div_8|count\(16) & ((\clock_div_8|count[15]~60\) # (GND)))
-- \clock_div_8|count[16]~62\ = CARRY((!\clock_div_8|count[15]~60\) # (!\clock_div_8|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(16),
	datad => VCC,
	cin => \clock_div_8|count[15]~60\,
	combout => \clock_div_8|count[16]~61_combout\,
	cout => \clock_div_8|count[16]~62\);

-- Location: FF_X21_Y4_N1
\clock_div_8|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[16]~61_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(16));

-- Location: LCCOMB_X21_Y4_N2
\clock_div_8|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[17]~63_combout\ = (\clock_div_8|count\(17) & (\clock_div_8|count[16]~62\ $ (GND))) # (!\clock_div_8|count\(17) & (!\clock_div_8|count[16]~62\ & VCC))
-- \clock_div_8|count[17]~64\ = CARRY((\clock_div_8|count\(17) & !\clock_div_8|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(17),
	datad => VCC,
	cin => \clock_div_8|count[16]~62\,
	combout => \clock_div_8|count[17]~63_combout\,
	cout => \clock_div_8|count[17]~64\);

-- Location: FF_X21_Y4_N3
\clock_div_8|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[17]~63_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(17));

-- Location: LCCOMB_X21_Y4_N4
\clock_div_8|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[18]~65_combout\ = (\clock_div_8|count\(18) & (!\clock_div_8|count[17]~64\)) # (!\clock_div_8|count\(18) & ((\clock_div_8|count[17]~64\) # (GND)))
-- \clock_div_8|count[18]~66\ = CARRY((!\clock_div_8|count[17]~64\) # (!\clock_div_8|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(18),
	datad => VCC,
	cin => \clock_div_8|count[17]~64\,
	combout => \clock_div_8|count[18]~65_combout\,
	cout => \clock_div_8|count[18]~66\);

-- Location: FF_X21_Y4_N5
\clock_div_8|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[18]~65_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(18));

-- Location: LCCOMB_X21_Y4_N6
\clock_div_8|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[19]~67_combout\ = (\clock_div_8|count\(19) & (\clock_div_8|count[18]~66\ $ (GND))) # (!\clock_div_8|count\(19) & (!\clock_div_8|count[18]~66\ & VCC))
-- \clock_div_8|count[19]~68\ = CARRY((\clock_div_8|count\(19) & !\clock_div_8|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(19),
	datad => VCC,
	cin => \clock_div_8|count[18]~66\,
	combout => \clock_div_8|count[19]~67_combout\,
	cout => \clock_div_8|count[19]~68\);

-- Location: FF_X21_Y4_N7
\clock_div_8|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[19]~67_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(19));

-- Location: LCCOMB_X21_Y4_N8
\clock_div_8|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[20]~69_combout\ = (\clock_div_8|count\(20) & (!\clock_div_8|count[19]~68\)) # (!\clock_div_8|count\(20) & ((\clock_div_8|count[19]~68\) # (GND)))
-- \clock_div_8|count[20]~70\ = CARRY((!\clock_div_8|count[19]~68\) # (!\clock_div_8|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(20),
	datad => VCC,
	cin => \clock_div_8|count[19]~68\,
	combout => \clock_div_8|count[20]~69_combout\,
	cout => \clock_div_8|count[20]~70\);

-- Location: FF_X21_Y4_N9
\clock_div_8|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[20]~69_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(20));

-- Location: LCCOMB_X21_Y4_N10
\clock_div_8|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[21]~71_combout\ = (\clock_div_8|count\(21) & (\clock_div_8|count[20]~70\ $ (GND))) # (!\clock_div_8|count\(21) & (!\clock_div_8|count[20]~70\ & VCC))
-- \clock_div_8|count[21]~72\ = CARRY((\clock_div_8|count\(21) & !\clock_div_8|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(21),
	datad => VCC,
	cin => \clock_div_8|count[20]~70\,
	combout => \clock_div_8|count[21]~71_combout\,
	cout => \clock_div_8|count[21]~72\);

-- Location: FF_X21_Y4_N11
\clock_div_8|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[21]~71_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(21));

-- Location: LCCOMB_X21_Y4_N12
\clock_div_8|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[22]~73_combout\ = (\clock_div_8|count\(22) & (!\clock_div_8|count[21]~72\)) # (!\clock_div_8|count\(22) & ((\clock_div_8|count[21]~72\) # (GND)))
-- \clock_div_8|count[22]~74\ = CARRY((!\clock_div_8|count[21]~72\) # (!\clock_div_8|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(22),
	datad => VCC,
	cin => \clock_div_8|count[21]~72\,
	combout => \clock_div_8|count[22]~73_combout\,
	cout => \clock_div_8|count[22]~74\);

-- Location: FF_X21_Y4_N13
\clock_div_8|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[22]~73_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(22));

-- Location: LCCOMB_X21_Y4_N14
\clock_div_8|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[23]~75_combout\ = (\clock_div_8|count\(23) & (\clock_div_8|count[22]~74\ $ (GND))) # (!\clock_div_8|count\(23) & (!\clock_div_8|count[22]~74\ & VCC))
-- \clock_div_8|count[23]~76\ = CARRY((\clock_div_8|count\(23) & !\clock_div_8|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(23),
	datad => VCC,
	cin => \clock_div_8|count[22]~74\,
	combout => \clock_div_8|count[23]~75_combout\,
	cout => \clock_div_8|count[23]~76\);

-- Location: FF_X21_Y4_N15
\clock_div_8|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[23]~75_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(23));

-- Location: LCCOMB_X21_Y4_N16
\clock_div_8|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[24]~77_combout\ = (\clock_div_8|count\(24) & (!\clock_div_8|count[23]~76\)) # (!\clock_div_8|count\(24) & ((\clock_div_8|count[23]~76\) # (GND)))
-- \clock_div_8|count[24]~78\ = CARRY((!\clock_div_8|count[23]~76\) # (!\clock_div_8|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(24),
	datad => VCC,
	cin => \clock_div_8|count[23]~76\,
	combout => \clock_div_8|count[24]~77_combout\,
	cout => \clock_div_8|count[24]~78\);

-- Location: FF_X21_Y4_N17
\clock_div_8|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[24]~77_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(24));

-- Location: LCCOMB_X21_Y4_N18
\clock_div_8|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[25]~79_combout\ = (\clock_div_8|count\(25) & (\clock_div_8|count[24]~78\ $ (GND))) # (!\clock_div_8|count\(25) & (!\clock_div_8|count[24]~78\ & VCC))
-- \clock_div_8|count[25]~80\ = CARRY((\clock_div_8|count\(25) & !\clock_div_8|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(25),
	datad => VCC,
	cin => \clock_div_8|count[24]~78\,
	combout => \clock_div_8|count[25]~79_combout\,
	cout => \clock_div_8|count[25]~80\);

-- Location: FF_X21_Y4_N19
\clock_div_8|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[25]~79_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(25));

-- Location: LCCOMB_X21_Y4_N20
\clock_div_8|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[26]~81_combout\ = (\clock_div_8|count\(26) & (!\clock_div_8|count[25]~80\)) # (!\clock_div_8|count\(26) & ((\clock_div_8|count[25]~80\) # (GND)))
-- \clock_div_8|count[26]~82\ = CARRY((!\clock_div_8|count[25]~80\) # (!\clock_div_8|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(26),
	datad => VCC,
	cin => \clock_div_8|count[25]~80\,
	combout => \clock_div_8|count[26]~81_combout\,
	cout => \clock_div_8|count[26]~82\);

-- Location: FF_X21_Y4_N21
\clock_div_8|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[26]~81_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(26));

-- Location: LCCOMB_X21_Y4_N22
\clock_div_8|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[27]~83_combout\ = (\clock_div_8|count\(27) & (\clock_div_8|count[26]~82\ $ (GND))) # (!\clock_div_8|count\(27) & (!\clock_div_8|count[26]~82\ & VCC))
-- \clock_div_8|count[27]~84\ = CARRY((\clock_div_8|count\(27) & !\clock_div_8|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(27),
	datad => VCC,
	cin => \clock_div_8|count[26]~82\,
	combout => \clock_div_8|count[27]~83_combout\,
	cout => \clock_div_8|count[27]~84\);

-- Location: FF_X21_Y4_N23
\clock_div_8|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[27]~83_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(27));

-- Location: LCCOMB_X21_Y4_N24
\clock_div_8|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[28]~85_combout\ = (\clock_div_8|count\(28) & (!\clock_div_8|count[27]~84\)) # (!\clock_div_8|count\(28) & ((\clock_div_8|count[27]~84\) # (GND)))
-- \clock_div_8|count[28]~86\ = CARRY((!\clock_div_8|count[27]~84\) # (!\clock_div_8|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(28),
	datad => VCC,
	cin => \clock_div_8|count[27]~84\,
	combout => \clock_div_8|count[28]~85_combout\,
	cout => \clock_div_8|count[28]~86\);

-- Location: FF_X21_Y4_N25
\clock_div_8|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[28]~85_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(28));

-- Location: LCCOMB_X22_Y5_N12
\clock_div_8|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~8_combout\ = (!\clock_div_8|count\(28) & (\clock_div_8|count\(27) & (!\clock_div_8|count\(25) & \clock_div_8|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(28),
	datab => \clock_div_8|count\(27),
	datac => \clock_div_8|count\(25),
	datad => \clock_div_8|count\(26),
	combout => \clock_div_8|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y4_N26
\clock_div_8|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[29]~87_combout\ = (\clock_div_8|count\(29) & (\clock_div_8|count[28]~86\ $ (GND))) # (!\clock_div_8|count\(29) & (!\clock_div_8|count[28]~86\ & VCC))
-- \clock_div_8|count[29]~88\ = CARRY((\clock_div_8|count\(29) & !\clock_div_8|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(29),
	datad => VCC,
	cin => \clock_div_8|count[28]~86\,
	combout => \clock_div_8|count[29]~87_combout\,
	cout => \clock_div_8|count[29]~88\);

-- Location: FF_X21_Y4_N27
\clock_div_8|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[29]~87_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(29));

-- Location: LCCOMB_X21_Y4_N28
\clock_div_8|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[30]~89_combout\ = (\clock_div_8|count\(30) & (!\clock_div_8|count[29]~88\)) # (!\clock_div_8|count\(30) & ((\clock_div_8|count[29]~88\) # (GND)))
-- \clock_div_8|count[30]~90\ = CARRY((!\clock_div_8|count[29]~88\) # (!\clock_div_8|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(30),
	datad => VCC,
	cin => \clock_div_8|count[29]~88\,
	combout => \clock_div_8|count[30]~89_combout\,
	cout => \clock_div_8|count[30]~90\);

-- Location: FF_X21_Y4_N29
\clock_div_8|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[30]~89_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(30));

-- Location: LCCOMB_X21_Y4_N30
\clock_div_8|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[31]~91_combout\ = \clock_div_8|count\(31) $ (!\clock_div_8|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(31),
	cin => \clock_div_8|count[30]~90\,
	combout => \clock_div_8|count[31]~91_combout\);

-- Location: FF_X21_Y4_N31
\clock_div_8|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[31]~91_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(31));

-- Location: LCCOMB_X22_Y5_N18
\clock_div_8|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~9_combout\ = (\clock_div_8|count\(0) & (\clock_div_8|count\(30) & (!\clock_div_8|count\(29) & !\clock_div_8|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(0),
	datab => \clock_div_8|count\(30),
	datac => \clock_div_8|count\(29),
	datad => \clock_div_8|count\(31),
	combout => \clock_div_8|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y5_N14
\clock_div_8|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~5_combout\ = (\clock_div_8|count\(17) & !\clock_div_8|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_8|count\(17),
	datad => \clock_div_8|count\(18),
	combout => \clock_div_8|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y5_N16
\clock_div_8|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~6_combout\ = (!\clock_div_8|count\(21) & (!\clock_div_8|count\(24) & (!\clock_div_8|count\(23) & \clock_div_8|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(21),
	datab => \clock_div_8|count\(24),
	datac => \clock_div_8|count\(23),
	datad => \clock_div_8|count\(22),
	combout => \clock_div_8|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y5_N22
\clock_div_8|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~7_combout\ = (\clock_div_8|count\(19) & (!\clock_div_8|count\(20) & (\clock_div_8|Equal0~5_combout\ & \clock_div_8|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(19),
	datab => \clock_div_8|count\(20),
	datac => \clock_div_8|Equal0~5_combout\,
	datad => \clock_div_8|Equal0~6_combout\,
	combout => \clock_div_8|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y5_N20
\clock_div_8|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~10_combout\ = (\clock_div_8|Equal0~8_combout\ & (\clock_div_8|Equal0~9_combout\ & (\clock_div_8|Equal0~7_combout\ & \clock_div_8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|Equal0~8_combout\,
	datab => \clock_div_8|Equal0~9_combout\,
	datac => \clock_div_8|Equal0~7_combout\,
	datad => \clock_div_8|Equal0~4_combout\,
	combout => \clock_div_8|Equal0~10_combout\);

-- Location: FF_X21_Y5_N1
\clock_div_8|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[0]~93_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(0));

-- Location: LCCOMB_X21_Y5_N2
\clock_div_8|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[1]~31_combout\ = (\clock_div_8|count\(1) & (\clock_div_8|count\(0) $ (GND))) # (!\clock_div_8|count\(1) & (!\clock_div_8|count\(0) & VCC))
-- \clock_div_8|count[1]~32\ = CARRY((\clock_div_8|count\(1) & !\clock_div_8|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(1),
	datab => \clock_div_8|count\(0),
	datad => VCC,
	combout => \clock_div_8|count[1]~31_combout\,
	cout => \clock_div_8|count[1]~32\);

-- Location: FF_X21_Y5_N3
\clock_div_8|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[1]~31_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(1));

-- Location: LCCOMB_X21_Y5_N4
\clock_div_8|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[2]~33_combout\ = (\clock_div_8|count\(2) & (!\clock_div_8|count[1]~32\)) # (!\clock_div_8|count\(2) & ((\clock_div_8|count[1]~32\) # (GND)))
-- \clock_div_8|count[2]~34\ = CARRY((!\clock_div_8|count[1]~32\) # (!\clock_div_8|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(2),
	datad => VCC,
	cin => \clock_div_8|count[1]~32\,
	combout => \clock_div_8|count[2]~33_combout\,
	cout => \clock_div_8|count[2]~34\);

-- Location: FF_X21_Y5_N5
\clock_div_8|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[2]~33_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(2));

-- Location: LCCOMB_X21_Y5_N6
\clock_div_8|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[3]~35_combout\ = (\clock_div_8|count\(3) & (\clock_div_8|count[2]~34\ $ (GND))) # (!\clock_div_8|count\(3) & (!\clock_div_8|count[2]~34\ & VCC))
-- \clock_div_8|count[3]~36\ = CARRY((\clock_div_8|count\(3) & !\clock_div_8|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(3),
	datad => VCC,
	cin => \clock_div_8|count[2]~34\,
	combout => \clock_div_8|count[3]~35_combout\,
	cout => \clock_div_8|count[3]~36\);

-- Location: FF_X21_Y5_N7
\clock_div_8|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[3]~35_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(3));

-- Location: LCCOMB_X21_Y5_N8
\clock_div_8|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[4]~37_combout\ = (\clock_div_8|count\(4) & (!\clock_div_8|count[3]~36\)) # (!\clock_div_8|count\(4) & ((\clock_div_8|count[3]~36\) # (GND)))
-- \clock_div_8|count[4]~38\ = CARRY((!\clock_div_8|count[3]~36\) # (!\clock_div_8|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_8|count\(4),
	datad => VCC,
	cin => \clock_div_8|count[3]~36\,
	combout => \clock_div_8|count[4]~37_combout\,
	cout => \clock_div_8|count[4]~38\);

-- Location: FF_X21_Y5_N9
\clock_div_8|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[4]~37_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(4));

-- Location: LCCOMB_X21_Y5_N10
\clock_div_8|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|count[5]~39_combout\ = (\clock_div_8|count\(5) & (\clock_div_8|count[4]~38\ $ (GND))) # (!\clock_div_8|count\(5) & (!\clock_div_8|count[4]~38\ & VCC))
-- \clock_div_8|count[5]~40\ = CARRY((\clock_div_8|count\(5) & !\clock_div_8|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(5),
	datad => VCC,
	cin => \clock_div_8|count[4]~38\,
	combout => \clock_div_8|count[5]~39_combout\,
	cout => \clock_div_8|count[5]~40\);

-- Location: FF_X21_Y5_N11
\clock_div_8|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[5]~39_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(5));

-- Location: FF_X21_Y5_N13
\clock_div_8|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_8|count[6]~41_combout\,
	clrn => \clock_div_8|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_8|count\(6));

-- Location: LCCOMB_X22_Y5_N10
\clock_div_8|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~1_combout\ = (!\clock_div_8|count\(6) & (!\clock_div_8|count\(7) & (!\clock_div_8|count\(5) & !\clock_div_8|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(6),
	datab => \clock_div_8|count\(7),
	datac => \clock_div_8|count\(5),
	datad => \clock_div_8|count\(8),
	combout => \clock_div_8|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y5_N28
\clock_div_8|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~2_combout\ = (!\clock_div_8|count\(11) & (!\clock_div_8|count\(10) & (!\clock_div_8|count\(9) & !\clock_div_8|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(11),
	datab => \clock_div_8|count\(10),
	datac => \clock_div_8|count\(9),
	datad => \clock_div_8|count\(12),
	combout => \clock_div_8|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y5_N8
\clock_div_8|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~0_combout\ = (!\clock_div_8|count\(1) & (!\clock_div_8|count\(3) & (!\clock_div_8|count\(2) & !\clock_div_8|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(1),
	datab => \clock_div_8|count\(3),
	datac => \clock_div_8|count\(2),
	datad => \clock_div_8|count\(4),
	combout => \clock_div_8|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y5_N6
\clock_div_8|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~3_combout\ = (!\clock_div_8|count\(13) & (\clock_div_8|count\(14) & (\clock_div_8|count\(16) & !\clock_div_8|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|count\(13),
	datab => \clock_div_8|count\(14),
	datac => \clock_div_8|count\(16),
	datad => \clock_div_8|count\(15),
	combout => \clock_div_8|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y5_N24
\clock_div_8|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|Equal0~4_combout\ = (\clock_div_8|Equal0~1_combout\ & (\clock_div_8|Equal0~2_combout\ & (\clock_div_8|Equal0~0_combout\ & \clock_div_8|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|Equal0~1_combout\,
	datab => \clock_div_8|Equal0~2_combout\,
	datac => \clock_div_8|Equal0~0_combout\,
	datad => \clock_div_8|Equal0~3_combout\,
	combout => \clock_div_8|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y5_N0
\clock_div_8|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|output~0_combout\ = ((!\clock_div_8|Equal0~7_combout\) # (!\clock_div_8|Equal0~9_combout\)) # (!\clock_div_8|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|Equal0~8_combout\,
	datab => \clock_div_8|Equal0~9_combout\,
	datac => \clock_div_8|Equal0~7_combout\,
	combout => \clock_div_8|output~0_combout\);

-- Location: LCCOMB_X22_Y5_N30
\clock_div_8|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_8|output~1_combout\ = \clock_div_8|output~1_combout\ $ (((\clock_div_8|Equal0~4_combout\ & !\clock_div_8|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|output~1_combout\,
	datab => \clock_div_8|Equal0~4_combout\,
	datad => \clock_div_8|output~0_combout\,
	combout => \clock_div_8|output~1_combout\);

-- Location: LCCOMB_X28_Y4_N30
\clock_div_2|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[0]~93_combout\ = !\clock_div_2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_2|count\(0),
	combout => \clock_div_2|count[0]~93_combout\);

-- Location: FF_X28_Y4_N31
\clock_div_2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[0]~93_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(0));

-- Location: LCCOMB_X29_Y5_N2
\clock_div_2|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[1]~31_combout\ = (\clock_div_2|count\(0) & (\clock_div_2|count\(1) & VCC)) # (!\clock_div_2|count\(0) & (\clock_div_2|count\(1) $ (VCC)))
-- \clock_div_2|count[1]~32\ = CARRY((!\clock_div_2|count\(0) & \clock_div_2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(0),
	datab => \clock_div_2|count\(1),
	datad => VCC,
	combout => \clock_div_2|count[1]~31_combout\,
	cout => \clock_div_2|count[1]~32\);

-- Location: FF_X29_Y5_N3
\clock_div_2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[1]~31_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(1));

-- Location: LCCOMB_X29_Y5_N4
\clock_div_2|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[2]~33_combout\ = (\clock_div_2|count\(2) & (!\clock_div_2|count[1]~32\)) # (!\clock_div_2|count\(2) & ((\clock_div_2|count[1]~32\) # (GND)))
-- \clock_div_2|count[2]~34\ = CARRY((!\clock_div_2|count[1]~32\) # (!\clock_div_2|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(2),
	datad => VCC,
	cin => \clock_div_2|count[1]~32\,
	combout => \clock_div_2|count[2]~33_combout\,
	cout => \clock_div_2|count[2]~34\);

-- Location: FF_X29_Y5_N5
\clock_div_2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[2]~33_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(2));

-- Location: LCCOMB_X29_Y5_N6
\clock_div_2|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[3]~35_combout\ = (\clock_div_2|count\(3) & (\clock_div_2|count[2]~34\ $ (GND))) # (!\clock_div_2|count\(3) & (!\clock_div_2|count[2]~34\ & VCC))
-- \clock_div_2|count[3]~36\ = CARRY((\clock_div_2|count\(3) & !\clock_div_2|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(3),
	datad => VCC,
	cin => \clock_div_2|count[2]~34\,
	combout => \clock_div_2|count[3]~35_combout\,
	cout => \clock_div_2|count[3]~36\);

-- Location: FF_X29_Y5_N7
\clock_div_2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[3]~35_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(3));

-- Location: LCCOMB_X29_Y5_N8
\clock_div_2|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[4]~37_combout\ = (\clock_div_2|count\(4) & (!\clock_div_2|count[3]~36\)) # (!\clock_div_2|count\(4) & ((\clock_div_2|count[3]~36\) # (GND)))
-- \clock_div_2|count[4]~38\ = CARRY((!\clock_div_2|count[3]~36\) # (!\clock_div_2|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(4),
	datad => VCC,
	cin => \clock_div_2|count[3]~36\,
	combout => \clock_div_2|count[4]~37_combout\,
	cout => \clock_div_2|count[4]~38\);

-- Location: FF_X29_Y5_N9
\clock_div_2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[4]~37_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(4));

-- Location: LCCOMB_X29_Y5_N10
\clock_div_2|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[5]~39_combout\ = (\clock_div_2|count\(5) & (\clock_div_2|count[4]~38\ $ (GND))) # (!\clock_div_2|count\(5) & (!\clock_div_2|count[4]~38\ & VCC))
-- \clock_div_2|count[5]~40\ = CARRY((\clock_div_2|count\(5) & !\clock_div_2|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(5),
	datad => VCC,
	cin => \clock_div_2|count[4]~38\,
	combout => \clock_div_2|count[5]~39_combout\,
	cout => \clock_div_2|count[5]~40\);

-- Location: FF_X29_Y5_N11
\clock_div_2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[5]~39_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(5));

-- Location: LCCOMB_X29_Y5_N12
\clock_div_2|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[6]~41_combout\ = (\clock_div_2|count\(6) & (!\clock_div_2|count[5]~40\)) # (!\clock_div_2|count\(6) & ((\clock_div_2|count[5]~40\) # (GND)))
-- \clock_div_2|count[6]~42\ = CARRY((!\clock_div_2|count[5]~40\) # (!\clock_div_2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(6),
	datad => VCC,
	cin => \clock_div_2|count[5]~40\,
	combout => \clock_div_2|count[6]~41_combout\,
	cout => \clock_div_2|count[6]~42\);

-- Location: FF_X29_Y5_N13
\clock_div_2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[6]~41_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(6));

-- Location: LCCOMB_X29_Y5_N14
\clock_div_2|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[7]~43_combout\ = (\clock_div_2|count\(7) & (\clock_div_2|count[6]~42\ $ (GND))) # (!\clock_div_2|count\(7) & (!\clock_div_2|count[6]~42\ & VCC))
-- \clock_div_2|count[7]~44\ = CARRY((\clock_div_2|count\(7) & !\clock_div_2|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(7),
	datad => VCC,
	cin => \clock_div_2|count[6]~42\,
	combout => \clock_div_2|count[7]~43_combout\,
	cout => \clock_div_2|count[7]~44\);

-- Location: FF_X29_Y5_N15
\clock_div_2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[7]~43_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(7));

-- Location: LCCOMB_X29_Y5_N16
\clock_div_2|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[8]~45_combout\ = (\clock_div_2|count\(8) & (!\clock_div_2|count[7]~44\)) # (!\clock_div_2|count\(8) & ((\clock_div_2|count[7]~44\) # (GND)))
-- \clock_div_2|count[8]~46\ = CARRY((!\clock_div_2|count[7]~44\) # (!\clock_div_2|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(8),
	datad => VCC,
	cin => \clock_div_2|count[7]~44\,
	combout => \clock_div_2|count[8]~45_combout\,
	cout => \clock_div_2|count[8]~46\);

-- Location: FF_X29_Y5_N17
\clock_div_2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[8]~45_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(8));

-- Location: LCCOMB_X29_Y5_N18
\clock_div_2|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[9]~47_combout\ = (\clock_div_2|count\(9) & (\clock_div_2|count[8]~46\ $ (GND))) # (!\clock_div_2|count\(9) & (!\clock_div_2|count[8]~46\ & VCC))
-- \clock_div_2|count[9]~48\ = CARRY((\clock_div_2|count\(9) & !\clock_div_2|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(9),
	datad => VCC,
	cin => \clock_div_2|count[8]~46\,
	combout => \clock_div_2|count[9]~47_combout\,
	cout => \clock_div_2|count[9]~48\);

-- Location: FF_X29_Y5_N19
\clock_div_2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[9]~47_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(9));

-- Location: LCCOMB_X29_Y5_N20
\clock_div_2|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[10]~49_combout\ = (\clock_div_2|count\(10) & (!\clock_div_2|count[9]~48\)) # (!\clock_div_2|count\(10) & ((\clock_div_2|count[9]~48\) # (GND)))
-- \clock_div_2|count[10]~50\ = CARRY((!\clock_div_2|count[9]~48\) # (!\clock_div_2|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(10),
	datad => VCC,
	cin => \clock_div_2|count[9]~48\,
	combout => \clock_div_2|count[10]~49_combout\,
	cout => \clock_div_2|count[10]~50\);

-- Location: FF_X29_Y5_N21
\clock_div_2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[10]~49_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(10));

-- Location: LCCOMB_X29_Y5_N22
\clock_div_2|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[11]~51_combout\ = (\clock_div_2|count\(11) & (\clock_div_2|count[10]~50\ $ (GND))) # (!\clock_div_2|count\(11) & (!\clock_div_2|count[10]~50\ & VCC))
-- \clock_div_2|count[11]~52\ = CARRY((\clock_div_2|count\(11) & !\clock_div_2|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(11),
	datad => VCC,
	cin => \clock_div_2|count[10]~50\,
	combout => \clock_div_2|count[11]~51_combout\,
	cout => \clock_div_2|count[11]~52\);

-- Location: FF_X29_Y5_N23
\clock_div_2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[11]~51_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(11));

-- Location: LCCOMB_X29_Y5_N24
\clock_div_2|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[12]~53_combout\ = (\clock_div_2|count\(12) & (!\clock_div_2|count[11]~52\)) # (!\clock_div_2|count\(12) & ((\clock_div_2|count[11]~52\) # (GND)))
-- \clock_div_2|count[12]~54\ = CARRY((!\clock_div_2|count[11]~52\) # (!\clock_div_2|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(12),
	datad => VCC,
	cin => \clock_div_2|count[11]~52\,
	combout => \clock_div_2|count[12]~53_combout\,
	cout => \clock_div_2|count[12]~54\);

-- Location: FF_X29_Y5_N25
\clock_div_2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[12]~53_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(12));

-- Location: LCCOMB_X29_Y5_N26
\clock_div_2|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[13]~55_combout\ = (\clock_div_2|count\(13) & (\clock_div_2|count[12]~54\ $ (GND))) # (!\clock_div_2|count\(13) & (!\clock_div_2|count[12]~54\ & VCC))
-- \clock_div_2|count[13]~56\ = CARRY((\clock_div_2|count\(13) & !\clock_div_2|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(13),
	datad => VCC,
	cin => \clock_div_2|count[12]~54\,
	combout => \clock_div_2|count[13]~55_combout\,
	cout => \clock_div_2|count[13]~56\);

-- Location: FF_X29_Y5_N27
\clock_div_2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[13]~55_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(13));

-- Location: LCCOMB_X29_Y5_N28
\clock_div_2|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[14]~57_combout\ = (\clock_div_2|count\(14) & (!\clock_div_2|count[13]~56\)) # (!\clock_div_2|count\(14) & ((\clock_div_2|count[13]~56\) # (GND)))
-- \clock_div_2|count[14]~58\ = CARRY((!\clock_div_2|count[13]~56\) # (!\clock_div_2|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(14),
	datad => VCC,
	cin => \clock_div_2|count[13]~56\,
	combout => \clock_div_2|count[14]~57_combout\,
	cout => \clock_div_2|count[14]~58\);

-- Location: FF_X29_Y5_N29
\clock_div_2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[14]~57_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(14));

-- Location: LCCOMB_X29_Y5_N30
\clock_div_2|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[15]~59_combout\ = (\clock_div_2|count\(15) & (\clock_div_2|count[14]~58\ $ (GND))) # (!\clock_div_2|count\(15) & (!\clock_div_2|count[14]~58\ & VCC))
-- \clock_div_2|count[15]~60\ = CARRY((\clock_div_2|count\(15) & !\clock_div_2|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(15),
	datad => VCC,
	cin => \clock_div_2|count[14]~58\,
	combout => \clock_div_2|count[15]~59_combout\,
	cout => \clock_div_2|count[15]~60\);

-- Location: FF_X29_Y5_N31
\clock_div_2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[15]~59_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(15));

-- Location: LCCOMB_X29_Y4_N0
\clock_div_2|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[16]~61_combout\ = (\clock_div_2|count\(16) & (!\clock_div_2|count[15]~60\)) # (!\clock_div_2|count\(16) & ((\clock_div_2|count[15]~60\) # (GND)))
-- \clock_div_2|count[16]~62\ = CARRY((!\clock_div_2|count[15]~60\) # (!\clock_div_2|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(16),
	datad => VCC,
	cin => \clock_div_2|count[15]~60\,
	combout => \clock_div_2|count[16]~61_combout\,
	cout => \clock_div_2|count[16]~62\);

-- Location: FF_X29_Y4_N1
\clock_div_2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[16]~61_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(16));

-- Location: LCCOMB_X29_Y4_N2
\clock_div_2|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[17]~63_combout\ = (\clock_div_2|count\(17) & (\clock_div_2|count[16]~62\ $ (GND))) # (!\clock_div_2|count\(17) & (!\clock_div_2|count[16]~62\ & VCC))
-- \clock_div_2|count[17]~64\ = CARRY((\clock_div_2|count\(17) & !\clock_div_2|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(17),
	datad => VCC,
	cin => \clock_div_2|count[16]~62\,
	combout => \clock_div_2|count[17]~63_combout\,
	cout => \clock_div_2|count[17]~64\);

-- Location: FF_X29_Y4_N3
\clock_div_2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[17]~63_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(17));

-- Location: LCCOMB_X29_Y4_N4
\clock_div_2|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[18]~65_combout\ = (\clock_div_2|count\(18) & (!\clock_div_2|count[17]~64\)) # (!\clock_div_2|count\(18) & ((\clock_div_2|count[17]~64\) # (GND)))
-- \clock_div_2|count[18]~66\ = CARRY((!\clock_div_2|count[17]~64\) # (!\clock_div_2|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(18),
	datad => VCC,
	cin => \clock_div_2|count[17]~64\,
	combout => \clock_div_2|count[18]~65_combout\,
	cout => \clock_div_2|count[18]~66\);

-- Location: FF_X29_Y4_N5
\clock_div_2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[18]~65_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(18));

-- Location: LCCOMB_X29_Y4_N6
\clock_div_2|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[19]~67_combout\ = (\clock_div_2|count\(19) & (\clock_div_2|count[18]~66\ $ (GND))) # (!\clock_div_2|count\(19) & (!\clock_div_2|count[18]~66\ & VCC))
-- \clock_div_2|count[19]~68\ = CARRY((\clock_div_2|count\(19) & !\clock_div_2|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(19),
	datad => VCC,
	cin => \clock_div_2|count[18]~66\,
	combout => \clock_div_2|count[19]~67_combout\,
	cout => \clock_div_2|count[19]~68\);

-- Location: FF_X29_Y4_N7
\clock_div_2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[19]~67_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(19));

-- Location: LCCOMB_X29_Y4_N8
\clock_div_2|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[20]~69_combout\ = (\clock_div_2|count\(20) & (!\clock_div_2|count[19]~68\)) # (!\clock_div_2|count\(20) & ((\clock_div_2|count[19]~68\) # (GND)))
-- \clock_div_2|count[20]~70\ = CARRY((!\clock_div_2|count[19]~68\) # (!\clock_div_2|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(20),
	datad => VCC,
	cin => \clock_div_2|count[19]~68\,
	combout => \clock_div_2|count[20]~69_combout\,
	cout => \clock_div_2|count[20]~70\);

-- Location: FF_X29_Y4_N9
\clock_div_2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[20]~69_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(20));

-- Location: LCCOMB_X29_Y4_N10
\clock_div_2|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[21]~71_combout\ = (\clock_div_2|count\(21) & (\clock_div_2|count[20]~70\ $ (GND))) # (!\clock_div_2|count\(21) & (!\clock_div_2|count[20]~70\ & VCC))
-- \clock_div_2|count[21]~72\ = CARRY((\clock_div_2|count\(21) & !\clock_div_2|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(21),
	datad => VCC,
	cin => \clock_div_2|count[20]~70\,
	combout => \clock_div_2|count[21]~71_combout\,
	cout => \clock_div_2|count[21]~72\);

-- Location: FF_X29_Y4_N11
\clock_div_2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[21]~71_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(21));

-- Location: LCCOMB_X29_Y4_N12
\clock_div_2|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[22]~73_combout\ = (\clock_div_2|count\(22) & (!\clock_div_2|count[21]~72\)) # (!\clock_div_2|count\(22) & ((\clock_div_2|count[21]~72\) # (GND)))
-- \clock_div_2|count[22]~74\ = CARRY((!\clock_div_2|count[21]~72\) # (!\clock_div_2|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(22),
	datad => VCC,
	cin => \clock_div_2|count[21]~72\,
	combout => \clock_div_2|count[22]~73_combout\,
	cout => \clock_div_2|count[22]~74\);

-- Location: FF_X29_Y4_N13
\clock_div_2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[22]~73_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(22));

-- Location: LCCOMB_X29_Y4_N14
\clock_div_2|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[23]~75_combout\ = (\clock_div_2|count\(23) & (\clock_div_2|count[22]~74\ $ (GND))) # (!\clock_div_2|count\(23) & (!\clock_div_2|count[22]~74\ & VCC))
-- \clock_div_2|count[23]~76\ = CARRY((\clock_div_2|count\(23) & !\clock_div_2|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(23),
	datad => VCC,
	cin => \clock_div_2|count[22]~74\,
	combout => \clock_div_2|count[23]~75_combout\,
	cout => \clock_div_2|count[23]~76\);

-- Location: FF_X29_Y4_N15
\clock_div_2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[23]~75_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(23));

-- Location: LCCOMB_X29_Y4_N16
\clock_div_2|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[24]~77_combout\ = (\clock_div_2|count\(24) & (!\clock_div_2|count[23]~76\)) # (!\clock_div_2|count\(24) & ((\clock_div_2|count[23]~76\) # (GND)))
-- \clock_div_2|count[24]~78\ = CARRY((!\clock_div_2|count[23]~76\) # (!\clock_div_2|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(24),
	datad => VCC,
	cin => \clock_div_2|count[23]~76\,
	combout => \clock_div_2|count[24]~77_combout\,
	cout => \clock_div_2|count[24]~78\);

-- Location: FF_X29_Y4_N17
\clock_div_2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[24]~77_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(24));

-- Location: LCCOMB_X30_Y4_N30
\clock_div_2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~6_combout\ = (!\clock_div_2|count\(22) & (!\clock_div_2|count\(23) & (\clock_div_2|count\(24) & \clock_div_2|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(22),
	datab => \clock_div_2|count\(23),
	datac => \clock_div_2|count\(24),
	datad => \clock_div_2|count\(21),
	combout => \clock_div_2|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y4_N8
\clock_div_2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~5_combout\ = (\clock_div_2|count\(20) & (!\clock_div_2|count\(19) & (!\clock_div_2|count\(17) & !\clock_div_2|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(20),
	datab => \clock_div_2|count\(19),
	datac => \clock_div_2|count\(17),
	datad => \clock_div_2|count\(18),
	combout => \clock_div_2|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y4_N12
\clock_div_2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~3_combout\ = (\clock_div_2|count\(16) & (\clock_div_2|count\(13) & (!\clock_div_2|count\(14) & !\clock_div_2|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(16),
	datab => \clock_div_2|count\(13),
	datac => \clock_div_2|count\(14),
	datad => \clock_div_2|count\(15),
	combout => \clock_div_2|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y4_N4
\clock_div_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~1_combout\ = (!\clock_div_2|count\(7) & (!\clock_div_2|count\(6) & (!\clock_div_2|count\(5) & \clock_div_2|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(7),
	datab => \clock_div_2|count\(6),
	datac => \clock_div_2|count\(5),
	datad => \clock_div_2|count\(8),
	combout => \clock_div_2|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y4_N26
\clock_div_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~2_combout\ = (!\clock_div_2|count\(9) & (!\clock_div_2|count\(12) & (\clock_div_2|count\(11) & \clock_div_2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(9),
	datab => \clock_div_2|count\(12),
	datac => \clock_div_2|count\(11),
	datad => \clock_div_2|count\(10),
	combout => \clock_div_2|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y5_N0
\clock_div_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~0_combout\ = (!\clock_div_2|count\(3) & (!\clock_div_2|count\(2) & (!\clock_div_2|count\(4) & !\clock_div_2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(3),
	datab => \clock_div_2|count\(2),
	datac => \clock_div_2|count\(4),
	datad => \clock_div_2|count\(1),
	combout => \clock_div_2|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y4_N14
\clock_div_2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~4_combout\ = (\clock_div_2|Equal0~3_combout\ & (\clock_div_2|Equal0~1_combout\ & (\clock_div_2|Equal0~2_combout\ & \clock_div_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|Equal0~3_combout\,
	datab => \clock_div_2|Equal0~1_combout\,
	datac => \clock_div_2|Equal0~2_combout\,
	datad => \clock_div_2|Equal0~0_combout\,
	combout => \clock_div_2|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y4_N18
\clock_div_2|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[25]~79_combout\ = (\clock_div_2|count\(25) & (\clock_div_2|count[24]~78\ $ (GND))) # (!\clock_div_2|count\(25) & (!\clock_div_2|count[24]~78\ & VCC))
-- \clock_div_2|count[25]~80\ = CARRY((\clock_div_2|count\(25) & !\clock_div_2|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(25),
	datad => VCC,
	cin => \clock_div_2|count[24]~78\,
	combout => \clock_div_2|count[25]~79_combout\,
	cout => \clock_div_2|count[25]~80\);

-- Location: FF_X29_Y4_N19
\clock_div_2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[25]~79_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(25));

-- Location: LCCOMB_X29_Y4_N20
\clock_div_2|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[26]~81_combout\ = (\clock_div_2|count\(26) & (!\clock_div_2|count[25]~80\)) # (!\clock_div_2|count\(26) & ((\clock_div_2|count[25]~80\) # (GND)))
-- \clock_div_2|count[26]~82\ = CARRY((!\clock_div_2|count[25]~80\) # (!\clock_div_2|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(26),
	datad => VCC,
	cin => \clock_div_2|count[25]~80\,
	combout => \clock_div_2|count[26]~81_combout\,
	cout => \clock_div_2|count[26]~82\);

-- Location: FF_X29_Y4_N21
\clock_div_2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[26]~81_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(26));

-- Location: LCCOMB_X29_Y4_N22
\clock_div_2|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[27]~83_combout\ = (\clock_div_2|count\(27) & (\clock_div_2|count[26]~82\ $ (GND))) # (!\clock_div_2|count\(27) & (!\clock_div_2|count[26]~82\ & VCC))
-- \clock_div_2|count[27]~84\ = CARRY((\clock_div_2|count\(27) & !\clock_div_2|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(27),
	datad => VCC,
	cin => \clock_div_2|count[26]~82\,
	combout => \clock_div_2|count[27]~83_combout\,
	cout => \clock_div_2|count[27]~84\);

-- Location: FF_X29_Y4_N23
\clock_div_2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[27]~83_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(27));

-- Location: LCCOMB_X29_Y4_N24
\clock_div_2|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[28]~85_combout\ = (\clock_div_2|count\(28) & (!\clock_div_2|count[27]~84\)) # (!\clock_div_2|count\(28) & ((\clock_div_2|count[27]~84\) # (GND)))
-- \clock_div_2|count[28]~86\ = CARRY((!\clock_div_2|count[27]~84\) # (!\clock_div_2|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(28),
	datad => VCC,
	cin => \clock_div_2|count[27]~84\,
	combout => \clock_div_2|count[28]~85_combout\,
	cout => \clock_div_2|count[28]~86\);

-- Location: FF_X29_Y4_N25
\clock_div_2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[28]~85_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(28));

-- Location: LCCOMB_X28_Y4_N8
\clock_div_2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~7_combout\ = (!\clock_div_2|count\(26) & (!\clock_div_2|count\(25) & (!\clock_div_2|count\(27) & !\clock_div_2|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(26),
	datab => \clock_div_2|count\(25),
	datac => \clock_div_2|count\(27),
	datad => \clock_div_2|count\(28),
	combout => \clock_div_2|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y4_N26
\clock_div_2|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[29]~87_combout\ = (\clock_div_2|count\(29) & (\clock_div_2|count[28]~86\ $ (GND))) # (!\clock_div_2|count\(29) & (!\clock_div_2|count[28]~86\ & VCC))
-- \clock_div_2|count[29]~88\ = CARRY((\clock_div_2|count\(29) & !\clock_div_2|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(29),
	datad => VCC,
	cin => \clock_div_2|count[28]~86\,
	combout => \clock_div_2|count[29]~87_combout\,
	cout => \clock_div_2|count[29]~88\);

-- Location: FF_X29_Y4_N27
\clock_div_2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[29]~87_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(29));

-- Location: LCCOMB_X29_Y4_N28
\clock_div_2|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[30]~89_combout\ = (\clock_div_2|count\(30) & (!\clock_div_2|count[29]~88\)) # (!\clock_div_2|count\(30) & ((\clock_div_2|count[29]~88\) # (GND)))
-- \clock_div_2|count[30]~90\ = CARRY((!\clock_div_2|count[29]~88\) # (!\clock_div_2|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_2|count\(30),
	datad => VCC,
	cin => \clock_div_2|count[29]~88\,
	combout => \clock_div_2|count[30]~89_combout\,
	cout => \clock_div_2|count[30]~90\);

-- Location: FF_X29_Y4_N29
\clock_div_2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[30]~89_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(30));

-- Location: LCCOMB_X29_Y4_N30
\clock_div_2|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|count[31]~91_combout\ = \clock_div_2|count\(31) $ (!\clock_div_2|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(31),
	cin => \clock_div_2|count[30]~90\,
	combout => \clock_div_2|count[31]~91_combout\);

-- Location: FF_X29_Y4_N31
\clock_div_2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_2|count[31]~91_combout\,
	clrn => \clock_div_2|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_2|count\(31));

-- Location: LCCOMB_X28_Y4_N20
\clock_div_2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~8_combout\ = (\clock_div_2|count\(0) & (!\clock_div_2|count\(30) & (!\clock_div_2|count\(31) & !\clock_div_2|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|count\(0),
	datab => \clock_div_2|count\(30),
	datac => \clock_div_2|count\(31),
	datad => \clock_div_2|count\(29),
	combout => \clock_div_2|Equal0~8_combout\);

-- Location: LCCOMB_X28_Y4_N18
\clock_div_2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~9_combout\ = (\clock_div_2|Equal0~7_combout\ & \clock_div_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_2|Equal0~7_combout\,
	datad => \clock_div_2|Equal0~8_combout\,
	combout => \clock_div_2|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y4_N0
\clock_div_2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|Equal0~10_combout\ = (\clock_div_2|Equal0~6_combout\ & (\clock_div_2|Equal0~5_combout\ & (\clock_div_2|Equal0~4_combout\ & \clock_div_2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_2|Equal0~6_combout\,
	datab => \clock_div_2|Equal0~5_combout\,
	datac => \clock_div_2|Equal0~4_combout\,
	datad => \clock_div_2|Equal0~9_combout\,
	combout => \clock_div_2|Equal0~10_combout\);

-- Location: LCCOMB_X28_Y4_N4
\clock_div_2|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_2|output~0_combout\ = \clock_div_2|output~0_combout\ $ (\clock_div_2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_2|output~0_combout\,
	datad => \clock_div_2|Equal0~10_combout\,
	combout => \clock_div_2|output~0_combout\);

-- Location: LCCOMB_X24_Y4_N26
\counter[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(1) = (\swt~input_o\ & ((\clock_div_2|output~0_combout\))) # (!\swt~input_o\ & (counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \clock_div_2|output~0_combout\,
	datac => \swt~input_o\,
	combout => counter(1));

-- Location: LCCOMB_X24_Y4_N4
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X24_Y4_N6
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counter(1) & ((\Add1~1_cout\) # (GND))) # (!counter(1) & (!\Add1~1_cout\))
-- \Add1~3\ = CARRY((counter(1)) # (!\Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y4_N8
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X25_Y4_N10
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & ((\Add0~1_cout\) # (GND))) # (!counter(1) & (!\Add0~1_cout\))
-- \Add0~3\ = CARRY((counter(1)) # (!\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y3_N0
\clock_div_7|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[0]~93_combout\ = !\clock_div_7|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_7|count\(0),
	combout => \clock_div_7|count[0]~93_combout\);

-- Location: FF_X25_Y3_N1
\clock_div_7|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[0]~93_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(0));

-- Location: LCCOMB_X25_Y3_N2
\clock_div_7|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[1]~31_combout\ = (\clock_div_7|count\(1) & (\clock_div_7|count\(0) $ (GND))) # (!\clock_div_7|count\(1) & (!\clock_div_7|count\(0) & VCC))
-- \clock_div_7|count[1]~32\ = CARRY((\clock_div_7|count\(1) & !\clock_div_7|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(1),
	datab => \clock_div_7|count\(0),
	datad => VCC,
	combout => \clock_div_7|count[1]~31_combout\,
	cout => \clock_div_7|count[1]~32\);

-- Location: FF_X25_Y3_N3
\clock_div_7|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[1]~31_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(1));

-- Location: LCCOMB_X25_Y3_N4
\clock_div_7|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[2]~33_combout\ = (\clock_div_7|count\(2) & (!\clock_div_7|count[1]~32\)) # (!\clock_div_7|count\(2) & ((\clock_div_7|count[1]~32\) # (GND)))
-- \clock_div_7|count[2]~34\ = CARRY((!\clock_div_7|count[1]~32\) # (!\clock_div_7|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(2),
	datad => VCC,
	cin => \clock_div_7|count[1]~32\,
	combout => \clock_div_7|count[2]~33_combout\,
	cout => \clock_div_7|count[2]~34\);

-- Location: FF_X25_Y3_N5
\clock_div_7|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[2]~33_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(2));

-- Location: LCCOMB_X25_Y3_N6
\clock_div_7|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[3]~35_combout\ = (\clock_div_7|count\(3) & (\clock_div_7|count[2]~34\ $ (GND))) # (!\clock_div_7|count\(3) & (!\clock_div_7|count[2]~34\ & VCC))
-- \clock_div_7|count[3]~36\ = CARRY((\clock_div_7|count\(3) & !\clock_div_7|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(3),
	datad => VCC,
	cin => \clock_div_7|count[2]~34\,
	combout => \clock_div_7|count[3]~35_combout\,
	cout => \clock_div_7|count[3]~36\);

-- Location: FF_X25_Y3_N7
\clock_div_7|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[3]~35_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(3));

-- Location: LCCOMB_X25_Y3_N8
\clock_div_7|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[4]~37_combout\ = (\clock_div_7|count\(4) & (!\clock_div_7|count[3]~36\)) # (!\clock_div_7|count\(4) & ((\clock_div_7|count[3]~36\) # (GND)))
-- \clock_div_7|count[4]~38\ = CARRY((!\clock_div_7|count[3]~36\) # (!\clock_div_7|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(4),
	datad => VCC,
	cin => \clock_div_7|count[3]~36\,
	combout => \clock_div_7|count[4]~37_combout\,
	cout => \clock_div_7|count[4]~38\);

-- Location: FF_X25_Y3_N9
\clock_div_7|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[4]~37_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(4));

-- Location: LCCOMB_X25_Y3_N10
\clock_div_7|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[5]~39_combout\ = (\clock_div_7|count\(5) & (\clock_div_7|count[4]~38\ $ (GND))) # (!\clock_div_7|count\(5) & (!\clock_div_7|count[4]~38\ & VCC))
-- \clock_div_7|count[5]~40\ = CARRY((\clock_div_7|count\(5) & !\clock_div_7|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(5),
	datad => VCC,
	cin => \clock_div_7|count[4]~38\,
	combout => \clock_div_7|count[5]~39_combout\,
	cout => \clock_div_7|count[5]~40\);

-- Location: FF_X25_Y3_N11
\clock_div_7|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[5]~39_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(5));

-- Location: LCCOMB_X25_Y3_N12
\clock_div_7|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[6]~41_combout\ = (\clock_div_7|count\(6) & (!\clock_div_7|count[5]~40\)) # (!\clock_div_7|count\(6) & ((\clock_div_7|count[5]~40\) # (GND)))
-- \clock_div_7|count[6]~42\ = CARRY((!\clock_div_7|count[5]~40\) # (!\clock_div_7|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(6),
	datad => VCC,
	cin => \clock_div_7|count[5]~40\,
	combout => \clock_div_7|count[6]~41_combout\,
	cout => \clock_div_7|count[6]~42\);

-- Location: FF_X25_Y3_N13
\clock_div_7|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[6]~41_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(6));

-- Location: LCCOMB_X25_Y3_N14
\clock_div_7|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[7]~43_combout\ = (\clock_div_7|count\(7) & (\clock_div_7|count[6]~42\ $ (GND))) # (!\clock_div_7|count\(7) & (!\clock_div_7|count[6]~42\ & VCC))
-- \clock_div_7|count[7]~44\ = CARRY((\clock_div_7|count\(7) & !\clock_div_7|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(7),
	datad => VCC,
	cin => \clock_div_7|count[6]~42\,
	combout => \clock_div_7|count[7]~43_combout\,
	cout => \clock_div_7|count[7]~44\);

-- Location: FF_X25_Y3_N15
\clock_div_7|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[7]~43_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(7));

-- Location: LCCOMB_X25_Y3_N16
\clock_div_7|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[8]~45_combout\ = (\clock_div_7|count\(8) & (!\clock_div_7|count[7]~44\)) # (!\clock_div_7|count\(8) & ((\clock_div_7|count[7]~44\) # (GND)))
-- \clock_div_7|count[8]~46\ = CARRY((!\clock_div_7|count[7]~44\) # (!\clock_div_7|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(8),
	datad => VCC,
	cin => \clock_div_7|count[7]~44\,
	combout => \clock_div_7|count[8]~45_combout\,
	cout => \clock_div_7|count[8]~46\);

-- Location: FF_X25_Y3_N17
\clock_div_7|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[8]~45_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(8));

-- Location: LCCOMB_X25_Y3_N18
\clock_div_7|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[9]~47_combout\ = (\clock_div_7|count\(9) & (\clock_div_7|count[8]~46\ $ (GND))) # (!\clock_div_7|count\(9) & (!\clock_div_7|count[8]~46\ & VCC))
-- \clock_div_7|count[9]~48\ = CARRY((\clock_div_7|count\(9) & !\clock_div_7|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(9),
	datad => VCC,
	cin => \clock_div_7|count[8]~46\,
	combout => \clock_div_7|count[9]~47_combout\,
	cout => \clock_div_7|count[9]~48\);

-- Location: FF_X25_Y3_N19
\clock_div_7|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[9]~47_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(9));

-- Location: LCCOMB_X25_Y3_N20
\clock_div_7|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[10]~49_combout\ = (\clock_div_7|count\(10) & (!\clock_div_7|count[9]~48\)) # (!\clock_div_7|count\(10) & ((\clock_div_7|count[9]~48\) # (GND)))
-- \clock_div_7|count[10]~50\ = CARRY((!\clock_div_7|count[9]~48\) # (!\clock_div_7|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(10),
	datad => VCC,
	cin => \clock_div_7|count[9]~48\,
	combout => \clock_div_7|count[10]~49_combout\,
	cout => \clock_div_7|count[10]~50\);

-- Location: FF_X25_Y3_N21
\clock_div_7|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[10]~49_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(10));

-- Location: LCCOMB_X25_Y3_N22
\clock_div_7|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[11]~51_combout\ = (\clock_div_7|count\(11) & (\clock_div_7|count[10]~50\ $ (GND))) # (!\clock_div_7|count\(11) & (!\clock_div_7|count[10]~50\ & VCC))
-- \clock_div_7|count[11]~52\ = CARRY((\clock_div_7|count\(11) & !\clock_div_7|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(11),
	datad => VCC,
	cin => \clock_div_7|count[10]~50\,
	combout => \clock_div_7|count[11]~51_combout\,
	cout => \clock_div_7|count[11]~52\);

-- Location: FF_X25_Y3_N23
\clock_div_7|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[11]~51_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(11));

-- Location: LCCOMB_X25_Y3_N24
\clock_div_7|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[12]~53_combout\ = (\clock_div_7|count\(12) & (!\clock_div_7|count[11]~52\)) # (!\clock_div_7|count\(12) & ((\clock_div_7|count[11]~52\) # (GND)))
-- \clock_div_7|count[12]~54\ = CARRY((!\clock_div_7|count[11]~52\) # (!\clock_div_7|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(12),
	datad => VCC,
	cin => \clock_div_7|count[11]~52\,
	combout => \clock_div_7|count[12]~53_combout\,
	cout => \clock_div_7|count[12]~54\);

-- Location: FF_X25_Y3_N25
\clock_div_7|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[12]~53_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(12));

-- Location: LCCOMB_X25_Y3_N26
\clock_div_7|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[13]~55_combout\ = (\clock_div_7|count\(13) & (\clock_div_7|count[12]~54\ $ (GND))) # (!\clock_div_7|count\(13) & (!\clock_div_7|count[12]~54\ & VCC))
-- \clock_div_7|count[13]~56\ = CARRY((\clock_div_7|count\(13) & !\clock_div_7|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(13),
	datad => VCC,
	cin => \clock_div_7|count[12]~54\,
	combout => \clock_div_7|count[13]~55_combout\,
	cout => \clock_div_7|count[13]~56\);

-- Location: FF_X25_Y3_N27
\clock_div_7|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[13]~55_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(13));

-- Location: LCCOMB_X25_Y3_N28
\clock_div_7|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[14]~57_combout\ = (\clock_div_7|count\(14) & (!\clock_div_7|count[13]~56\)) # (!\clock_div_7|count\(14) & ((\clock_div_7|count[13]~56\) # (GND)))
-- \clock_div_7|count[14]~58\ = CARRY((!\clock_div_7|count[13]~56\) # (!\clock_div_7|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(14),
	datad => VCC,
	cin => \clock_div_7|count[13]~56\,
	combout => \clock_div_7|count[14]~57_combout\,
	cout => \clock_div_7|count[14]~58\);

-- Location: FF_X25_Y3_N29
\clock_div_7|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[14]~57_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(14));

-- Location: LCCOMB_X25_Y3_N30
\clock_div_7|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[15]~59_combout\ = (\clock_div_7|count\(15) & (\clock_div_7|count[14]~58\ $ (GND))) # (!\clock_div_7|count\(15) & (!\clock_div_7|count[14]~58\ & VCC))
-- \clock_div_7|count[15]~60\ = CARRY((\clock_div_7|count\(15) & !\clock_div_7|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(15),
	datad => VCC,
	cin => \clock_div_7|count[14]~58\,
	combout => \clock_div_7|count[15]~59_combout\,
	cout => \clock_div_7|count[15]~60\);

-- Location: FF_X25_Y3_N31
\clock_div_7|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[15]~59_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(15));

-- Location: LCCOMB_X25_Y2_N0
\clock_div_7|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[16]~61_combout\ = (\clock_div_7|count\(16) & (!\clock_div_7|count[15]~60\)) # (!\clock_div_7|count\(16) & ((\clock_div_7|count[15]~60\) # (GND)))
-- \clock_div_7|count[16]~62\ = CARRY((!\clock_div_7|count[15]~60\) # (!\clock_div_7|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(16),
	datad => VCC,
	cin => \clock_div_7|count[15]~60\,
	combout => \clock_div_7|count[16]~61_combout\,
	cout => \clock_div_7|count[16]~62\);

-- Location: FF_X25_Y2_N1
\clock_div_7|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[16]~61_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(16));

-- Location: LCCOMB_X25_Y2_N2
\clock_div_7|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[17]~63_combout\ = (\clock_div_7|count\(17) & (\clock_div_7|count[16]~62\ $ (GND))) # (!\clock_div_7|count\(17) & (!\clock_div_7|count[16]~62\ & VCC))
-- \clock_div_7|count[17]~64\ = CARRY((\clock_div_7|count\(17) & !\clock_div_7|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(17),
	datad => VCC,
	cin => \clock_div_7|count[16]~62\,
	combout => \clock_div_7|count[17]~63_combout\,
	cout => \clock_div_7|count[17]~64\);

-- Location: FF_X25_Y2_N3
\clock_div_7|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[17]~63_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(17));

-- Location: LCCOMB_X25_Y2_N4
\clock_div_7|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[18]~65_combout\ = (\clock_div_7|count\(18) & (!\clock_div_7|count[17]~64\)) # (!\clock_div_7|count\(18) & ((\clock_div_7|count[17]~64\) # (GND)))
-- \clock_div_7|count[18]~66\ = CARRY((!\clock_div_7|count[17]~64\) # (!\clock_div_7|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(18),
	datad => VCC,
	cin => \clock_div_7|count[17]~64\,
	combout => \clock_div_7|count[18]~65_combout\,
	cout => \clock_div_7|count[18]~66\);

-- Location: FF_X25_Y2_N5
\clock_div_7|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[18]~65_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(18));

-- Location: LCCOMB_X25_Y2_N6
\clock_div_7|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[19]~67_combout\ = (\clock_div_7|count\(19) & (\clock_div_7|count[18]~66\ $ (GND))) # (!\clock_div_7|count\(19) & (!\clock_div_7|count[18]~66\ & VCC))
-- \clock_div_7|count[19]~68\ = CARRY((\clock_div_7|count\(19) & !\clock_div_7|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(19),
	datad => VCC,
	cin => \clock_div_7|count[18]~66\,
	combout => \clock_div_7|count[19]~67_combout\,
	cout => \clock_div_7|count[19]~68\);

-- Location: FF_X25_Y2_N7
\clock_div_7|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[19]~67_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(19));

-- Location: LCCOMB_X25_Y2_N8
\clock_div_7|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[20]~69_combout\ = (\clock_div_7|count\(20) & (!\clock_div_7|count[19]~68\)) # (!\clock_div_7|count\(20) & ((\clock_div_7|count[19]~68\) # (GND)))
-- \clock_div_7|count[20]~70\ = CARRY((!\clock_div_7|count[19]~68\) # (!\clock_div_7|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(20),
	datad => VCC,
	cin => \clock_div_7|count[19]~68\,
	combout => \clock_div_7|count[20]~69_combout\,
	cout => \clock_div_7|count[20]~70\);

-- Location: FF_X25_Y2_N9
\clock_div_7|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[20]~69_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(20));

-- Location: LCCOMB_X25_Y2_N10
\clock_div_7|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[21]~71_combout\ = (\clock_div_7|count\(21) & (\clock_div_7|count[20]~70\ $ (GND))) # (!\clock_div_7|count\(21) & (!\clock_div_7|count[20]~70\ & VCC))
-- \clock_div_7|count[21]~72\ = CARRY((\clock_div_7|count\(21) & !\clock_div_7|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(21),
	datad => VCC,
	cin => \clock_div_7|count[20]~70\,
	combout => \clock_div_7|count[21]~71_combout\,
	cout => \clock_div_7|count[21]~72\);

-- Location: FF_X25_Y2_N11
\clock_div_7|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[21]~71_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(21));

-- Location: LCCOMB_X25_Y2_N12
\clock_div_7|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[22]~73_combout\ = (\clock_div_7|count\(22) & (!\clock_div_7|count[21]~72\)) # (!\clock_div_7|count\(22) & ((\clock_div_7|count[21]~72\) # (GND)))
-- \clock_div_7|count[22]~74\ = CARRY((!\clock_div_7|count[21]~72\) # (!\clock_div_7|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(22),
	datad => VCC,
	cin => \clock_div_7|count[21]~72\,
	combout => \clock_div_7|count[22]~73_combout\,
	cout => \clock_div_7|count[22]~74\);

-- Location: FF_X25_Y2_N13
\clock_div_7|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[22]~73_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(22));

-- Location: LCCOMB_X25_Y2_N14
\clock_div_7|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[23]~75_combout\ = (\clock_div_7|count\(23) & (\clock_div_7|count[22]~74\ $ (GND))) # (!\clock_div_7|count\(23) & (!\clock_div_7|count[22]~74\ & VCC))
-- \clock_div_7|count[23]~76\ = CARRY((\clock_div_7|count\(23) & !\clock_div_7|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(23),
	datad => VCC,
	cin => \clock_div_7|count[22]~74\,
	combout => \clock_div_7|count[23]~75_combout\,
	cout => \clock_div_7|count[23]~76\);

-- Location: FF_X25_Y2_N15
\clock_div_7|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[23]~75_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(23));

-- Location: LCCOMB_X25_Y2_N16
\clock_div_7|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[24]~77_combout\ = (\clock_div_7|count\(24) & (!\clock_div_7|count[23]~76\)) # (!\clock_div_7|count\(24) & ((\clock_div_7|count[23]~76\) # (GND)))
-- \clock_div_7|count[24]~78\ = CARRY((!\clock_div_7|count[23]~76\) # (!\clock_div_7|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(24),
	datad => VCC,
	cin => \clock_div_7|count[23]~76\,
	combout => \clock_div_7|count[24]~77_combout\,
	cout => \clock_div_7|count[24]~78\);

-- Location: FF_X25_Y2_N17
\clock_div_7|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[24]~77_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(24));

-- Location: LCCOMB_X25_Y2_N18
\clock_div_7|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[25]~79_combout\ = (\clock_div_7|count\(25) & (\clock_div_7|count[24]~78\ $ (GND))) # (!\clock_div_7|count\(25) & (!\clock_div_7|count[24]~78\ & VCC))
-- \clock_div_7|count[25]~80\ = CARRY((\clock_div_7|count\(25) & !\clock_div_7|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(25),
	datad => VCC,
	cin => \clock_div_7|count[24]~78\,
	combout => \clock_div_7|count[25]~79_combout\,
	cout => \clock_div_7|count[25]~80\);

-- Location: FF_X25_Y2_N19
\clock_div_7|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[25]~79_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(25));

-- Location: LCCOMB_X25_Y2_N20
\clock_div_7|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[26]~81_combout\ = (\clock_div_7|count\(26) & (!\clock_div_7|count[25]~80\)) # (!\clock_div_7|count\(26) & ((\clock_div_7|count[25]~80\) # (GND)))
-- \clock_div_7|count[26]~82\ = CARRY((!\clock_div_7|count[25]~80\) # (!\clock_div_7|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(26),
	datad => VCC,
	cin => \clock_div_7|count[25]~80\,
	combout => \clock_div_7|count[26]~81_combout\,
	cout => \clock_div_7|count[26]~82\);

-- Location: FF_X25_Y2_N21
\clock_div_7|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[26]~81_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(26));

-- Location: LCCOMB_X25_Y2_N22
\clock_div_7|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[27]~83_combout\ = (\clock_div_7|count\(27) & (\clock_div_7|count[26]~82\ $ (GND))) # (!\clock_div_7|count\(27) & (!\clock_div_7|count[26]~82\ & VCC))
-- \clock_div_7|count[27]~84\ = CARRY((\clock_div_7|count\(27) & !\clock_div_7|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(27),
	datad => VCC,
	cin => \clock_div_7|count[26]~82\,
	combout => \clock_div_7|count[27]~83_combout\,
	cout => \clock_div_7|count[27]~84\);

-- Location: FF_X25_Y2_N23
\clock_div_7|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[27]~83_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(27));

-- Location: LCCOMB_X25_Y2_N24
\clock_div_7|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[28]~85_combout\ = (\clock_div_7|count\(28) & (!\clock_div_7|count[27]~84\)) # (!\clock_div_7|count\(28) & ((\clock_div_7|count[27]~84\) # (GND)))
-- \clock_div_7|count[28]~86\ = CARRY((!\clock_div_7|count[27]~84\) # (!\clock_div_7|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(28),
	datad => VCC,
	cin => \clock_div_7|count[27]~84\,
	combout => \clock_div_7|count[28]~85_combout\,
	cout => \clock_div_7|count[28]~86\);

-- Location: FF_X25_Y2_N25
\clock_div_7|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[28]~85_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(28));

-- Location: LCCOMB_X25_Y2_N26
\clock_div_7|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[29]~87_combout\ = (\clock_div_7|count\(29) & (\clock_div_7|count[28]~86\ $ (GND))) # (!\clock_div_7|count\(29) & (!\clock_div_7|count[28]~86\ & VCC))
-- \clock_div_7|count[29]~88\ = CARRY((\clock_div_7|count\(29) & !\clock_div_7|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(29),
	datad => VCC,
	cin => \clock_div_7|count[28]~86\,
	combout => \clock_div_7|count[29]~87_combout\,
	cout => \clock_div_7|count[29]~88\);

-- Location: FF_X25_Y2_N27
\clock_div_7|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[29]~87_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(29));

-- Location: LCCOMB_X25_Y2_N28
\clock_div_7|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[30]~89_combout\ = (\clock_div_7|count\(30) & (!\clock_div_7|count[29]~88\)) # (!\clock_div_7|count\(30) & ((\clock_div_7|count[29]~88\) # (GND)))
-- \clock_div_7|count[30]~90\ = CARRY((!\clock_div_7|count[29]~88\) # (!\clock_div_7|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_7|count\(30),
	datad => VCC,
	cin => \clock_div_7|count[29]~88\,
	combout => \clock_div_7|count[30]~89_combout\,
	cout => \clock_div_7|count[30]~90\);

-- Location: FF_X25_Y2_N29
\clock_div_7|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[30]~89_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(30));

-- Location: LCCOMB_X25_Y2_N30
\clock_div_7|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|count[31]~91_combout\ = \clock_div_7|count\(31) $ (!\clock_div_7|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(31),
	cin => \clock_div_7|count[30]~90\,
	combout => \clock_div_7|count[31]~91_combout\);

-- Location: FF_X25_Y2_N31
\clock_div_7|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_7|count[31]~91_combout\,
	clrn => \clock_div_7|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_7|count\(31));

-- Location: LCCOMB_X24_Y3_N26
\clock_div_7|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~9_combout\ = (\clock_div_7|count\(0) & (!\clock_div_7|count\(31) & (!\clock_div_7|count\(30) & \clock_div_7|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(0),
	datab => \clock_div_7|count\(31),
	datac => \clock_div_7|count\(30),
	datad => \clock_div_7|count\(29),
	combout => \clock_div_7|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y3_N28
\clock_div_7|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~8_combout\ = (\clock_div_7|count\(26) & (!\clock_div_7|count\(28) & (\clock_div_7|count\(25) & !\clock_div_7|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(26),
	datab => \clock_div_7|count\(28),
	datac => \clock_div_7|count\(25),
	datad => \clock_div_7|count\(27),
	combout => \clock_div_7|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y3_N22
\clock_div_7|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~1_combout\ = (!\clock_div_7|count\(5) & (!\clock_div_7|count\(8) & (!\clock_div_7|count\(6) & !\clock_div_7|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(5),
	datab => \clock_div_7|count\(8),
	datac => \clock_div_7|count\(6),
	datad => \clock_div_7|count\(7),
	combout => \clock_div_7|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y3_N24
\clock_div_7|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~0_combout\ = (!\clock_div_7|count\(2) & (!\clock_div_7|count\(1) & (!\clock_div_7|count\(4) & !\clock_div_7|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(2),
	datab => \clock_div_7|count\(1),
	datac => \clock_div_7|count\(4),
	datad => \clock_div_7|count\(3),
	combout => \clock_div_7|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y3_N8
\clock_div_7|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~2_combout\ = (!\clock_div_7|count\(10) & (!\clock_div_7|count\(11) & (!\clock_div_7|count\(12) & !\clock_div_7|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(10),
	datab => \clock_div_7|count\(11),
	datac => \clock_div_7|count\(12),
	datad => \clock_div_7|count\(9),
	combout => \clock_div_7|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y3_N2
\clock_div_7|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~3_combout\ = (\clock_div_7|count\(13) & (!\clock_div_7|count\(14) & (\clock_div_7|count\(15) & \clock_div_7|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(13),
	datab => \clock_div_7|count\(14),
	datac => \clock_div_7|count\(15),
	datad => \clock_div_7|count\(16),
	combout => \clock_div_7|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y3_N4
\clock_div_7|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~4_combout\ = (\clock_div_7|Equal0~1_combout\ & (\clock_div_7|Equal0~0_combout\ & (\clock_div_7|Equal0~2_combout\ & \clock_div_7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|Equal0~1_combout\,
	datab => \clock_div_7|Equal0~0_combout\,
	datac => \clock_div_7|Equal0~2_combout\,
	datad => \clock_div_7|Equal0~3_combout\,
	combout => \clock_div_7|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y3_N30
\clock_div_7|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~5_combout\ = (!\clock_div_7|count\(17) & \clock_div_7|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_7|count\(17),
	datad => \clock_div_7|count\(18),
	combout => \clock_div_7|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y3_N16
\clock_div_7|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~6_combout\ = (\clock_div_7|count\(21) & (!\clock_div_7|count\(24) & (!\clock_div_7|count\(22) & !\clock_div_7|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|count\(21),
	datab => \clock_div_7|count\(24),
	datac => \clock_div_7|count\(22),
	datad => \clock_div_7|count\(23),
	combout => \clock_div_7|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y3_N18
\clock_div_7|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~7_combout\ = (\clock_div_7|Equal0~5_combout\ & (!\clock_div_7|count\(19) & (!\clock_div_7|count\(20) & \clock_div_7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|Equal0~5_combout\,
	datab => \clock_div_7|count\(19),
	datac => \clock_div_7|count\(20),
	datad => \clock_div_7|Equal0~6_combout\,
	combout => \clock_div_7|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y3_N20
\clock_div_7|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|Equal0~10_combout\ = (\clock_div_7|Equal0~9_combout\ & (\clock_div_7|Equal0~8_combout\ & (\clock_div_7|Equal0~4_combout\ & \clock_div_7|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|Equal0~9_combout\,
	datab => \clock_div_7|Equal0~8_combout\,
	datac => \clock_div_7|Equal0~4_combout\,
	datad => \clock_div_7|Equal0~7_combout\,
	combout => \clock_div_7|Equal0~10_combout\);

-- Location: LCCOMB_X24_Y3_N6
\clock_div_7|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_7|output~0_combout\ = \clock_div_7|output~0_combout\ $ (\clock_div_7|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|output~0_combout\,
	datad => \clock_div_7|Equal0~10_combout\,
	combout => \clock_div_7|output~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\clock_div_8|output~1_combout\ & (\Add1~2_combout\)) # (!\clock_div_8|output~1_combout\ & ((\clock_div_7|output~0_combout\ & (\Add1~2_combout\)) # (!\clock_div_7|output~0_combout\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_8|output~1_combout\,
	datab => \Add1~2_combout\,
	datac => \Add0~2_combout\,
	datad => \clock_div_7|output~0_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X22_Y4_N8
\reverse_counter[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(1) = (\swt~input_o\ & ((\Add0~4_combout\))) # (!\swt~input_o\ & (reverse_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(1),
	datac => \swt~input_o\,
	datad => \Add0~4_combout\,
	combout => reverse_counter(1));

-- Location: LCCOMB_X22_Y4_N28
\leds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~2_combout\ = (\leds~0_combout\) # ((reverse_counter(1) & \swt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(1),
	datac => \swt~input_o\,
	datad => \leds~0_combout\,
	combout => \leds~2_combout\);

-- Location: LCCOMB_X27_Y15_N2
\clock_div_3|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[0]~93_combout\ = !\clock_div_3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_3|count\(0),
	combout => \clock_div_3|count[0]~93_combout\);

-- Location: LCCOMB_X27_Y15_N30
\clock_div_3|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~9_combout\ = (!\clock_div_3|count\(24) & (\clock_div_3|count\(21) & (\clock_div_3|count\(22) & !\clock_div_3|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(24),
	datab => \clock_div_3|count\(21),
	datac => \clock_div_3|count\(22),
	datad => \clock_div_3|count\(23),
	combout => \clock_div_3|Equal0~9_combout\);

-- Location: LCCOMB_X27_Y15_N28
\clock_div_3|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~8_combout\ = (\clock_div_3|count\(17) & (!\clock_div_3|count\(20) & (!\clock_div_3|count\(18) & !\clock_div_3|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(17),
	datab => \clock_div_3|count\(20),
	datac => \clock_div_3|count\(18),
	datad => \clock_div_3|count\(19),
	combout => \clock_div_3|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y15_N12
\clock_div_3|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~6_combout\ = (\clock_div_3|count\(14) & (!\clock_div_3|count\(15) & (!\clock_div_3|count\(16) & !\clock_div_3|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(14),
	datab => \clock_div_3|count\(15),
	datac => \clock_div_3|count\(16),
	datad => \clock_div_3|count\(13),
	combout => \clock_div_3|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y15_N4
\clock_div_3|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~3_combout\ = (!\clock_div_3|count\(1) & (!\clock_div_3|count\(4) & (!\clock_div_3|count\(2) & !\clock_div_3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(1),
	datab => \clock_div_3|count\(4),
	datac => \clock_div_3|count\(2),
	datad => \clock_div_3|count\(3),
	combout => \clock_div_3|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y15_N22
\clock_div_3|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~4_combout\ = (!\clock_div_3|count\(5) & (!\clock_div_3|count\(8) & (!\clock_div_3|count\(6) & !\clock_div_3|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(5),
	datab => \clock_div_3|count\(8),
	datac => \clock_div_3|count\(6),
	datad => \clock_div_3|count\(7),
	combout => \clock_div_3|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y16_N0
\clock_div_3|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~5_combout\ = (\clock_div_3|count\(11) & (\clock_div_3|count\(9) & (!\clock_div_3|count\(10) & \clock_div_3|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(11),
	datab => \clock_div_3|count\(9),
	datac => \clock_div_3|count\(10),
	datad => \clock_div_3|count\(12),
	combout => \clock_div_3|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y15_N6
\clock_div_3|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~7_combout\ = (\clock_div_3|Equal0~6_combout\ & (\clock_div_3|Equal0~3_combout\ & (\clock_div_3|Equal0~4_combout\ & \clock_div_3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|Equal0~6_combout\,
	datab => \clock_div_3|Equal0~3_combout\,
	datac => \clock_div_3|Equal0~4_combout\,
	datad => \clock_div_3|Equal0~5_combout\,
	combout => \clock_div_3|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y15_N0
\clock_div_3|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~10_combout\ = (\clock_div_3|Equal0~9_combout\ & (\clock_div_3|Equal0~8_combout\ & (\clock_div_3|Equal0~2_combout\ & \clock_div_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|Equal0~9_combout\,
	datab => \clock_div_3|Equal0~8_combout\,
	datac => \clock_div_3|Equal0~2_combout\,
	datad => \clock_div_3|Equal0~7_combout\,
	combout => \clock_div_3|Equal0~10_combout\);

-- Location: FF_X27_Y15_N3
\clock_div_3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[0]~93_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(0));

-- Location: LCCOMB_X28_Y16_N2
\clock_div_3|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[1]~31_combout\ = (\clock_div_3|count\(1) & (\clock_div_3|count\(0) $ (GND))) # (!\clock_div_3|count\(1) & (!\clock_div_3|count\(0) & VCC))
-- \clock_div_3|count[1]~32\ = CARRY((\clock_div_3|count\(1) & !\clock_div_3|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(1),
	datab => \clock_div_3|count\(0),
	datad => VCC,
	combout => \clock_div_3|count[1]~31_combout\,
	cout => \clock_div_3|count[1]~32\);

-- Location: FF_X28_Y16_N3
\clock_div_3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[1]~31_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(1));

-- Location: LCCOMB_X28_Y16_N4
\clock_div_3|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[2]~33_combout\ = (\clock_div_3|count\(2) & (!\clock_div_3|count[1]~32\)) # (!\clock_div_3|count\(2) & ((\clock_div_3|count[1]~32\) # (GND)))
-- \clock_div_3|count[2]~34\ = CARRY((!\clock_div_3|count[1]~32\) # (!\clock_div_3|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(2),
	datad => VCC,
	cin => \clock_div_3|count[1]~32\,
	combout => \clock_div_3|count[2]~33_combout\,
	cout => \clock_div_3|count[2]~34\);

-- Location: FF_X28_Y16_N5
\clock_div_3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[2]~33_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(2));

-- Location: LCCOMB_X28_Y16_N6
\clock_div_3|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[3]~35_combout\ = (\clock_div_3|count\(3) & (\clock_div_3|count[2]~34\ $ (GND))) # (!\clock_div_3|count\(3) & (!\clock_div_3|count[2]~34\ & VCC))
-- \clock_div_3|count[3]~36\ = CARRY((\clock_div_3|count\(3) & !\clock_div_3|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(3),
	datad => VCC,
	cin => \clock_div_3|count[2]~34\,
	combout => \clock_div_3|count[3]~35_combout\,
	cout => \clock_div_3|count[3]~36\);

-- Location: FF_X28_Y16_N7
\clock_div_3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[3]~35_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(3));

-- Location: LCCOMB_X28_Y16_N8
\clock_div_3|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[4]~37_combout\ = (\clock_div_3|count\(4) & (!\clock_div_3|count[3]~36\)) # (!\clock_div_3|count\(4) & ((\clock_div_3|count[3]~36\) # (GND)))
-- \clock_div_3|count[4]~38\ = CARRY((!\clock_div_3|count[3]~36\) # (!\clock_div_3|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(4),
	datad => VCC,
	cin => \clock_div_3|count[3]~36\,
	combout => \clock_div_3|count[4]~37_combout\,
	cout => \clock_div_3|count[4]~38\);

-- Location: FF_X28_Y16_N9
\clock_div_3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[4]~37_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(4));

-- Location: LCCOMB_X28_Y16_N10
\clock_div_3|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[5]~39_combout\ = (\clock_div_3|count\(5) & (\clock_div_3|count[4]~38\ $ (GND))) # (!\clock_div_3|count\(5) & (!\clock_div_3|count[4]~38\ & VCC))
-- \clock_div_3|count[5]~40\ = CARRY((\clock_div_3|count\(5) & !\clock_div_3|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(5),
	datad => VCC,
	cin => \clock_div_3|count[4]~38\,
	combout => \clock_div_3|count[5]~39_combout\,
	cout => \clock_div_3|count[5]~40\);

-- Location: FF_X28_Y16_N11
\clock_div_3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[5]~39_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(5));

-- Location: LCCOMB_X28_Y16_N12
\clock_div_3|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[6]~41_combout\ = (\clock_div_3|count\(6) & (!\clock_div_3|count[5]~40\)) # (!\clock_div_3|count\(6) & ((\clock_div_3|count[5]~40\) # (GND)))
-- \clock_div_3|count[6]~42\ = CARRY((!\clock_div_3|count[5]~40\) # (!\clock_div_3|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(6),
	datad => VCC,
	cin => \clock_div_3|count[5]~40\,
	combout => \clock_div_3|count[6]~41_combout\,
	cout => \clock_div_3|count[6]~42\);

-- Location: FF_X28_Y16_N13
\clock_div_3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[6]~41_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(6));

-- Location: LCCOMB_X28_Y16_N14
\clock_div_3|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[7]~43_combout\ = (\clock_div_3|count\(7) & (\clock_div_3|count[6]~42\ $ (GND))) # (!\clock_div_3|count\(7) & (!\clock_div_3|count[6]~42\ & VCC))
-- \clock_div_3|count[7]~44\ = CARRY((\clock_div_3|count\(7) & !\clock_div_3|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(7),
	datad => VCC,
	cin => \clock_div_3|count[6]~42\,
	combout => \clock_div_3|count[7]~43_combout\,
	cout => \clock_div_3|count[7]~44\);

-- Location: FF_X28_Y16_N15
\clock_div_3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[7]~43_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(7));

-- Location: LCCOMB_X28_Y16_N16
\clock_div_3|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[8]~45_combout\ = (\clock_div_3|count\(8) & (!\clock_div_3|count[7]~44\)) # (!\clock_div_3|count\(8) & ((\clock_div_3|count[7]~44\) # (GND)))
-- \clock_div_3|count[8]~46\ = CARRY((!\clock_div_3|count[7]~44\) # (!\clock_div_3|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(8),
	datad => VCC,
	cin => \clock_div_3|count[7]~44\,
	combout => \clock_div_3|count[8]~45_combout\,
	cout => \clock_div_3|count[8]~46\);

-- Location: FF_X28_Y16_N17
\clock_div_3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[8]~45_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(8));

-- Location: LCCOMB_X28_Y16_N18
\clock_div_3|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[9]~47_combout\ = (\clock_div_3|count\(9) & (\clock_div_3|count[8]~46\ $ (GND))) # (!\clock_div_3|count\(9) & (!\clock_div_3|count[8]~46\ & VCC))
-- \clock_div_3|count[9]~48\ = CARRY((\clock_div_3|count\(9) & !\clock_div_3|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(9),
	datad => VCC,
	cin => \clock_div_3|count[8]~46\,
	combout => \clock_div_3|count[9]~47_combout\,
	cout => \clock_div_3|count[9]~48\);

-- Location: FF_X28_Y16_N19
\clock_div_3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[9]~47_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(9));

-- Location: LCCOMB_X28_Y16_N20
\clock_div_3|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[10]~49_combout\ = (\clock_div_3|count\(10) & (!\clock_div_3|count[9]~48\)) # (!\clock_div_3|count\(10) & ((\clock_div_3|count[9]~48\) # (GND)))
-- \clock_div_3|count[10]~50\ = CARRY((!\clock_div_3|count[9]~48\) # (!\clock_div_3|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(10),
	datad => VCC,
	cin => \clock_div_3|count[9]~48\,
	combout => \clock_div_3|count[10]~49_combout\,
	cout => \clock_div_3|count[10]~50\);

-- Location: FF_X28_Y16_N21
\clock_div_3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[10]~49_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(10));

-- Location: LCCOMB_X28_Y16_N22
\clock_div_3|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[11]~51_combout\ = (\clock_div_3|count\(11) & (\clock_div_3|count[10]~50\ $ (GND))) # (!\clock_div_3|count\(11) & (!\clock_div_3|count[10]~50\ & VCC))
-- \clock_div_3|count[11]~52\ = CARRY((\clock_div_3|count\(11) & !\clock_div_3|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(11),
	datad => VCC,
	cin => \clock_div_3|count[10]~50\,
	combout => \clock_div_3|count[11]~51_combout\,
	cout => \clock_div_3|count[11]~52\);

-- Location: FF_X28_Y16_N23
\clock_div_3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[11]~51_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(11));

-- Location: LCCOMB_X28_Y16_N24
\clock_div_3|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[12]~53_combout\ = (\clock_div_3|count\(12) & (!\clock_div_3|count[11]~52\)) # (!\clock_div_3|count\(12) & ((\clock_div_3|count[11]~52\) # (GND)))
-- \clock_div_3|count[12]~54\ = CARRY((!\clock_div_3|count[11]~52\) # (!\clock_div_3|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(12),
	datad => VCC,
	cin => \clock_div_3|count[11]~52\,
	combout => \clock_div_3|count[12]~53_combout\,
	cout => \clock_div_3|count[12]~54\);

-- Location: FF_X28_Y16_N25
\clock_div_3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[12]~53_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(12));

-- Location: LCCOMB_X28_Y16_N26
\clock_div_3|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[13]~55_combout\ = (\clock_div_3|count\(13) & (\clock_div_3|count[12]~54\ $ (GND))) # (!\clock_div_3|count\(13) & (!\clock_div_3|count[12]~54\ & VCC))
-- \clock_div_3|count[13]~56\ = CARRY((\clock_div_3|count\(13) & !\clock_div_3|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(13),
	datad => VCC,
	cin => \clock_div_3|count[12]~54\,
	combout => \clock_div_3|count[13]~55_combout\,
	cout => \clock_div_3|count[13]~56\);

-- Location: FF_X28_Y16_N27
\clock_div_3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[13]~55_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(13));

-- Location: LCCOMB_X28_Y16_N28
\clock_div_3|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[14]~57_combout\ = (\clock_div_3|count\(14) & (!\clock_div_3|count[13]~56\)) # (!\clock_div_3|count\(14) & ((\clock_div_3|count[13]~56\) # (GND)))
-- \clock_div_3|count[14]~58\ = CARRY((!\clock_div_3|count[13]~56\) # (!\clock_div_3|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(14),
	datad => VCC,
	cin => \clock_div_3|count[13]~56\,
	combout => \clock_div_3|count[14]~57_combout\,
	cout => \clock_div_3|count[14]~58\);

-- Location: FF_X28_Y16_N29
\clock_div_3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[14]~57_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(14));

-- Location: LCCOMB_X28_Y16_N30
\clock_div_3|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[15]~59_combout\ = (\clock_div_3|count\(15) & (\clock_div_3|count[14]~58\ $ (GND))) # (!\clock_div_3|count\(15) & (!\clock_div_3|count[14]~58\ & VCC))
-- \clock_div_3|count[15]~60\ = CARRY((\clock_div_3|count\(15) & !\clock_div_3|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(15),
	datad => VCC,
	cin => \clock_div_3|count[14]~58\,
	combout => \clock_div_3|count[15]~59_combout\,
	cout => \clock_div_3|count[15]~60\);

-- Location: FF_X28_Y16_N31
\clock_div_3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[15]~59_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(15));

-- Location: LCCOMB_X28_Y15_N0
\clock_div_3|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[16]~61_combout\ = (\clock_div_3|count\(16) & (!\clock_div_3|count[15]~60\)) # (!\clock_div_3|count\(16) & ((\clock_div_3|count[15]~60\) # (GND)))
-- \clock_div_3|count[16]~62\ = CARRY((!\clock_div_3|count[15]~60\) # (!\clock_div_3|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(16),
	datad => VCC,
	cin => \clock_div_3|count[15]~60\,
	combout => \clock_div_3|count[16]~61_combout\,
	cout => \clock_div_3|count[16]~62\);

-- Location: FF_X28_Y15_N1
\clock_div_3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[16]~61_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(16));

-- Location: LCCOMB_X28_Y15_N2
\clock_div_3|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[17]~63_combout\ = (\clock_div_3|count\(17) & (\clock_div_3|count[16]~62\ $ (GND))) # (!\clock_div_3|count\(17) & (!\clock_div_3|count[16]~62\ & VCC))
-- \clock_div_3|count[17]~64\ = CARRY((\clock_div_3|count\(17) & !\clock_div_3|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(17),
	datad => VCC,
	cin => \clock_div_3|count[16]~62\,
	combout => \clock_div_3|count[17]~63_combout\,
	cout => \clock_div_3|count[17]~64\);

-- Location: FF_X28_Y15_N3
\clock_div_3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[17]~63_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(17));

-- Location: LCCOMB_X28_Y15_N4
\clock_div_3|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[18]~65_combout\ = (\clock_div_3|count\(18) & (!\clock_div_3|count[17]~64\)) # (!\clock_div_3|count\(18) & ((\clock_div_3|count[17]~64\) # (GND)))
-- \clock_div_3|count[18]~66\ = CARRY((!\clock_div_3|count[17]~64\) # (!\clock_div_3|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(18),
	datad => VCC,
	cin => \clock_div_3|count[17]~64\,
	combout => \clock_div_3|count[18]~65_combout\,
	cout => \clock_div_3|count[18]~66\);

-- Location: FF_X28_Y15_N5
\clock_div_3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[18]~65_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(18));

-- Location: LCCOMB_X28_Y15_N6
\clock_div_3|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[19]~67_combout\ = (\clock_div_3|count\(19) & (\clock_div_3|count[18]~66\ $ (GND))) # (!\clock_div_3|count\(19) & (!\clock_div_3|count[18]~66\ & VCC))
-- \clock_div_3|count[19]~68\ = CARRY((\clock_div_3|count\(19) & !\clock_div_3|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(19),
	datad => VCC,
	cin => \clock_div_3|count[18]~66\,
	combout => \clock_div_3|count[19]~67_combout\,
	cout => \clock_div_3|count[19]~68\);

-- Location: FF_X28_Y15_N7
\clock_div_3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[19]~67_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(19));

-- Location: LCCOMB_X28_Y15_N8
\clock_div_3|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[20]~69_combout\ = (\clock_div_3|count\(20) & (!\clock_div_3|count[19]~68\)) # (!\clock_div_3|count\(20) & ((\clock_div_3|count[19]~68\) # (GND)))
-- \clock_div_3|count[20]~70\ = CARRY((!\clock_div_3|count[19]~68\) # (!\clock_div_3|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(20),
	datad => VCC,
	cin => \clock_div_3|count[19]~68\,
	combout => \clock_div_3|count[20]~69_combout\,
	cout => \clock_div_3|count[20]~70\);

-- Location: FF_X28_Y15_N9
\clock_div_3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[20]~69_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(20));

-- Location: LCCOMB_X28_Y15_N10
\clock_div_3|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[21]~71_combout\ = (\clock_div_3|count\(21) & (\clock_div_3|count[20]~70\ $ (GND))) # (!\clock_div_3|count\(21) & (!\clock_div_3|count[20]~70\ & VCC))
-- \clock_div_3|count[21]~72\ = CARRY((\clock_div_3|count\(21) & !\clock_div_3|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(21),
	datad => VCC,
	cin => \clock_div_3|count[20]~70\,
	combout => \clock_div_3|count[21]~71_combout\,
	cout => \clock_div_3|count[21]~72\);

-- Location: FF_X28_Y15_N11
\clock_div_3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[21]~71_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(21));

-- Location: LCCOMB_X28_Y15_N12
\clock_div_3|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[22]~73_combout\ = (\clock_div_3|count\(22) & (!\clock_div_3|count[21]~72\)) # (!\clock_div_3|count\(22) & ((\clock_div_3|count[21]~72\) # (GND)))
-- \clock_div_3|count[22]~74\ = CARRY((!\clock_div_3|count[21]~72\) # (!\clock_div_3|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(22),
	datad => VCC,
	cin => \clock_div_3|count[21]~72\,
	combout => \clock_div_3|count[22]~73_combout\,
	cout => \clock_div_3|count[22]~74\);

-- Location: FF_X28_Y15_N13
\clock_div_3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[22]~73_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(22));

-- Location: LCCOMB_X28_Y15_N14
\clock_div_3|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[23]~75_combout\ = (\clock_div_3|count\(23) & (\clock_div_3|count[22]~74\ $ (GND))) # (!\clock_div_3|count\(23) & (!\clock_div_3|count[22]~74\ & VCC))
-- \clock_div_3|count[23]~76\ = CARRY((\clock_div_3|count\(23) & !\clock_div_3|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(23),
	datad => VCC,
	cin => \clock_div_3|count[22]~74\,
	combout => \clock_div_3|count[23]~75_combout\,
	cout => \clock_div_3|count[23]~76\);

-- Location: FF_X28_Y15_N15
\clock_div_3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[23]~75_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(23));

-- Location: LCCOMB_X28_Y15_N16
\clock_div_3|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[24]~77_combout\ = (\clock_div_3|count\(24) & (!\clock_div_3|count[23]~76\)) # (!\clock_div_3|count\(24) & ((\clock_div_3|count[23]~76\) # (GND)))
-- \clock_div_3|count[24]~78\ = CARRY((!\clock_div_3|count[23]~76\) # (!\clock_div_3|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(24),
	datad => VCC,
	cin => \clock_div_3|count[23]~76\,
	combout => \clock_div_3|count[24]~77_combout\,
	cout => \clock_div_3|count[24]~78\);

-- Location: FF_X28_Y15_N17
\clock_div_3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[24]~77_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(24));

-- Location: LCCOMB_X28_Y15_N18
\clock_div_3|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[25]~79_combout\ = (\clock_div_3|count\(25) & (\clock_div_3|count[24]~78\ $ (GND))) # (!\clock_div_3|count\(25) & (!\clock_div_3|count[24]~78\ & VCC))
-- \clock_div_3|count[25]~80\ = CARRY((\clock_div_3|count\(25) & !\clock_div_3|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(25),
	datad => VCC,
	cin => \clock_div_3|count[24]~78\,
	combout => \clock_div_3|count[25]~79_combout\,
	cout => \clock_div_3|count[25]~80\);

-- Location: FF_X28_Y15_N19
\clock_div_3|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[25]~79_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(25));

-- Location: LCCOMB_X28_Y15_N20
\clock_div_3|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[26]~81_combout\ = (\clock_div_3|count\(26) & (!\clock_div_3|count[25]~80\)) # (!\clock_div_3|count\(26) & ((\clock_div_3|count[25]~80\) # (GND)))
-- \clock_div_3|count[26]~82\ = CARRY((!\clock_div_3|count[25]~80\) # (!\clock_div_3|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(26),
	datad => VCC,
	cin => \clock_div_3|count[25]~80\,
	combout => \clock_div_3|count[26]~81_combout\,
	cout => \clock_div_3|count[26]~82\);

-- Location: FF_X28_Y15_N21
\clock_div_3|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[26]~81_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(26));

-- Location: LCCOMB_X28_Y15_N22
\clock_div_3|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[27]~83_combout\ = (\clock_div_3|count\(27) & (\clock_div_3|count[26]~82\ $ (GND))) # (!\clock_div_3|count\(27) & (!\clock_div_3|count[26]~82\ & VCC))
-- \clock_div_3|count[27]~84\ = CARRY((\clock_div_3|count\(27) & !\clock_div_3|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(27),
	datad => VCC,
	cin => \clock_div_3|count[26]~82\,
	combout => \clock_div_3|count[27]~83_combout\,
	cout => \clock_div_3|count[27]~84\);

-- Location: FF_X28_Y15_N23
\clock_div_3|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[27]~83_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(27));

-- Location: LCCOMB_X28_Y15_N24
\clock_div_3|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[28]~85_combout\ = (\clock_div_3|count\(28) & (!\clock_div_3|count[27]~84\)) # (!\clock_div_3|count\(28) & ((\clock_div_3|count[27]~84\) # (GND)))
-- \clock_div_3|count[28]~86\ = CARRY((!\clock_div_3|count[27]~84\) # (!\clock_div_3|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(28),
	datad => VCC,
	cin => \clock_div_3|count[27]~84\,
	combout => \clock_div_3|count[28]~85_combout\,
	cout => \clock_div_3|count[28]~86\);

-- Location: FF_X28_Y15_N25
\clock_div_3|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[28]~85_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(28));

-- Location: LCCOMB_X27_Y15_N8
\clock_div_3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~0_combout\ = (\clock_div_3|count\(25) & !\clock_div_3|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(25),
	datad => \clock_div_3|count\(26),
	combout => \clock_div_3|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y15_N26
\clock_div_3|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[29]~87_combout\ = (\clock_div_3|count\(29) & (\clock_div_3|count[28]~86\ $ (GND))) # (!\clock_div_3|count\(29) & (!\clock_div_3|count[28]~86\ & VCC))
-- \clock_div_3|count[29]~88\ = CARRY((\clock_div_3|count\(29) & !\clock_div_3|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(29),
	datad => VCC,
	cin => \clock_div_3|count[28]~86\,
	combout => \clock_div_3|count[29]~87_combout\,
	cout => \clock_div_3|count[29]~88\);

-- Location: FF_X28_Y15_N27
\clock_div_3|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[29]~87_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(29));

-- Location: LCCOMB_X28_Y15_N28
\clock_div_3|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[30]~89_combout\ = (\clock_div_3|count\(30) & (!\clock_div_3|count[29]~88\)) # (!\clock_div_3|count\(30) & ((\clock_div_3|count[29]~88\) # (GND)))
-- \clock_div_3|count[30]~90\ = CARRY((!\clock_div_3|count[29]~88\) # (!\clock_div_3|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|count\(30),
	datad => VCC,
	cin => \clock_div_3|count[29]~88\,
	combout => \clock_div_3|count[30]~89_combout\,
	cout => \clock_div_3|count[30]~90\);

-- Location: FF_X28_Y15_N29
\clock_div_3|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[30]~89_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(30));

-- Location: LCCOMB_X28_Y15_N30
\clock_div_3|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|count[31]~91_combout\ = \clock_div_3|count\(31) $ (!\clock_div_3|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(31),
	cin => \clock_div_3|count[30]~90\,
	combout => \clock_div_3|count[31]~91_combout\);

-- Location: FF_X28_Y15_N31
\clock_div_3|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_3|count[31]~91_combout\,
	clrn => \clock_div_3|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_3|count\(31));

-- Location: LCCOMB_X27_Y15_N16
\clock_div_3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~1_combout\ = (!\clock_div_3|count\(31) & (!\clock_div_3|count\(29) & (\clock_div_3|count\(0) & !\clock_div_3|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(31),
	datab => \clock_div_3|count\(29),
	datac => \clock_div_3|count\(0),
	datad => \clock_div_3|count\(30),
	combout => \clock_div_3|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y15_N26
\clock_div_3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|Equal0~2_combout\ = (!\clock_div_3|count\(28) & (!\clock_div_3|count\(27) & (\clock_div_3|Equal0~0_combout\ & \clock_div_3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|count\(28),
	datab => \clock_div_3|count\(27),
	datac => \clock_div_3|Equal0~0_combout\,
	datad => \clock_div_3|Equal0~1_combout\,
	combout => \clock_div_3|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y15_N20
\clock_div_3|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|output~0_combout\ = ((!\clock_div_3|Equal0~7_combout\) # (!\clock_div_3|Equal0~9_combout\)) # (!\clock_div_3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_3|Equal0~8_combout\,
	datac => \clock_div_3|Equal0~9_combout\,
	datad => \clock_div_3|Equal0~7_combout\,
	combout => \clock_div_3|output~0_combout\);

-- Location: LCCOMB_X27_Y15_N10
\clock_div_3|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_3|output~1_combout\ = \clock_div_3|output~1_combout\ $ (((\clock_div_3|Equal0~2_combout\ & !\clock_div_3|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_3|output~1_combout\,
	datac => \clock_div_3|Equal0~2_combout\,
	datad => \clock_div_3|output~0_combout\,
	combout => \clock_div_3|output~1_combout\);

-- Location: LCCOMB_X25_Y4_N30
\counter[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(2) = (\swt~input_o\ & ((\clock_div_3|output~1_combout\))) # (!\swt~input_o\ & (counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datac => \clock_div_3|output~1_combout\,
	datad => \swt~input_o\,
	combout => counter(2));

-- Location: LCCOMB_X25_Y4_N12
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (counter(2) & (!\Add0~3\ & VCC)) # (!counter(2) & (\Add0~3\ $ (GND)))
-- \Add0~6\ = CARRY((!counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X24_Y4_N8
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counter(2) & (!\Add1~3\ & VCC)) # (!counter(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((!counter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X25_Y4_N26
\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\clock_div_7|output~0_combout\ & (((\Add1~4_combout\)))) # (!\clock_div_7|output~0_combout\ & ((\clock_div_8|output~1_combout\ & ((\Add1~4_combout\))) # (!\clock_div_8|output~1_combout\ & (\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \clock_div_7|output~0_combout\,
	datac => \Add1~4_combout\,
	datad => \clock_div_8|output~1_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X25_Y4_N0
\reverse_counter[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(2) = (\swt~input_o\ & ((\Add0~7_combout\))) # (!\swt~input_o\ & (reverse_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(2),
	datac => \Add0~7_combout\,
	datad => \swt~input_o\,
	combout => reverse_counter(2));

-- Location: LCCOMB_X22_Y4_N26
\leds~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~3_combout\ = (\clock_1|mode\(1) & (!\clock_1|mode\(2) & (!\swt~input_o\ & !\clock_1|mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|mode\(1),
	datab => \clock_1|mode\(2),
	datac => \swt~input_o\,
	datad => \clock_1|mode\(0),
	combout => \leds~3_combout\);

-- Location: LCCOMB_X19_Y4_N28
\leds~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~4_combout\ = (\leds~3_combout\) # ((\swt~input_o\ & reverse_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swt~input_o\,
	datac => reverse_counter(2),
	datad => \leds~3_combout\,
	combout => \leds~4_combout\);

-- Location: LCCOMB_X25_Y6_N0
\clock_div_4|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[0]~93_combout\ = !\clock_div_4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_4|count\(0),
	combout => \clock_div_4|count[0]~93_combout\);

-- Location: FF_X25_Y6_N1
\clock_div_4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[0]~93_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(0));

-- Location: LCCOMB_X25_Y6_N2
\clock_div_4|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[1]~31_combout\ = (\clock_div_4|count\(1) & (\clock_div_4|count\(0) $ (GND))) # (!\clock_div_4|count\(1) & (!\clock_div_4|count\(0) & VCC))
-- \clock_div_4|count[1]~32\ = CARRY((\clock_div_4|count\(1) & !\clock_div_4|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(1),
	datab => \clock_div_4|count\(0),
	datad => VCC,
	combout => \clock_div_4|count[1]~31_combout\,
	cout => \clock_div_4|count[1]~32\);

-- Location: FF_X25_Y6_N3
\clock_div_4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[1]~31_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(1));

-- Location: LCCOMB_X25_Y6_N4
\clock_div_4|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[2]~33_combout\ = (\clock_div_4|count\(2) & (!\clock_div_4|count[1]~32\)) # (!\clock_div_4|count\(2) & ((\clock_div_4|count[1]~32\) # (GND)))
-- \clock_div_4|count[2]~34\ = CARRY((!\clock_div_4|count[1]~32\) # (!\clock_div_4|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(2),
	datad => VCC,
	cin => \clock_div_4|count[1]~32\,
	combout => \clock_div_4|count[2]~33_combout\,
	cout => \clock_div_4|count[2]~34\);

-- Location: FF_X25_Y6_N5
\clock_div_4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[2]~33_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(2));

-- Location: LCCOMB_X25_Y6_N6
\clock_div_4|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[3]~35_combout\ = (\clock_div_4|count\(3) & (\clock_div_4|count[2]~34\ $ (GND))) # (!\clock_div_4|count\(3) & (!\clock_div_4|count[2]~34\ & VCC))
-- \clock_div_4|count[3]~36\ = CARRY((\clock_div_4|count\(3) & !\clock_div_4|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(3),
	datad => VCC,
	cin => \clock_div_4|count[2]~34\,
	combout => \clock_div_4|count[3]~35_combout\,
	cout => \clock_div_4|count[3]~36\);

-- Location: FF_X25_Y6_N7
\clock_div_4|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[3]~35_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(3));

-- Location: LCCOMB_X25_Y6_N8
\clock_div_4|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[4]~37_combout\ = (\clock_div_4|count\(4) & (!\clock_div_4|count[3]~36\)) # (!\clock_div_4|count\(4) & ((\clock_div_4|count[3]~36\) # (GND)))
-- \clock_div_4|count[4]~38\ = CARRY((!\clock_div_4|count[3]~36\) # (!\clock_div_4|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(4),
	datad => VCC,
	cin => \clock_div_4|count[3]~36\,
	combout => \clock_div_4|count[4]~37_combout\,
	cout => \clock_div_4|count[4]~38\);

-- Location: FF_X25_Y6_N9
\clock_div_4|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[4]~37_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(4));

-- Location: LCCOMB_X25_Y6_N10
\clock_div_4|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[5]~39_combout\ = (\clock_div_4|count\(5) & (\clock_div_4|count[4]~38\ $ (GND))) # (!\clock_div_4|count\(5) & (!\clock_div_4|count[4]~38\ & VCC))
-- \clock_div_4|count[5]~40\ = CARRY((\clock_div_4|count\(5) & !\clock_div_4|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(5),
	datad => VCC,
	cin => \clock_div_4|count[4]~38\,
	combout => \clock_div_4|count[5]~39_combout\,
	cout => \clock_div_4|count[5]~40\);

-- Location: FF_X25_Y6_N11
\clock_div_4|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[5]~39_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(5));

-- Location: LCCOMB_X25_Y6_N12
\clock_div_4|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[6]~41_combout\ = (\clock_div_4|count\(6) & (!\clock_div_4|count[5]~40\)) # (!\clock_div_4|count\(6) & ((\clock_div_4|count[5]~40\) # (GND)))
-- \clock_div_4|count[6]~42\ = CARRY((!\clock_div_4|count[5]~40\) # (!\clock_div_4|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(6),
	datad => VCC,
	cin => \clock_div_4|count[5]~40\,
	combout => \clock_div_4|count[6]~41_combout\,
	cout => \clock_div_4|count[6]~42\);

-- Location: FF_X25_Y6_N13
\clock_div_4|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[6]~41_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(6));

-- Location: LCCOMB_X25_Y6_N14
\clock_div_4|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[7]~43_combout\ = (\clock_div_4|count\(7) & (\clock_div_4|count[6]~42\ $ (GND))) # (!\clock_div_4|count\(7) & (!\clock_div_4|count[6]~42\ & VCC))
-- \clock_div_4|count[7]~44\ = CARRY((\clock_div_4|count\(7) & !\clock_div_4|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(7),
	datad => VCC,
	cin => \clock_div_4|count[6]~42\,
	combout => \clock_div_4|count[7]~43_combout\,
	cout => \clock_div_4|count[7]~44\);

-- Location: FF_X25_Y6_N15
\clock_div_4|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[7]~43_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(7));

-- Location: LCCOMB_X25_Y6_N16
\clock_div_4|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[8]~45_combout\ = (\clock_div_4|count\(8) & (!\clock_div_4|count[7]~44\)) # (!\clock_div_4|count\(8) & ((\clock_div_4|count[7]~44\) # (GND)))
-- \clock_div_4|count[8]~46\ = CARRY((!\clock_div_4|count[7]~44\) # (!\clock_div_4|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(8),
	datad => VCC,
	cin => \clock_div_4|count[7]~44\,
	combout => \clock_div_4|count[8]~45_combout\,
	cout => \clock_div_4|count[8]~46\);

-- Location: FF_X25_Y6_N17
\clock_div_4|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[8]~45_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(8));

-- Location: LCCOMB_X25_Y6_N18
\clock_div_4|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[9]~47_combout\ = (\clock_div_4|count\(9) & (\clock_div_4|count[8]~46\ $ (GND))) # (!\clock_div_4|count\(9) & (!\clock_div_4|count[8]~46\ & VCC))
-- \clock_div_4|count[9]~48\ = CARRY((\clock_div_4|count\(9) & !\clock_div_4|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(9),
	datad => VCC,
	cin => \clock_div_4|count[8]~46\,
	combout => \clock_div_4|count[9]~47_combout\,
	cout => \clock_div_4|count[9]~48\);

-- Location: FF_X25_Y6_N19
\clock_div_4|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[9]~47_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(9));

-- Location: LCCOMB_X25_Y6_N20
\clock_div_4|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[10]~49_combout\ = (\clock_div_4|count\(10) & (!\clock_div_4|count[9]~48\)) # (!\clock_div_4|count\(10) & ((\clock_div_4|count[9]~48\) # (GND)))
-- \clock_div_4|count[10]~50\ = CARRY((!\clock_div_4|count[9]~48\) # (!\clock_div_4|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(10),
	datad => VCC,
	cin => \clock_div_4|count[9]~48\,
	combout => \clock_div_4|count[10]~49_combout\,
	cout => \clock_div_4|count[10]~50\);

-- Location: FF_X25_Y6_N21
\clock_div_4|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[10]~49_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(10));

-- Location: LCCOMB_X25_Y6_N22
\clock_div_4|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[11]~51_combout\ = (\clock_div_4|count\(11) & (\clock_div_4|count[10]~50\ $ (GND))) # (!\clock_div_4|count\(11) & (!\clock_div_4|count[10]~50\ & VCC))
-- \clock_div_4|count[11]~52\ = CARRY((\clock_div_4|count\(11) & !\clock_div_4|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(11),
	datad => VCC,
	cin => \clock_div_4|count[10]~50\,
	combout => \clock_div_4|count[11]~51_combout\,
	cout => \clock_div_4|count[11]~52\);

-- Location: FF_X25_Y6_N23
\clock_div_4|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[11]~51_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(11));

-- Location: LCCOMB_X25_Y6_N24
\clock_div_4|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[12]~53_combout\ = (\clock_div_4|count\(12) & (!\clock_div_4|count[11]~52\)) # (!\clock_div_4|count\(12) & ((\clock_div_4|count[11]~52\) # (GND)))
-- \clock_div_4|count[12]~54\ = CARRY((!\clock_div_4|count[11]~52\) # (!\clock_div_4|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(12),
	datad => VCC,
	cin => \clock_div_4|count[11]~52\,
	combout => \clock_div_4|count[12]~53_combout\,
	cout => \clock_div_4|count[12]~54\);

-- Location: FF_X25_Y6_N25
\clock_div_4|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[12]~53_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(12));

-- Location: LCCOMB_X25_Y6_N26
\clock_div_4|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[13]~55_combout\ = (\clock_div_4|count\(13) & (\clock_div_4|count[12]~54\ $ (GND))) # (!\clock_div_4|count\(13) & (!\clock_div_4|count[12]~54\ & VCC))
-- \clock_div_4|count[13]~56\ = CARRY((\clock_div_4|count\(13) & !\clock_div_4|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(13),
	datad => VCC,
	cin => \clock_div_4|count[12]~54\,
	combout => \clock_div_4|count[13]~55_combout\,
	cout => \clock_div_4|count[13]~56\);

-- Location: FF_X25_Y6_N27
\clock_div_4|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[13]~55_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(13));

-- Location: LCCOMB_X25_Y6_N28
\clock_div_4|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[14]~57_combout\ = (\clock_div_4|count\(14) & (!\clock_div_4|count[13]~56\)) # (!\clock_div_4|count\(14) & ((\clock_div_4|count[13]~56\) # (GND)))
-- \clock_div_4|count[14]~58\ = CARRY((!\clock_div_4|count[13]~56\) # (!\clock_div_4|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(14),
	datad => VCC,
	cin => \clock_div_4|count[13]~56\,
	combout => \clock_div_4|count[14]~57_combout\,
	cout => \clock_div_4|count[14]~58\);

-- Location: FF_X25_Y6_N29
\clock_div_4|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[14]~57_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(14));

-- Location: LCCOMB_X25_Y6_N30
\clock_div_4|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[15]~59_combout\ = (\clock_div_4|count\(15) & (\clock_div_4|count[14]~58\ $ (GND))) # (!\clock_div_4|count\(15) & (!\clock_div_4|count[14]~58\ & VCC))
-- \clock_div_4|count[15]~60\ = CARRY((\clock_div_4|count\(15) & !\clock_div_4|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(15),
	datad => VCC,
	cin => \clock_div_4|count[14]~58\,
	combout => \clock_div_4|count[15]~59_combout\,
	cout => \clock_div_4|count[15]~60\);

-- Location: FF_X25_Y6_N31
\clock_div_4|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[15]~59_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(15));

-- Location: LCCOMB_X25_Y5_N0
\clock_div_4|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[16]~61_combout\ = (\clock_div_4|count\(16) & (!\clock_div_4|count[15]~60\)) # (!\clock_div_4|count\(16) & ((\clock_div_4|count[15]~60\) # (GND)))
-- \clock_div_4|count[16]~62\ = CARRY((!\clock_div_4|count[15]~60\) # (!\clock_div_4|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(16),
	datad => VCC,
	cin => \clock_div_4|count[15]~60\,
	combout => \clock_div_4|count[16]~61_combout\,
	cout => \clock_div_4|count[16]~62\);

-- Location: FF_X25_Y5_N1
\clock_div_4|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[16]~61_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(16));

-- Location: LCCOMB_X25_Y5_N2
\clock_div_4|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[17]~63_combout\ = (\clock_div_4|count\(17) & (\clock_div_4|count[16]~62\ $ (GND))) # (!\clock_div_4|count\(17) & (!\clock_div_4|count[16]~62\ & VCC))
-- \clock_div_4|count[17]~64\ = CARRY((\clock_div_4|count\(17) & !\clock_div_4|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(17),
	datad => VCC,
	cin => \clock_div_4|count[16]~62\,
	combout => \clock_div_4|count[17]~63_combout\,
	cout => \clock_div_4|count[17]~64\);

-- Location: FF_X25_Y5_N3
\clock_div_4|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[17]~63_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(17));

-- Location: LCCOMB_X25_Y5_N4
\clock_div_4|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[18]~65_combout\ = (\clock_div_4|count\(18) & (!\clock_div_4|count[17]~64\)) # (!\clock_div_4|count\(18) & ((\clock_div_4|count[17]~64\) # (GND)))
-- \clock_div_4|count[18]~66\ = CARRY((!\clock_div_4|count[17]~64\) # (!\clock_div_4|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(18),
	datad => VCC,
	cin => \clock_div_4|count[17]~64\,
	combout => \clock_div_4|count[18]~65_combout\,
	cout => \clock_div_4|count[18]~66\);

-- Location: FF_X25_Y5_N5
\clock_div_4|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[18]~65_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(18));

-- Location: LCCOMB_X25_Y5_N6
\clock_div_4|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[19]~67_combout\ = (\clock_div_4|count\(19) & (\clock_div_4|count[18]~66\ $ (GND))) # (!\clock_div_4|count\(19) & (!\clock_div_4|count[18]~66\ & VCC))
-- \clock_div_4|count[19]~68\ = CARRY((\clock_div_4|count\(19) & !\clock_div_4|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(19),
	datad => VCC,
	cin => \clock_div_4|count[18]~66\,
	combout => \clock_div_4|count[19]~67_combout\,
	cout => \clock_div_4|count[19]~68\);

-- Location: FF_X25_Y5_N7
\clock_div_4|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[19]~67_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(19));

-- Location: LCCOMB_X25_Y5_N8
\clock_div_4|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[20]~69_combout\ = (\clock_div_4|count\(20) & (!\clock_div_4|count[19]~68\)) # (!\clock_div_4|count\(20) & ((\clock_div_4|count[19]~68\) # (GND)))
-- \clock_div_4|count[20]~70\ = CARRY((!\clock_div_4|count[19]~68\) # (!\clock_div_4|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(20),
	datad => VCC,
	cin => \clock_div_4|count[19]~68\,
	combout => \clock_div_4|count[20]~69_combout\,
	cout => \clock_div_4|count[20]~70\);

-- Location: FF_X25_Y5_N9
\clock_div_4|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[20]~69_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(20));

-- Location: LCCOMB_X25_Y5_N10
\clock_div_4|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[21]~71_combout\ = (\clock_div_4|count\(21) & (\clock_div_4|count[20]~70\ $ (GND))) # (!\clock_div_4|count\(21) & (!\clock_div_4|count[20]~70\ & VCC))
-- \clock_div_4|count[21]~72\ = CARRY((\clock_div_4|count\(21) & !\clock_div_4|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(21),
	datad => VCC,
	cin => \clock_div_4|count[20]~70\,
	combout => \clock_div_4|count[21]~71_combout\,
	cout => \clock_div_4|count[21]~72\);

-- Location: FF_X25_Y5_N11
\clock_div_4|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[21]~71_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(21));

-- Location: LCCOMB_X25_Y5_N12
\clock_div_4|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[22]~73_combout\ = (\clock_div_4|count\(22) & (!\clock_div_4|count[21]~72\)) # (!\clock_div_4|count\(22) & ((\clock_div_4|count[21]~72\) # (GND)))
-- \clock_div_4|count[22]~74\ = CARRY((!\clock_div_4|count[21]~72\) # (!\clock_div_4|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(22),
	datad => VCC,
	cin => \clock_div_4|count[21]~72\,
	combout => \clock_div_4|count[22]~73_combout\,
	cout => \clock_div_4|count[22]~74\);

-- Location: FF_X25_Y5_N13
\clock_div_4|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[22]~73_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(22));

-- Location: LCCOMB_X25_Y5_N14
\clock_div_4|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[23]~75_combout\ = (\clock_div_4|count\(23) & (\clock_div_4|count[22]~74\ $ (GND))) # (!\clock_div_4|count\(23) & (!\clock_div_4|count[22]~74\ & VCC))
-- \clock_div_4|count[23]~76\ = CARRY((\clock_div_4|count\(23) & !\clock_div_4|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(23),
	datad => VCC,
	cin => \clock_div_4|count[22]~74\,
	combout => \clock_div_4|count[23]~75_combout\,
	cout => \clock_div_4|count[23]~76\);

-- Location: FF_X25_Y5_N15
\clock_div_4|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[23]~75_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(23));

-- Location: LCCOMB_X25_Y5_N16
\clock_div_4|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[24]~77_combout\ = (\clock_div_4|count\(24) & (!\clock_div_4|count[23]~76\)) # (!\clock_div_4|count\(24) & ((\clock_div_4|count[23]~76\) # (GND)))
-- \clock_div_4|count[24]~78\ = CARRY((!\clock_div_4|count[23]~76\) # (!\clock_div_4|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(24),
	datad => VCC,
	cin => \clock_div_4|count[23]~76\,
	combout => \clock_div_4|count[24]~77_combout\,
	cout => \clock_div_4|count[24]~78\);

-- Location: FF_X25_Y5_N17
\clock_div_4|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[24]~77_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(24));

-- Location: LCCOMB_X25_Y5_N18
\clock_div_4|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[25]~79_combout\ = (\clock_div_4|count\(25) & (\clock_div_4|count[24]~78\ $ (GND))) # (!\clock_div_4|count\(25) & (!\clock_div_4|count[24]~78\ & VCC))
-- \clock_div_4|count[25]~80\ = CARRY((\clock_div_4|count\(25) & !\clock_div_4|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(25),
	datad => VCC,
	cin => \clock_div_4|count[24]~78\,
	combout => \clock_div_4|count[25]~79_combout\,
	cout => \clock_div_4|count[25]~80\);

-- Location: FF_X25_Y5_N19
\clock_div_4|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[25]~79_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(25));

-- Location: LCCOMB_X25_Y5_N20
\clock_div_4|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[26]~81_combout\ = (\clock_div_4|count\(26) & (!\clock_div_4|count[25]~80\)) # (!\clock_div_4|count\(26) & ((\clock_div_4|count[25]~80\) # (GND)))
-- \clock_div_4|count[26]~82\ = CARRY((!\clock_div_4|count[25]~80\) # (!\clock_div_4|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(26),
	datad => VCC,
	cin => \clock_div_4|count[25]~80\,
	combout => \clock_div_4|count[26]~81_combout\,
	cout => \clock_div_4|count[26]~82\);

-- Location: FF_X25_Y5_N21
\clock_div_4|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[26]~81_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(26));

-- Location: LCCOMB_X25_Y5_N22
\clock_div_4|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[27]~83_combout\ = (\clock_div_4|count\(27) & (\clock_div_4|count[26]~82\ $ (GND))) # (!\clock_div_4|count\(27) & (!\clock_div_4|count[26]~82\ & VCC))
-- \clock_div_4|count[27]~84\ = CARRY((\clock_div_4|count\(27) & !\clock_div_4|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(27),
	datad => VCC,
	cin => \clock_div_4|count[26]~82\,
	combout => \clock_div_4|count[27]~83_combout\,
	cout => \clock_div_4|count[27]~84\);

-- Location: FF_X25_Y5_N23
\clock_div_4|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[27]~83_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(27));

-- Location: LCCOMB_X25_Y5_N24
\clock_div_4|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[28]~85_combout\ = (\clock_div_4|count\(28) & (!\clock_div_4|count[27]~84\)) # (!\clock_div_4|count\(28) & ((\clock_div_4|count[27]~84\) # (GND)))
-- \clock_div_4|count[28]~86\ = CARRY((!\clock_div_4|count[27]~84\) # (!\clock_div_4|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(28),
	datad => VCC,
	cin => \clock_div_4|count[27]~84\,
	combout => \clock_div_4|count[28]~85_combout\,
	cout => \clock_div_4|count[28]~86\);

-- Location: FF_X25_Y5_N25
\clock_div_4|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[28]~85_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(28));

-- Location: LCCOMB_X25_Y5_N26
\clock_div_4|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[29]~87_combout\ = (\clock_div_4|count\(29) & (\clock_div_4|count[28]~86\ $ (GND))) # (!\clock_div_4|count\(29) & (!\clock_div_4|count[28]~86\ & VCC))
-- \clock_div_4|count[29]~88\ = CARRY((\clock_div_4|count\(29) & !\clock_div_4|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(29),
	datad => VCC,
	cin => \clock_div_4|count[28]~86\,
	combout => \clock_div_4|count[29]~87_combout\,
	cout => \clock_div_4|count[29]~88\);

-- Location: FF_X25_Y5_N27
\clock_div_4|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[29]~87_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(29));

-- Location: LCCOMB_X25_Y5_N28
\clock_div_4|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[30]~89_combout\ = (\clock_div_4|count\(30) & (!\clock_div_4|count[29]~88\)) # (!\clock_div_4|count\(30) & ((\clock_div_4|count[29]~88\) # (GND)))
-- \clock_div_4|count[30]~90\ = CARRY((!\clock_div_4|count[29]~88\) # (!\clock_div_4|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_4|count\(30),
	datad => VCC,
	cin => \clock_div_4|count[29]~88\,
	combout => \clock_div_4|count[30]~89_combout\,
	cout => \clock_div_4|count[30]~90\);

-- Location: FF_X25_Y5_N29
\clock_div_4|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[30]~89_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(30));

-- Location: LCCOMB_X25_Y5_N30
\clock_div_4|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|count[31]~91_combout\ = \clock_div_4|count\(31) $ (!\clock_div_4|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(31),
	cin => \clock_div_4|count[30]~90\,
	combout => \clock_div_4|count[31]~91_combout\);

-- Location: FF_X25_Y5_N31
\clock_div_4|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_4|count[31]~91_combout\,
	clrn => \clock_div_4|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_4|count\(31));

-- Location: LCCOMB_X26_Y6_N22
\clock_div_4|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~9_combout\ = (\clock_div_4|count\(0) & (!\clock_div_4|count\(30) & (!\clock_div_4|count\(29) & !\clock_div_4|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(0),
	datab => \clock_div_4|count\(30),
	datac => \clock_div_4|count\(29),
	datad => \clock_div_4|count\(31),
	combout => \clock_div_4|Equal0~9_combout\);

-- Location: LCCOMB_X26_Y6_N16
\clock_div_4|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~8_combout\ = (!\clock_div_4|count\(28) & (!\clock_div_4|count\(27) & (!\clock_div_4|count\(25) & \clock_div_4|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(28),
	datab => \clock_div_4|count\(27),
	datac => \clock_div_4|count\(25),
	datad => \clock_div_4|count\(26),
	combout => \clock_div_4|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y6_N10
\clock_div_4|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~3_combout\ = (\clock_div_4|count\(13) & (!\clock_div_4|count\(14) & (\clock_div_4|count\(15) & !\clock_div_4|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(13),
	datab => \clock_div_4|count\(14),
	datac => \clock_div_4|count\(15),
	datad => \clock_div_4|count\(16),
	combout => \clock_div_4|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y6_N24
\clock_div_4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~0_combout\ = (!\clock_div_4|count\(1) & (!\clock_div_4|count\(3) & (!\clock_div_4|count\(2) & !\clock_div_4|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(1),
	datab => \clock_div_4|count\(3),
	datac => \clock_div_4|count\(2),
	datad => \clock_div_4|count\(4),
	combout => \clock_div_4|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y6_N30
\clock_div_4|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~1_combout\ = (!\clock_div_4|count\(7) & (!\clock_div_4|count\(6) & (!\clock_div_4|count\(8) & !\clock_div_4|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(7),
	datab => \clock_div_4|count\(6),
	datac => \clock_div_4|count\(8),
	datad => \clock_div_4|count\(5),
	combout => \clock_div_4|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y6_N28
\clock_div_4|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~2_combout\ = (!\clock_div_4|count\(9) & (!\clock_div_4|count\(11) & (\clock_div_4|count\(12) & \clock_div_4|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(9),
	datab => \clock_div_4|count\(11),
	datac => \clock_div_4|count\(12),
	datad => \clock_div_4|count\(10),
	combout => \clock_div_4|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y6_N4
\clock_div_4|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~4_combout\ = (\clock_div_4|Equal0~3_combout\ & (\clock_div_4|Equal0~0_combout\ & (\clock_div_4|Equal0~1_combout\ & \clock_div_4|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|Equal0~3_combout\,
	datab => \clock_div_4|Equal0~0_combout\,
	datac => \clock_div_4|Equal0~1_combout\,
	datad => \clock_div_4|Equal0~2_combout\,
	combout => \clock_div_4|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y6_N8
\clock_div_4|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~6_combout\ = (!\clock_div_4|count\(21) & \clock_div_4|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_4|count\(21),
	datad => \clock_div_4|count\(22),
	combout => \clock_div_4|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y6_N2
\clock_div_4|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~5_combout\ = (!\clock_div_4|count\(20) & (!\clock_div_4|count\(17) & (!\clock_div_4|count\(19) & \clock_div_4|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(20),
	datab => \clock_div_4|count\(17),
	datac => \clock_div_4|count\(19),
	datad => \clock_div_4|count\(18),
	combout => \clock_div_4|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y6_N18
\clock_div_4|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~7_combout\ = (\clock_div_4|count\(23) & (!\clock_div_4|count\(24) & (\clock_div_4|Equal0~6_combout\ & \clock_div_4|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|count\(23),
	datab => \clock_div_4|count\(24),
	datac => \clock_div_4|Equal0~6_combout\,
	datad => \clock_div_4|Equal0~5_combout\,
	combout => \clock_div_4|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y6_N20
\clock_div_4|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|Equal0~10_combout\ = (\clock_div_4|Equal0~9_combout\ & (\clock_div_4|Equal0~8_combout\ & (\clock_div_4|Equal0~4_combout\ & \clock_div_4|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|Equal0~9_combout\,
	datab => \clock_div_4|Equal0~8_combout\,
	datac => \clock_div_4|Equal0~4_combout\,
	datad => \clock_div_4|Equal0~7_combout\,
	combout => \clock_div_4|Equal0~10_combout\);

-- Location: LCCOMB_X26_Y6_N6
\clock_div_4|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_4|output~0_combout\ = \clock_div_4|output~0_combout\ $ (\clock_div_4|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_4|output~0_combout\,
	datad => \clock_div_4|Equal0~10_combout\,
	combout => \clock_div_4|output~0_combout\);

-- Location: LCCOMB_X25_Y4_N4
\counter[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(3) = (\swt~input_o\ & ((\clock_div_4|output~0_combout\))) # (!\swt~input_o\ & (counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datac => \swt~input_o\,
	datad => \clock_div_4|output~0_combout\,
	combout => counter(3));

-- Location: LCCOMB_X24_Y4_N10
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counter(3) & ((\Add1~5\) # (GND))) # (!counter(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((counter(3)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y4_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(3) & ((\Add0~6\) # (GND))) # (!counter(3) & (!\Add0~6\))
-- \Add0~9\ = CARRY((counter(3)) # (!\Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X22_Y4_N24
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\clock_div_8|output~1_combout\ & (\Add1~6_combout\)) # (!\clock_div_8|output~1_combout\ & ((\clock_div_7|output~0_combout\ & (\Add1~6_combout\)) # (!\clock_div_7|output~0_combout\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \clock_div_8|output~1_combout\,
	datac => \Add0~8_combout\,
	datad => \clock_div_7|output~0_combout\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X22_Y4_N14
\reverse_counter[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(3) = (\swt~input_o\ & ((\Add0~10_combout\))) # (!\swt~input_o\ & (reverse_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(3),
	datac => \swt~input_o\,
	datad => \Add0~10_combout\,
	combout => reverse_counter(3));

-- Location: LCCOMB_X22_Y4_N12
\leds~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~5_combout\ = (\leds~3_combout\) # ((reverse_counter(3) & \swt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(3),
	datac => \swt~input_o\,
	datad => \leds~3_combout\,
	combout => \leds~5_combout\);

-- Location: LCCOMB_X22_Y4_N22
\leds~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~6_combout\ = (\clock_1|mode\(1) & (!\clock_1|mode\(2) & (!\swt~input_o\ & \clock_1|mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|mode\(1),
	datab => \clock_1|mode\(2),
	datac => \swt~input_o\,
	datad => \clock_1|mode\(0),
	combout => \leds~6_combout\);

-- Location: LCCOMB_X17_Y6_N8
\clock_div_5|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[0]~93_combout\ = !\clock_div_5|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_5|count\(0),
	combout => \clock_div_5|count[0]~93_combout\);

-- Location: FF_X17_Y6_N9
\clock_div_5|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[0]~93_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(0));

-- Location: LCCOMB_X16_Y7_N2
\clock_div_5|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[1]~31_combout\ = (\clock_div_5|count\(1) & (\clock_div_5|count\(0) $ (GND))) # (!\clock_div_5|count\(1) & (!\clock_div_5|count\(0) & VCC))
-- \clock_div_5|count[1]~32\ = CARRY((\clock_div_5|count\(1) & !\clock_div_5|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(1),
	datab => \clock_div_5|count\(0),
	datad => VCC,
	combout => \clock_div_5|count[1]~31_combout\,
	cout => \clock_div_5|count[1]~32\);

-- Location: FF_X16_Y7_N3
\clock_div_5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[1]~31_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(1));

-- Location: LCCOMB_X16_Y7_N4
\clock_div_5|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[2]~33_combout\ = (\clock_div_5|count\(2) & (!\clock_div_5|count[1]~32\)) # (!\clock_div_5|count\(2) & ((\clock_div_5|count[1]~32\) # (GND)))
-- \clock_div_5|count[2]~34\ = CARRY((!\clock_div_5|count[1]~32\) # (!\clock_div_5|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(2),
	datad => VCC,
	cin => \clock_div_5|count[1]~32\,
	combout => \clock_div_5|count[2]~33_combout\,
	cout => \clock_div_5|count[2]~34\);

-- Location: FF_X16_Y7_N5
\clock_div_5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[2]~33_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(2));

-- Location: LCCOMB_X16_Y7_N6
\clock_div_5|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[3]~35_combout\ = (\clock_div_5|count\(3) & (\clock_div_5|count[2]~34\ $ (GND))) # (!\clock_div_5|count\(3) & (!\clock_div_5|count[2]~34\ & VCC))
-- \clock_div_5|count[3]~36\ = CARRY((\clock_div_5|count\(3) & !\clock_div_5|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(3),
	datad => VCC,
	cin => \clock_div_5|count[2]~34\,
	combout => \clock_div_5|count[3]~35_combout\,
	cout => \clock_div_5|count[3]~36\);

-- Location: FF_X16_Y7_N7
\clock_div_5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[3]~35_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(3));

-- Location: LCCOMB_X16_Y7_N8
\clock_div_5|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[4]~37_combout\ = (\clock_div_5|count\(4) & (!\clock_div_5|count[3]~36\)) # (!\clock_div_5|count\(4) & ((\clock_div_5|count[3]~36\) # (GND)))
-- \clock_div_5|count[4]~38\ = CARRY((!\clock_div_5|count[3]~36\) # (!\clock_div_5|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(4),
	datad => VCC,
	cin => \clock_div_5|count[3]~36\,
	combout => \clock_div_5|count[4]~37_combout\,
	cout => \clock_div_5|count[4]~38\);

-- Location: FF_X16_Y7_N9
\clock_div_5|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[4]~37_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(4));

-- Location: LCCOMB_X16_Y7_N10
\clock_div_5|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[5]~39_combout\ = (\clock_div_5|count\(5) & (\clock_div_5|count[4]~38\ $ (GND))) # (!\clock_div_5|count\(5) & (!\clock_div_5|count[4]~38\ & VCC))
-- \clock_div_5|count[5]~40\ = CARRY((\clock_div_5|count\(5) & !\clock_div_5|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(5),
	datad => VCC,
	cin => \clock_div_5|count[4]~38\,
	combout => \clock_div_5|count[5]~39_combout\,
	cout => \clock_div_5|count[5]~40\);

-- Location: FF_X16_Y7_N11
\clock_div_5|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[5]~39_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(5));

-- Location: LCCOMB_X16_Y7_N12
\clock_div_5|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[6]~41_combout\ = (\clock_div_5|count\(6) & (!\clock_div_5|count[5]~40\)) # (!\clock_div_5|count\(6) & ((\clock_div_5|count[5]~40\) # (GND)))
-- \clock_div_5|count[6]~42\ = CARRY((!\clock_div_5|count[5]~40\) # (!\clock_div_5|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(6),
	datad => VCC,
	cin => \clock_div_5|count[5]~40\,
	combout => \clock_div_5|count[6]~41_combout\,
	cout => \clock_div_5|count[6]~42\);

-- Location: FF_X16_Y7_N13
\clock_div_5|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[6]~41_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(6));

-- Location: LCCOMB_X16_Y7_N14
\clock_div_5|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[7]~43_combout\ = (\clock_div_5|count\(7) & (\clock_div_5|count[6]~42\ $ (GND))) # (!\clock_div_5|count\(7) & (!\clock_div_5|count[6]~42\ & VCC))
-- \clock_div_5|count[7]~44\ = CARRY((\clock_div_5|count\(7) & !\clock_div_5|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(7),
	datad => VCC,
	cin => \clock_div_5|count[6]~42\,
	combout => \clock_div_5|count[7]~43_combout\,
	cout => \clock_div_5|count[7]~44\);

-- Location: FF_X16_Y7_N15
\clock_div_5|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[7]~43_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(7));

-- Location: LCCOMB_X16_Y7_N16
\clock_div_5|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[8]~45_combout\ = (\clock_div_5|count\(8) & (!\clock_div_5|count[7]~44\)) # (!\clock_div_5|count\(8) & ((\clock_div_5|count[7]~44\) # (GND)))
-- \clock_div_5|count[8]~46\ = CARRY((!\clock_div_5|count[7]~44\) # (!\clock_div_5|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(8),
	datad => VCC,
	cin => \clock_div_5|count[7]~44\,
	combout => \clock_div_5|count[8]~45_combout\,
	cout => \clock_div_5|count[8]~46\);

-- Location: FF_X16_Y7_N17
\clock_div_5|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[8]~45_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(8));

-- Location: LCCOMB_X16_Y7_N18
\clock_div_5|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[9]~47_combout\ = (\clock_div_5|count\(9) & (\clock_div_5|count[8]~46\ $ (GND))) # (!\clock_div_5|count\(9) & (!\clock_div_5|count[8]~46\ & VCC))
-- \clock_div_5|count[9]~48\ = CARRY((\clock_div_5|count\(9) & !\clock_div_5|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(9),
	datad => VCC,
	cin => \clock_div_5|count[8]~46\,
	combout => \clock_div_5|count[9]~47_combout\,
	cout => \clock_div_5|count[9]~48\);

-- Location: FF_X16_Y7_N19
\clock_div_5|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[9]~47_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(9));

-- Location: LCCOMB_X16_Y7_N20
\clock_div_5|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[10]~49_combout\ = (\clock_div_5|count\(10) & (!\clock_div_5|count[9]~48\)) # (!\clock_div_5|count\(10) & ((\clock_div_5|count[9]~48\) # (GND)))
-- \clock_div_5|count[10]~50\ = CARRY((!\clock_div_5|count[9]~48\) # (!\clock_div_5|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(10),
	datad => VCC,
	cin => \clock_div_5|count[9]~48\,
	combout => \clock_div_5|count[10]~49_combout\,
	cout => \clock_div_5|count[10]~50\);

-- Location: FF_X16_Y7_N21
\clock_div_5|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[10]~49_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(10));

-- Location: LCCOMB_X16_Y7_N22
\clock_div_5|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[11]~51_combout\ = (\clock_div_5|count\(11) & (\clock_div_5|count[10]~50\ $ (GND))) # (!\clock_div_5|count\(11) & (!\clock_div_5|count[10]~50\ & VCC))
-- \clock_div_5|count[11]~52\ = CARRY((\clock_div_5|count\(11) & !\clock_div_5|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(11),
	datad => VCC,
	cin => \clock_div_5|count[10]~50\,
	combout => \clock_div_5|count[11]~51_combout\,
	cout => \clock_div_5|count[11]~52\);

-- Location: FF_X16_Y7_N23
\clock_div_5|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[11]~51_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(11));

-- Location: LCCOMB_X16_Y7_N24
\clock_div_5|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[12]~53_combout\ = (\clock_div_5|count\(12) & (!\clock_div_5|count[11]~52\)) # (!\clock_div_5|count\(12) & ((\clock_div_5|count[11]~52\) # (GND)))
-- \clock_div_5|count[12]~54\ = CARRY((!\clock_div_5|count[11]~52\) # (!\clock_div_5|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(12),
	datad => VCC,
	cin => \clock_div_5|count[11]~52\,
	combout => \clock_div_5|count[12]~53_combout\,
	cout => \clock_div_5|count[12]~54\);

-- Location: FF_X17_Y6_N13
\clock_div_5|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	asdata => \clock_div_5|count[12]~53_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(12));

-- Location: LCCOMB_X17_Y6_N6
\clock_div_5|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~3_combout\ = (!\clock_div_5|count\(9) & (!\clock_div_5|count\(12) & (\clock_div_5|count\(11) & !\clock_div_5|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(9),
	datab => \clock_div_5|count\(12),
	datac => \clock_div_5|count\(11),
	datad => \clock_div_5|count\(10),
	combout => \clock_div_5|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y7_N26
\clock_div_5|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[13]~55_combout\ = (\clock_div_5|count\(13) & (\clock_div_5|count[12]~54\ $ (GND))) # (!\clock_div_5|count\(13) & (!\clock_div_5|count[12]~54\ & VCC))
-- \clock_div_5|count[13]~56\ = CARRY((\clock_div_5|count\(13) & !\clock_div_5|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(13),
	datad => VCC,
	cin => \clock_div_5|count[12]~54\,
	combout => \clock_div_5|count[13]~55_combout\,
	cout => \clock_div_5|count[13]~56\);

-- Location: FF_X16_Y7_N27
\clock_div_5|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[13]~55_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(13));

-- Location: LCCOMB_X16_Y7_N28
\clock_div_5|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[14]~57_combout\ = (\clock_div_5|count\(14) & (!\clock_div_5|count[13]~56\)) # (!\clock_div_5|count\(14) & ((\clock_div_5|count[13]~56\) # (GND)))
-- \clock_div_5|count[14]~58\ = CARRY((!\clock_div_5|count[13]~56\) # (!\clock_div_5|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(14),
	datad => VCC,
	cin => \clock_div_5|count[13]~56\,
	combout => \clock_div_5|count[14]~57_combout\,
	cout => \clock_div_5|count[14]~58\);

-- Location: FF_X16_Y7_N29
\clock_div_5|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[14]~57_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(14));

-- Location: LCCOMB_X16_Y7_N30
\clock_div_5|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[15]~59_combout\ = (\clock_div_5|count\(15) & (\clock_div_5|count[14]~58\ $ (GND))) # (!\clock_div_5|count\(15) & (!\clock_div_5|count[14]~58\ & VCC))
-- \clock_div_5|count[15]~60\ = CARRY((\clock_div_5|count\(15) & !\clock_div_5|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(15),
	datad => VCC,
	cin => \clock_div_5|count[14]~58\,
	combout => \clock_div_5|count[15]~59_combout\,
	cout => \clock_div_5|count[15]~60\);

-- Location: FF_X16_Y7_N31
\clock_div_5|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[15]~59_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(15));

-- Location: LCCOMB_X16_Y6_N0
\clock_div_5|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[16]~61_combout\ = (\clock_div_5|count\(16) & (!\clock_div_5|count[15]~60\)) # (!\clock_div_5|count\(16) & ((\clock_div_5|count[15]~60\) # (GND)))
-- \clock_div_5|count[16]~62\ = CARRY((!\clock_div_5|count[15]~60\) # (!\clock_div_5|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(16),
	datad => VCC,
	cin => \clock_div_5|count[15]~60\,
	combout => \clock_div_5|count[16]~61_combout\,
	cout => \clock_div_5|count[16]~62\);

-- Location: FF_X16_Y6_N1
\clock_div_5|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[16]~61_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(16));

-- Location: LCCOMB_X17_Y6_N0
\clock_div_5|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~4_combout\ = (\clock_div_5|count\(16) & (\clock_div_5|count\(13) & (!\clock_div_5|count\(15) & \clock_div_5|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(16),
	datab => \clock_div_5|count\(13),
	datac => \clock_div_5|count\(15),
	datad => \clock_div_5|count\(14),
	combout => \clock_div_5|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y6_N2
\clock_div_5|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[17]~63_combout\ = (\clock_div_5|count\(17) & (\clock_div_5|count[16]~62\ $ (GND))) # (!\clock_div_5|count\(17) & (!\clock_div_5|count[16]~62\ & VCC))
-- \clock_div_5|count[17]~64\ = CARRY((\clock_div_5|count\(17) & !\clock_div_5|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(17),
	datad => VCC,
	cin => \clock_div_5|count[16]~62\,
	combout => \clock_div_5|count[17]~63_combout\,
	cout => \clock_div_5|count[17]~64\);

-- Location: FF_X16_Y6_N3
\clock_div_5|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[17]~63_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(17));

-- Location: LCCOMB_X16_Y6_N4
\clock_div_5|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[18]~65_combout\ = (\clock_div_5|count\(18) & (!\clock_div_5|count[17]~64\)) # (!\clock_div_5|count\(18) & ((\clock_div_5|count[17]~64\) # (GND)))
-- \clock_div_5|count[18]~66\ = CARRY((!\clock_div_5|count[17]~64\) # (!\clock_div_5|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(18),
	datad => VCC,
	cin => \clock_div_5|count[17]~64\,
	combout => \clock_div_5|count[18]~65_combout\,
	cout => \clock_div_5|count[18]~66\);

-- Location: FF_X16_Y6_N5
\clock_div_5|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[18]~65_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(18));

-- Location: LCCOMB_X16_Y6_N6
\clock_div_5|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[19]~67_combout\ = (\clock_div_5|count\(19) & (\clock_div_5|count[18]~66\ $ (GND))) # (!\clock_div_5|count\(19) & (!\clock_div_5|count[18]~66\ & VCC))
-- \clock_div_5|count[19]~68\ = CARRY((\clock_div_5|count\(19) & !\clock_div_5|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(19),
	datad => VCC,
	cin => \clock_div_5|count[18]~66\,
	combout => \clock_div_5|count[19]~67_combout\,
	cout => \clock_div_5|count[19]~68\);

-- Location: FF_X16_Y6_N7
\clock_div_5|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[19]~67_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(19));

-- Location: LCCOMB_X16_Y6_N8
\clock_div_5|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[20]~69_combout\ = (\clock_div_5|count\(20) & (!\clock_div_5|count[19]~68\)) # (!\clock_div_5|count\(20) & ((\clock_div_5|count[19]~68\) # (GND)))
-- \clock_div_5|count[20]~70\ = CARRY((!\clock_div_5|count[19]~68\) # (!\clock_div_5|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(20),
	datad => VCC,
	cin => \clock_div_5|count[19]~68\,
	combout => \clock_div_5|count[20]~69_combout\,
	cout => \clock_div_5|count[20]~70\);

-- Location: FF_X16_Y6_N9
\clock_div_5|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[20]~69_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(20));

-- Location: LCCOMB_X16_Y6_N10
\clock_div_5|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[21]~71_combout\ = (\clock_div_5|count\(21) & (\clock_div_5|count[20]~70\ $ (GND))) # (!\clock_div_5|count\(21) & (!\clock_div_5|count[20]~70\ & VCC))
-- \clock_div_5|count[21]~72\ = CARRY((\clock_div_5|count\(21) & !\clock_div_5|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(21),
	datad => VCC,
	cin => \clock_div_5|count[20]~70\,
	combout => \clock_div_5|count[21]~71_combout\,
	cout => \clock_div_5|count[21]~72\);

-- Location: FF_X16_Y6_N11
\clock_div_5|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[21]~71_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(21));

-- Location: LCCOMB_X16_Y6_N12
\clock_div_5|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[22]~73_combout\ = (\clock_div_5|count\(22) & (!\clock_div_5|count[21]~72\)) # (!\clock_div_5|count\(22) & ((\clock_div_5|count[21]~72\) # (GND)))
-- \clock_div_5|count[22]~74\ = CARRY((!\clock_div_5|count[21]~72\) # (!\clock_div_5|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(22),
	datad => VCC,
	cin => \clock_div_5|count[21]~72\,
	combout => \clock_div_5|count[22]~73_combout\,
	cout => \clock_div_5|count[22]~74\);

-- Location: FF_X16_Y6_N13
\clock_div_5|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[22]~73_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(22));

-- Location: LCCOMB_X16_Y6_N14
\clock_div_5|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[23]~75_combout\ = (\clock_div_5|count\(23) & (\clock_div_5|count[22]~74\ $ (GND))) # (!\clock_div_5|count\(23) & (!\clock_div_5|count[22]~74\ & VCC))
-- \clock_div_5|count[23]~76\ = CARRY((\clock_div_5|count\(23) & !\clock_div_5|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(23),
	datad => VCC,
	cin => \clock_div_5|count[22]~74\,
	combout => \clock_div_5|count[23]~75_combout\,
	cout => \clock_div_5|count[23]~76\);

-- Location: FF_X16_Y6_N15
\clock_div_5|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[23]~75_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(23));

-- Location: LCCOMB_X16_Y6_N16
\clock_div_5|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[24]~77_combout\ = (\clock_div_5|count\(24) & (!\clock_div_5|count[23]~76\)) # (!\clock_div_5|count\(24) & ((\clock_div_5|count[23]~76\) # (GND)))
-- \clock_div_5|count[24]~78\ = CARRY((!\clock_div_5|count[23]~76\) # (!\clock_div_5|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(24),
	datad => VCC,
	cin => \clock_div_5|count[23]~76\,
	combout => \clock_div_5|count[24]~77_combout\,
	cout => \clock_div_5|count[24]~78\);

-- Location: FF_X16_Y6_N17
\clock_div_5|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[24]~77_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(24));

-- Location: LCCOMB_X16_Y6_N18
\clock_div_5|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[25]~79_combout\ = (\clock_div_5|count\(25) & (\clock_div_5|count[24]~78\ $ (GND))) # (!\clock_div_5|count\(25) & (!\clock_div_5|count[24]~78\ & VCC))
-- \clock_div_5|count[25]~80\ = CARRY((\clock_div_5|count\(25) & !\clock_div_5|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(25),
	datad => VCC,
	cin => \clock_div_5|count[24]~78\,
	combout => \clock_div_5|count[25]~79_combout\,
	cout => \clock_div_5|count[25]~80\);

-- Location: FF_X16_Y6_N19
\clock_div_5|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[25]~79_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(25));

-- Location: LCCOMB_X16_Y6_N20
\clock_div_5|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[26]~81_combout\ = (\clock_div_5|count\(26) & (!\clock_div_5|count[25]~80\)) # (!\clock_div_5|count\(26) & ((\clock_div_5|count[25]~80\) # (GND)))
-- \clock_div_5|count[26]~82\ = CARRY((!\clock_div_5|count[25]~80\) # (!\clock_div_5|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(26),
	datad => VCC,
	cin => \clock_div_5|count[25]~80\,
	combout => \clock_div_5|count[26]~81_combout\,
	cout => \clock_div_5|count[26]~82\);

-- Location: FF_X16_Y6_N21
\clock_div_5|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[26]~81_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(26));

-- Location: LCCOMB_X16_Y6_N22
\clock_div_5|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[27]~83_combout\ = (\clock_div_5|count\(27) & (\clock_div_5|count[26]~82\ $ (GND))) # (!\clock_div_5|count\(27) & (!\clock_div_5|count[26]~82\ & VCC))
-- \clock_div_5|count[27]~84\ = CARRY((\clock_div_5|count\(27) & !\clock_div_5|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(27),
	datad => VCC,
	cin => \clock_div_5|count[26]~82\,
	combout => \clock_div_5|count[27]~83_combout\,
	cout => \clock_div_5|count[27]~84\);

-- Location: FF_X16_Y6_N23
\clock_div_5|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[27]~83_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(27));

-- Location: LCCOMB_X16_Y6_N24
\clock_div_5|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[28]~85_combout\ = (\clock_div_5|count\(28) & (!\clock_div_5|count[27]~84\)) # (!\clock_div_5|count\(28) & ((\clock_div_5|count[27]~84\) # (GND)))
-- \clock_div_5|count[28]~86\ = CARRY((!\clock_div_5|count[27]~84\) # (!\clock_div_5|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(28),
	datad => VCC,
	cin => \clock_div_5|count[27]~84\,
	combout => \clock_div_5|count[28]~85_combout\,
	cout => \clock_div_5|count[28]~86\);

-- Location: FF_X16_Y6_N25
\clock_div_5|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[28]~85_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(28));

-- Location: LCCOMB_X17_Y6_N30
\clock_div_5|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~7_combout\ = (!\clock_div_5|count\(28) & (!\clock_div_5|count\(25) & (!\clock_div_5|count\(26) & \clock_div_5|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(28),
	datab => \clock_div_5|count\(25),
	datac => \clock_div_5|count\(26),
	datad => \clock_div_5|count\(27),
	combout => \clock_div_5|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y6_N24
\clock_div_5|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~6_combout\ = (!\clock_div_5|count\(22) & (\clock_div_5|count\(23) & (\clock_div_5|count\(24) & !\clock_div_5|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(22),
	datab => \clock_div_5|count\(23),
	datac => \clock_div_5|count\(24),
	datad => \clock_div_5|count\(21),
	combout => \clock_div_5|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y6_N22
\clock_div_5|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~5_combout\ = (!\clock_div_5|count\(20) & (!\clock_div_5|count\(18) & (\clock_div_5|count\(19) & !\clock_div_5|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(20),
	datab => \clock_div_5|count\(18),
	datac => \clock_div_5|count\(19),
	datad => \clock_div_5|count\(17),
	combout => \clock_div_5|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y6_N26
\clock_div_5|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[29]~87_combout\ = (\clock_div_5|count\(29) & (\clock_div_5|count[28]~86\ $ (GND))) # (!\clock_div_5|count\(29) & (!\clock_div_5|count[28]~86\ & VCC))
-- \clock_div_5|count[29]~88\ = CARRY((\clock_div_5|count\(29) & !\clock_div_5|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(29),
	datad => VCC,
	cin => \clock_div_5|count[28]~86\,
	combout => \clock_div_5|count[29]~87_combout\,
	cout => \clock_div_5|count[29]~88\);

-- Location: FF_X16_Y6_N27
\clock_div_5|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[29]~87_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(29));

-- Location: LCCOMB_X16_Y6_N28
\clock_div_5|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[30]~89_combout\ = (\clock_div_5|count\(30) & (!\clock_div_5|count[29]~88\)) # (!\clock_div_5|count\(30) & ((\clock_div_5|count[29]~88\) # (GND)))
-- \clock_div_5|count[30]~90\ = CARRY((!\clock_div_5|count[29]~88\) # (!\clock_div_5|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|count\(30),
	datad => VCC,
	cin => \clock_div_5|count[29]~88\,
	combout => \clock_div_5|count[30]~89_combout\,
	cout => \clock_div_5|count[30]~90\);

-- Location: FF_X16_Y6_N29
\clock_div_5|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[30]~89_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(30));

-- Location: LCCOMB_X16_Y6_N30
\clock_div_5|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|count[31]~91_combout\ = \clock_div_5|count\(31) $ (!\clock_div_5|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(31),
	cin => \clock_div_5|count[30]~90\,
	combout => \clock_div_5|count[31]~91_combout\);

-- Location: FF_X16_Y6_N31
\clock_div_5|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_5|count[31]~91_combout\,
	clrn => \clock_div_5|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_5|count\(31));

-- Location: LCCOMB_X17_Y6_N10
\clock_div_5|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~8_combout\ = (\clock_div_5|count\(0) & (!\clock_div_5|count\(31) & (!\clock_div_5|count\(29) & !\clock_div_5|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(0),
	datab => \clock_div_5|count\(31),
	datac => \clock_div_5|count\(29),
	datad => \clock_div_5|count\(30),
	combout => \clock_div_5|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y6_N4
\clock_div_5|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~9_combout\ = (\clock_div_5|Equal0~7_combout\ & (\clock_div_5|Equal0~6_combout\ & (\clock_div_5|Equal0~5_combout\ & \clock_div_5|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|Equal0~7_combout\,
	datab => \clock_div_5|Equal0~6_combout\,
	datac => \clock_div_5|Equal0~5_combout\,
	datad => \clock_div_5|Equal0~8_combout\,
	combout => \clock_div_5|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y7_N0
\clock_div_5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~0_combout\ = (!\clock_div_5|count\(3) & (!\clock_div_5|count\(1) & (!\clock_div_5|count\(4) & !\clock_div_5|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(3),
	datab => \clock_div_5|count\(1),
	datac => \clock_div_5|count\(4),
	datad => \clock_div_5|count\(2),
	combout => \clock_div_5|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y6_N2
\clock_div_5|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~1_combout\ = (!\clock_div_5|count\(7) & (!\clock_div_5|count\(8) & (!\clock_div_5|count\(6) & !\clock_div_5|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|count\(7),
	datab => \clock_div_5|count\(8),
	datac => \clock_div_5|count\(6),
	datad => \clock_div_5|count\(5),
	combout => \clock_div_5|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y6_N16
\clock_div_5|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~2_combout\ = (\clock_div_5|Equal0~0_combout\ & \clock_div_5|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_5|Equal0~0_combout\,
	datad => \clock_div_5|Equal0~1_combout\,
	combout => \clock_div_5|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y6_N18
\clock_div_5|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|Equal0~10_combout\ = (\clock_div_5|Equal0~3_combout\ & (\clock_div_5|Equal0~4_combout\ & (\clock_div_5|Equal0~9_combout\ & \clock_div_5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_5|Equal0~3_combout\,
	datab => \clock_div_5|Equal0~4_combout\,
	datac => \clock_div_5|Equal0~9_combout\,
	datad => \clock_div_5|Equal0~2_combout\,
	combout => \clock_div_5|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y6_N28
\clock_div_5|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_5|output~0_combout\ = \clock_div_5|output~0_combout\ $ (\clock_div_5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_5|output~0_combout\,
	datad => \clock_div_5|Equal0~10_combout\,
	combout => \clock_div_5|output~0_combout\);

-- Location: LCCOMB_X25_Y4_N2
\counter[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(4) = (\swt~input_o\ & ((\clock_div_5|output~0_combout\))) # (!\swt~input_o\ & (counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => \swt~input_o\,
	datad => \clock_div_5|output~0_combout\,
	combout => counter(4));

-- Location: LCCOMB_X24_Y4_N12
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counter(4) & (!\Add1~7\ & VCC)) # (!counter(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!counter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X25_Y4_N16
\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (counter(4) & (!\Add0~9\ & VCC)) # (!counter(4) & (\Add0~9\ $ (GND)))
-- \Add0~12\ = CARRY((!counter(4) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X24_Y4_N28
\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\clock_div_7|output~0_combout\ & (\Add1~8_combout\)) # (!\clock_div_7|output~0_combout\ & ((\clock_div_8|output~1_combout\ & (\Add1~8_combout\)) # (!\clock_div_8|output~1_combout\ & ((\Add0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \clock_div_7|output~0_combout\,
	datac => \clock_div_8|output~1_combout\,
	datad => \Add0~11_combout\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X24_Y4_N30
\reverse_counter[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(4) = (\swt~input_o\ & ((\Add0~13_combout\))) # (!\swt~input_o\ & (reverse_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(4),
	datac => \swt~input_o\,
	datad => \Add0~13_combout\,
	combout => reverse_counter(4));

-- Location: LCCOMB_X22_Y4_N20
\leds~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~7_combout\ = (\leds~6_combout\) # ((\swt~input_o\ & reverse_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~6_combout\,
	datac => \swt~input_o\,
	datad => reverse_counter(4),
	combout => \leds~7_combout\);

-- Location: LCCOMB_X37_Y7_N0
\clock_div_6|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[0]~93_combout\ = !\clock_div_6|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_6|count\(0),
	combout => \clock_div_6|count[0]~93_combout\);

-- Location: FF_X37_Y7_N1
\clock_div_6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[0]~93_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(0));

-- Location: LCCOMB_X37_Y7_N2
\clock_div_6|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[1]~31_combout\ = (\clock_div_6|count\(1) & (\clock_div_6|count\(0) $ (GND))) # (!\clock_div_6|count\(1) & (!\clock_div_6|count\(0) & VCC))
-- \clock_div_6|count[1]~32\ = CARRY((\clock_div_6|count\(1) & !\clock_div_6|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(1),
	datab => \clock_div_6|count\(0),
	datad => VCC,
	combout => \clock_div_6|count[1]~31_combout\,
	cout => \clock_div_6|count[1]~32\);

-- Location: FF_X37_Y7_N3
\clock_div_6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[1]~31_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(1));

-- Location: LCCOMB_X37_Y7_N4
\clock_div_6|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[2]~33_combout\ = (\clock_div_6|count\(2) & (!\clock_div_6|count[1]~32\)) # (!\clock_div_6|count\(2) & ((\clock_div_6|count[1]~32\) # (GND)))
-- \clock_div_6|count[2]~34\ = CARRY((!\clock_div_6|count[1]~32\) # (!\clock_div_6|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(2),
	datad => VCC,
	cin => \clock_div_6|count[1]~32\,
	combout => \clock_div_6|count[2]~33_combout\,
	cout => \clock_div_6|count[2]~34\);

-- Location: FF_X37_Y7_N5
\clock_div_6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[2]~33_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(2));

-- Location: LCCOMB_X37_Y7_N6
\clock_div_6|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[3]~35_combout\ = (\clock_div_6|count\(3) & (\clock_div_6|count[2]~34\ $ (GND))) # (!\clock_div_6|count\(3) & (!\clock_div_6|count[2]~34\ & VCC))
-- \clock_div_6|count[3]~36\ = CARRY((\clock_div_6|count\(3) & !\clock_div_6|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(3),
	datad => VCC,
	cin => \clock_div_6|count[2]~34\,
	combout => \clock_div_6|count[3]~35_combout\,
	cout => \clock_div_6|count[3]~36\);

-- Location: FF_X37_Y7_N7
\clock_div_6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[3]~35_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(3));

-- Location: LCCOMB_X37_Y7_N8
\clock_div_6|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[4]~37_combout\ = (\clock_div_6|count\(4) & (!\clock_div_6|count[3]~36\)) # (!\clock_div_6|count\(4) & ((\clock_div_6|count[3]~36\) # (GND)))
-- \clock_div_6|count[4]~38\ = CARRY((!\clock_div_6|count[3]~36\) # (!\clock_div_6|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(4),
	datad => VCC,
	cin => \clock_div_6|count[3]~36\,
	combout => \clock_div_6|count[4]~37_combout\,
	cout => \clock_div_6|count[4]~38\);

-- Location: FF_X37_Y7_N9
\clock_div_6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[4]~37_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(4));

-- Location: LCCOMB_X37_Y7_N10
\clock_div_6|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[5]~39_combout\ = (\clock_div_6|count\(5) & (\clock_div_6|count[4]~38\ $ (GND))) # (!\clock_div_6|count\(5) & (!\clock_div_6|count[4]~38\ & VCC))
-- \clock_div_6|count[5]~40\ = CARRY((\clock_div_6|count\(5) & !\clock_div_6|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(5),
	datad => VCC,
	cin => \clock_div_6|count[4]~38\,
	combout => \clock_div_6|count[5]~39_combout\,
	cout => \clock_div_6|count[5]~40\);

-- Location: FF_X37_Y7_N11
\clock_div_6|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[5]~39_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(5));

-- Location: LCCOMB_X37_Y7_N12
\clock_div_6|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[6]~41_combout\ = (\clock_div_6|count\(6) & (!\clock_div_6|count[5]~40\)) # (!\clock_div_6|count\(6) & ((\clock_div_6|count[5]~40\) # (GND)))
-- \clock_div_6|count[6]~42\ = CARRY((!\clock_div_6|count[5]~40\) # (!\clock_div_6|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(6),
	datad => VCC,
	cin => \clock_div_6|count[5]~40\,
	combout => \clock_div_6|count[6]~41_combout\,
	cout => \clock_div_6|count[6]~42\);

-- Location: FF_X37_Y7_N13
\clock_div_6|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[6]~41_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(6));

-- Location: LCCOMB_X37_Y7_N14
\clock_div_6|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[7]~43_combout\ = (\clock_div_6|count\(7) & (\clock_div_6|count[6]~42\ $ (GND))) # (!\clock_div_6|count\(7) & (!\clock_div_6|count[6]~42\ & VCC))
-- \clock_div_6|count[7]~44\ = CARRY((\clock_div_6|count\(7) & !\clock_div_6|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(7),
	datad => VCC,
	cin => \clock_div_6|count[6]~42\,
	combout => \clock_div_6|count[7]~43_combout\,
	cout => \clock_div_6|count[7]~44\);

-- Location: FF_X37_Y7_N15
\clock_div_6|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[7]~43_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(7));

-- Location: LCCOMB_X37_Y7_N16
\clock_div_6|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[8]~45_combout\ = (\clock_div_6|count\(8) & (!\clock_div_6|count[7]~44\)) # (!\clock_div_6|count\(8) & ((\clock_div_6|count[7]~44\) # (GND)))
-- \clock_div_6|count[8]~46\ = CARRY((!\clock_div_6|count[7]~44\) # (!\clock_div_6|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(8),
	datad => VCC,
	cin => \clock_div_6|count[7]~44\,
	combout => \clock_div_6|count[8]~45_combout\,
	cout => \clock_div_6|count[8]~46\);

-- Location: FF_X37_Y7_N17
\clock_div_6|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[8]~45_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(8));

-- Location: LCCOMB_X37_Y7_N18
\clock_div_6|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[9]~47_combout\ = (\clock_div_6|count\(9) & (\clock_div_6|count[8]~46\ $ (GND))) # (!\clock_div_6|count\(9) & (!\clock_div_6|count[8]~46\ & VCC))
-- \clock_div_6|count[9]~48\ = CARRY((\clock_div_6|count\(9) & !\clock_div_6|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(9),
	datad => VCC,
	cin => \clock_div_6|count[8]~46\,
	combout => \clock_div_6|count[9]~47_combout\,
	cout => \clock_div_6|count[9]~48\);

-- Location: FF_X37_Y7_N19
\clock_div_6|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[9]~47_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(9));

-- Location: LCCOMB_X37_Y7_N20
\clock_div_6|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[10]~49_combout\ = (\clock_div_6|count\(10) & (!\clock_div_6|count[9]~48\)) # (!\clock_div_6|count\(10) & ((\clock_div_6|count[9]~48\) # (GND)))
-- \clock_div_6|count[10]~50\ = CARRY((!\clock_div_6|count[9]~48\) # (!\clock_div_6|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(10),
	datad => VCC,
	cin => \clock_div_6|count[9]~48\,
	combout => \clock_div_6|count[10]~49_combout\,
	cout => \clock_div_6|count[10]~50\);

-- Location: FF_X37_Y7_N21
\clock_div_6|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[10]~49_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(10));

-- Location: LCCOMB_X37_Y7_N22
\clock_div_6|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[11]~51_combout\ = (\clock_div_6|count\(11) & (\clock_div_6|count[10]~50\ $ (GND))) # (!\clock_div_6|count\(11) & (!\clock_div_6|count[10]~50\ & VCC))
-- \clock_div_6|count[11]~52\ = CARRY((\clock_div_6|count\(11) & !\clock_div_6|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(11),
	datad => VCC,
	cin => \clock_div_6|count[10]~50\,
	combout => \clock_div_6|count[11]~51_combout\,
	cout => \clock_div_6|count[11]~52\);

-- Location: FF_X37_Y7_N23
\clock_div_6|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[11]~51_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(11));

-- Location: LCCOMB_X37_Y7_N24
\clock_div_6|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[12]~53_combout\ = (\clock_div_6|count\(12) & (!\clock_div_6|count[11]~52\)) # (!\clock_div_6|count\(12) & ((\clock_div_6|count[11]~52\) # (GND)))
-- \clock_div_6|count[12]~54\ = CARRY((!\clock_div_6|count[11]~52\) # (!\clock_div_6|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(12),
	datad => VCC,
	cin => \clock_div_6|count[11]~52\,
	combout => \clock_div_6|count[12]~53_combout\,
	cout => \clock_div_6|count[12]~54\);

-- Location: FF_X37_Y7_N25
\clock_div_6|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[12]~53_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(12));

-- Location: LCCOMB_X37_Y7_N26
\clock_div_6|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[13]~55_combout\ = (\clock_div_6|count\(13) & (\clock_div_6|count[12]~54\ $ (GND))) # (!\clock_div_6|count\(13) & (!\clock_div_6|count[12]~54\ & VCC))
-- \clock_div_6|count[13]~56\ = CARRY((\clock_div_6|count\(13) & !\clock_div_6|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(13),
	datad => VCC,
	cin => \clock_div_6|count[12]~54\,
	combout => \clock_div_6|count[13]~55_combout\,
	cout => \clock_div_6|count[13]~56\);

-- Location: FF_X37_Y7_N27
\clock_div_6|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[13]~55_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(13));

-- Location: LCCOMB_X37_Y7_N28
\clock_div_6|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[14]~57_combout\ = (\clock_div_6|count\(14) & (!\clock_div_6|count[13]~56\)) # (!\clock_div_6|count\(14) & ((\clock_div_6|count[13]~56\) # (GND)))
-- \clock_div_6|count[14]~58\ = CARRY((!\clock_div_6|count[13]~56\) # (!\clock_div_6|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(14),
	datad => VCC,
	cin => \clock_div_6|count[13]~56\,
	combout => \clock_div_6|count[14]~57_combout\,
	cout => \clock_div_6|count[14]~58\);

-- Location: FF_X37_Y7_N29
\clock_div_6|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[14]~57_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(14));

-- Location: LCCOMB_X37_Y7_N30
\clock_div_6|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[15]~59_combout\ = (\clock_div_6|count\(15) & (\clock_div_6|count[14]~58\ $ (GND))) # (!\clock_div_6|count\(15) & (!\clock_div_6|count[14]~58\ & VCC))
-- \clock_div_6|count[15]~60\ = CARRY((\clock_div_6|count\(15) & !\clock_div_6|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(15),
	datad => VCC,
	cin => \clock_div_6|count[14]~58\,
	combout => \clock_div_6|count[15]~59_combout\,
	cout => \clock_div_6|count[15]~60\);

-- Location: FF_X37_Y7_N31
\clock_div_6|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[15]~59_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(15));

-- Location: LCCOMB_X37_Y6_N0
\clock_div_6|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[16]~61_combout\ = (\clock_div_6|count\(16) & (!\clock_div_6|count[15]~60\)) # (!\clock_div_6|count\(16) & ((\clock_div_6|count[15]~60\) # (GND)))
-- \clock_div_6|count[16]~62\ = CARRY((!\clock_div_6|count[15]~60\) # (!\clock_div_6|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(16),
	datad => VCC,
	cin => \clock_div_6|count[15]~60\,
	combout => \clock_div_6|count[16]~61_combout\,
	cout => \clock_div_6|count[16]~62\);

-- Location: FF_X37_Y6_N1
\clock_div_6|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[16]~61_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(16));

-- Location: LCCOMB_X37_Y6_N2
\clock_div_6|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[17]~63_combout\ = (\clock_div_6|count\(17) & (\clock_div_6|count[16]~62\ $ (GND))) # (!\clock_div_6|count\(17) & (!\clock_div_6|count[16]~62\ & VCC))
-- \clock_div_6|count[17]~64\ = CARRY((\clock_div_6|count\(17) & !\clock_div_6|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(17),
	datad => VCC,
	cin => \clock_div_6|count[16]~62\,
	combout => \clock_div_6|count[17]~63_combout\,
	cout => \clock_div_6|count[17]~64\);

-- Location: FF_X37_Y6_N3
\clock_div_6|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[17]~63_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(17));

-- Location: LCCOMB_X37_Y6_N4
\clock_div_6|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[18]~65_combout\ = (\clock_div_6|count\(18) & (!\clock_div_6|count[17]~64\)) # (!\clock_div_6|count\(18) & ((\clock_div_6|count[17]~64\) # (GND)))
-- \clock_div_6|count[18]~66\ = CARRY((!\clock_div_6|count[17]~64\) # (!\clock_div_6|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(18),
	datad => VCC,
	cin => \clock_div_6|count[17]~64\,
	combout => \clock_div_6|count[18]~65_combout\,
	cout => \clock_div_6|count[18]~66\);

-- Location: FF_X37_Y6_N5
\clock_div_6|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[18]~65_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(18));

-- Location: LCCOMB_X37_Y6_N6
\clock_div_6|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[19]~67_combout\ = (\clock_div_6|count\(19) & (\clock_div_6|count[18]~66\ $ (GND))) # (!\clock_div_6|count\(19) & (!\clock_div_6|count[18]~66\ & VCC))
-- \clock_div_6|count[19]~68\ = CARRY((\clock_div_6|count\(19) & !\clock_div_6|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(19),
	datad => VCC,
	cin => \clock_div_6|count[18]~66\,
	combout => \clock_div_6|count[19]~67_combout\,
	cout => \clock_div_6|count[19]~68\);

-- Location: FF_X37_Y6_N7
\clock_div_6|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[19]~67_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(19));

-- Location: LCCOMB_X37_Y6_N8
\clock_div_6|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[20]~69_combout\ = (\clock_div_6|count\(20) & (!\clock_div_6|count[19]~68\)) # (!\clock_div_6|count\(20) & ((\clock_div_6|count[19]~68\) # (GND)))
-- \clock_div_6|count[20]~70\ = CARRY((!\clock_div_6|count[19]~68\) # (!\clock_div_6|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(20),
	datad => VCC,
	cin => \clock_div_6|count[19]~68\,
	combout => \clock_div_6|count[20]~69_combout\,
	cout => \clock_div_6|count[20]~70\);

-- Location: FF_X37_Y6_N9
\clock_div_6|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[20]~69_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(20));

-- Location: LCCOMB_X36_Y6_N26
\clock_div_6|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~5_combout\ = (!\clock_div_6|count\(18) & (\clock_div_6|count\(20) & (\clock_div_6|count\(17) & !\clock_div_6|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(18),
	datab => \clock_div_6|count\(20),
	datac => \clock_div_6|count\(17),
	datad => \clock_div_6|count\(19),
	combout => \clock_div_6|Equal0~5_combout\);

-- Location: LCCOMB_X37_Y6_N10
\clock_div_6|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[21]~71_combout\ = (\clock_div_6|count\(21) & (\clock_div_6|count[20]~70\ $ (GND))) # (!\clock_div_6|count\(21) & (!\clock_div_6|count[20]~70\ & VCC))
-- \clock_div_6|count[21]~72\ = CARRY((\clock_div_6|count\(21) & !\clock_div_6|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(21),
	datad => VCC,
	cin => \clock_div_6|count[20]~70\,
	combout => \clock_div_6|count[21]~71_combout\,
	cout => \clock_div_6|count[21]~72\);

-- Location: FF_X37_Y6_N11
\clock_div_6|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[21]~71_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(21));

-- Location: LCCOMB_X37_Y6_N12
\clock_div_6|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[22]~73_combout\ = (\clock_div_6|count\(22) & (!\clock_div_6|count[21]~72\)) # (!\clock_div_6|count\(22) & ((\clock_div_6|count[21]~72\) # (GND)))
-- \clock_div_6|count[22]~74\ = CARRY((!\clock_div_6|count[21]~72\) # (!\clock_div_6|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(22),
	datad => VCC,
	cin => \clock_div_6|count[21]~72\,
	combout => \clock_div_6|count[22]~73_combout\,
	cout => \clock_div_6|count[22]~74\);

-- Location: FF_X37_Y6_N13
\clock_div_6|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[22]~73_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(22));

-- Location: LCCOMB_X37_Y6_N14
\clock_div_6|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[23]~75_combout\ = (\clock_div_6|count\(23) & (\clock_div_6|count[22]~74\ $ (GND))) # (!\clock_div_6|count\(23) & (!\clock_div_6|count[22]~74\ & VCC))
-- \clock_div_6|count[23]~76\ = CARRY((\clock_div_6|count\(23) & !\clock_div_6|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(23),
	datad => VCC,
	cin => \clock_div_6|count[22]~74\,
	combout => \clock_div_6|count[23]~75_combout\,
	cout => \clock_div_6|count[23]~76\);

-- Location: FF_X37_Y6_N15
\clock_div_6|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[23]~75_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(23));

-- Location: LCCOMB_X37_Y6_N16
\clock_div_6|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[24]~77_combout\ = (\clock_div_6|count\(24) & (!\clock_div_6|count[23]~76\)) # (!\clock_div_6|count\(24) & ((\clock_div_6|count[23]~76\) # (GND)))
-- \clock_div_6|count[24]~78\ = CARRY((!\clock_div_6|count[23]~76\) # (!\clock_div_6|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(24),
	datad => VCC,
	cin => \clock_div_6|count[23]~76\,
	combout => \clock_div_6|count[24]~77_combout\,
	cout => \clock_div_6|count[24]~78\);

-- Location: FF_X37_Y6_N17
\clock_div_6|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[24]~77_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(24));

-- Location: LCCOMB_X36_Y6_N8
\clock_div_6|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~6_combout\ = (!\clock_div_6|count\(23) & (!\clock_div_6|count\(22) & (!\clock_div_6|count\(21) & \clock_div_6|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(23),
	datab => \clock_div_6|count\(22),
	datac => \clock_div_6|count\(21),
	datad => \clock_div_6|count\(24),
	combout => \clock_div_6|Equal0~6_combout\);

-- Location: LCCOMB_X37_Y6_N18
\clock_div_6|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[25]~79_combout\ = (\clock_div_6|count\(25) & (\clock_div_6|count[24]~78\ $ (GND))) # (!\clock_div_6|count\(25) & (!\clock_div_6|count[24]~78\ & VCC))
-- \clock_div_6|count[25]~80\ = CARRY((\clock_div_6|count\(25) & !\clock_div_6|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(25),
	datad => VCC,
	cin => \clock_div_6|count[24]~78\,
	combout => \clock_div_6|count[25]~79_combout\,
	cout => \clock_div_6|count[25]~80\);

-- Location: FF_X37_Y6_N19
\clock_div_6|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[25]~79_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(25));

-- Location: LCCOMB_X37_Y6_N20
\clock_div_6|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[26]~81_combout\ = (\clock_div_6|count\(26) & (!\clock_div_6|count[25]~80\)) # (!\clock_div_6|count\(26) & ((\clock_div_6|count[25]~80\) # (GND)))
-- \clock_div_6|count[26]~82\ = CARRY((!\clock_div_6|count[25]~80\) # (!\clock_div_6|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(26),
	datad => VCC,
	cin => \clock_div_6|count[25]~80\,
	combout => \clock_div_6|count[26]~81_combout\,
	cout => \clock_div_6|count[26]~82\);

-- Location: FF_X37_Y6_N21
\clock_div_6|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[26]~81_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(26));

-- Location: LCCOMB_X37_Y6_N22
\clock_div_6|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[27]~83_combout\ = (\clock_div_6|count\(27) & (\clock_div_6|count[26]~82\ $ (GND))) # (!\clock_div_6|count\(27) & (!\clock_div_6|count[26]~82\ & VCC))
-- \clock_div_6|count[27]~84\ = CARRY((\clock_div_6|count\(27) & !\clock_div_6|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(27),
	datad => VCC,
	cin => \clock_div_6|count[26]~82\,
	combout => \clock_div_6|count[27]~83_combout\,
	cout => \clock_div_6|count[27]~84\);

-- Location: FF_X37_Y6_N23
\clock_div_6|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[27]~83_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(27));

-- Location: LCCOMB_X37_Y6_N24
\clock_div_6|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[28]~85_combout\ = (\clock_div_6|count\(28) & (!\clock_div_6|count[27]~84\)) # (!\clock_div_6|count\(28) & ((\clock_div_6|count[27]~84\) # (GND)))
-- \clock_div_6|count[28]~86\ = CARRY((!\clock_div_6|count[27]~84\) # (!\clock_div_6|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(28),
	datad => VCC,
	cin => \clock_div_6|count[27]~84\,
	combout => \clock_div_6|count[28]~85_combout\,
	cout => \clock_div_6|count[28]~86\);

-- Location: FF_X37_Y6_N25
\clock_div_6|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[28]~85_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(28));

-- Location: LCCOMB_X36_Y6_N14
\clock_div_6|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~7_combout\ = (\clock_div_6|count\(25) & !\clock_div_6|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_6|count\(25),
	datad => \clock_div_6|count\(26),
	combout => \clock_div_6|Equal0~7_combout\);

-- Location: LCCOMB_X37_Y6_N26
\clock_div_6|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[29]~87_combout\ = (\clock_div_6|count\(29) & (\clock_div_6|count[28]~86\ $ (GND))) # (!\clock_div_6|count\(29) & (!\clock_div_6|count[28]~86\ & VCC))
-- \clock_div_6|count[29]~88\ = CARRY((\clock_div_6|count\(29) & !\clock_div_6|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(29),
	datad => VCC,
	cin => \clock_div_6|count[28]~86\,
	combout => \clock_div_6|count[29]~87_combout\,
	cout => \clock_div_6|count[29]~88\);

-- Location: FF_X37_Y6_N27
\clock_div_6|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[29]~87_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(29));

-- Location: LCCOMB_X37_Y6_N28
\clock_div_6|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[30]~89_combout\ = (\clock_div_6|count\(30) & (!\clock_div_6|count[29]~88\)) # (!\clock_div_6|count\(30) & ((\clock_div_6|count[29]~88\) # (GND)))
-- \clock_div_6|count[30]~90\ = CARRY((!\clock_div_6|count[29]~88\) # (!\clock_div_6|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_6|count\(30),
	datad => VCC,
	cin => \clock_div_6|count[29]~88\,
	combout => \clock_div_6|count[30]~89_combout\,
	cout => \clock_div_6|count[30]~90\);

-- Location: FF_X37_Y6_N29
\clock_div_6|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[30]~89_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(30));

-- Location: LCCOMB_X37_Y6_N30
\clock_div_6|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|count[31]~91_combout\ = \clock_div_6|count\(31) $ (!\clock_div_6|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(31),
	cin => \clock_div_6|count[30]~90\,
	combout => \clock_div_6|count[31]~91_combout\);

-- Location: FF_X37_Y6_N31
\clock_div_6|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputclkctrl_outclk\,
	d => \clock_div_6|count[31]~91_combout\,
	clrn => \clock_div_6|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_6|count\(31));

-- Location: LCCOMB_X36_Y6_N28
\clock_div_6|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~8_combout\ = (!\clock_div_6|count\(29) & (!\clock_div_6|count\(31) & (!\clock_div_6|count\(30) & \clock_div_6|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(29),
	datab => \clock_div_6|count\(31),
	datac => \clock_div_6|count\(30),
	datad => \clock_div_6|count\(0),
	combout => \clock_div_6|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y6_N22
\clock_div_6|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~9_combout\ = (!\clock_div_6|count\(27) & (\clock_div_6|count\(28) & (\clock_div_6|Equal0~7_combout\ & \clock_div_6|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(27),
	datab => \clock_div_6|count\(28),
	datac => \clock_div_6|Equal0~7_combout\,
	datad => \clock_div_6|Equal0~8_combout\,
	combout => \clock_div_6|Equal0~9_combout\);

-- Location: LCCOMB_X36_Y6_N12
\clock_div_6|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~2_combout\ = (!\clock_div_6|count\(11) & (!\clock_div_6|count\(9) & (\clock_div_6|count\(12) & !\clock_div_6|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(11),
	datab => \clock_div_6|count\(9),
	datac => \clock_div_6|count\(12),
	datad => \clock_div_6|count\(10),
	combout => \clock_div_6|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y6_N18
\clock_div_6|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~1_combout\ = (!\clock_div_6|count\(7) & (!\clock_div_6|count\(6) & (!\clock_div_6|count\(8) & !\clock_div_6|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(7),
	datab => \clock_div_6|count\(6),
	datac => \clock_div_6|count\(8),
	datad => \clock_div_6|count\(5),
	combout => \clock_div_6|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y6_N30
\clock_div_6|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~3_combout\ = (\clock_div_6|count\(15) & (!\clock_div_6|count\(16) & (!\clock_div_6|count\(13) & \clock_div_6|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(15),
	datab => \clock_div_6|count\(16),
	datac => \clock_div_6|count\(13),
	datad => \clock_div_6|count\(14),
	combout => \clock_div_6|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y6_N16
\clock_div_6|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~0_combout\ = (!\clock_div_6|count\(1) & (!\clock_div_6|count\(4) & (!\clock_div_6|count\(2) & !\clock_div_6|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|count\(1),
	datab => \clock_div_6|count\(4),
	datac => \clock_div_6|count\(2),
	datad => \clock_div_6|count\(3),
	combout => \clock_div_6|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y6_N20
\clock_div_6|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~4_combout\ = (\clock_div_6|Equal0~2_combout\ & (\clock_div_6|Equal0~1_combout\ & (\clock_div_6|Equal0~3_combout\ & \clock_div_6|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|Equal0~2_combout\,
	datab => \clock_div_6|Equal0~1_combout\,
	datac => \clock_div_6|Equal0~3_combout\,
	datad => \clock_div_6|Equal0~0_combout\,
	combout => \clock_div_6|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y6_N24
\clock_div_6|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|Equal0~10_combout\ = (\clock_div_6|Equal0~5_combout\ & (\clock_div_6|Equal0~6_combout\ & (\clock_div_6|Equal0~9_combout\ & \clock_div_6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|Equal0~5_combout\,
	datab => \clock_div_6|Equal0~6_combout\,
	datac => \clock_div_6|Equal0~9_combout\,
	datad => \clock_div_6|Equal0~4_combout\,
	combout => \clock_div_6|Equal0~10_combout\);

-- Location: LCCOMB_X36_Y6_N10
\clock_div_6|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_6|output~0_combout\ = \clock_div_6|output~0_combout\ $ (\clock_div_6|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_6|output~0_combout\,
	datad => \clock_div_6|Equal0~10_combout\,
	combout => \clock_div_6|output~0_combout\);

-- Location: LCCOMB_X25_Y4_N28
\counter[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(5) = (\swt~input_o\ & ((\clock_div_6|output~0_combout\))) # (!\swt~input_o\ & (counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datac => \swt~input_o\,
	datad => \clock_div_6|output~0_combout\,
	combout => counter(5));

-- Location: LCCOMB_X24_Y4_N14
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counter(5) & ((\Add1~9\) # (GND))) # (!counter(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((counter(5)) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y4_N18
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(5) & ((\Add0~12\) # (GND))) # (!counter(5) & (!\Add0~12\))
-- \Add0~15\ = CARRY((counter(5)) # (!\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X22_Y4_N10
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\clock_div_8|output~1_combout\ & (\Add1~10_combout\)) # (!\clock_div_8|output~1_combout\ & ((\clock_div_7|output~0_combout\ & (\Add1~10_combout\)) # (!\clock_div_7|output~0_combout\ & ((\Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \clock_div_8|output~1_combout\,
	datac => \Add0~14_combout\,
	datad => \clock_div_7|output~0_combout\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X22_Y4_N4
\reverse_counter[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(5) = (\swt~input_o\ & ((\Add0~16_combout\))) # (!\swt~input_o\ & (reverse_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(5),
	datac => \swt~input_o\,
	datad => \Add0~16_combout\,
	combout => reverse_counter(5));

-- Location: LCCOMB_X22_Y4_N30
\leds~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~8_combout\ = (\leds~6_combout\) # ((reverse_counter(5) & \swt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~6_combout\,
	datab => reverse_counter(5),
	datac => \swt~input_o\,
	combout => \leds~8_combout\);

-- Location: LCCOMB_X25_Y4_N6
\counter[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(6) = (\swt~input_o\ & ((\clock_div_7|output~0_combout\))) # (!\swt~input_o\ & (counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \clock_div_7|output~0_combout\,
	datad => \swt~input_o\,
	combout => counter(6));

-- Location: LCCOMB_X25_Y4_N20
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (counter(6) & (!\Add0~15\ & VCC)) # (!counter(6) & (\Add0~15\ $ (GND)))
-- \Add0~18\ = CARRY((!counter(6) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X24_Y4_N16
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counter(6) & (\Add1~11\ $ (GND))) # (!counter(6) & ((GND) # (!\Add1~11\)))
-- \Add1~13\ = CARRY((!\Add1~11\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X24_Y4_N2
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\clock_div_7|output~0_combout\ & (((\Add1~12_combout\)))) # (!\clock_div_7|output~0_combout\ & ((\clock_div_8|output~1_combout\ & ((\Add1~12_combout\))) # (!\clock_div_8|output~1_combout\ & (\Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|output~0_combout\,
	datab => \clock_div_8|output~1_combout\,
	datac => \Add0~17_combout\,
	datad => \Add1~12_combout\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X24_Y4_N20
\reverse_counter[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(6) = (\swt~input_o\ & ((\Add0~19_combout\))) # (!\swt~input_o\ & (reverse_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(6),
	datac => \swt~input_o\,
	datad => \Add0~19_combout\,
	combout => reverse_counter(6));

-- Location: LCCOMB_X22_Y4_N16
\leds~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~9_combout\ = (!\clock_1|mode\(1) & (\clock_1|mode\(2) & (!\swt~input_o\ & !\clock_1|mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1|mode\(1),
	datab => \clock_1|mode\(2),
	datac => \swt~input_o\,
	datad => \clock_1|mode\(0),
	combout => \leds~9_combout\);

-- Location: LCCOMB_X25_Y4_N24
\leds~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~10_combout\ = (\leds~9_combout\) # ((reverse_counter(6) & \swt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reverse_counter(6),
	datac => \swt~input_o\,
	datad => \leds~9_combout\,
	combout => \leds~10_combout\);

-- Location: LCCOMB_X22_Y4_N18
\counter[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- counter(7) = (\swt~input_o\ & ((\clock_div_8|output~1_combout\))) # (!\swt~input_o\ & (counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datac => \clock_div_8|output~1_combout\,
	datad => \swt~input_o\,
	combout => counter(7));

-- Location: LCCOMB_X24_Y4_N18
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X25_Y4_N22
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \Add0~18\ $ (counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(7),
	cin => \Add0~18\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X24_Y4_N24
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\clock_div_7|output~0_combout\ & (\Add1~14_combout\)) # (!\clock_div_7|output~0_combout\ & ((\clock_div_8|output~1_combout\ & (\Add1~14_combout\)) # (!\clock_div_8|output~1_combout\ & ((\Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_7|output~0_combout\,
	datab => \Add1~14_combout\,
	datac => \clock_div_8|output~1_combout\,
	datad => \Add0~20_combout\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X24_Y4_N22
\reverse_counter[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- reverse_counter(7) = (\swt~input_o\ & ((\Add0~22_combout\))) # (!\swt~input_o\ & (reverse_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reverse_counter(7),
	datac => \swt~input_o\,
	datad => \Add0~22_combout\,
	combout => reverse_counter(7));

-- Location: LCCOMB_X25_Y1_N12
\leds~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~11_combout\ = (\leds~9_combout\) # ((reverse_counter(7) & \swt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reverse_counter(7),
	datac => \swt~input_o\,
	datad => \leds~9_combout\,
	combout => \leds~11_combout\);

-- Location: IOIBUF_X14_Y0_N1
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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;
END structure;


