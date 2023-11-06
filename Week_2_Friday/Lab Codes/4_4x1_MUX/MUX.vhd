library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity MUX is
	port ( A: in std_logic_vector(3 downto 0); 
			 B: in std_logic_vector(3 downto 0); 
			 C: in std_logic_vector(3 downto 0); 
			 D: in std_logic_vector(3 downto 0); 
			 sel: in std_logic_vector(1 downto 0);
			 Y : out std_logic_vector(3 downto 0)
		 );
end entity;

architecture Struct of MUX is 
	
	Component MUX_4x1 is
		port (I4, I3, I2, I1, S2, S1: in std_logic ; OUT_PUT: out std_logic);
	end component MUX_4x1;
	
begin
	MUX_0: MUX_4x1 port map (I4 => D(0), I3 => C(0), I2 => B(0), I1 => A(0), S2 => sel(1), S1 => sel(0), OUT_PUT => Y(0));
	MUX_1: MUX_4x1 port map (I4 => D(1), I3 => C(1), I2 => B(1), I1 => A(1), S2 => sel(1), S1 => sel(0), OUT_PUT => Y(1));
	MUX_2: MUX_4x1 port map (I4 => D(2), I3 => C(2), I2 => B(2), I1 => A(2), S2 => sel(1), S1 => sel(0), OUT_PUT => Y(2));
	MUX_3: MUX_4x1 port map (I4 => D(3), I3 => C(3), I2 => B(3), I1 => A(3), S2 => sel(1), S1 => sel(0), OUT_PUT => Y(3));
end Struct;