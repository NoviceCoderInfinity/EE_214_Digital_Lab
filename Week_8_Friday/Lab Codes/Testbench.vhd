library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture Struct of Testbench is

	component clock_divider is
		port(clock_input, reset: in std_logic ; n : in integer ;
			clock_output : out std_logic);
	end component;
	
	signal D_CLK: std_logic :='0';
	signal clock_output: std_logic;
	signal n: integer:= 100000;
	signal reset: std_logic := '0';
	
begin
	process_name: process(D_CLK)
	begin
		D_CLK <= not D_CLK after 10 ns;		
	end process;		 
	 dut_instance: clock_divider	port map(clock_input => D_CLK, n => n, clock_output => clock_output, reset => reset);
end Struct;
