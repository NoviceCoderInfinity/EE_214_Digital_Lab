library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity AND_with_NOR is 
	port (A, B: in std_logic ; OUTPUT: out std_logic);
end entity;

architecture Struct of AND_with_NOR is
	signal A_BAR, B_BAR : std_logic;
begin
	NOR1: NOR_2 port map (A => A, B => A, Y => A_BAR);
	NOR2: NOR_2 port map (A => B, B => B, Y => B_BAR);
	
	NOR3: NOR_2 port map (A => A_BAR, B => B_BAR, Y => OUTPUT);
end Struct;