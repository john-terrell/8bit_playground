cmake_minimum_required(VERSION 3.16)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/65C02-cx16-cc65.cmake)

project(C ASM)

include(CTest)

add_subdirectory(hello_world)
