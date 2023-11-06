library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity four_bit_Add_Sub is
  port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end entity four_bit_Add_Sub;

architecture Struct of four_bit_Add_Sub is
	signal M_XOR_B0, M_XOR_B1, M_XOR_B2, M_XOR_B3, I_1, I_2, I_3: std_logic;
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
	XOR1: XOR_using_NAND port map (A => M, B => B0, OUTPUT => M_XOR_B0);
	XOR2: XOR_using_NAND port map (A => M, B => B1, OUTPUT => M_XOR_B1);
	XOR3: XOR_using_NAND port map (A => M, B => B2, OUTPUT => M_XOR_B2);
	XOR4: XOR_using_NAND port map (A => M, B => B3, OUTPUT => M_XOR_B3);
	
	Full_Add1: Full_Adder_using_NAND port map (X => A0, Y => M_XOR_B0, B => M, CARRY => I_1, SUM => S0);
	Full_Add2: Full_Adder_using_NAND port map (X => A1, Y => M_XOR_B1, B => I_1, CARRY => I_2, SUM => S1);
	Full_Add3: Full_Adder_using_NAND port map (X => A2, Y => M_XOR_B2, B => I_2, CARRY => I_3, SUM => S2);
	Full_Add4: Full_Adder_using_NAND port map (X => A3, Y => M_XOR_B3, B => I_3, CARRY => Cout, SUM => S3);
end Struct;