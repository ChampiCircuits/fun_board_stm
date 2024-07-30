################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_f47.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1_multi.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2_multi.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/cordic_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crs_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crypto_common_f24.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dcmi_common_f47.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma2d_common_f47.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_csel.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_f24.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_l1f013.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dmamux.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dsi_common_f47.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fdcan_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f01.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f24.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_idcache.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_l01.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fmc_common_f47.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_f0234.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/hash_common_f24.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/iwdg_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/lptimer_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/ltdc_common_f47.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/quadspi_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rcc_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rng_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rtc_common_l1f024.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1_frf.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v2.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/st_usbfs_core.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f0234.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f24.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_all.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_f124.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_fifos.c \
../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_v2.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_f47.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1_multi.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2_multi.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/cordic_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crs_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crypto_common_f24.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dcmi_common_f47.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma2d_common_f47.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_csel.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_f24.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_l1f013.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dmamux.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dsi_common_f47.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fdcan_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f01.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f24.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_idcache.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_l01.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fmc_common_f47.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_f0234.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/hash_common_f24.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/iwdg_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/lptimer_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/ltdc_common_f47.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/quadspi_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rcc_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rng_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rtc_common_l1f024.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1_frf.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v2.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/st_usbfs_core.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f0234.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f24.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_all.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_f124.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_fifos.d \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_v2.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_f47.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1_multi.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2_multi.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/cordic_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crs_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crypto_common_f24.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dcmi_common_f47.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma2d_common_f47.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_csel.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_f24.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_l1f013.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dmamux.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dsi_common_f47.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fdcan_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f01.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f24.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_idcache.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_l01.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fmc_common_f47.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_f0234.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/hash_common_f24.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/iwdg_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/lptimer_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/ltdc_common_f47.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/quadspi_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rcc_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rng_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rtc_common_l1f024.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1_frf.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v2.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/st_usbfs_core.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f0234.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f24.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_all.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_f124.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_fifos.o \
./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_v2.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/%.o Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/%.su Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/%.c Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-common

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-common:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_f47.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_f47.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_f47.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_f47.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1_multi.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1_multi.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1_multi.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v1_multi.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2_multi.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2_multi.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2_multi.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/adc_common_v2_multi.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/cordic_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/cordic_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/cordic_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/cordic_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crc_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crs_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crs_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crs_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crs_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crypto_common_f24.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crypto_common_f24.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crypto_common_f24.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/crypto_common_f24.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dac_common_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dcmi_common_f47.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dcmi_common_f47.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dcmi_common_f47.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dcmi_common_f47.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/desig_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma2d_common_f47.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma2d_common_f47.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma2d_common_f47.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma2d_common_f47.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_csel.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_csel.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_csel.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_csel.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_f24.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_f24.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_f24.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_f24.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_l1f013.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_l1f013.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_l1f013.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dma_common_l1f013.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dmamux.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dmamux.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dmamux.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dmamux.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dsi_common_f47.cyclo
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dsi_common_f47.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dsi_common_f47.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/dsi_common_f47.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/exti_common_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fdcan_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fdcan_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fdcan_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fdcan_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f01.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f01.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f01.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f01.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f24.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f24.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f24.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_f24.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_idcache.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_idcache.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_idcache.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_idcache.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_l01.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_l01.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_l01.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/flash_common_l01.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fmc_common_f47.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fmc_common_f47.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fmc_common_f47.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/fmc_common_f47.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_f0234.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_f0234.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_f0234.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/gpio_common_f0234.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/hash_common_f24.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/hash_common_f24.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/hash_common_f24.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/hash_common_f24.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/i2c_common_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/iwdg_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/iwdg_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/iwdg_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/iwdg_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/lptimer_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/lptimer_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/lptimer_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/lptimer_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/ltdc_common_f47.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/ltdc_common_f47.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/ltdc_common_f47.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/ltdc_common_f47.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v1.su
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/opamp_common_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/pwr_common_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/quadspi_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/quadspi_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/quadspi_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/quadspi_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rcc_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rcc_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rcc_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rcc_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rng_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rng_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rng_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rng_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rtc_common_l1f024.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rtc_common_l1f024.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rtc_common_l1f024.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/rtc_common_l1f024.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1_frf.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1_frf.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1_frf.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v1_frf.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/spi_common_v2.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/st_usbfs_core.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/st_usbfs_core.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/st_usbfs_core.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/st_usbfs_core.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f0234.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f0234.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f0234.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f0234.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f24.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f24.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f24.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/timer_common_f24.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_all.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_all.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_all.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_all.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_f124.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_f124.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_f124.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_f124.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_fifos.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_fifos.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_fifos.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_fifos.su ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_v2.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_v2.d ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_v2.o ./Drivers/stm32-ws2812b/libopencm3/lib/stm32/common/usart_common_v2.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-stm32-2f-common

