library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Prime_Number_Detector is
	port (A, B, C, D, E: in std_logic ; Y: out std_logic );
end entity;

architecture Struct of Prime_Number_Detector is

	component THREE_AND is
		port(A, B, C: in std_logic; Y: out std_logic);
	end component;
	
	component THREE_OR is
		port(A, B, C: in std_logic; Y: out std_logic);
	end component;
	
	signal B_xor_C, not_B_xor_C, C_xor_D, not_A, not_B, not_A_not_C, E_or_not_A_not_C, Y1, Y2, Y3: std_logic;
	
begin

	NOT1: INVERTER port map( A => A, Y => not_A );
	NOT2: INVERTER port map( A => B, Y => not_B );
	
	gate_xor_1: XOR_2 port map( A => C, B => B, Y => B_xor_C);
	gate_xor_2: XOR_2 port map( A => C, B => D, Y => C_xor_D);
	NOT3: INVERTER port map ( A => B_xor_C, Y => not_B_xor_C );
	
	
	AND1: THREE_AND port map (A => A, B => E, C => not_B_xor_C, Y => Y1);
	AND2: THREE_AND port map (A => not_A, B => E, C => C_xor_D, Y => Y2);
	NOR1: NOR_2 port map (A => A, B => C, Y => not_A_not_C);
	OR1: OR_2 port map (A => E, B => not_A_not_C, Y => E_or_not_A_not_C);
	AND3: THREE_AND port map (A => not_B, B => D, C => E_or_not_A_not_C, Y => Y3);
	OR2: THREE_OR port map (A => Y1, B => Y2, C => Y3, Y => Y);
	
end Struct;