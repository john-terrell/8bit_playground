message(">>>> CommanderX16-CC65-C.cmake")

SET(CMAKE_C_FLAGS "--target cx16")

set(CMAKE_C_COMPILER_ID CC65)
set(CMAKE_C_COMPILER_TARGET cx16)
set(CMAKE_C_COMPILER_ID_RUN 1)   # Tell cmake to not try to determine the compiler by building a test.

include(Platform/CommanderX16)

message("<<<< CommanderX16-CC65-C.cmake")
