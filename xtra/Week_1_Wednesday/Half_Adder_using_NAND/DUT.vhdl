-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component Half_Adder_using_NAND is
		port(A, B : in std_logic; Carry, Sum : out std_logic);
	end component Half_Adder_using_NAND;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Half_Adder_using_NAND port map (A => input_vector(1), B => input_vector(0), Carry => output_vector(1), Sum => output_vector(0));

end DutWrap;

