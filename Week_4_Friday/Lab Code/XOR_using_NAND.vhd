library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity XOR_using_NAND is 
	port (A, B: in std_logic ; OUTPUT: out std_logic);
end entity;

architecture Struct of XOR_using_NAND is
	signal A_BAR_plus_B_BAR, A_BAR_plus_B, B_BAR_plus_A : std_logic ;
begin
	NAND1: NAND_2 port map (A => A, B => B, Y => A_BAR_plus_B_BAR);
	NAND2: NAND_2 port map (A => A_BAR_plus_B_BAR, B => B, Y => B_BAR_plus_A);
	NAND3: NAND_2 port map (A => A, B => A_BAR_plus_B_BAR, Y => A_BAR_plus_B);
	
	NAND4: NAND_2 port map (A => B_BAR_plus_A, B => A_BAR_plus_B, Y => OUTPUT);
end Struct;