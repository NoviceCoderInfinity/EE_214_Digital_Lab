library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity shifter is
port ( a: in std_logic_vector(7 downto 0); 
       b: in std_logic_vector(2 downto 0); 
		 l: in std_logic;  
		 s: out std_logic_vector(7 downto 0));
end entity shifter;

architecture Struct of shifter is 
 signal d,h,k,m : std_logic_vector(7 downto 0);
 
 begin
  bit_rone : for i in 0 to 7 generate 
w: MUX_2 port map(I(0) => a(i), I(1) => a(7-i), S => l, Y => d(i));
end generate ;

 
 n4_bit : for i in 0 to 7 generate
lsb: if i < 4 generate
b2: MUX_2 port map(I(0) => d(i), I(1) => d(i+4), S => b(2), Y => h(i));
end generate lsb;
msb: if i > 3 generate
b2: MUX_2 port map(I(0) => d(i), I(1) => '0', S => b(2), Y => h(i));
end generate msb;
end generate ;

n2_bit : for i in 0 to 7 generate
lsba: if i < 6 generate
b1: MUX_2 port map(I(0) => h(i), I(1) => h(i+2), S => b(1), Y => k(i));
end generate lsba;
msba: if i > 5 generate
b1: MUX_2 port map(I(0) => h(i), I(1) => '0', S => b(1), Y => k(i));
end generate msba;
end generate ;

n1_bit : for i in 0 to 7 generate
lsbb: if i < 7 generate
b0: MUX_2 port map(I(0) => k(i), I(1) => k(i+1), S => b(0), Y => m(i));
end generate lsbb;
msbb: if i > 6 generate
b0: MUX_2 port map(I(0) => k(i), I(1) => '0', S => b(0), Y => m(i));
end generate msbb;
end generate ;

bit_rtwo : for i in 0 to 7 generate 
o: MUX_2 port map(I(0) => m(i), I(1) => m(7-i), S => l, Y => s(i));
end generate ;


 
 end Struct ;
 
 