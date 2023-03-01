cmake_minimum_required(VERSION 3.12)

option(ONHOST "onhost x86_64" OFF)

set(CMAKE_CXX_STANDARD 17)
# set compiler
if(NOT ONHOST)
    set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
endif()

project(lambda-io)

if(ONHOST)
    set(ARCH x86_64)
    message(STATUS "Architecture: x86_64")
    add_compile_definitions(ARCH_X86_64)
else()
    set(ARCH aarch64)
    message(STATUS "Architecture: aarch64")
    add_compile_definitions(ARCH_AARCH64)
endif()

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/arc)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)

add_subdirectory(libbpf)
add_subdirectory(uebpf-rt)
add_subdirectory(ebpf)
add_subdirectory(kmod)
add_subdirectory(fs-map)

if(ONHOST)
    add_subdirectory(host-eval)
else()
    add_subdirectory(nvme-ctl)
endif()
