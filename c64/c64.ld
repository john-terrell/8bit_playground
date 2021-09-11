MEMORY {
    ZEROPAGE : ORIGIN = 0x0000, LENGTH = 0x00FF
    
    SCREEN   : ORIGIN = 0x0400, LENGTH = 0x00FF

    RAM      : ORIGIN = 0x0800, LENGTH = 0x9800

    VIC2     : ORIGIN = 0xD000, LENGTH = 0x0400
    SID      : ORIGIN = 0xD400, LENGTH = 0x0400
    COLOR    : ORIGIN = 0xD800, LENGTH = 0x0400
    CIA1     : ORIGIN = 0xDC00, LENGTH = 0x00FF
    CIA2     : ORIGIN = 0xDD00, LENGTH = 0x00FF
    IO1      : ORIGIN = 0xDE00, LENGTH = 0x00FF
    IO2      : ORIGIN = 0xDF00, LENGTH = 0x00FF
}

SECTIONS {
    .basic 0x0801 : {
        KEEP(*(.basic))
    } > RAM
    .text 0x0820 : {
        KEEP(*(.init))
        *(.text)
    } > RAM
    .data : { 
        *(.data) 
    } > RAM
    .bss : { 
        *(.bss) 
    } > RAM
}
