library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity AND_using_NAND is 
	port (A, B: in std_logic ; OUTPUT: out std_logic);
end entity;

architecture Struct of AND_using_NAND is
	signal A_BAR_plus_B_BAR : std_logic;
begin 
	NAND1: NAND_2 port map (A => A, B => B, Y => A_BAR_plus_B_BAR);
	NAND2: NAND_2 port map (A => A_BAR_plus_B_BAR, B => A_BAR_plus_B_BAR, Y => OUTPUT);
end Struct;