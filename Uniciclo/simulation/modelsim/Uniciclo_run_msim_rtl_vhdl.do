transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/address_calc.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/muxShamt.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/concatShamt.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/MODULO_SAIDA_INSTRUCTION.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/MODULO_SAIDA_SECUNDARIO.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/MODULO_SAIDA.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/ORBne.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/ANDBne.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/addiComplete.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/controle.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/andPort.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/pc.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/orJump.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/shiftL2_Jump.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/sumBranch.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/sumPC.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/muxJump.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/muxBranch.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/signExtd.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/shiftL2_Sign.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/mux_MemReg.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/mux_ALUSrc.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/mux_regdst.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/MI.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/MD.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/mips_pkg.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/ula.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/breg.vhd}
vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/Uniciclo.vhd}

vcom -93 -work work {C:/Users/MyPC/Documents/OAC/Projeto Final/Uniciclo/Uniciclo_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc" Uniciclo_tb

add wave *
view structure
view signals
run 380 ps
