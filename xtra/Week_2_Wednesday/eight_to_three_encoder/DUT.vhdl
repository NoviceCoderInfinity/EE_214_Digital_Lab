

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
	
	Component eight_to_three_encoder is
		 port (Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0,En: in std_logic; A2,A1,A0: out std_logic);
	end component eight_to_three_encoder;
begin

   
   add_instance: eight_to_three_encoder port map ( Y7 => input_vector(8),Y6 => input_vector(7),Y5=> input_vector(6),Y4=> input_vector(5),Y3=> input_vector(4),Y2=> input_vector(3),Y1=> input_vector(2),Y0=> input_vector(1),En=> input_vector(0),
											A2=> output_vector(2),A1=> output_vector(1),A0=> output_vector(0));

end DutWrap;

