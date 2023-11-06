library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compare is
    port (
        word1, word2: in STD_LOGIC_VECTOR(12 downto 0);
        u1, u2: in STD_LOGIC;  -- Corrected to "out" and default value assignment
        small_word,big_word : out std_logic_vector (13 downto 0);
    );
end compare;

architecture comparator of compare is
	component source_weight_extractor is
		port (
			source : in STD_LOGIC_VECTOR(4 downto 0);
			sw: out STD_LOGIC_VECTOR(2 downto 0);
		);
	end source_weight_extractor;
	
	signal sw1 : STD_LOGIC_VECTOR(2 downto 0);
	signal sw2 : STD_LOGIC_VECTOR(2 downto 0);
	
begin
	
	sw1_weight: source_weight_extractor(source => word1(9 downto 5), sw => sw1);
	sw2_weight: source_weight_extractor(source => word2(9 downto 5), sw => sw2);
	
	
    process(word1, word2)
    begin
        if u1 = '1' and u2 = '1' then

            if word1(4 downto 0) = word2(4 downto 0) then
                if (unsigned(sw1) + unsigned(word1(12 downto 10))) < (unsigned(sw2) + unsigned(word2(12 downto 10))) then
                    small_word(12 downto 0) <= word1;
                    big_word(12 downto 0) <= word2;
                    big_word(13 downto 13) <= '0';
                else
                    small_word <= word2;
                    big_word(12 downto 0) <= word1;
                    small_word(13 downto 13) <= '0';  -- Corrected the "else" part
                end if;
            else
                if word1(4 downto 0) < word2(4 downto 0) then
                    small_word(12 downto 0) <= word1;
                    big_word(12 downto 0) <= word2;  
                else
                    small_word(12 downto 0) <= word2;
                    big_word(12 downto 0) <= word1;
                end if;
            end if;

        elsif u1 /= u2 then
            if u1 = '1' then
                small_word(12 downto 0) <= word1;
                big_word(12 downto 0) <= word2;
            else
                small_word(12 downto 0) <= word2;
                big_word(12 downto 0) <= word1;  -- Corrected the assignment operator
            end if;

        else
            small_word(12 downto 0) <= word1;
            big_word(12 downto 0) <= word2;
        end if;
    end process;
end architecture;