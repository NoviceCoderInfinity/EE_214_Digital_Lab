transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/anupa/Desktop/IIT LECTURES/Year 2/EE 214/xtra/Week_2_Wednesday/eight_to_three_encoder/Gates.vhdl}
vcom -93 -work work {C:/Users/anupa/Desktop/IIT LECTURES/Year 2/EE 214/xtra/Week_2_Wednesday/eight_to_three_encoder/DUT.vhdl}
vcom -93 -work work {C:/Users/anupa/Desktop/IIT LECTURES/Year 2/EE 214/xtra/Week_2_Wednesday/eight_to_three_encoder/encoder.vhd}
vcom -93 -work work {C:/Users/anupa/Desktop/IIT LECTURES/Year 2/EE 214/xtra/Week_2_Wednesday/eight_to_three_encoder/eight_to_three_encoder.vhd}

vcom -93 -work work {C:/Users/anupa/Desktop/IIT LECTURES/Year 2/EE 214/xtra/Week_2_Wednesday/eight_to_three_encoder/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
