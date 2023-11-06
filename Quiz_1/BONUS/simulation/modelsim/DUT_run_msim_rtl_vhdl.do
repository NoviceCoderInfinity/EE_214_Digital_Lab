transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Quiz_1/Quiz1_TRACEFILES/BONUS/Gates.vhdl}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Quiz_1/Quiz1_TRACEFILES/BONUS/DUT.vhdl}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Quiz_1/Quiz1_TRACEFILES/BONUS/BONUS.vhd}

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Quiz_1/Quiz1_TRACEFILES/BONUS/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
