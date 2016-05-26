onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_cmv_4000/SYS_RES_N
add wave -noupdate /tb_cmv_4000/FRAME_REQ
add wave -noupdate /tb_cmv_4000/OUTCLK
add wave -noupdate /tb_cmv_4000/LVDS_OUTCTR
add wave -noupdate /tb_cmv_4000/current_channel_ctr_v
add wave -noupdate -label FOT /tb_cmv_4000/current_channel_ctr_v(5)
add wave -noupdate -color {Orange Red} -label ROW /tb_cmv_4000/current_channel_ctr_v(4)
add wave -noupdate -color {Medium Violet Red} -label SLOT /tb_cmv_4000/current_channel_ctr_v(3)
add wave -noupdate -label FVAL /tb_cmv_4000/current_channel_ctr_v(2)
add wave -noupdate -color {Medium Blue} -label LVAL /tb_cmv_4000/current_channel_ctr_v(1)
add wave -noupdate -color {Slate Blue} -label DVAL /tb_cmv_4000/current_channel_ctr_v(0)
add wave -noupdate /tb_cmv_4000/lvds_digit
add wave -noupdate /tb_cmv_4000/LVDS_OUTDATA
add wave -noupdate /tb_cmv_4000/current_channel_data_v
add wave -noupdate /tb_cmv_4000/lvds_digit
add wave -noupdate /tb_cmv_4000/curent_state
add wave -noupdate /tb_cmv_4000/next_state
add wave -noupdate /tb_cmv_4000/next_channel_data_v
add wave -noupdate /tb_cmv_4000/next_channel_ctr_v
add wave -noupdate /tb_cmv_4000/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {63702109 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 236
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {6775831381 ps} {7011798349 ps}
