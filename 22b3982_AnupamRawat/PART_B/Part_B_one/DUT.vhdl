-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component P_B_one is
		port(
				P, Q, R, S: in std_logic;
		P1, Q1, R1, S1: out std_logic
				);
	end component P_B_one;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: P_B_one port map (P => input_vector(3), Q => input_vector(2), R => input_vector(1), S => input_vector(0),
														P1 => output_vector(3),	Q1 => output_vector(2),	R1 => output_vector(1),	S1 => output_vector(0)
										);

end DutWrap;

