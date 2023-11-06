-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(4 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component Prime_Number_Detector is
		port (A, B, C, D, E: in std_logic ; Y: out std_logic );
	end component Prime_Number_Detector;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Prime_Number_Detector port map (A => input_vector(4), B => input_vector(3), C => input_vector(2), D => input_vector(1), E => input_vector(0),
											Y => output_vector(0));

end DutWrap;

