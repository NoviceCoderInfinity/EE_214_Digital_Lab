transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_9_Friday/Lab Codes/Traffic.vhd}
vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_9_Friday/Lab Codes/Clock_Divider.vhd}

vcom -93 -work work {C:/Users/anupa/OneDrive - Indian Institute of Technology Bombay/Desktop/IIT LECTURES/Year 2/EE 214/Week_9_Friday/Lab Codes/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
