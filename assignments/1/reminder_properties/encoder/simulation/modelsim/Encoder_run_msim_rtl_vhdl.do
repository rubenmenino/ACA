transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Menino/Desktop/MEU/ACA/assignments/1/reminder_properties/encoder/Encoder.vhd}
vcom -93 -work work {C:/Users/Menino/Desktop/MEU/ACA/assignments/1/reminder_properties/encoder/xor2to1.vhd}

