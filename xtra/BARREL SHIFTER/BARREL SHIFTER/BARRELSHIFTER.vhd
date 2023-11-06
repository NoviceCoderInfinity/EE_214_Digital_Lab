library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BARRELSHIFTER is
	port(A: in std_logic_vector(7 downto 0); SHIFTSELECT: in std_logic_vector(2 downto 0); L: in std_logic; B: out std_logic_vector(7 downto 0));
end entity BARRELSHIFTER;

architecture Struct of BARRELSHIFTER is
	component BITINVERTER is
		generic(BITS: integer);
		port(L: in std_logic; A: in std_logic_vector(BITS-1 downto 0); B: out std_logic_vector(BITS-1 downto 0));
	end component BITINVERTER;
	
	component NRIGHT is
		generic(N: integer; BITS: integer);
		port(SHIFT: in std_logic; A: in std_logic_vector(BITS-1 downto 0); B: out std_logic_vector(BITS-1 downto 0));
	end component NRIGHT;
	
	signal O1, O2, O3, O4: std_logic_vector(7 downto 0);
	
begin 
	BI1: BITINVERTER generic map(8) port map(L, A, O1);
	
	RS4: NRIGHT
	generic map(4, 8)
	port map(SHIFTSELECT(2), O1, O2);
	
	RS2: NRIGHT
	generic map(2, 8)
	port map(SHIFTSELECT(1), O2, O3);
	
	RS1: NRIGHT
	generic map(1, 8)
	port map(SHIFTSELECT(0), O3, O4);
	
	BI2: BITINVERTER
	generic map(8)
	port map(L, O4, B);
end Struct;
	
	
	