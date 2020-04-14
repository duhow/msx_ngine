;***********************************************************
;
;   N'gine para MSX Asm Z80
;   Version 0.2.1-WIP01
;	ASM Z80 MSX
;	Directivas de compilacion para ROM de 32kb
;
;	(cc) 2018-2020 Cesar Rincon "NightFox"
;	https://nightfoxandco.com
;
;
;	Compilar con asMSX 0.19 o superior
;	https://github.com/Fubukimaru/asMSX
;
;***********************************************************



;***********************************************************
; Directivas para el compilador
;***********************************************************

OUTPUT_FORMAT = 2									; Define el formato de salida


; ----------------------------------------------------------
; Definicion de variables en los ultimos 4KB [$E380]
; Ultima direccion valida $F380 - $1000
; ----------------------------------------------------------

; Almacena las variables los ultimos 4KB
.ORG $E380
.INCLUDE "ngn/ngn_vars.asm"         ; 2284 bytes


; ----------------------------------------------------------
; Directivas del formato
; ----------------------------------------------------------

.PAGE 1										        ; Selecciona la pagina 1 [$4000] (Codigo del programa)
.ROM												; Se creara el binario en formato ROM de hasta 32kb
.db 77, 83, 88, 95, 68, 73, 65, 71, 0, 0, 0, 0      ; 12 digitos para completar la cabecera de la ROM

; Indicale al compilador donde empieza el programa
.START PROGRAM_START_ADDRESS


;***********************************************************
; Fin del archivo
;***********************************************************
F_ROM_EOF: