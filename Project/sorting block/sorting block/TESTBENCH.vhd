library ieee;
use ieee.std_logic_1164.all;

entity TESTBENCH is
end entity;

architecture struct of TESTBENCH is
 component compare is
    port (
        word1, word2: in STD_LOGIC_VECTOR(12 downto 0);
        sw1, sw2: in STD_LOGIC_VECTOR(2 downto 0);
        small_word,big_word : out std_logic_vector (12 downto 0);
        u1, u2: in STD_LOGIC;  -- Corrected to "out" and default value assignment
		  u1o, u2o: out STD_LOGIC
    );
 end component compare;
 
 signal word1, word2, small_word, big_word : std_logic_vector(12 downto 0);
 signal sw1, sw2 : std_logic_vector(8 downto 0);
 signal u1, u2, u1o, u2o : std_logic;
 
begin

 process
 begin
  
  wait for 10ms;
  word1 <= "0110101110110";
  sw1 <= "000001111";
  u1 <= '1';
  word2 <= "1011001110110";
  sw2 <= "000001111";
  u2 <= '1'; --small = word1
  wait for 10ms;
  word1 <= "0110101110110";
  sw1 <= "000001111";
  u1 <= '1';
  word2 <= "0100101110110";
  sw2 <= "000001111";
  u2 <= '1';--small = word2
  wait for 10ms;
  word1 <= "0110101111001";
  sw1 <= "001010011";
  u1 <= '1';
  word2 <= "0110101101111";
  sw2 <= "001101100";
  u2 <= '1';--small = word2
  wait for 10ms;
  word1 <= "0110101100001";
  sw1 <= "001010101";
  u1 <= '1';
  word2 <= "0010101110000";
  sw2 <= "001001010";
  u2 <= '1';--small = word1
  wait for 10ms;
  word1 <= "0010101110011";
  sw1 <= "001001011";
  u1 <= '0';
  word2 <= "0010101110101";
  sw2 <= "001010110";
  u2 <= '1';--small = word1
  wait for 10ms;
  word1 <= "0010101110011";
  sw1 <= "001001011";
  u1 <= '1';
  word2 <= "0010101110101";
  sw2 <= "001010110";
  u2 <= '0';--small = word2

 end process;
 
 compare_instance : compare port map(word1 => word1,
                                     word2 => word2,
                                     sw1 => sw1,
												 sw2 => sw2,
												 u1 => u1,
												 u2 => u2,
                                     small_word => small_word,
												 big_word => big_word,
                                     u1o => u1o,
												 u2o => u2o);
									 

end architecture struct;