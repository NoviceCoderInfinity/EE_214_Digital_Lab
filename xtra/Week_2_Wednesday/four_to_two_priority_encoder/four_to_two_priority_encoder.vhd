library ieee; 
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity four_to_two_priority_encoder is
	port( A, B, C, D: in std_logic; Y1, Y0, V: out std_logic);
end entity;

architecture Struct of four_to_two_priority_encoder is
	
	component FOUR_OR is
		port(A, B, C, D: in std_logic; Y : out std_logic);
	end component;
	
	signal M,N,O,P : std_logic;
begin

	 o1:OR_2 port map(A => A, B => B, Y => M);
	 o2:OR_2 port map(A => D, B => C, Y => N);
	 o3:OR_2 port map(A => M, B => N, Y => V);
	 o4:OR_2 port map(A => A, B => B, Y => Y1);
	 o5:INVERTER port map( A => B, Y => O);
	 o6:AND_2 port map(A => C, B => O, Y => P);
	 o7:OR_2 port map(A => P, B => A, Y => Y0);

 end Struct ;