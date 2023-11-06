library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture Struct of Testbench is

	component Traffic is
		port(clock, reset : in std_logic ;
			led : out std_logic_vector);
	end component;
	
	signal D_CLK: std_logic :='0';
	signal reset: std_logic := '0';
	signal led: std_logic_vector (7 downto 0);
	
begin
	process_name: process(D_CLK)
	begin
		D_CLK <= not D_CLK after 10 ns;		
	end process;		 
	 dut_instance: Traffic	port map(clock => D_CLK, reset => reset, led=> led);
end Struct;
