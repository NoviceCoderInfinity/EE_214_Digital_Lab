library ieee;
use ieee.std_logic_1164.all;

entity compute is
 port(word1, word2, word3, word4 : in std_logic_vector(12 downto 0);
	   u1, u2, u3, u4 : in std_logic;
		sw1, dw1, sw2, dw2, sw3, dw3, sw4, dw4 : in std_logic_vector(8 downto 0);
		
		out_word1, out_word2, out_word3, out_word4: out std_logic_vector(19 downto 0));
end entity compute;

architecture struct of compute is
 component compute_module is
 port(ew : in std_logic_vector(2 downto 0);
      sw : in std_logic_vector(8 downto 0);
		dw : in std_logic_vector(8 downto 0);
		u : in std_logic;
		i: in std_logic_vector(4 downto 0);
		j: in std_logic_vector(4 downto 0);
		
      fw : out std_logic_vector(8 downto 0);
		u_out : out std_logic;
		i_out: out std_logic_vector(4 downto 0);
		j_out: out std_logic_vector(4 downto 0));
 end component compute_module;
begin
 
 module1 : compute_module port map(ew => word1(12 downto 10), sw => sw1, dw => dw1, u => u1, 
                                   i=> word1(9 downto 5), j => word1(4 downto 0), 
											  fw => out_word1(19 downto 11), u_out => out_word1(10), 
											  i_out => out_word1(9 downto 5), j_out => out_word1(4 downto 0));
											  
 module2 : compute_module port map(ew => word2(12 downto 10), sw => sw2, dw => dw2, u => u2, 
                                   i=> word2(9 downto 5), j => word2(4 downto 0), 
											  fw => out_word2(19 downto 11), u_out => out_word2(10), 
											  i_out => out_word2(9 downto 5), j_out => out_word2(4 downto 0));
											  
 module3 : compute_module port map(ew => word3(12 downto 10), sw => sw3, dw => dw3, u => u3, 
                                   i=> word3(9 downto 5), j => word3(4 downto 0), 
											  fw => out_word3(19 downto 11), u_out => out_word3(10), 
											  i_out => out_word3(9 downto 5), j_out => out_word3(4 downto 0));
											  
 module4 : compute_module port map(ew => word4(12 downto 10), sw => sw4, dw => dw4, u => u4, 
                                   i=> word4(9 downto 5), j => word4(4 downto 0), 
											  fw => out_word4(19 downto 11), u_out => out_word4(10), 
											  i_out => out_word4(9 downto 5), j_out => out_word4(4 downto 0));

end architecture struct;
		
		

		
      