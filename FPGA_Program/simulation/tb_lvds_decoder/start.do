vsim -gui -t 10fs work.tb_lvds_decoder_vhd_tst

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label {in sys res n} /tb_lvds_decoder_vhd_tst/SYS_RES_N
add wave -noupdate -label {in frame req} /tb_lvds_decoder_vhd_tst/FRAME_REQ
add wave -noupdate -label {in areset PLL} /tb_lvds_decoder_vhd_tst/ARESET
add wave -noupdate -label {lvds CLK} /tb_lvds_decoder_vhd_tst/LVDS_CLK
add wave -noupdate -label {lvds CTR} /tb_lvds_decoder_vhd_tst/LVDS_CTR
add wave -noupdate -label {lvds CH} /tb_lvds_decoder_vhd_tst/LVDS_CH
add wave -noupdate -label {out CLK} /tb_lvds_decoder_vhd_tst/DATA_CLK
add wave -noupdate -label {out CTR} -radix hexadecimal /tb_lvds_decoder_vhd_tst/DATA_CTR
add wave -noupdate -label {out CH1} -radix hexadecimal /tb_lvds_decoder_vhd_tst/DATA_CH01
add wave -noupdate -label {out CH9} -radix hexadecimal /tb_lvds_decoder_vhd_tst/DATA_CH09
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1352588310 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
configure wave -valuecolwidth 141
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
configure wave -timelineunits fs
update
WaveRestoreZoom {0 fs} {3878050400 fs}