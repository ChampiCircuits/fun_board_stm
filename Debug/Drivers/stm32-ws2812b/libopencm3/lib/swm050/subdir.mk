################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/swm050/clk.c \
../Drivers/stm32-ws2812b/libopencm3/lib/swm050/flash.c \
../Drivers/stm32-ws2812b/libopencm3/lib/swm050/gpio.c \
../Drivers/stm32-ws2812b/libopencm3/lib/swm050/pwr.c \
../Drivers/stm32-ws2812b/libopencm3/lib/swm050/syscon.c \
../Drivers/stm32-ws2812b/libopencm3/lib/swm050/timer.c \
../Drivers/stm32-ws2812b/libopencm3/lib/swm050/wdt.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/clk.d \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/flash.d \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/gpio.d \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/pwr.d \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/syscon.d \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/timer.d \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/wdt.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/clk.o \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/flash.o \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/gpio.o \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/pwr.o \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/syscon.o \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/timer.o \
./Drivers/stm32-ws2812b/libopencm3/lib/swm050/wdt.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/swm050/%.o Drivers/stm32-ws2812b/libopencm3/lib/swm050/%.su Drivers/stm32-ws2812b/libopencm3/lib/swm050/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/swm050/%.c Drivers/stm32-ws2812b/libopencm3/lib/swm050/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-swm050

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-swm050:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/clk.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/clk.d ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/clk.o ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/clk.su ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/flash.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/flash.d ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/flash.o ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/flash.su ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/gpio.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/gpio.d ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/gpio.o ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/gpio.su ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/pwr.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/pwr.d ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/pwr.o ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/pwr.su ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/syscon.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/syscon.d ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/syscon.o ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/syscon.su ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/timer.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/timer.d ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/timer.o ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/timer.su ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/wdt.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/wdt.d ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/wdt.o ./Drivers/stm32-ws2812b/libopencm3/lib/swm050/wdt.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-swm050

