library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity BCD_Adder is
	port ( A3, A2, A1, A0, B3, B2, B1, B0 : in std_logic ; Y4, Y3, Y2, Y1, Y0 : out std_logic );
end entity;

architecture Struct of BCD_Adder is
	Component four_bit_Add_Sub is
		port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
	end component four_bit_Add_Sub;
	
	Component Full_Adder_using_NAND is
		port( X, Y, B: in std_logic; CARRY, SUM: out std_logic);
	end component Full_Adder_using_NAND;
	
	Component Half_Adder_using_NAND is
		port (A, B: in std_logic ; Carry, Sum: out std_logic);
	end component Half_Adder_using_NAND;
	
	Component XOR_using_NAND is
		port(A, B : in std_logic; OUTPUT : out std_logic);
	end component XOR_using_NAND;
	
	signal A0B0_sum, A1B1_sum, A2B2_sum, A3B3_sum, Carry, B_or_C, fi, fin, C0, C1, C2, C3, dump: std_logic;
begin
	fr_bit_1: four_bit_Add_Sub port map(A3 => A3, A2 => A2, A1 => A1, A0 => A0, B3 => B3, B2 => B2, B1 => B1, B0 => B0, M => '0', Cout => Carry, S3 => A3B3_sum, S2 => A2B2_sum, S1 => A1B1_sum, S0 => A0B0_sum);
	
	OR1: OR_2 port map ( A => A2B2_sum, B => A1B1_sum, Y => B_or_C);
	AND1: AND_2 port map ( A => A3B3_sum, B => B_or_C, Y => fi );
	OR2: OR_2 port map ( A => Carry, B => fi, Y => fin );
	
	
	
	AND2: AND_2 port map ( A => fin, B => '0', Y => C0 );
	AND3: AND_2 port map ( A => fin, B => '1', Y => C1 );
	AND4: AND_2 port map ( A => fin, B => '1', Y => C2 );
	AND5: AND_2 port map ( A => fin, B => '0', Y => C3 );
	
	fr_bit_2: four_bit_Add_Sub port map(A3 => A3B3_sum, A2 => A2B2_sum, A1 => A1B1_sum, A0 => A0B0_sum, B3 => C3, B2 => C2, B1 => C1, B0 => C0, M => '0', Cout => dump, S3 => Y3, S2 => Y2, S1 => Y1, S0 => Y0);
	OR3: OR_2 port map ( A => Carry, B => dump, Y => Y4 );
end Struct;