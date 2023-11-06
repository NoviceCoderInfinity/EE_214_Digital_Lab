library ieee;
use ieee.std_logic_1164.all;

-- write the Flipflops packege declaration

entity P_B_one is
port (
		P, Q, R, S: in std_logic;
		P1, Q1, R1, S1: out std_logic
		);
end entity P_B_one;

architecture struct of P_B_one is


begin
	P1 <= (P and (not R)) or (Q and S) or (Q and R);
	Q1 <= (Q and (not R) and (not S)) or ( (not Q) and ( S or R ));
	R1 <= ((not R) and (not S)) or (R and S);
	S1 <= (not S);
end struct;