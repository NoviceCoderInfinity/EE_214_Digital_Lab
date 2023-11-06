-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(52 downto 0);
       	output_vector: out std_logic_vector(12 downto 0));
end entity;

architecture DutWrap of DUT is
  COMPONENT reading_graph  is
 port (
weight1,weight2,weight3,weight4: in std_logic_vector(2 downto 0);
start1,start2,start3,start4,final1,final2,final3,final4: in std_logic_vector(4 downto 0);
op: out std_logic_vector(12 downto 0)
) ;
end COMPONENT reading_graph;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: reading_graph
			port map (
				weight1(2) => input_vector(51),
				weight1(1) => input_vector(50),
				weight1(0) => input_vector(49),
				start1(4) => input_vector(48),
				start1(3) => input_vector(47),
				start1(2) => input_vector(46),
				start1(1) => input_vector(45),
				start1(0) => input_vector(44),
				final1(4) => input_vector(43),
				final1(3) => input_vector(42),
				final1(2) => input_vector(41),
				final1(1) => input_vector(40),
				final1(0) => input_vector(39),
				weight2(2) => input_vector(38),
				weight2(1) => input_vector(37),
				weight2(0) => input_vector(36),
				start2(4) => input_vector(35),
				start2(3) => input_vector(34),
				start2(2) => input_vector(33),
				start2(1) => input_vector(32),
				start2(0) => input_vector(31),
				final2(4) => input_vector(30),
				final2(3) => input_vector(29),
				final2(2) => input_vector(28),
				final2(1) => input_vector(27),
				final2(0) => input_vector(26),
				weight3(2) => input_vector(25),
				weight3(1) => input_vector(24),
				weight3(0) => input_vector(23),
				start3(4) => input_vector(22),
				start3(3) => input_vector(21),
				start3(2) => input_vector(20),
				start3(1) => input_vector(19),
				start3(0) => input_vector(18),
				final3(4) => input_vector(17),
				final3(3) => input_vector(16),
				final3(2) => input_vector(15),
				final3(1) => input_vector(14),
				final3(0) => input_vector(13),
				weight4(2) => input_vector(12),
				weight4(1) => input_vector(11),
				weight4(0) => input_vector(10),
				start4(4) => input_vector(9),
				start4(3) => input_vector(8),
				start4(2) => input_vector(7),
				start4(1) => input_vector(6),
				start4(0) => input_vector(5),
				final4(4) => input_vector(4),
				final4(3) => input_vector(3),
				final4(2) => input_vector(2),
				final4(1) => input_vector(1),
				final4(0) => input_vector(0),
               -- order of output OUTPUT
			   OP(12) => output_vector(12),
			   OP(11) => output_vector(11),
			         OP(10) => output_vector(10),
					OP(9) => output_vector(9),
				OP(8) => output_vector(8),
					OP(7) => output_vector(7),
					OP(6) => output_vector(6),
					OP(5) => output_vector(5),
			         OP(4) => output_vector(4),
					OP(3) => output_vector(3),
				OP(2) => output_vector(2),
					OP(1) => output_vector(1),
					OP(0) => output_vector(0)
					);
end DutWrap;