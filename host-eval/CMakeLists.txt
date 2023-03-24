cmake_minimum_required(VERSION 3.12)

project(host-eval)
set(CMAKE_CXX_STANDARD 20)

add_compile_options(-O2 -pthread)

# inc
include_directories(${PROJECT_SOURCE_DIR}/include)

# lib
file(GLOB LIBSRCS ${PROJECT_SOURCE_DIR}/lib/*.c ${PROJECT_SOURCE_DIR}/lib/*.cc)
add_library(nvme STATIC ${LIBSRCS})
link_libraries(nvme bpf elf uebpf-rt pthread)

# src
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)
file(GLOB SRCS ${PROJECT_SOURCE_DIR}/src/*.c ${PROJECT_SOURCE_DIR}/src/*.cc)
foreach(SRC ${SRCS})
    get_filename_component(SRC_NAME ${SRC} NAME_WE)
    add_executable(${SRC_NAME} ${SRC})
endforeach()
