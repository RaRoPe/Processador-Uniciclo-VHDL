transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mem.vho}

vcom -93 -work work {C:/Users/MyPC/Desktop/mem/MI_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=mem_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" MI_tb

add wave *
view structure
view signals
run 20 ns
