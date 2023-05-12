G4 ;
G91 ;
G1 Z1.0 F3000 ;
G90 ;
G1 X0 Y180 F3600 ; park
M221 S100 ; reset flow
M900 K0 ; reset LA
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
M84 ; disable motors
