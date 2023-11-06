-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	Component MUX_2x1 is
		port(I_0, I_1, S: in std_logic; Op : out std_logic);
	end component MUX_2x1;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX_2x1 port map (I_1 => input_vector(2), I_0 => input_vector(1), S => input_vector(0),	Op => output_vector(0));

end DutWrap;

