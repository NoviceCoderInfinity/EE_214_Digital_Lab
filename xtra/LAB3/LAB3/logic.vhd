library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity logicgate is
 port( x4,x3,x2,x1,x0: in std_logic; y: out std_logic);
end entity logicgate;

architecture Struct of logicgate is
 signal A,B,C,D,E,F,G,H,I,J,K,L:std_logic;
begin
a1: INVERTER port map (A=> X4, Y=> A);
a2: INVERTER port map (A=> X3, Y=> B);
a3: INVERTER port map (A=> X2, Y=> C);
a4: INVERTER port map (A=> X1, Y=> D);

a5:FOUR_AND port map( A=>A,B=>B,C=>C,D=>X1,Y=>E);
a6:FOUR_AND port map( A=>A,B=>X2,C=>D,D=>X0,Y=>F);
a7:FOUR_AND port map( A=>X4,B=>X3,C=>X2,D=>X0,Y=>G);
a8:FOUR_AND port map( A=>X4,B=>B,C=>C,D=>X0,Y=>H);
a9:FOUR_AND port map( A=>A,B=>X3,C=>C,D=>X1,Y=>I);
a10:AND_2 port map( A=>X0,B=>I,Y=>J);
a11:AND_2 port map( A=>B,B=>X1,Y=>K);
a12:AND_2 port map( A=>X0,B=>K,Y=>L);

a13:SIX_OR port map( A=>E,B=>F,C=>G,D=>H,E=>J,F=>L,Y=>Y);

end Struct;







