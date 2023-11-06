library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
	port(clock_input, reset : in std_logic ; n : in integer; 
			clock_output : out std_logic);
end entity;

architecture bhv of clock_divider is
	signal count:integer:=1;
	signal output:std_logic := '0';
	
begin
	process_name: process(clock_input)
	begin
		if(clock_input='1' and clock_input' event) then
			count<= count+1;
		end if;
		
		if(reset='1') then
			output<='0';
			count<=1;
		end if;
		clock_output<=output;
	
		if(count = n) then
			output<= not output;
			count<=1;
		end if;
		
	end process;
end architecture bhv;
