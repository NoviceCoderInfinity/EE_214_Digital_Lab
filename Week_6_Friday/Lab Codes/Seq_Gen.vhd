library ieee;
use ieee.std_logic_1164.all;

-- write the Flipflops packege declaration

entity Seq_Gen is
port (reset,clock: in std_logic;
		y:out std_logic);
end entity Seq_Gen;

architecture struct of Seq_Gen is
signal D:std_logic_vector(2 downto 0);
signal Q:std_logic_vector(2 downto 0);

component dff_set is port(D,clock,set:in std_logic;Q:out std_logic);
end component dff_set;

component dff_reset is port(D,clock,reset:in std_logic;Q:out std_logic);
end component dff_reset;

begin
	D(2) <= ((not Q(0)) and Q(1) and (not Q(2))) or (Q(0) and (not Q(1)) and Q(2));
	D(1) <= ((not Q(1)) and (not Q(2))) or (Q(0) and (not Q(1)));
	D(0) <= (Q(2) or ((Q(0)) and (not Q(1))) or ((not Q(0)) and Q(1)));
	ff1: dff_reset port map (D(2), clock, reset, Q(2));	
	ff2: dff_reset port map (D(1), clock, reset, Q(1));
	ff3: dff_set port map (D(0), clock, reset, Q(0));
	y <= Q(0);
end struct;