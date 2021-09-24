project(hello_world C ASM)

add_executable(hello_world_asm
    hello_world_a.asm
)

add_test(NAME hello_world_asm_test
    COMMAND x16emu -scale 2 -prg ${CMAKE_CURRENT_BINARY_DIR}/hello_world_asm
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

add_executable(hello_world_c
    hello_world.c
)

add_test(NAME hello_world_c_test
    COMMAND x16emu -scale 2 -prg ${CMAKE_CURRENT_BINARY_DIR}/hello_world_c
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
