cmake_minimum_required(VERSION 3.0)

option(ONHOST "onhost x86_64" OFF)
message(STATUS "=== ebpf ===")
message(STATUS "ONHOST=" ${ONHOST})
get_directory_property(hasParent PARENT_DIRECTORY)
if (NOT hasParent AND NOT ONHOST)
    # set compiler
    set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
endif()

project(ebpf)

add_compile_options(-O2)
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)

if(ONHOST)
    set(SUFFIX h)
    message(STATUS "Architecture: x86_64")
else()
    set(SUFFIX d)
    message(STATUS "Architecture: aarch64")
endif()

# kern
set(EBPF_DIR ${SRC_DIR}/kern)
file(GLOB EBPF_SRCS ${EBPF_DIR}/*.c)
set(CLANG_VERSION 10)

add_custom_target(mkdir_clang_ver COMMAND bash -c "mkdir -p ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/clang-${CLANG_VERSION}.o")
foreach(EBPF_SRC ${EBPF_SRCS})
    get_filename_component(EBPF_NAME_WLE ${EBPF_SRC} NAME_WLE)
    get_filename_component(EBPF_NAME ${EBPF_SRC} NAME)
    add_custom_target(${EBPF_NAME_WLE} ALL
            COMMAND bash -c "clang-${CLANG_VERSION} -D${ARCH} -include asm_goto_workaround.h \
                    -O2 -emit-llvm -Xclang -disable-llvm-passes -fno-builtin -c ${EBPF_NAME} -o - \\| \
                    opt-${CLANG_VERSION} -O2 -mtriple=bpf-pc-linux \\| \
                    llvm-dis-${CLANG_VERSION} \\| \
                    llc-${CLANG_VERSION} -march=bpf -filetype=obj \
                    -o ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/clang-${CLANG_VERSION}.o/${EBPF_NAME_WLE}-${SUFFIX}.o"
            DEPENDS mkdir_clang_ver ${EBPF_SRC}
            WORKING_DIRECTORY ${EBPF_DIR}
            )
endforeach()

# user
file(GLOB SRCS ${SRC_DIR}/user/*.c)
add_executable(bpf-test ${SRCS})
target_link_libraries(bpf-test bpf uebpf-rt elf)
