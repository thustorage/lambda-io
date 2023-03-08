cmake_minimum_required(VERSION 3.0)

option(ONHOST "onhost x86_64" OFF)
message(STATUS "=== libbpf ===")
message(STATUS "ONHOST=" ${ONHOST})
get_directory_property(hasParent PARENT_DIRECTORY)
if (NOT hasParent AND NOT ONHOST)
    # set compiler
    set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
endif()

project(libbpf)

if(ONHOST)
    set(ARCH x86_64)
else()
    set(ARCH aarch64)
    set(PETA_ROOT_DIR "/mnt/e/code/petalinux/2019.1/rootfs")
    add_compile_options(--sysroot=${PETA_ROOT_DIR})
    link_libraries(--sysroot=${PETA_ROOT_DIR})
endif()

add_compile_options(-O2)

# libbpf
file(GLOB LIBBPF_SRCS ${PROJECT_SOURCE_DIR}/src/*.c)
add_library(bpf STATIC ${LIBBPF_SRCS})
