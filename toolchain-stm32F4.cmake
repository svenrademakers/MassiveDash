include(CMakeForceCompiler)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR STM32F4)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)

CMAKE_FORCE_C_COMPILER("arm-none-eabi-gcc" GNU)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Wl,-Map=output.map -Wl,--gc-sections -fno-exceptions -fno-rtti")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -nostartfiles")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "" )
set(CMAKE_ASM_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "" )
