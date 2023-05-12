G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G28 ; home all axes
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G1 X3 Y20 Z0.3 F5000.0 ; move to start-line position
G1 X3 Y80.0 Z0.3 F1000.0 E9 ; draw 1st line
G1 X3 Y80.0 Z0.4 F5000.0 ; move to side a little
G1 X3 Y40 Z0.4 F1000.0 E12 ; draw 2nd line
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
; M221 S{if layer_height<0.075}100{else}95{endif}
