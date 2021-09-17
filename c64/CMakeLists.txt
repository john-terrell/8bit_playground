cmake_minimum_required(VERSION 3.16)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/6502-c64-cc65.cmake)

project(C ASM)

include(CTest)

add_subdirectory(border_flash)
add_subdirectory(border_flash_c)
add_subdirectory(hello_world)
