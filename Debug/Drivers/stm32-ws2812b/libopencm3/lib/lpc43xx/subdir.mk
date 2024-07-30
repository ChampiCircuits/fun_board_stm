################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/gpio.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/i2c.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ipc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/scu.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ssp.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/timer.c \
../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/uart.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/gpio.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/i2c.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ipc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/scu.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ssp.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/timer.d \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/uart.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/gpio.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/i2c.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ipc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/scu.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ssp.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/timer.o \
./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/uart.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/%.o Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/%.su Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/%.c Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-lpc43xx

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-lpc43xx:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/gpio.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/gpio.d ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/gpio.o ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/gpio.su ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/i2c.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/i2c.d ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/i2c.o ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/i2c.su ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ipc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ipc.d ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ipc.o ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ipc.su ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/scu.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/scu.d ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/scu.o ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/scu.su ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ssp.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ssp.d ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ssp.o ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/ssp.su ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/timer.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/timer.d ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/timer.o ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/timer.su ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/uart.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/uart.d ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/uart.o ./Drivers/stm32-ws2812b/libopencm3/lib/lpc43xx/uart.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-lpc43xx

