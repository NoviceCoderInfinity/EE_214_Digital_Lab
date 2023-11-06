library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Half_Sub_with_NOR is 
	port (A, B: in std_logic ; DIFF, BORROW: out std_logic);
end entity;

architecture Struct of Half_Sub_with_NOR is
	signal A_BAR_B_BAR : std_logic;
	Component XOR_with_NOR is
		port(A, B : in std_logic; OUTPUT  : out std_logic);
	end component XOR_with_NOR;
begin
	NOR1: NOR_2 port map (A => A, B => B, Y => A_BAR_B_BAR);	
	NOR2: NOR_2 port map (A => A, B => A_BAR_B_BAR, Y => BORROW);
	
	XOR1: XOR_with_NOR port map (A => A, B => B, OUTPUT => DIFF);	
end Struct;