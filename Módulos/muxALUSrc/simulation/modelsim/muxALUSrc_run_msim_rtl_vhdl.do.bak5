transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/MyPC/Desktop/muxALUSrc/mux_ALUSrc.vhd}

vcom -93 -work work {C:/Users/MyPC/Desktop/muxALUSrc/mux_ALUSrc_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc" mux_ALUSrc_tb

add wave *
view structure
view signals
run 5120 ps
