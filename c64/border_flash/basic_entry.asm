;loader.prg
; test program changes border colours when run

; LOAD “*”,8,1
; RUN

; basic loader program
;10 SYS 4096; $0801 = 2049

; $0C $08 = $080C 2-byte pointer to the next line of BASIC code
; $0A = 10; 2-byte line number low byte ($000A = 10)
; $00 = 0 ; 2-byte line number high bye
; $9E = SYS BASIC token
; $20 = [space]
; $34 = “4” , $30 = “0”, $39 = “9”, $36 = “6” (ASCII encoded numbers for decimal starting address)
; $0 = end of line
; $00 $00 = 2-byte pointer to the next line of BASIC code ($0000 = end of program)

.section ".basic"
.org 0
.byte 0x0C,0x08,0x0A,0x00,0x9E,0x20,'2','0','8','0',0x00,0x00,0x00
