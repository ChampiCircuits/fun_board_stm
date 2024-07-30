################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3a3u3x.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3n3s.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/common/pmc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_3.c \
../Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_all.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3a3u3x.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3n3s.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/pmc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_3.d \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_all.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3a3u3x.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3n3s.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/pmc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_3.o \
./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_all.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/sam/common/%.o Drivers/stm32-ws2812b/libopencm3/lib/sam/common/%.su Drivers/stm32-ws2812b/libopencm3/lib/sam/common/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/sam/common/%.c Drivers/stm32-ws2812b/libopencm3/lib/sam/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-sam-2f-common

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-sam-2f-common:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3a3u3x.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3a3u3x.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3a3u3x.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3a3u3x.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3n3s.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3n3s.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3n3s.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_3n3s.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/gpio_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/pmc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/pmc.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/pmc.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/pmc.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_3.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_3.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_3.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_3.su ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/sam/common/usart_common_all.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-sam-2f-common

