

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(4 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	
	Component logicgate  is
		 port (X4,X3,X2,X1,X0: in std_logic; Y: out std_logic);
	end component logicgate ;
begin

   
   add_instance: logicgate  port map (X4=> input_vector(4),X3=> input_vector(3),X2=> input_vector(2),X1=> input_vector(1),X0=> input_vector(0),
									    Y=> output_vector(0));

end DutWrap;

