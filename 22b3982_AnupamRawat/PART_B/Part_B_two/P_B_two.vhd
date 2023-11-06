library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity P_B_two is
	port ( A: in std_logic_vector(3 downto 0); 
			 B: in std_logic_vector(3 downto 0); 
			 M: in std_logic_vector(0 downto 0);
			 Y : out std_logic_vector(4 downto 0)
		 );
end entity;

architecture Struct of P_B_two is 
	signal w1, w2, w3, w4, y, D, D_not, M_not, t3, t2, t1, t0, p3, p2, p1, p0: std_logic;
	
	Component four_bit_Add_Sub is
		port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
	end component four_bit_Add_Sub;

begin
	AND1: AND_2 port map (M(0), '1', y);
	
	XOR1: XOR_2 port map (y, B(3), B(3));
	XOR2: XOR_2 port map (y, B(2), B(2));
	XOR3: XOR_2 port map (y, B(1), B(1));
	XOR4: XOR_2 port map (y, B(0), B(0));	
	FA_1 : four_bit_Add_Sub port map (B(3), B(2), B(1), B(0), '0', '0', '0', y, '0', D, B(3), B(2), B(1), B(0));
	FA_2 : four_bit_Add_Sub port map (B(3), B(2), B(1), B(0), A(3), A(2), A(1), A(0), '0', D, t3, t2, t1, t0);
	
	NOT1: INVERTER port map (D, D_not);
	NOT2: INVERTER port map (M(0), M_not);
	
	AND3: AND_2 port map (D_not, M_not, w1);
	AND8: AND_2 port map (D_not, M, w2);
	AND9: AND_2 port map (D, M_not, w3);
	AND10: AND_2 port map (D, M, w4);
	
	AND4: AND_2 port map (w1, '1', p3);
	AND5: AND_2 port map (w1, '0', p2);
	AND6: AND_2 port map (w1, '1', p1);
	AND7: AND_2 port map (w1, '0', p0);
	FA_3 : four_bit_Add_Sub port map (B(3), B(2), B(1), B(0), p3, p2, p1, p0, '0', D, t3, t2, t1, t0);
	
	AND4: AND_2 port map (w2, '1', p3);
	AND5: AND_2 port map (w2, '0', p2);
	AND6: AND_2 port map (w2, '1', p1);
	AND7: AND_2 port map (w2, '0', p0);
	FA_3 : four_bit_Add_Sub port map (t3, t2, t1, t0, p3, p2, p1, p0, '0', D, t3, t2, t1, t0);

	AND4: AND_2 port map (w3, '1', p3);
	AND5: AND_2 port map (w3, '0', p2);
	AND6: AND_2 port map (w3, '1', p1);
	AND7: AND_2 port map (w3, '0', p0);
	FA_3 : four_bit_Add_Sub port map (t3, t2, t1, t0, p3, p2, p1, p0, '0', D, t3, t2, t1, t0);
	
	AND4: AND_2 port map (w4, '1', p3);
	AND5: AND_2 port map (w4, '0', p2);
	AND6: AND_2 port map (w4, '1', p1);
	AND7: AND_2 port map (w4, '0', p0);
	FA_3 : four_bit_Add_Sub port map (t3, t2, t1, t0, p3, p2, p1, p0, '0', D, t3, t2, t1, t0);
	
end Struct;