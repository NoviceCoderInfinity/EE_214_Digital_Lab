library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity eight_to_three_encoder is
	port( Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, En: in std_logic; A2, A1, A0: out std_logic);
end entity eight_to_three_encoder;

architecture Struct of eight_to_three_encoder is
	
	component Encoder4to2 is
		port( A,B,C,D,En: in std_logic; Y1,Y0: out std_logic);
	end component;
	
	signal M,N,P,Q,R,S : std_logic;
	
begin

	o1:Encoder4to2 port map(A => Y3, B => Y2, C => Y1, D =>Y0,En=>En, Y1=>M,Y0=>N);
	o2:Encoder4to2 port map(A => Y7, B => Y6, C => Y5, D =>Y4,En=>En, Y1=>P,Y0=>Q);
	o3:Encoder4to2 port map(A => Y4, B => Y5, C => Y6, D =>Y7,En=>En, Y1=>R,Y0=>S);
	o4:OR_2 port map(A=>R,B=>P,Y=>A2);
	o5:OR_2 port map(A=>M,B=>P,Y=>A1);
	o6:OR_2 port map(A=>N,B=>Q,Y=>A0);
 
end Struct;
