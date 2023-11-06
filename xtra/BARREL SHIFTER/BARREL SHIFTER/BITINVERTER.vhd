library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BITINVERTER is
	generic(BITS: integer);
	port(L: in std_logic; A: in std_logic_vector(BITS-1 downto 0); B: out std_logic_vector(BITS-1 downto 0));
end entity BITINVERTER;

architecture Struct of BITINVERTER is
	component MUX is
		port(I1, I0, S: in std_logic; Y: out std_logic);
	end component MUX;
begin
	BI: for i in 0 to BITS-1 generate
		MUX2: MUX port map(A(BITS-i-1), A(i), L, B(i));
	end generate BI;
end Struct;