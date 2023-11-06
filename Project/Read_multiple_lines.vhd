library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;

entity read_file is
end entity;

architecture rtl of read_file is
  file input_file : text open read_mode is "file.mef";
  variable line : line;
begin
  while not endfile(input_file) loop
    readline(input_file, line);
    -- process the line here
  end loop;
  file_close(input_file);
end architecture;