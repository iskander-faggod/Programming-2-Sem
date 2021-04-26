cmake_minimum_required(VERSION 3.17)
project(third)

set(CMAKE_CXX_STANDARD 14)

add_executable(third main.cpp pugixml.hpp pugixml.cpp)