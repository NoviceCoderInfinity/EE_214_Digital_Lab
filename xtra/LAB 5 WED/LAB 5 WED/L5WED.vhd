library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
	port (
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		sel: in std_logic_vector(1 downto 0);
		op: out std_logic_vector(7 downto 0)
	);
end alu_beh;

architecture a1 of alu_beh is
	function sub(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
	return std_logic_vector is
	-- declaring and initializing variables using aggregates
	variable diff : std_logic_vector(7 downto 0):=(others =>'0');
	variable carry: std_logic := '0';
	begin
	-- Hint: Use for loop to calculate value of "diff" and "carry" variable
	-- Use aggregates to assign values to multiple bits
		C2: for i in 0 to 7 loop
			if (i > 3) then
			diff(i) := '0' xor carry;
			else
			diff(i) := A(i) xor B(i) xor carry;
			carry := (carry and (A(i) xnor B(i))) or (not A(i) and B(i));
			end if;
		end loop C2;
	return diff;
	end sub;
begin
	alu : process( A, B, sel )
	begin
	-- complete VHDL code for various outputs of ALU based on select lines
	-- Hint: use if/else statement
	--
	if (sel(0) = '0') and (sel(1) = '0') then
		op <= A & B;
	elsif (sel(0) = '1') and (sel(1) = '0') then
		op <= sub(A, B);
	elsif (sel(0) = '0') and (sel(1) = '1') then
		op <= "0000" & (A xor B);
	elsif (sel(0) = '1') and (sel(1) = '1') then
		op <= "000" & A(3 downto 0) & '0';
	end if;
	-- sub function usage :
	-- signal_name <= sub(A,B)
	-- variable_name := sub(A,B)
	--
	-- concatenate operator usage:
	-- "0000" & A
	end process ; --alu
end a1 ; -- a1