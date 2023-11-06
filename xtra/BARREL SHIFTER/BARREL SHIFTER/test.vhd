library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity test is
	port(A: in std_logic_vector(3 downto 0); B: out std_logic_vector(3 downto 0));
end entity test;

architecture Struct of test is
	component BITINVERTER is
		generic(BITS: integer);
		port(A: in std_logic_vector(BITS-1 downto 0); B: out std_logic_vector(BITS-1 downto 0));
	end component BITINVERTER;
	
begin
	BI: BITINVERTER 
	generic map(4)
	port map(A, B);
end Struct;