cmake_minimum_required(VERSION 3.13)
project(Pseudopaint VERSION 0.1 LANGUAGES CXX)

set(SOURCES src/main.cpp src/canvas.cpp src/mouse.cpp src/canvas.hpp src/mouse.hpp)

find_package(SDL2 REQUIRED)
include_directories(Pseudopaint ${SDL2_INCLUDE_DIRS})

add_executable(Pseudopaint ${SOURCES})
target_link_libraries(Pseudopaint ${SDL2_LIBRARIES})
