-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component Full_Sub_with_NOR is
		port (X, Y, B: in std_logic ; out_diff, out_borrow: out std_logic);
	end component Full_Sub_with_NOR;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance:  Full_Sub_with_NOR port map (X => input_vector(2), Y => input_vector(1), B => input_vector(0), out_diff => output_vector(1), out_borrow => output_vector(0));

end DutWrap;