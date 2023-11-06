library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.Gates.all;
entity reading_graph is
	port( 
        weight1,weight2,weight3,weight4:in std_logic_vector(2 downto 0);
        start1,final1,start2,final2,start3,final3,start4,final4:in std_logic_vector(4 downto 0);
		OP: out std_logic_vector(12 downto 0)
        );
end reading_graph;
architecture bhv of reading_graph is
begin
    OP(12)<=weight4(2) or weight4(1) or weight2(0);
    OP(11)<=weight4(2) or weight3(1) or weight2(0); 
    OP(10)<=weight4(2) or weight3(1) or weight2(0);
    OP(9)<= start4(4) and start3(3) and start2(2) and start1(1);
    OP(8)<= start4(4) and start3(3) and start2(2) and start1(1);
    OP(7)<= start4(4) and start3(3) and start2(2) and start1(1);
    OP(6)<= start4(4) and start3(3) and start2(2) and start1(1);
    OP(5)<= start4(4) and start3(3) and start2(2) and start1(1);
    OP(4)<= final4(4) or final3(3) or final2(2) or final1(1) or final1(0);
    OP(3)<= final4(4) or final3(3) or final2(2) or final1(1) or final1(0);
    OP(2)<= final4(4) or final3(3) or final2(2) or final1(1) or final1(0);
    OP(1)<= final4(4) or final3(3) or final2(2) or final1(1) or final1(0);
    OP(0)<= final4(4) or final3(3) or final2(2) or final1(1) or final1(0);
end bhv;

    
