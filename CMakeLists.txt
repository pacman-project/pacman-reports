project(pacman_unipi_reports)
cmake_minimum_required(VERSION 2.8)

# Set path for CMake
set(CMAKE_MODULE_PATH
    "${CMAKE_SOURCE_DIR}/cmake"
    ${CMAKE_MODULE_PATH}
)

include(UseLATEX)

# build the current reports only
add_subdirectory(DR13)
add_subdirectory(MS13)
# add_subdirectory(DR21)
add_subdirectory(DR22)
# add_subdirectory(DR31)
add_subdirectory(DR32)
# add_subdirectory(DR42)
add_subdirectory(DR43)
# add_subdirectory(MS42)
add_subdirectory(MS43)
add_subdirectory(DR54)
add_subdirectory(DR55)