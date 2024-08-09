set(CMAKE_SYSTEM_NAME               Generic)
set(CMAKE_SYSTEM_PROCESSOR          arm)

set (STM_TOOLCHAIN $ENV{STM_TOOLCHAIN})

string(REPLACE "\\" "/" STM_PATH ${STM_TOOLCHAIN})

# Some default GCC settings
# arm-none-eabi- must be part of path environment
set(TOOLCHAIN_PREFIX                ${STM_PATH}/bin/arm-none-eabi-)
set(FLAGS                           "-ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity")
set(CPP_FLAGS                       "${FLAGS} -fno-exceptions -fno-rtti -fno-use-cxa-atexit")

set(CMAKE_C_FLAGS                   ${FLAGS})
set(CMAKE_CXX_FLAGS                 ${CPP_FLAGS})

set(CMAKE_C_COMPILER   "${TOOLCHAIN_PREFIX}gcc.exe")
set(CMAKE_ASM_COMPILER "${TOOLCHAIN_PREFIX}gcc.exe")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_PREFIX}g++.exe")
set(CMAKE_AR           "${TOOLCHAIN_PREFIX}ar.exe")
set(CMAKE_LINKER       "{TOOLCHAIN_PREFIX}ld.exe")
set(CMAKE_OBJCOPY      "${TOOLCHAIN_PREFIX}objcopy.exe")
set(CMAKE_RANLIB       "${TOOLCHAIN_PREFIX}ranlib.exe")
set(CMAKE_SIZE         "${TOOLCHAIN_PREFIX}size.exe")
set(CMAKE_STRIP        "${TOOLCHAIN_PREFIX}ld.exe")

set(CMAKE_EXECUTABLE_SUFFIX_ASM     ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_C       ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_CXX     ".elf")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)


INCLUDE_DIRECTORIES(${STM_TOOL_PATH}/include)
# INCLUDE_DIRECTORIES(${STM_TOOL_PATH}/include/c++/11.3.1)
