################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/acmp_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/adc_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/burtc_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/cmu_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dac_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dma_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/emu_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/gpio_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/i2c_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/letimer_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/msc_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/prs_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rmu_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rtc_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/timer_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/usart_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/wdog_common.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/acmp_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/adc_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/burtc_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/cmu_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dac_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dma_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/emu_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/gpio_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/i2c_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/letimer_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/msc_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/prs_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rmu_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rtc_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/timer_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/usart_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/wdog_common.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/acmp_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/adc_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/burtc_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/cmu_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dac_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dma_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/emu_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/gpio_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/i2c_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/letimer_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/msc_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/prs_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rmu_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rtc_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/timer_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/usart_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/wdog_common.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/%.o Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/%.su Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/%.c Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-efm32-2f-common

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-efm32-2f-common:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/acmp_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/acmp_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/acmp_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/acmp_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/adc_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/adc_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/adc_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/adc_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/burtc_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/burtc_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/burtc_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/burtc_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/cmu_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/cmu_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/cmu_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/cmu_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dac_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dac_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dac_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dac_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dma_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dma_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dma_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/dma_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/emu_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/emu_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/emu_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/emu_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/gpio_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/gpio_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/gpio_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/gpio_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/i2c_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/i2c_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/i2c_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/i2c_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/letimer_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/letimer_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/letimer_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/letimer_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/msc_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/msc_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/msc_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/msc_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/prs_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/prs_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/prs_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/prs_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rmu_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rmu_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rmu_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rmu_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rtc_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rtc_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rtc_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/rtc_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/timer_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/timer_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/timer_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/timer_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/usart_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/usart_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/usart_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/usart_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/wdog_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/wdog_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/wdog_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/efm32/common/wdog_common.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-efm32-2f-common

