-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(4 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component four_to_two_encoder is
		port(
		A,B,C,D,E_n : in std_logic;
		Y1, Y0 : out std_logic		);
	end component four_to_two_encoder;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: four_to_two_encoder port map (A => input_vector(4), B => input_vector(3), C => input_vector(2), D => input_vector(1), E_n => input_vector(0),
											Y1 => output_vector(1), Y0 => output_vector(0));

end DutWrap;

