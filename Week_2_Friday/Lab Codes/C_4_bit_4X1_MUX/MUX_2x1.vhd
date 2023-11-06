library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity MUX_2x1 is 
	port (I_0, I_1, S: in std_logic ; Op: out std_logic);
end entity;

architecture Struct of MUX_2x1 is
	signal I0_S, I1_S, S_NOT : std_logic;
begin
	NOT1: INVERTER port map (A => S , Y => S_NOT);
	
	AND1: AND_2 port map (A => I_0, B => S_NOT, Y => I0_S);
	AND2: AND_2 port map (A => I_1, B => S, Y => I1_S);
	
	OR1: OR_2 port map (A => I0_S, B => I1_S, Y => Op);
end Struct;