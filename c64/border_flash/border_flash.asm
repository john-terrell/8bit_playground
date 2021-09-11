.section ".init"
.org 0
loop:
    inc 0xd020
    jmp loop
