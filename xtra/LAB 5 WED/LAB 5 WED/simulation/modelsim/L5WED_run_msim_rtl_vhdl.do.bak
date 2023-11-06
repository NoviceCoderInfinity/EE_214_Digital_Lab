transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Bhuvansh Goyal/Desktop/EE214 LAB WORK/PRACTICE/LAB 5 WED/DUT.vhdl}
vcom -93 -work work {C:/Users/Bhuvansh Goyal/Desktop/EE214 LAB WORK/PRACTICE/LAB 5 WED/L5WED.vhd}

vcom -93 -work work {C:/Users/Bhuvansh Goyal/Desktop/EE214 LAB WORK/PRACTICE/LAB 5 WED/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
