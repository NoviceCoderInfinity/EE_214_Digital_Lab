library ieee;
use ieee.std_logic_1164.all;

library work;
use work.GAtes.all;

entity Multiplier is 
	port ( A3, A2, A1, A0, B2, B1, B0 : in std_logic ; M6, M5, M4, M3, M2, M1, M0 : out std_logic );
end entity;

architecture Struct of Multiplier is
	signal   A0B0, A1B0, A2B0, A3B0, 
				A0B1, A1B1, A2B1, A3B1, 
				A0B2, A1B2, A2B2, A3B2,
				A2B0_A1B1_Sum, A3B0_A2B1_Sum, A3B1_Carry, A3B1_Sum : std_logic;
				
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
	
begin
	AND1: AND_2 port map ( A => A0, B => B0, Y => A0B0 );
	AND2: AND_2 port map ( A => A1, B => B0, Y => A1B0 );
	AND3: AND_2 port map ( A => A2, B => B0, Y => A2B0 );
	AND4: AND_2 port map ( A => A3, B => B0, Y => A3B0 );
	
	AND5: AND_2 port map ( A => A0, B => B1, Y => A0B1 );
	AND6: AND_2 port map ( A => A1, B => B1, Y => A1B1 );
	AND7: AND_2 port map ( A => A2, B => B1, Y => A2B1 );
	AND8: AND_2 port map ( A => A3, B => B1, Y => A3B1 );
	
	AND9: AND_2 port map ( A => A0, B => B2, Y => A0B2 );
	AND10: AND_2 port map ( A => A1, B => B2, Y => A1B2 );
	AND11: AND_2 port map ( A => A2, B => B2, Y => A2B2 );
	AND12: AND_2 port map ( A => A3, B => B2, Y => A3B2 );
	
	OR1: OR_2 port map ( A => A0B0, B => '0', Y => M0 );
	
	fbAS1 : four_bit_Add_Sub port map (A3 => '0', A2 => A3B0, A1 => A2B0, A0 => A1B0, 
												 B3 => A3B1, B2 => A2B1, B1 => A1B1, B0 => A0B1, M => '0', 
												 Cout => A3B1_Carry, S3 => A3B1_Sum, S2 => A3B0_A2B1_Sum, S1 => A2B0_A1B1_Sum, S0 => M1 );
												 
	fbAS2 : four_bit_Add_Sub port map (A3 => A3B1_Carry, A2 => A3B1_Sum, A1 => A3B0_A2B1_Sum, A0 => A2B0_A1B1_Sum, 
												 B3 => A3B2, B2 => A2B2, B1 => A1B2, B0 => A0B2, M => '0', 
												 Cout => M6, S3 => M5, S2 => M4, S1 => M3, S0 => M2 );
end STruct;