border_flash.prg: border_flash.o
	vlink -b cbmprg -o border_flash.prg border_flash.o

border_flash.o: border_flash.asm
	vasm6502_std -Fbin -cbm-prg -o border_flash.o border_flash.asm