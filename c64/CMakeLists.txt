cmake_minimum_required(VERSION 3.21)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/6502-c64-vasm.cmake)

project(C ASM)

add_subdirectory(border_flash)
