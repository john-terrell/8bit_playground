project(border_flash C)

add_executable(hello_world
    hello_world.c
)

add_test(NAME hello_world_test
    COMMAND x16emu -prg ${CMAKE_CURRENT_BINARY_DIR}/hello_world
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
