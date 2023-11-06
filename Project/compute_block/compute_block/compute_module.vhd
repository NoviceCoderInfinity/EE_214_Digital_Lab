library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity compute_module is
 port(ew : in std_logic_vector(2 downto 0);
      sw : in std_logic_vector(8 downto 0);
		dw : in std_logic_vector(8 downto 0);
		u : in std_logic;
		i: in std_logic_vector(4 downto 0);
		j: in std_logic_vector(4 downto 0);
		
      fw : out std_logic_vector(8 downto 0);
		u_out : out std_logic;
		i_out: out std_logic_vector(4 downto 0);
		j_out: out std_logic_vector(4 downto 0));
end entity compute_module;

architecture struct of compute_module is
begin
  process(ew, sw, dw, u)
  begin
   if (unsigned(sw) + unsigned(ew) < 256) or (unsigned(dw) < 256) then
    if unsigned(sw) + unsigned(ew) < unsigned(dw) then
      fw <= std_logic_vector(unsigned(sw) + unsigned(ew));
      u_out <= u;
    else
      fw <= dw;
      u_out <= '0'; --update value 0 means no change in the weight of the destination
    end if;
    
    i_out <= i;
    j_out <= j;
	 
	elsif (unsigned(sw) + unsigned(ew) >= 256) and (unsigned(dw) >= 256) then --if both are >= 256, i.e both infinite then no point in comparinf them
	   fw <= dw;
      u_out <= '0';
      i_out <= i;
      j_out <= j;
	end if;
  end process;
end architecture struct;



 