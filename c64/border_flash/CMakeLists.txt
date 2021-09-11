add_executable(border_flash
    basic_entry.asm
    border_flash.asm
)

add_test(NAME border_flash_test
    COMMAND x64 -autostartprgmode 1 ${CMAKE_CURRENT_BINARY_DIR}/border_flash.prg
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
