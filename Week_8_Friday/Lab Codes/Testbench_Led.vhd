library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;

entity Testbench_Led is
end entity;

architecture Struct of Testbench_Led is

	component Led_Sw is
	port(swt ,clk1, reset: in std_logic ; 
			leds : out std_logic_vector(7 downto 0));
	end component;
	
	signal D_CLK_1: std_logic :='0';
--	signal D_CLK_2: std_logic :='0';
	signal switch: std_logic:= '0';
	signal reset : std_logic := '0';
	signal leds : std_logic_vector(7 downto 0);
	
begin
	led_s_1: process(D_CLK_1)
	begin
		D_CLK_1 <= not D_CLK_1 after 50 ns;		
	end process;	
		
--	led_s_2: process(D_CLK_2)
--	begin
--		D_CLK_2 <= not D_CLK_2 after 50 ns;		
--	end process;	
	 dut_instance: Led_Sw port map(swt => switch, clk1 => D_CLK_1, leds => leds, reset => reset);
end Struct;
