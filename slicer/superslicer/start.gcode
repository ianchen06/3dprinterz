G28 ; home all without mesh bed level
G90 ; use absolute coordinates
M83 ; extruder relative mode
G0 X60 Z80 F5000 ; move extruder above bed, keep extruder in front for cleaning and checking
M104 S160 T0; pre-heat extruder to 160C
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M104 S{first_layer_temperature[initial_extruder]+extruder_temperature_offset[initial_extruder]} ; set extruder temp
M109 S{first_layer_temperature[initial_extruder]+extruder_temperature_offset[initial_extruder]} ; wait for extruder temp
G28 ; home all without mesh bed level
G1 X3.0 Y120 Z0.3 F5000
G92 E0.0
G1 X3.0 Y60 E9.0  F1000.0 ; intro line
G1 X3.0 Y20 E12.5 F1000.0 ; intro line
G92 E0.0
