;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Begin Startup Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Reset feed rate and flow rate.
G90
M220 S100
M221 S{material_flow}

;; Start heating the hotend, wait for bed to come to temp
M104 S{material_print_temperature_layer_0}
M190 S{material_bed_temperature_layer_0}

;; Home the printer
G28

;; Turn off filament runout sensor
M412 S0

;; Enable mesh levelling
G29
M420 S1 Z2

;; Get into position for our initial prime.
G92 E0
G1 X3 Y30 Z5 F5000.0

;; Wait for hotend to be at the correct temps
M109 S{material_print_temperature_layer_0}

;; Prime the hotend.
G1 Z0.28 F1500
G1 X3 Y200.0 Z0.28 F1500.0 E15
G1 X3.4 Y200.0 Z0.28 F5000.0
G1 X3.4 Y30 Z0.28 F1500.0 E30
G90
G92 E0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End Startup Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Begin Finishing Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positionning

G1 X0 Y220 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End Finishing Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Begin Startup Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Reset feed rate and flow rate.
G90
M220 S100
M221 S{material_flow}

;; Start heating the hotend, wait for bed to come to temp
M104 S{material_print_temperature_layer_0}
M190 S{material_bed_temperature_layer_0}

;; Home the printer
G28

;; Turn off filament runout sensor
M412 S0

;; Enable mesh levelling
G29
M420 S1 Z2

;; Get into position for our initial prime.
G92 E0
G1 X3 Y30 Z5 F5000.0

;; Wait for hotend to be at the correct temps
M109 S{material_print_temperature_layer_0}

;; Prime the hotend.
G1 Z0.28 F1500
G1 X3 Y200.0 Z0.28 F1500.0 E15
G1 X3.4 Y200.0 Z0.28 F5000.0
G1 X3.4 Y30 Z0.28 F1500.0 E30
G90
G92 E0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End Startup Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Begin Finishing Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positionning

G1 X0 Y220 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End Finishing Gcode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
