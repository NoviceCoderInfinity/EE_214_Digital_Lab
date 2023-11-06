library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MUX is
	port(I1, I0, S: in std_logic; Y: out std_logic);
end entity MUX;

architecture Struct of MUX is
	signal I0Sbar, I1S, Sbar: std_logic;
begin
	INVERTER1: INVERTER port map(S, Sbar);
	AND1: AND_2 port map(I0, Sbar, I0Sbar);
	AND2: AND_2 port map(I1, S, I1S);
	OR1: OR_2 port map(I0Sbar, I1S, Y);
end Struct;