library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Traffic is
	port(clock, reset : in std_logic ;
			led : out std_logic_vector(7 downto 0));
end entity;

architecture bhv of Traffic is
	
	type state is (s1, s2, s3, s4, s5, s6, s7, s8);
	signal present_state, next_state: state:= s1;
	component clock_divider is
		port(clock_input, reset : in std_logic ; n : in integer; 
			clock_output : out std_logic);
	end component;
	
	
	signal count, count1:integer:=0;
	signal new_clock: std_logic:='0';
	signal leds:std_logic_vector(7 downto 0);
	
begin
	clk1 : clock_divider port map (clock_input => clock, reset => reset, n => 250000, clock_output => new_clock);
	
	clock_process: process(new_clock, reset)
	begin
		if (new_clock'event and new_clock = '1') then
			if (count1=6) then
				count1 <= 0;
			else
				count1 <= count1 + 1;
			end if;
			present_state <= next_state;
		end if;
		if (reset='1') then
			count1 <= 0;
			present_state <= s1;
		end if;
	end process;
	
	count <= count1;
	
	traffic_signal	: process (present_state, count, new_clock, count1)
	begin
	
		case present_state is
			
			when s1 =>
				if (count < 5) then
					leds(0) <= '1';
					leds(1) <= '0';
					leds(2) <= '1';
					leds(3) <= '1';
					leds(4) <= '1';
					leds(5) <= '1';
					leds(6) <= '1';
					leds(7) <= '1';
				else 
--					count <= 0;
					next_state <= s2;
				end if;
				
			when s2 =>
				if (count = 6) then
					leds(0) <= '1';
					leds(1) <= '0';
					leds(2) <= '1';
					leds(3) <= '0';
					leds(4) <= '1';
					leds(5) <= '1';
					leds(6) <= '1';
					leds(7) <= '1';
				else 
--					count <= 0;
					next_state <= s3;
				end if;
				
			when s3 =>
				if (count < 5) then
					leds(0) <= '1';
					leds(1) <= '1';
					leds(2) <= '0';
					leds(3) <= '1';
					leds(4) <= '1';
					leds(5) <= '1';
					leds(6) <= '1';
					leds(7) <= '1';
				else 
--					count <= 0;
					next_state <= s4;
				end if;
				
			when s4 =>
				if (count = 6) then
					leds(0) <= '1';
					leds(1) <= '1';
					leds(2) <= '1';
					leds(3) <= '0';
					leds(4) <= '1';
					leds(5) <= '0';
					leds(6) <= '1';
					leds(7) <= '1';
				else 
--					count <= 0;
					next_state <= s5;
				end if;
				
			when s5 =>
				if (count < 5) then
					leds(0) <= '1';
					leds(1) <= '1';
					leds(2) <= '1';
					leds(3) <= '1';
					leds(4) <= '0';
					leds(5) <= '1';
					leds(6) <= '1';
					leds(7) <= '1';
				else 
--					count <= 0;
					next_state <= s6;
				end if;
				
			when s6 =>
				if (count = 6) then
					leds(0) <= '1';
					leds(1) <= '1';
					leds(2) <= '1';
					leds(3) <= '1';
					leds(4) <= '1';
					leds(5) <= '0';
					leds(6) <= '1';
					leds(7) <= '0';
				else 
--					count <= 0;
					next_state <= s7;
				end if;
				
			when s7 =>
				if (count < 5) then
					leds(0) <= '1';
					leds(1) <= '1';
					leds(2) <= '1';
					leds(3) <= '1';
					leds(4) <= '1';
					leds(5) <= '1';
					leds(6) <= '0';
					leds(7) <= '1';
				else 
--					count <= 0;
					next_state <= s8;
				end if;
				
			when s8 =>
				if (count = 6) then
					leds(0) <= '1';
					leds(1) <= '0';
					leds(2) <= '1';
					leds(3) <= '1';
					leds(4) <= '1';
					leds(5) <= '1';
					leds(6) <= '1';
					leds(7) <= '0';
				else 
--					count <= 0;
					next_state <= s1;
				end if;
			when others =>
				leds(0) <= '1';
				leds(1) <= '0';
				leds(2) <= '1';
				leds(3) <= '1';
				leds(4) <= '1';
				leds(5) <= '1';
				leds(6) <= '1';
				leds(7) <= '1';
				next_state <= s1;
		end case;
	end process;
led <= leds;
				
end architecture bhv;