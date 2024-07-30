################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/clock.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/radio.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/clock.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/radio.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/clock.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/radio.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/%.o Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/%.su Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/%.c Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-nrf-2f-51

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-nrf-2f-51:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/clock.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/clock.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/clock.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/clock.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/radio.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/radio.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/radio.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/51/radio.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-nrf-2f-51

