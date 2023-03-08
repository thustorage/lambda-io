cmake_minimum_required(VERSION 3.12)

project(kmod)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu89 -nostdinc")

add_executable(kmod dummy-main.c)

set(KERNEL_ROOT "/mnt/e/code/kernel-src/linux-5.10.21")
include_directories(
        "${KERNEL_ROOT}/include"
        "${KERNEL_ROOT}/include/uapi"
        "${KERNEL_ROOT}/arch/x86/include"
        "${KERNEL_ROOT}/arch/x86/include/uapi"
)

add_definitions(-D__KERNEL__)
#add_definitions(-D__APPLE__)
add_definitions(-DCONFIG_BLOCK)
add_definitions(-DCONFIG_X86_64)
add_definitions(-DCONFIG_F2FS_STAT_FS)
add_definitions(-DCONFIG_MODULES)
add_definitions(-DCONFIG_PRINTK)
add_definitions(-DCONFIG_PROC_FS)
add_definitions(-DCONFIG_64BIT)
