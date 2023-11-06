library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Half_Adder_using_NAND is
	port (A, B : in std_logic ; Carry, Sum: out std_logic);
end entity;

architecture Struct of Half_Adder_using_NAND is
	Component XOR_using_NAND is
		port(A, B : in std_logic ;  OUTPUT : out std_logic);
	end component XOR_using_NAND;
	signal A_BAR_PLUS_B_BAR: std_logic;
begin
	NAND1: NAND_2 port map (A => A, B => B, Y => A_BAR_PLUS_B_BAR);
	NAND2: NAND_2 port map (A => A_BAR_PLUS_B_BAR, B => A_BAR_PLUS_B_BAR, Y => Carry);
	XOR1: XOR_using_NAND port map (A => A, B => B, OUTPUT => Sum);
end Struct;