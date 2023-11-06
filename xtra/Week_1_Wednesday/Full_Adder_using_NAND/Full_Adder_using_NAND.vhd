library ieee; 
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Full_Adder_using_NAND is
	port( X, Y, B: in std_logic; CARRY, SUM: out std_logic);
end entity;

architecture Struct of Full_Adder_using_NAND is
	Component Half_Adder_using_NAND is
		port (A, B: in std_logic ; Carry, Sum: out std_logic);
	end component Half_Adder_using_NAND;
	
	Component XOR_using_NAND is
		port(A, B : in std_logic; OUTPUT : out std_logic);
	end component XOR_using_NAND;
	signal X_and_Y_sum, X_and_Y_carry, X_Y_and_B_carry, BAR_X_and_Y_carry, BAR_X_Y_and_B_carry : std_logic;
begin 
	HA1: Half_Adder_using_NAND port map (A => X, B => Y, Carry => X_and_Y_carry, Sum => X_and_Y_sum);
	HA2: Half_Adder_using_NAND port map (A => X_and_Y_sum, B => B, Carry => X_Y_and_B_carry, Sum => SUM);
	
	NAND1: NAND_2 port map (A => X_and_Y_carry, B => X_and_Y_carry, Y => BAR_X_and_Y_carry);
	NAND2: NAND_2 port map (A => X_Y_and_B_carry, B => X_Y_and_B_carry, Y => BAR_X_Y_and_B_carry);
	NAND3: NAND_2 port map (A => BAR_X_Y_and_B_carry, B => BAR_X_and_Y_carry, Y => CARRY);
end Struct ;