################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/lm4f/gpio.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lm4f/rcc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lm4f/systemcontrol.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lm4f/uart.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lm4f/vector_chipset.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/gpio.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/rcc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/systemcontrol.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/uart.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/vector_chipset.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/gpio.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/rcc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/systemcontrol.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/uart.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/vector_chipset.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/lm4f/%.o Drivers/stm32-ws2812b/libopencm3/lib/lm4f/%.su Drivers/stm32-ws2812b/libopencm3/lib/lm4f/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/lm4f/%.c Drivers/stm32-ws2812b/libopencm3/lib/lm4f/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-lm4f

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-lm4f:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/gpio.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/gpio.d ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/gpio.o ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/gpio.su ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/rcc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/rcc.d ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/rcc.o ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/rcc.su ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/systemcontrol.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/systemcontrol.d ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/systemcontrol.o ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/systemcontrol.su ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/uart.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/uart.d ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/uart.o ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/uart.su ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/vector_chipset.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/vector_chipset.d ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/vector_chipset.o ./Drivers/stm32-ws2812b/libopencm3/lib/lm4f/vector_chipset.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-lm4f

