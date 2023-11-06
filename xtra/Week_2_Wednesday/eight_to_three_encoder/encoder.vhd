library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Encoder4to2 is
 port( A,B,C,D,En: in std_logic; Y1,Y0: out std_logic);
end entity Encoder4to2;

architecture Struct of Encoder4to2 is
 signal M,N : std_logic;
begin
 o1:OR_2 port map(A => A, B => B, Y => M);
 o2:OR_2 port map(A => A, B => C, Y => N);
 o3:AND_2 port map( A => En, B => M, Y => Y1);
 o4:AND_2 port map (A => En, B => N, Y => Y0);
end Struct;