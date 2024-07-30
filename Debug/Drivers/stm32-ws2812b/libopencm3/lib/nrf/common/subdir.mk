################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/clock_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/gpio.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/i2c_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/ppi.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/radio_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/rtc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/timer.c \
../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/uart.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/clock_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/gpio.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/i2c_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/ppi.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/radio_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/rtc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/timer.d \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/uart.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/clock_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/gpio.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/i2c_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/ppi.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/radio_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/rtc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/timer.o \
./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/uart.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/%.o Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/%.su Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/%.c Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-nrf-2f-common

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-nrf-2f-common:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/clock_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/clock_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/clock_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/clock_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/gpio.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/gpio.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/gpio.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/gpio.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/i2c_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/i2c_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/i2c_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/i2c_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/ppi.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/ppi.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/ppi.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/ppi.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/radio_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/radio_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/radio_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/radio_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/rtc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/rtc.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/rtc.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/rtc.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/timer.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/timer.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/timer.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/timer.su ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/uart.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/uart.d ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/uart.o ./Drivers/stm32-ws2812b/libopencm3/lib/nrf/common/uart.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-nrf-2f-common

