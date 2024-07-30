################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay_efm32.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-efm32hg309-generic.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f072disco.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f103-generic.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f3-disco.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f429i-disco.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f4disco.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l053disco.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l1-generic.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-tilm4f120xl.c \
../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/usb-gadget0.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay_efm32.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-efm32hg309-generic.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f072disco.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f103-generic.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f3-disco.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f429i-disco.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f4disco.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l053disco.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l1-generic.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-tilm4f120xl.d \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/usb-gadget0.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay_efm32.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-efm32hg309-generic.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f072disco.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f103-generic.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f3-disco.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f429i-disco.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f4disco.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l053disco.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l1-generic.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-tilm4f120xl.o \
./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/usb-gadget0.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/%.o Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/%.su Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/%.c Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-tests-2f-gadget-2d-zero

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-tests-2f-gadget-2d-zero:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay_efm32.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay_efm32.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay_efm32.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/delay_efm32.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-efm32hg309-generic.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-efm32hg309-generic.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-efm32hg309-generic.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-efm32hg309-generic.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f072disco.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f072disco.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f072disco.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f072disco.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f103-generic.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f103-generic.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f103-generic.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f103-generic.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f3-disco.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f3-disco.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f3-disco.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f3-disco.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f429i-disco.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f429i-disco.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f429i-disco.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f429i-disco.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f4disco.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f4disco.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f4disco.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32f4disco.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l053disco.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l053disco.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l053disco.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l053disco.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l1-generic.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l1-generic.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l1-generic.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-stm32l1-generic.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-tilm4f120xl.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-tilm4f120xl.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-tilm4f120xl.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/main-tilm4f120xl.su ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/usb-gadget0.cyclo ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/usb-gadget0.d ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/usb-gadget0.o ./Drivers/stm32-ws2812b/libopencm3/tests/gadget-zero/usb-gadget0.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-tests-2f-gadget-2d-zero

