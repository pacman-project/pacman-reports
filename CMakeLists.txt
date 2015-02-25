project(pacman_unipi_reports)
cmake_minimum_required(VERSION 2.8)

# Set path for CMake
set(CMAKE_MODULE_PATH
    "${CMAKE_SOURCE_DIR}/cmake"
    ${CMAKE_MODULE_PATH}
)

include(UseLATEX)

add_subdirectory(DR21)
add_subdirectory(DR31)
add_subdirectory(DR42)
add_subdirectory(MS42)