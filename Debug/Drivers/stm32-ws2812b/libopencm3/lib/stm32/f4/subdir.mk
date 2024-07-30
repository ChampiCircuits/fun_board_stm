################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/crypto.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/flash.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/i2c.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/pwr.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rcc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rng.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rtc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/vector_chipset.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/crypto.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/flash.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/i2c.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/pwr.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rcc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rng.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rtc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/vector_chipset.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/crypto.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/flash.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/i2c.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/pwr.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rcc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rng.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rtc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/vector_chipset.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/%.o Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/%.su Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/%.c Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-f4

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-f4:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/crypto.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/crypto.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/crypto.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/crypto.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/flash.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/flash.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/flash.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/flash.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/i2c.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/i2c.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/i2c.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/i2c.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/pwr.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/pwr.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/pwr.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/pwr.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rcc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rcc.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rcc.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rcc.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rng.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rng.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rng.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rng.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rtc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rtc.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rtc.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/rtc.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/vector_chipset.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/vector_chipset.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/vector_chipset.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/f4/vector_chipset.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-f4

