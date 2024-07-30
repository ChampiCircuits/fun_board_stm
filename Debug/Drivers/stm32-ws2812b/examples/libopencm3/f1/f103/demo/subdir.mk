################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.o 

ELF_SRCS += \
../Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.elf 

C_SRCS += \
../Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.c 

C_DEPS += \
./Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.d 

OBJS += \
./Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/%.o Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/%.su Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/%.cyclo: ../Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/%.c Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-libopencm3-2f-f1-2f-f103-2f-demo

clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-libopencm3-2f-f1-2f-f103-2f-demo:
	-$(RM) ./Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.cyclo ./Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.d ./Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.o ./Drivers/stm32-ws2812b/examples/libopencm3/f1/f103/demo/demo.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-libopencm3-2f-f1-2f-f103-2f-demo

