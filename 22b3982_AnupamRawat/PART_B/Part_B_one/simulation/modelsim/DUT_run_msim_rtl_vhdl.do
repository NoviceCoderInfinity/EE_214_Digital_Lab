transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/22b3982_AnupamRawat/PART_B/Part_B_one/DUT.vhdl}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/22b3982_AnupamRawat/PART_B/Part_B_one/P_B_one.vhd}

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/22b3982_AnupamRawat/PART_B/Part_B_one/TopLevel.vhdl}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/22b3982_AnupamRawat/PART_B/Part_B_one/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
