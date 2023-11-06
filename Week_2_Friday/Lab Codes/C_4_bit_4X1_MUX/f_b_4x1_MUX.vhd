library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity f_b_4x1_MUX is 
	port (d3, d2, d1, d0, c3, c2, c1, c0, b3, b2, b1, b0, a3, a2, a1, a0, sel1, sel0: in std_logic ;
		   Y3, Y2, Y1, Y0: out std_logic);
end entity;

architecture Struct of f_b_4x1_MUX is

	Component MUX_4x1 is
		port (I4, I3, I2, I1, S2, S1: in std_logic ; OUT_PUT: out std_logic);
	end component MUX_4x1;
	
begin
	MUX0: MUX_4x1 port map (I4 => d0, I3 => c0, I2 => b0, I1 => a0, S2 => sel1, S1 => sel0, OUT_PUT => Y0);
	MUX1: MUX_4x1 port map (I4 => d1, I3 => c1, I2 => b1, I1 => a1, S2 => sel1, S1 => sel0, OUT_PUT => Y1);
	MUX2: MUX_4x1 port map (I4 => d2, I3 => c2, I2 => b2, I1 => a2, S2 => sel1, S1 => sel0, OUT_PUT => Y2);
	MUX3: MUX_4x1 port map (I4 => d3, I3 => c3, I2 => b3, I1 => a3, S2 => sel1, S1 => sel0, OUT_PUT => Y3);
end Struct;