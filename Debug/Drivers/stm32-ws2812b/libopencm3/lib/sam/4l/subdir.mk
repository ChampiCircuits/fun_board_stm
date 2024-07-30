################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/adcife.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/gpio.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/pm.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/scif.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/usart.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/adcife.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/gpio.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/pm.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/scif.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/usart.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/adcife.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/gpio.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/pm.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/scif.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/usart.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/%.o Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/%.su Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/%.c Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-sam-2f-4l

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-sam-2f-4l:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/adcife.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/adcife.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/adcife.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/adcife.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/gpio.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/gpio.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/gpio.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/gpio.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/pm.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/pm.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/pm.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/pm.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/scif.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/scif.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/scif.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/scif.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/usart.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/usart.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/usart.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/4l/usart.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-sam-2f-4l

