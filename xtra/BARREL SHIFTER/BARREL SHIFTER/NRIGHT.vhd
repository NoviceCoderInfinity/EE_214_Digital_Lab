library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

-- !! N must be > 0 --

entity NRIGHT is
	generic(N: integer; BITS: integer);
	port(SHIFT: in std_logic; A: in std_logic_vector(BITS-1 downto 0); B: out std_logic_vector(BITS-1 downto 0));
end entity NRIGHT;

architecture Struct of NRIGHT is
	component MUX is
		port(I1, I0, S: in std_logic; Y: out std_logic);
	end component MUX;
	
begin 
	NR: for i in 0 to (BITS-1) generate
		B0: if (i >= BITS-N) generate
			MUX2: MUX port map('0', A(i), SHIFT, B(i));
		end generate B0;
		BX: if (i < BITS-N) generate
			MUX2: MUX port map(A(i+N), A(i), SHIFT, B(i));
		end generate BX;
	end generate NR;
end Struct;
	