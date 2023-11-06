library ieee;
use ieee.std_logic_1164.all;

entity TESTBENCH is
end entity;

architecture struct of TESTBENCH is
 component compute is
 port(word1 : in std_logic_vector(12 downto 0);
	   u1 : in std_logic;
		sw1, dw1 : in std_logic_vector(8 downto 0);
		
		out_word1: out std_logic_vector(19 downto 0));
 end component compute;
 
 signal output : std_logic_vector(19 downto 0);
 signal dw1 : std_logic_vector(8 downto 0);

begin

 process
 begin
  dw1 <= "000000000";
  wait for 10ms;
  dw1 <= "000000001";
  wait for 10ms;
  dw1 <= "000000010";
  wait for 10ms;
  dw1 <= "000000011";
  wait for 10ms;  
  dw1 <= "000000100";
  wait for 10ms;
  dw1 <= "000000101";
  wait for 10ms;
  dw1 <= "000000110";
  wait for 10ms;
  dw1 <= "000000111";
  wait for 10ms;
 end process;
 
 compute_instance : compute port map(word1 => "0101000001000",
                            u1 => '1',
									 sw1 => "000000011",
									 dw1 => dw1,
									 out_word1 => output);
									 

end architecture struct;