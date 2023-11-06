-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	component MUX is
		port ( A: in std_logic_vector(3 downto 0); 
			 B: in std_logic_vector(3 downto 0); 
			 C: in std_logic_vector(3 downto 0); 
			 D: in std_logic_vector(3 downto 0); 
			 sel: in std_logic_vector(1 downto 0);
			 Y : out std_logic_vector(3 downto 0)
		 );
	end component MUX;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX 
			port map(
				D => input_vector(17 downto 14),
				C => input_vector(13 downto 10),
				B => input_vector(9 downto 6),
				A => input_vector(5 downto 2),
				sel => input_vector(1 downto 0),
				Y => output_vector(3 downto 0)
			);
end DutWrap;