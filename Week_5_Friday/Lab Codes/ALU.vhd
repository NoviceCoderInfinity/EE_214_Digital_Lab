library ieee;
use ieee.std_logic_1164.all;


entity alu_beh is
port (
	A: in std_logic_vector(3 downto 0);
	B: in std_logic_vector(3 downto 0);
	op: out std_logic_vector(5 downto 0)
) ;
end alu_beh;

architecture a1 of alu_beh is
	function MAX(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
		return std_logic_vector is
		-- declaring and initializing variables using aggregates
		variable maxx : std_logic_vector(3 downto 0):=(others =>'0');
	begin
		if (A > B) then
			maxx := A;
		elsif (B > A) then
			maxx := B;
		end if;
		-- Hint: Use for loop to calculate value of "diff" and "carry" variable
		-- Use aggregates to assign values to multiple bits
		return maxx;
	end MAX;	
	
	function Eq(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
		return std_logic_vector is
		-- declaring and initializing variables using aggregates
		variable equ : std_logic_vector(3 downto 0):=(others =>'0');
	begin
		if ( A = B ) then 
			equ := A;
		end if;
		-- Hint: Use for loop to calculate value of "diff" and "carry" variable
		-- Use aggregates to assign values to multiple bits
		return equ;
	end Eq;

begin
alu : process( A, B )
	--variable sel : std_logic_vector(1 downto 0) := ( 1<= B(3), 0<= A(3), others => '0');
begin
	if (A(3) = '0') and (B(3) = '0') then
		op <= "00" & max(A, B);
	elsif (A(3) = '1') and (B(3) = '0') then
		op <= "00" & (A and B);
	elsif (A(3) = '0') and (B(3) = '1') then
		op <= "00" & (not A);
	elsif (A(3) = '1') and (B(3) = '1') then
		op <= "00" & Eq(A, B);
	end if;
-- complete VHDL code for various outputs of ALU based on select lines
-- Hint: use if/else statement
--
-- sub function usage :
-- signal_name <= sub(A,B)
-- variable_name := sub(A,B)
--
-- concatenate operator usage:
-- "0000" & A 
end process ; --alu
end a1 ; -- a1