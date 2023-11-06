library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_read is
 port(u1, u2, u3, u4 : in std_logic;
      j1, j2, j3, j4 : in std_logic_vector(4 downto 0);
		dw1, dw2, dw3, dw4 : out std_logic_vector(8 downto 0));
end entity;

architecture struct of memory_read is
 signal dwr1, dwr2, dwr3, dwr4 : std_logic_vector(8 downto 0);
 
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

 process
    variable INPUT_LINE: Line;
    variable LINE_COUNT: integer := 0;
	 
	 variable dest_index: bit_vector (4 downto 0);
    variable dest_wt: bit_vector (8 downto 0);
    variable src_index: bit_vector (4 downto 0);
	 
	 File INFILE: text open read_mode is "reg_file.txt";
 begin
 
   --while not endfile(INFILE) loop
   LINE_COUNT := LINE_COUNT + 1;
	 
	
	 readLine (INFILE, INPUT_LINE);
          read (INPUT_LINE, dest_index);
			 
	 		 
	 if(to_std_logic_vector(dest_index) = j1) then
	       if(u1 = '1') then
          read (INPUT_LINE, dest_wt);
          dwr1 <= to_std_logic_vector(dest_wt);
			 else
			 dwr1 <= "---------";
			 end if;
			 
	 elsif (to_std_logic_vector(dest_index) = j2) then
	       if(u2 = '1') then
          read (INPUT_LINE, dest_wt);
          dwr2 <= to_std_logic_vector(dest_wt);
			 else
			 dwr2 <= "---------";
			 end if;
			 
	 elsif (to_std_logic_vector(dest_index) = j3) then
	       if(u3 = '1') then
          read (INPUT_LINE, dest_wt);
          dwr3 <= to_std_logic_vector(dest_wt);
			 else
			 dwr3 <= "---------";
			 end if;
			 
	 elsif (to_std_logic_vector(dest_index) = j4) then
	       if(u4 = '1') then
          read (INPUT_LINE, dest_wt);
          dwr4 <= to_std_logic_vector(dest_wt);
			 else
			 dwr4 <= "---------";
			 end if;
    end if;

    -- Check if the end of the file has been reached after each iteration.
    -- If it has, exit the loop.
    assert not endfile(INFILE) 
	 wait for 10ns;

	--end loop; 
 end process;
 
 dw1 <= dwr1; 
 dw2 <= dwr2;
 dw3 <= dwr3;
 dw4 <= dwr4;

end architecture;
