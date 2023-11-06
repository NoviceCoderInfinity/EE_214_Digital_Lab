library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity four_to_two_encoder is
	port(
		A,B,C,D,E_n : in std_logic;
		Y1, Y0 : out std_logic		);
end entity;

architecture Struct of four_to_two_encoder is

	component FOUR_SIGNAL_SPECIAL_AND is
		port(A, B, C, D : in std_logic;
				Y : out std_logic	);
	end component;
	
	signal A_xor_B, A_xor_C : std_logic;
	
begin

gate_XOR_1 : XOR_2 port map(A=>A, B=>B, Y=>A_xor_B);
gate_XOR_2 : XOR_2 port map(A=>A, B=>C, Y=>A_xor_C);

four_sp_and_1 : FOUR_SIGNAL_SPECIAL_AND port map (A=>A_xor_B, B=>E_n, C=>C, D=>D, Y=>Y1);
four_sp_and_2 : FOUR_SIGNAL_SPECIAL_AND port map (A=>A_xor_C, B=>E_n, C=>B, D=>D, Y=>Y0);

end Struct;