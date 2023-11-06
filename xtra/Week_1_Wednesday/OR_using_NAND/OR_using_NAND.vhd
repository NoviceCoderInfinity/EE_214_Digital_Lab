library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity OR_using_NAND is 
	port (A, B: in std_logic ; OUTPUT: out std_logic);
end entity;

architecture Struct of OR_using_NAND is
	signal A_BAR, B_BAR : std_logic;
begin
	NAND1: NAND_2 port map (A => A, B => A, Y => A_BAR);	
	NAND2: NAND_2 port map (A => B, B => B, Y => B_BAR);
	
	NAND3: NAND_2 port map (A => A_BAR, B => B_BAR, Y => OUTPUT);
end Struct;