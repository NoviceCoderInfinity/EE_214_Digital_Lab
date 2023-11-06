-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component AND_with_NOR is
		port(A, B : in std_logic; OUTPUT  : out std_logic);
	end component AND_with_NOR;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: AND_with_NOR port map (A => input_vector(1), B => input_vector(0), OUTPUT => output_vector(0));

end DutWrap;

