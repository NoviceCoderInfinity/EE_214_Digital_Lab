library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sorting_block is
    port (
        word1, word2, word3, word4: in STD_LOGIC_VECTOR(12 downto 0);
		  sw1, sw2, sw3, sw4: in STD_LOGIC_VECTOR(2 downto 0);
        U1O, U2O: out STD_LOGIC;
		  OWORD1, OWORD2, OWORD3, OWORD4: in STD_LOGIC_VECTOR(13 downto 0);
    );
end sorting_block;

architecture Struct of sorting_block is

	component compare is
		port (
			word1, word2: in STD_LOGIC_VECTOR(12 downto 0);
        u1, u2: in STD_LOGIC;  -- Corrected to "out" and default value assignment
        small_word,big_word : out std_logic_vector (13 downto 0);
		);
	end compare;
	
	signal small_word_1, small_word_2, long_word_1, long_word_2 : STD_LOGIC_VECTOR(12 downto 0);
	signal small_word_1_1, small_word_2_1, long_word_1_1, long_word_2_1 : STD_LOGIC_VECTOR(12 downto 0);
	
begin
	compare_1 : compare(word1=>word1, word2=>word2, u1=>'1', u2=>'1', small_word=>small_word_1, big_word=>big_word_1);
	compare_2 : compare(word1=>word3, word2=>word4, u1=>'1', u2=>'1', small_word=>small_word_2, big_word=>big_word_2);
	
	compare_3 : compare(word1=>big_word_1(12 downto 0), word2=>big_word_2(12 downto 0), u1=>big_word_1(13 downto 13), u2=>big_word_2(13 downto 13), 
								small_word=>small_word_1_1, big_word=>long_word_1_1);
	compare_4 : compare(word1=>small_word_1(12 downto 0), word2=>small_word_2(12 downto 0), u1=>small_word_1(13 downto 13), u2=>smal_word_2(13 downto 13), 
								small_word=>small_word_2_1, big_word=>long_word_2_1);
	
	compare_5 : compare(word1=>long_word_1_1(12 downto 0), word2=>long_word_2_1(12 downto 0), u1=>long_word_1_1(13 downto 13), u2=>long_word_2_1(13 downto 13), 
								small_word=>OWORD2, big_word=>OWORD1);
	compare_6 : compare(word1=>small_word_1_1(12 downto 0), word2=>small_word_2_1(12 downto 0), u1=>small_word_1_1(13 downto 13), u2=>small_word_2_1(13 downto 13), 
								small_word=>OWORD4, big_word=>OWORD3);
								
	
end Struct;
