set(CMAKE_SYSTEM_NAME Commodore64)
set(CMAKE_SYSTEM_VERSION 1982.1.1)
set(CMAKE_SYSTEM_PROCESSOR 6502)

set(CMAKE_C_COMPILER vbcc6502)

set(CMAKE_ASM_COMPILER vasm6502_std)
set(CMAKE_ASM_COMPILE_OBJECT  "<CMAKE_ASM_COMPILER> -quiet -Fvobj <SOURCE> <DEFINES> <INCLUDES> <FLAGS> -o <OBJECT>")
set(CMAKE_ASM_LINK_EXECUTABLE "<CMAKE_LINKER> -M<TARGET>.map -T ${CMAKE_SOURCE_DIR}/c64.ld -b cbmprg <OBJECTS> <CMAKE_ASM_LINK_FLAGS> <LINK_FLAGS> <LINK_LIBRARIES> -o <TARGET>.prg")

set(CMAKE_LINKER vlink)