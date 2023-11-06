library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity BONUS is
  port (M6, M5, M4, M3, M2, M1, M0: in std_logic; Y0: out std_logic);
end entity BONUS;

architecture Struct of BONUS is
	signal A, B, C, D, M3_bar, M2_bar, M1_bar, M0_bar, S1, S2 : std_logic;
begin
	NOT1: INVERTER port map ( A => M0, Y => M0_bar );
	NOT2: INVERTER port map ( A => M1, Y => M1_bar );
	NOT3: INVERTER port map ( A => M2, Y => M2_bar );
	NOT4: INVERTER port map ( A => M3, Y => M3_bar );
	
	AND1: AND_2 port map ( A => M6, B => M3_bar , Y => A );
	AND2: AND_2 port map ( A => M5, B => M2_bar , Y => B );
	AND3: AND_2 port map ( A => M4, B => M1_bar , Y => C );
	AND4: AND_2 port map ( A => M3, B => M0_bar , Y => D );
	
	AND5 : AND_2 port map ( A => A, B => B, Y => S1 );
	AND6 : AND_2 port map ( A => C, B => D, Y => S2 );
	AND7 : AND_2 port map ( A => S1, B => S2, Y => Y0 );
end Struct;
