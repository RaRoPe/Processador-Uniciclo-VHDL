transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/MyPC/Desktop/shiftL2_Jump/shiftL2_Jump.vhd}

vcom -93 -work work {C:/Users/MyPC/Desktop/shiftL2_Jump/shiftL2_Jump_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc" shiftL2_Jump_tb

add wave *
view structure
view signals
run 5120 sec
