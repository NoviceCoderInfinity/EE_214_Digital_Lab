-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component BONUS is
		port (M6, M5, M4, M3, M2, M1, M0: in std_logic; Y0: out std_logic);
	end component BONUS;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: BONUS port map (M6 => input_vector(6), M5 => input_vector(5), M4 => input_vector(4), 
											M3 => input_vector(3), M2 => input_vector(2), M1 => input_vector(1), M0 => input_vector(0), 
											Y0 => output_vector(0));

end DutWrap;

