################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/adc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/flash.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/pwr.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/rcc.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/adc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/flash.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/pwr.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/rcc.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/adc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/flash.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/pwr.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/rcc.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/%.o Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/%.su Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/%.c Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-g0

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-g0:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/adc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/adc.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/adc.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/adc.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/flash.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/flash.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/flash.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/flash.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/pwr.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/pwr.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/pwr.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/pwr.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/rcc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/rcc.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/rcc.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/g0/rcc.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-g0

