library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Led_Sw is
	port(swt ,clk1,reset: in std_logic ; 
			leds : out std_logic_vector(7 downto 0));
end entity;

architecture str of Led_Sw is
	
	component CLOCK is
	port(clock_input, reset : in std_logic ; n : in integer;
		  state : out integer);
	end component;
	
	component clock_divider is
	port(clock_input, reset : in std_logic ; n : in integer; 
			clock_output : out std_logic);
	end component;

	

	signal led: std_logic_vector(7 downto 0);
	signal s, counter, reverse_counter : integer := 0 ;
	
begin
	clock_1 : CLOCK port map(clock_input => clk1, reset => '0', n => 50000000, state => s);
--	clock_div_1: clock_divider port map(clock_input => clk1, reset => '0' , n => 10000000, clock_output => led(0)); 
--	clock_div_2: clock_divider port map(clock_input => clk1, reset => '0' , n => 20000000, clock_output => led(1)); 
--	clock_div_3: clock_divider port map(clock_input => clk1, reset => '0' , n => 40000000, clock_output => led(2)); 
--	clock_div_4: clock_divider port map(clock_input => clk1, reset => '0' , n => 80000000, clock_output => led(3)); 
--	clock_div_5: clock_divider port map(clock_input => clk1, reset => '0' , n => 160000000, clock_output => led(4)); 
--	clock_div_6: clock_divider port map(clock_input => clk1, reset => '0' , n => 320000000, clock_output => led(5)); 
--	clock_div_7: clock_divider port map(clock_input => clk1, reset => '0' , n => 640000000, clock_output => led(6)); 
--	clock_div_8: clock_divider port map(clock_input => clk1, reset => '0' , n => 1280000000, clock_output => led(7)); 
	
	led_s : process(swt, s)
	begin
	if(swt = '0') then
		case s is
			when 1 =>
				leds(0) <= '1';
				leds(1) <= '1';
				leds(2) <= '0';
				leds(3) <= '0';
				leds(4) <= '0';
				leds(5) <= '0';
				leds(6) <= '0';
				leds(7) <= '0';
			when 2 =>
				leds(0) <= '0';
				leds(1) <= '0';
				leds(2) <= '1';
				leds(3) <= '1';
				leds(4) <= '0';
				leds(5) <= '0';
				leds(6) <= '0';
				leds(7) <= '0';
			when 3 =>
				leds(0) <= '0';
				leds(1) <= '0';
				leds(2) <= '0';
				leds(3) <= '0';
				leds(4) <= '1';
				leds(5) <= '1';
				leds(6) <= '0';
				leds(7) <= '0';
			when 4 =>
				leds(0) <= '0';
				leds(1) <= '0';
				leds(2) <= '0';
				leds(3) <= '0';
				leds(4) <= '0';
				leds(5) <= '0';
				leds(6) <= '1';
				leds(7) <= '1';
			when others =>
				leds(0) <= '0';
				leds(1) <= '0';
				leds(2) <= '0';
				leds(3) <= '0';
				leds(4) <= '0';
				leds(5) <= '0';
				leds(6) <= '0';
				leds(7) <= '0';
		end case;
	end if;
	if(swt = '1') then
		if(unsigned(led) < 64) then
			counter <= to_integer(unsigned(led));
			reverse_counter <= 128 - counter;
			leds <= std_logic_vector(to_unsigned(reverse_counter, 8));
		else 
			counter <= to_integer(unsigned(led));
			reverse_counter <= 192 - counter;
			leds <= std_logic_vector(to_unsigned(reverse_counter, 8));	
		end if;
	end if;
	end process;
	
	
end str;
	

		
		
		
	
		