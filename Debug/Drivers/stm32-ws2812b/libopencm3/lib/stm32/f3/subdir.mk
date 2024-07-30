################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/adc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/flash.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/i2c.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/rcc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/vector_chipset.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/adc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/flash.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/i2c.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/rcc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/vector_chipset.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/adc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/flash.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/i2c.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/rcc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/vector_chipset.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/%.o Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/%.su Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/%.c Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-f3

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-f3:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/adc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/adc.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/adc.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/adc.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/flash.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/flash.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/flash.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/flash.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/i2c.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/i2c.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/i2c.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/i2c.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/rcc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/rcc.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/rcc.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/rcc.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/vector_chipset.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/vector_chipset.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/vector_chipset.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f3/vector_chipset.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-f3

