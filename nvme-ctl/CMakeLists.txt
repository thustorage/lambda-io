cmake_minimum_required(VERSION 3.12)

get_directory_property(hasParent PARENT_DIRECTORY)
if (NOT hasParent)
    # set compiler
    set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
endif()

project(nvme-ctl)

# Compile options
set(CMAKE_CXX_STANDARD 17)
set(PETA_ROOT_DIR "/mnt/e/code/petalinux/2019.1/rootfs")
add_compile_options(--sysroot=${PETA_ROOT_DIR} -Wall -pthread -O2)

# Link options
link_libraries(--sysroot=${PETA_ROOT_DIR} pthread)

# Incs
include_directories(${PROJECT_SOURCE_DIR}/include)

# Xilinx Libs
file(GLOB_RECURSE SRCS ${PROJECT_SOURCE_DIR}/lib/xllfifo/*.c)
add_library(xlnx STATIC ${SRCS})
link_libraries(xlnx)

# Source
set(SOURCE_DIR ${PROJECT_SOURCE_DIR}/src)
file(GLOB_RECURSE SRCS ${SOURCE_DIR}/*.c ${SOURCE_DIR}/*.cc)
list(REMOVE_ITEM SRCS ${SOURCE_DIR}/main.cc)
add_library(src STATIC ${SRCS})
link_libraries(src)

# EBPF lib
link_libraries(bpf uebpf-rt elf)

# Exec
add_executable(${PROJECT_NAME} ${SOURCE_DIR}/main.cc)

# Test
file(GLOB SRCS ${PROJECT_SOURCE_DIR}/test/*.cc)
foreach(TEST ${SRCS})
    get_filename_component(TEST_NAME ${TEST} NAME_WE)
    add_executable(${TEST_NAME} ${TEST})
endforeach()
