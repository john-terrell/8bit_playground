project(border_flash ASM)

add_executable(border_flash
    border_flash.s
)

add_test(NAME border_flash_test
    COMMAND x64 -autostartprgmode 1 ${CMAKE_CURRENT_BINARY_DIR}/border_flash
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
