library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory_read is
 port(u1, u2, u3, u4, clk : in std_logic;
      j1, j2, j3, j4 : in std_logic_vector(4 downto 0);
		--no_of_edges : in std_logic_vector(8 downto 0);
		dw1, dw2, dw3, dw4 : out std_logic_vector(8 downto 0));
end entity;

architecture struct of memory_read is

  -- bit-vector to std-logic-vector and vice-versa
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

	 variable dest_index: bit_vector(4 downto 0);
    variable dest_wt: bit_vector (8 downto 0);
    variable src_index: bit_vector (4 downto 0);

    -- for read/write.
    variable INPUT_LINE: Line;
    --variable i : integer := 0;
    
  begin
   if not endfile(INFILE) then
	  readLine (INFILE, INPUT_LINE);
     read(INPUT_LINE, dest_index);
	  
    if(to_std_logic_vector(dest_index) = j1) then
	       if(u1 = '1') then
          read (INPUT_LINE, dest_wt);
          dw1 <= to_std_logic_vector(dest_wt);
			 else
			 dw1 <= "---------";
			 end if;
			 
	 elsif (to_std_logic_vector(dest_index) = j2) then
	       if(u2 = '1') then
          read (INPUT_LINE, dest_wt);
          dw2 <= to_std_logic_vector(dest_wt);
			 else
			 dw2 <= "---------";
			 end if;
			 
	 elsif (to_std_logic_vector(dest_index) = j3) then
	       if(u3 = '1') then
          read (INPUT_LINE, dest_wt);
          dw3 <= to_std_logic_vector(dest_wt);
			 else
			 dw3 <= "---------";
			 end if;
			 
	 elsif (to_std_logic_vector(dest_index) = j4) then
	       if(u4 = '1') then
          read (INPUT_LINE, dest_wt);
          dw4 <= to_std_logic_vector(dest_wt);
			 else
			 dw4 <= "---------";
			 end if;
	 end if;
   end if;
  end process;
  
end architecture struct;