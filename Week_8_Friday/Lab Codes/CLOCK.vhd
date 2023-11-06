library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CLOCK is 
	port(clock_input, reset : in std_logic ; n : in integer; 
			state: out integer);
end entity;

architecture Struct of CLOCK is
	signal count:integer:=1;
	signal output:std_logic := '0';
	signal mode: integer:= 1;
begin
	process_de_nevo : process(clock_input)
	begin
		if (clock_input ='1' and clock_input' event) then
			count <= count + 1;
		end if;
		
		if (reset = '1') then
			mode <= 1;
			count <= 1;
		end if;
		
		if (count = n/4) then
			mode <= 2;
		end if;
		
		if (count = n/2) then
			mode <= 3;
		end if;
		
		if (count = 3*n/4) then
			mode <= 4;
		end if;
		
		if (count = n) then
			count <= 1;
			mode <= 1;
		end if;
		
		state <= mode;
		
	end process;
end Struct;