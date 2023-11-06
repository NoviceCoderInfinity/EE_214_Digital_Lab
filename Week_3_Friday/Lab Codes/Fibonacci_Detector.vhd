library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Fibonacci_Detector is
	port ( x4, x3, x2, x1, x0 : in std_logic ; y : out std_logic ) ;
end entity;

architecture Struct of Fibonacci_Detector is
	signal x0bar, x1bar, x2bar, x3bar, x4bar, x1bar_x0bar, x3_x1bar_x0bar, x3_x3_x1bar_x0bar, x4bar_x2bar, sum_1,
	x4_x3bar, x4bar_x4_x3bar, x0_x4bar_x4_x3bar, x2_x1bar, sum_2 : std_logic ;
begin
	NOT1: INVERTER port map (A => x0 , Y => x0bar);
	NOT2: INVERTER port map (A => x1 , Y => x1bar);
	NOT3: INVERTER port map (A => x2 , Y => x2bar);
	NOT4: INVERTER port map (A => x3 , Y => x3bar);
	NOT5: INVERTER port map (A => x4 , Y => x4bar);
	
	AND1: AND_2 port map (A => x1bar, B => x0bar, Y => x1bar_x0bar);
	AND2: AND_2 port map (A => x3, B => x1bar_x0bar,Y => x3_x1bar_x0bar);
	OR1: OR_2 port map (A => x3bar, B => x3_x1bar_x0bar, Y => x3_x3_x1bar_x0bar); 
	AND3: AND_2 port map (A => x4bar, B => x2bar,Y => x4bar_x2bar);
	AND9: AND_2 port map (A => x4bar_x2bar, B => x3_x3_x1bar_x0bar,Y => sum_1);
	
	AND4: AND_2 port map (A => x4, B => x3bar,Y => x4_x3bar);
	OR2: OR_2 port map (A => x4bar, B => x4_x3bar,Y => x4bar_x4_x3bar);
	AND6: AND_2 port map (A => x4bar_x4_x3bar, B => x0,Y => x0_x4bar_x4_x3bar);
	AND7: AND_2 port map (A => x2, B => x1bar,Y => x2_x1bar);
	AND8: AND_2 port map (A => x2_x1bar, B => x0_x4bar_x4_x3bar,Y => sum_2);
	
	OR3: OR_2 port map (A => sum_1, B => sum_2, Y => y);
end Struct;