library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity OR_with_NOR is 
	port (A, B: in std_logic ; OUTPUT: out std_logic);
end entity;

architecture Struct of OR_with_NOR is
	signal A_B_BAR : std_logic;
begin
	NOR1: NOR_2 port map (A => A, B => B, Y => A_B_BAR);	
	NOR2: NOR_2 port map (A => A_B_BAR, B => A_B_BAR, Y => OUTPUT);
end Struct;