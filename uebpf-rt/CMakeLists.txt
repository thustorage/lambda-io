cmake_minimum_required(VERSION 3.0)

option(ONHOST "onhost x86_64" OFF)
message(STATUS "=== uebpf-rt ===")
message(STATUS "ONHOST=" ${ONHOST})
get_directory_property(hasParent PARENT_DIRECTORY)
if (NOT hasParent AND NOT ONHOST)
    # set compiler
    set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
endif()

project(uebpf-rt)

if(ONHOST)
    set(ARCH x86_64)
else()
    set(ARCH aarch64)
    set(PETA_ROOT_DIR "/mnt/e/code/petalinux/2019.1/rootfs")
    add_compile_options(--sysroot=${PETA_ROOT_DIR})
    link_libraries(--sysroot=${PETA_ROOT_DIR})
endif()

# execute_process(COMMAND bash -c "echo -n /lib/modules/`uname -r`/build" OUTPUT_VARIABLE LINUX_SOURCE_DIR)
# message(STATUS "${LINUX_SOURCE_DIR}/include")
add_compile_options(-O2)

include_directories(${PROJECT_SOURCE_DIR}/include)

add_compile_definitions(CONFIG_BPF_SYSCALL CONFIG_BPF_JIT CONFIG_BPF_JIT_ALWAYS_ON)
add_compile_definitions(USERSPACE_EBPF)

set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)
file(GLOB SRCS ${SRC_DIR}/*.c)
file(GLOB JIT_SRCS ${SRC_DIR}/${ARCH}/*.c)

add_library(${PROJECT_NAME} STATIC ${SRCS} ${JIT_SRCS})
