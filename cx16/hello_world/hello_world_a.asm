ZP_PTR_1          = $7E
CHROUT            := $FFD2
.org $080D
.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

   jmp start

message: .byte "hello world from assembly!"
end_msg:

NEWLINE = $0D
UPPERCASE = $8E

start:
   ; force uppercase
   lda #UPPERCASE
   jsr CHROUT
   ; print message
   lda #<message
   sta ZP_PTR_1
   lda #>message
   sta ZP_PTR_1+1
   ldy #0
@loop:
   cpy #(end_msg-message)
   beq @done
   lda (ZP_PTR_1),y
   jsr CHROUT
   iny
   bra @loop
@done:
   ; print newline
   lda #NEWLINE
   jsr CHROUT
   rts
