library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity XOR_with_NOR is 
	port (A, B: in std_logic ; OUTPUT: out std_logic);
end entity;

architecture Struct of XOR_with_NOR is
	signal A_BAR_B_BAR, B_A_BAR, A_B_BAR, PRE_OUT : std_logic;
begin
	NOR1: NOR_2 port map (A => A, B => B, Y => A_BAR_B_BAR);	
	NOR2: NOR_2 port map (A => A, B => A_BAR_B_BAR, Y => B_A_BAR);
	NOR3: NOR_2 port map (A => A_BAR_B_BAR, B => B, Y => A_B_BAR);
	NOR4: NOR_2 port map (A => A_B_BAR, B => B_A_BAR, Y => PRE_OUT);
	NOR5: NOR_2 port map (A => PRE_OUT, B => PRE_OUT, Y => OUTPUT);
end Struct;