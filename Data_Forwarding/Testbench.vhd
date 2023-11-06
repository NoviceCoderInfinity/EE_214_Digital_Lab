library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture struct of Testbench is

 component DataForwardingScheme is
  port(Mem_Word1, Mem_Word2, Mem_Word3, Mem_Word4: in std_logic_vector(12 downto 0);
		  Fwd_Word1, Fwd_Word2, Fwd_Word3, Fwd_Word4: in std_logic_vector(12 downto 0);
          Mu1, Mu2, Mu3, Mu4: in std_logic;
          Fu1, Fu2, Fu3, Fu4: in std_logic;
        Mem_Word1wt, Mem_Word2wt, Mem_Word3wt, Mem_Word4wt : out std_logic_vector(8 downto 0)		
		  );
 end component;
 
begin

	process
	
	begin
		clk <= '0';
		wait for 10ms;
		clk <= '1';
		wait for 10ms;
	end process;
 

 data_forward_instance : DataForwardingScheme port map(
															Mem_Word1 => clk,
                                             Mem_Word2 => '1',
                                             Mem_Word3 => '0',
															Mem_Word4 => '1',
															
															Fwd_Word1 => '1',
															Fwd_Word2 => "00001",
															Fwd_Word3 => "00101",
															Fwd_Word4 => "01101",
															
															Mu1 => "10010",
															Mu2 => out1,
															Mu3 => out2,
															Mu4 => out3,
															
															Fu1 => ,
															Fu2 => Fu1,
															Fu1 => ,
															Fu1 => ,
															
															Mem_Word1wt => out4,
															Mem_Word2wt => ,
															Mem_Word3wt => ,
															Mem_Word4wt => 
															);
end architecture struct;