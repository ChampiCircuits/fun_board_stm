################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/cm3/assert.c \
../Drivers/stm32-ws2812b/libopencm3/lib/cm3/dwt.c \
../Drivers/stm32-ws2812b/libopencm3/lib/cm3/nvic.c \
../Drivers/stm32-ws2812b/libopencm3/lib/cm3/scb.c \
../Drivers/stm32-ws2812b/libopencm3/lib/cm3/sync.c \
../Drivers/stm32-ws2812b/libopencm3/lib/cm3/systick.c \
../Drivers/stm32-ws2812b/libopencm3/lib/cm3/vector.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/assert.d \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/dwt.d \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/nvic.d \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/scb.d \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/sync.d \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/systick.d \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/vector.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/assert.o \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/dwt.o \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/nvic.o \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/scb.o \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/sync.o \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/systick.o \
./Drivers/stm32-ws2812b/libopencm3/lib/cm3/vector.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/cm3/%.o Drivers/stm32-ws2812b/libopencm3/lib/cm3/%.su Drivers/stm32-ws2812b/libopencm3/lib/cm3/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/cm3/%.c Drivers/stm32-ws2812b/libopencm3/lib/cm3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-cm3

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-cm3:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/assert.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/assert.d ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/assert.o ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/assert.su ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/dwt.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/dwt.d ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/dwt.o ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/dwt.su ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/nvic.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/nvic.d ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/nvic.o ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/nvic.su ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/scb.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/scb.d ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/scb.o ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/scb.su ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/sync.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/sync.d ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/sync.o ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/sync.su ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/systick.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/systick.d ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/systick.o ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/systick.su ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/vector.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/vector.d ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/vector.o ./Drivers/stm32-ws2812b/libopencm3/lib/cm3/vector.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-cm3

