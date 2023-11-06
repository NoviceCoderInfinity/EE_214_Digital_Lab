library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity MUX_4x1 is 
	port (I4, I3, I2, I1, S2, S1: in std_logic ; OUT_PUT: out std_logic);
end entity;

architecture Struct of MUX_4x1 is
	signal O1, O2 : std_logic;
	
	Component MUX_2x1 is
		port (I_0, I_1, S: in std_logic ; Op: out std_logic);
	end component MUX_2x1;
begin
	M_2x1_1: MUX_2x1 port map (I_0 => I1, I_1 => I2, S => S1, Op => O1);
	M_2x1_2: MUX_2x1 port map (I_0 => I3, I_1 => I4, S => S1, Op => O2);
	M_2x1_3: MUX_2x1 port map (I_0 => O1, I_1 => O2, S => S2, Op => OUT_PUT);
end Struct;