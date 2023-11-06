-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(11 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component BARRELSHIFTER is
		port(A: in std_logic_vector(7 downto 0); SHIFTSELECT: in std_logic_vector(2 downto 0); L: in std_logic; B: out std_logic_vector(7 downto 0));
	end component BARRELSHIFTER;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: BARRELSHIFTER 
			port map (
					-- order of inputs B A
					L => input_vector(11),
					SHIFTSELECT => input_vector(10 downto 8),
					A => input_vector(7 downto 0),
					B => output_vector
				);
end DutWrap;