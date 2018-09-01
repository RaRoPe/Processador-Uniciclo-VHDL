transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/MyPC/Desktop/breg_ula/mips_pkg.vhd}
vcom -93 -work work {C:/Users/MyPC/Desktop/breg_ula/ula.vhd}
vcom -93 -work work {C:/Users/MyPC/Desktop/breg_ula/c_ula.vhd}
vcom -93 -work work {C:/Users/MyPC/Desktop/breg_ula/breg.vhd}
vcom -93 -work work {C:/Users/MyPC/Desktop/breg_ula/breg_ula.vhd}

vcom -93 -work work {C:/Users/MyPC/Desktop/breg_ula/breg_ula_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc" breg_ula_tb

add wave *
view structure
view signals
run 15 ns
