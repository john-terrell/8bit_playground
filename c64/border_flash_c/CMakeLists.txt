project(border_flash C)

add_executable(border_flash_c
    border_flash.c
)

add_test(NAME border_flash_c_test
    COMMAND x64 -autostartprgmode 1 ${CMAKE_CURRENT_BINARY_DIR}/border_flash_c
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)
