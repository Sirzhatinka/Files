cmake_minimum_required(VERSION 3.17)
project(Files)

set(CMAKE_CXX_STANDARD 17)

add_executable(Files main.cpp Person.cpp Person.h implementation.cpp implementation.h)