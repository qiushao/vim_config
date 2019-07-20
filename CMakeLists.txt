cmake_minimum_required(VERSION 2.6)
project(foobar)
set(CMAKE_CXX_STANDARD 11)

include_directories(include)

FILE(GLOB_RECURSE src_c_list "./*.c")

add_library(foobar ${src_c_list})
set_target_properties(foobar PROPERTIES LINKER_LANGUAGE CXX)
