G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G28 ; home all axes
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G1 X3.0 Y120 Z0.3 F5000.0 ; move to start-line position
G1 X3.0 Y60 E9.0  F1000.0 ; intro line
G1 X3.0 Y20 E12.5 F1000.0 ; intro line
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
; M221 S{if layer_height<0.075}100{else}95{endif}
