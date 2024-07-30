################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/can.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v2.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/can.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v2.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/can.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v2.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/stm32/%.o Drivers/stm32-ws2812b/libopencm3/lib/stm32/%.su Drivers/stm32-ws2812b/libopencm3/lib/stm32/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/stm32/%.c Drivers/stm32-ws2812b/libopencm3/lib/stm32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/can.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/can.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/can.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/can.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/st_usbfs_v2.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32

