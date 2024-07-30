################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/ld/linker.ld.S 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/ld/linker.ld.o 

S_UPPER_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/ld/linker.ld.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/ld/%.o: ../Drivers/stm32-ws2812b/libopencm3/ld/%.S Drivers/stm32-ws2812b/libopencm3/ld/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-ld

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-ld:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/ld/linker.ld.d ./Drivers/stm32-ws2812b/libopencm3/ld/linker.ld.o

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-ld

