set(CMAKE_SYSTEM_NAME CommanderX16-CC65)
set(CMAKE_SYSTEM_VERSION 38) # Corresponds to Kernal R38

# C language variables
set(CMAKE_C_COMPILER cl65)

# Don't let CMake try to build (and run) an executable for compiler testing
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# Assembly Llanguage variables
set(CMAKE_ASM_COMPILER cl65)
set(CMAKE_ASM_COMPILER_ID CC65-CX16)
