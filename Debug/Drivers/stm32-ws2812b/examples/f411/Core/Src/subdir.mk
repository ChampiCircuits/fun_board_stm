################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/examples/f411/Core/Src/main.c \
../Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_hal_msp.c \
../Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_it.c \
../Drivers/stm32-ws2812b/examples/f411/Core/Src/syscalls.c \
../Drivers/stm32-ws2812b/examples/f411/Core/Src/sysmem.c \
../Drivers/stm32-ws2812b/examples/f411/Core/Src/system_stm32f4xx.c 

C_DEPS += \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/main.d \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_hal_msp.d \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_it.d \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/syscalls.d \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/sysmem.d \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/system_stm32f4xx.d 

OBJS += \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/main.o \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_hal_msp.o \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_it.o \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/syscalls.o \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/sysmem.o \
./Drivers/stm32-ws2812b/examples/f411/Core/Src/system_stm32f4xx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/examples/f411/Core/Src/%.o Drivers/stm32-ws2812b/examples/f411/Core/Src/%.su Drivers/stm32-ws2812b/examples/f411/Core/Src/%.cyclo: ../Drivers/stm32-ws2812b/examples/f411/Core/Src/%.c Drivers/stm32-ws2812b/examples/f411/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-f411-2f-Core-2f-Src

clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-f411-2f-Core-2f-Src:
	-$(RM) ./Drivers/stm32-ws2812b/examples/f411/Core/Src/main.cyclo ./Drivers/stm32-ws2812b/examples/f411/Core/Src/main.d ./Drivers/stm32-ws2812b/examples/f411/Core/Src/main.o ./Drivers/stm32-ws2812b/examples/f411/Core/Src/main.su ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_hal_msp.cyclo ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_hal_msp.d ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_hal_msp.o ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_hal_msp.su ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_it.cyclo ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_it.d ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_it.o ./Drivers/stm32-ws2812b/examples/f411/Core/Src/stm32f4xx_it.su ./Drivers/stm32-ws2812b/examples/f411/Core/Src/syscalls.cyclo ./Drivers/stm32-ws2812b/examples/f411/Core/Src/syscalls.d ./Drivers/stm32-ws2812b/examples/f411/Core/Src/syscalls.o ./Drivers/stm32-ws2812b/examples/f411/Core/Src/syscalls.su ./Drivers/stm32-ws2812b/examples/f411/Core/Src/sysmem.cyclo ./Drivers/stm32-ws2812b/examples/f411/Core/Src/sysmem.d ./Drivers/stm32-ws2812b/examples/f411/Core/Src/sysmem.o ./Drivers/stm32-ws2812b/examples/f411/Core/Src/sysmem.su ./Drivers/stm32-ws2812b/examples/f411/Core/Src/system_stm32f4xx.cyclo ./Drivers/stm32-ws2812b/examples/f411/Core/Src/system_stm32f4xx.d ./Drivers/stm32-ws2812b/examples/f411/Core/Src/system_stm32f4xx.o ./Drivers/stm32-ws2812b/examples/f411/Core/Src/system_stm32f4xx.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-f411-2f-Core-2f-Src

