library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Full_Sub_with_NOR is 
	port (X, Y, B: in std_logic ; out_diff, out_borrow: out std_logic);
end entity;

architecture Struct of Full_Sub_with_NOR is
	signal X_DIFF_Y, X_BORROW_Y, X_DIFF_Y_BORROW_B , PRE_OUT: std_logic;
	Component Half_Sub_with_NOR is
		port(A, B : in std_logic; DIFF, BORROW  : out std_logic);
	end component Half_Sub_with_NOR;
	Component XOR_with_NOR is
		port(A, B : in std_logic; OUTPUT : out std_logic);
	end component XOR_with_NOR;
begin
	Half_Sub_with_NOR1: Half_Sub_with_NOR port map (A => X, B => Y, DIFF => X_DIFF_Y, BORROW => X_BORROW_Y);
	Half_Sub_with_NOR2: Half_Sub_with_NOR port map (A => X_DIFF_Y, B => B, DIFF => out_diff, BORROW => X_DIFF_Y_BORROW_B);
	
	NOR1: NOR_2 port map (A => X_DIFF_Y_BORROW_B, B => X_BORROW_Y, Y => PRE_OUT);
	NOR2: NOR_2 port map (A => PRE_OUT, B => PRE_OUT, Y => out_borrow);	
end Struct;