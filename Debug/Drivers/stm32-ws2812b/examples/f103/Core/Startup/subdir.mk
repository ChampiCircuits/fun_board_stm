################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/stm32-ws2812b/examples/f103/Core/Startup/startup_stm32f103c8tx.s 

S_DEPS += \
./Drivers/stm32-ws2812b/examples/f103/Core/Startup/startup_stm32f103c8tx.d 

OBJS += \
./Drivers/stm32-ws2812b/examples/f103/Core/Startup/startup_stm32f103c8tx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/examples/f103/Core/Startup/%.o: ../Drivers/stm32-ws2812b/examples/f103/Core/Startup/%.s Drivers/stm32-ws2812b/examples/f103/Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-f103-2f-Core-2f-Startup

clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-f103-2f-Core-2f-Startup:
	-$(RM) ./Drivers/stm32-ws2812b/examples/f103/Core/Startup/startup_stm32f103c8tx.d ./Drivers/stm32-ws2812b/examples/f103/Core/Startup/startup_stm32f103c8tx.o

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-examples-2f-f103-2f-Core-2f-Startup

