

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(11 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	
	Component shifter  is
		 port ( a: in std_logic_vector(7 downto 0); 
       b: in std_logic_vector(2 downto 0); 
		 l: in std_logic;  
		 s: out std_logic_vector(7 downto 0));
	end component shifter ;
begin

   
   add_instance: shifter  port map (l=> input_vector(11),
	b=> input_vector(10 downto 8),
	a=> input_vector(7 downto 0),
	s=> output_vector(7 downto 0));

end DutWrap;

