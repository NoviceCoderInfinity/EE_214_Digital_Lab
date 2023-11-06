library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity destination_vertex_weight is
    port (
        vertex: in std_logic_vector(4 downto 0);
		  dest_weight : out std_logic_vector(8 downto 0)		  
    );
end entity destination_vertex_weight;

architecture bhv of destination_vertex_weight is
	function to_std_logic_vector(x: bit_vector) return std_logic_vector is
     alias lx: bit_vector(1 to x'length) is x;
     variable ret_val: std_logic_vector(1 to x'length);
   begin
     for I in 1 to x'length loop
        if(lx(I) = '1') then
          ret_val(I) := '1';
        else
          ret_val(I) := '0';
        end if;
     end loop; 
     return ret_val;
  end to_std_logic_vector;
begin

  process(clk)
    File INFILE: text open read_mode is "reg_file.txt";
    
	 variable predec_index: bit_vector (4 downto 0);
    variable dest_wt: bit_vector (8 downto 0);
	 variable dest_index: bit_vector(4 downto 0);

    -- for read/write.
    variable INPUT_LINE: Line;
    --variable i : integer := 0;
    
  begin
   if not endfile(INFILE) then
	  readLine (INFILE, INPUT_LINE);
     read(INPUT_LINE, dest_index);
	  
	  if(to_std_logic_vector(dest_index) = vertex) then
			read (INPUT_LINE, dest_wt);
			dest_weight <= to_std_logic_vector(dest_wt);
	 end if;
   end if;
  end process;
  
end architecture bhv;