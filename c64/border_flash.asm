;loader.prg
; test program changes border colours when run

; LOAD “*”,8,1
; RUN

; basic loader program
;10 SYS 4096; $0801 = 2049

.org 0x0801
; $0C $08 = $080C 2-byte pointer to the next line of BASIC code
; $0A = 10; 2-byte line number low byte ($000A = 10)
; $00 = 0 ; 2-byte line number high bye
; $9E = SYS BASIC token
; $20 = [space]
; $34 = “4” , $30 = “0”, $39 = “9”, $36 = “6” (ASCII encoded numbers for decimal starting address)
; $0 = end of line
; $00 $00 = 2-byte pointer to the next line of BASIC code ($0000 = end of program)

.byte $0C,$08,$0A,$00,$9E,$20,$34,$30,$39,$36,$00,$00,$00

; real start of program $1000 = 4096
.org 0x1000
loop:
    inc $d020
    jmp loop
