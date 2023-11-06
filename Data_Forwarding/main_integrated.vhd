library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DataForwardingScheme is
    port (
        Mem_Word1, Mem_Word2, Mem_Word3, Mem_Word4: in std_logic_vector(12 downto 0);
		  Fwd_Word1, Fwd_Word2, Fwd_Word3, Fwd_Word4: in std_logic_vector(12 downto 0);
          Mu1, Mu2, Mu3, Mu4: in std_logic;
          Fu1, Fu2, Fu3, Fu4: in std_logic;
        Mem_Word1wt, Mem_Word2wt, Mem_Word3wt, Mem_Word4wt : out std_logic_vector(8 downto 0)		  
    );
end entity DataForwardingScheme;

architecture Behavioral of DataForwardingScheme is
	
	signal totalMem_Word : std_logic_vector(51 downto 0);
    totalMem_Word(12 downto 0) <= Mem_Word1;
    totalMem_Word(25 downto 13) <= Mem_Word2;
    totalMem_Word(38 downto 26) <= Mem_Word3;
    totalMem_Word(51 downto 39) <= Mem_Word4;

    signal totalMemUpdate : std_logic_vector(3 downto 0);
    totalMemUpdate(3) <= Mu4;totalMemUpdate(2) <= Mu3;
    totalMemUpdate(1) <= Mu2;totalMemUpdate(0) <= Mu1;

    signal totalFwdUpdate : std_logic_vector(3 downto 0);
    totalFwdUpdate(3) <= Fu4;totalFwdUpdate(2) <= Fu3;
    totalFwdUpdate(1) <= Fu2;totalFwdUpdate(0) <= Fu1;

begin
    process(clk) 
        File INFILE: text open read_mode is "reg_file.txt";
    begin
        
        for m in 0 to 3 loop
            for n in 0 to 3 loop
                if ((totalMem_Word((m*12+4) downto (m*12+0)) = totalFwd_Word((n*12+4) downto (n*12+0))) and
                    (totalMemUpdate(m) = totalFwdUpdate(n) = 1)) then 
                    M_Wm = F_Wn;
                end if;
            end loop;
        end loop;
    
end architecture Behavioral;