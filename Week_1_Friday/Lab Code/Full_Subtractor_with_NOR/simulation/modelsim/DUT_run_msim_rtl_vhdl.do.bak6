transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_1_Friday/Full_Subtractor_with_NOR/Gates.vhdl}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_1_Friday/Full_Subtractor_with_NOR/DUT.vhdl}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_1_Friday/Full_Subtractor_with_NOR/XOR_with_NOR.vhd}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_1_Friday/Full_Subtractor_with_NOR/Half_Sub_with_NOR.vhd}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_1_Friday/Full_Subtractor_with_NOR/Full_Sub_with_NOR.vhd}

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_1_Friday/Full_Subtractor_with_NOR/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
