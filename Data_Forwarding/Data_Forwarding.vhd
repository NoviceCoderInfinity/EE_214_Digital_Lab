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
	
	component destination_vertex_weight is
		port (
        vertex: in std_logic_vector(4 downto 0);
		  dest_weight : out std_logic_vector(8 downto 0)		  
    );
	end component;
	
	signal totalMem_Word : std_logic_vector(51 downto 0);
	signal totalFwd_Word : std_logic_vector(51 downto 0);
   signal totalMemUpdate : std_logic_vector(3 downto 0);
   signal totalFwdUpdate : std_logic_vector(3 downto 0); 
	signal M_Wm, F_Wn : std_logic_vector(8 downto 0);

begin

	 totalMem_Word(12 downto 0) <= Mem_Word1;
    totalMem_Word(25 downto 13) <= Mem_Word2;
    totalMem_Word(38 downto 26) <= Mem_Word3;
    totalMem_Word(51 downto 39) <= Mem_Word4;
	 
	 totalFwd_Word(12 downto 0) <= Fwd_Word1;
    totalFwd_Word(25 downto 13) <= Fwd_Word2;
    totalFwd_Word(38 downto 26) <= Fwd_Word3;
    totalFwd_Word(51 downto 39) <= Fwd_Word4;

    totalMemUpdate(3) <= Mu4;totalMemUpdate(2) <= Mu3;
    totalMemUpdate(1) <= Mu2;totalMemUpdate(0) <= Mu1;

    totalFwdUpdate(3) <= Fu4;totalFwdUpdate(2) <= Fu3;
    totalFwdUpdate(1) <= Fu2;totalFwdUpdate(0) <= Fu1;
	
	 
	 for m in 0 to 3 loop
			for n in 0 to 3 loop
				 if ((totalMem_Word((m*12+4) downto (m*12+0)) = totalFwd_Word((n*12+4) downto (n*12+0))) and
					  (totalMemUpdate(m) = totalFwdUpdate(n)) and (totalFwdUpdate(n) = 1)) then 
					  
					  dest_vert_wt_1 : destination_vertex_weight port map(vertex => totalMem_Word((m*12+4) downto (m*12+0)),dest_weight => M_Wm);
					  dest_vert_wt_2 : destination_vertex_weight port map(vertex => totalFwd_Word((n*12+4) downto (n*12+0)),dest_weight => F_Wn);
					  M_Wn <= F_Wn;
				 end if;
			end loop;
	  end loop; 
end architecture Behavioral;