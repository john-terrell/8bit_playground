project(hello_world C)

add_executable(HELLO_WORLD.PRG
    main.c
)

add_test(NAME hello_world_test
    COMMAND x64 -autostartprgmode 1 ${CMAKE_CURRENT_BINARY_DIR}/HELLO_WORLD.PRG
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
