-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component four_to_two_priority_encoder is
		port( A, B, C, D: in std_logic; Y1, Y0, V: out std_logic);
	end component four_to_two_priority_encoder;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: four_to_two_priority_encoder port map (A => input_vector(3), B => input_vector(2), C => input_vector(1), D => input_vector(0),
											Y1 => output_vector(2), Y0 => output_vector(1), V => output_vector(0));

end DutWrap;

