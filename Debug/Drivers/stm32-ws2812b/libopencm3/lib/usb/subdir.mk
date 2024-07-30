################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_audio.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_cdc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_control.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_dwc_common.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32hg.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f107.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f207.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_hid.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_lm4f.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_midi.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_msc.c \
../Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_standard.c 

C_DEPS += \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_audio.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_cdc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_control.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_dwc_common.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32hg.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f107.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f207.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_hid.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_lm4f.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_midi.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_msc.d \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_standard.d 

OBJS += \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_audio.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_cdc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_control.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_dwc_common.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32hg.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f107.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f207.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_hid.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_lm4f.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_midi.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_msc.o \
./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_standard.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/stm32-ws2812b/libopencm3/lib/usb/%.o Drivers/stm32-ws2812b/libopencm3/lib/usb/%.su Drivers/stm32-ws2812b/libopencm3/lib/usb/%.cyclo: ../Drivers/stm32-ws2812b/libopencm3/lib/usb/%.c Drivers/stm32-ws2812b/libopencm3/lib/usb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/stm32-ws2812b -I../Drivers/stm32-ws2812b/libopencm3/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-usb

clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-usb:
	-$(RM) ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_audio.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_audio.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_audio.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_audio.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_cdc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_cdc.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_cdc.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_cdc.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_control.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_control.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_control.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_control.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_dwc_common.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_dwc_common.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_dwc_common.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_dwc_common.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32hg.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32hg.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32hg.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_efm32hg.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f107.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f107.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f107.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f107.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f207.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f207.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f207.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_f207.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_hid.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_hid.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_hid.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_hid.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_lm4f.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_lm4f.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_lm4f.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_lm4f.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_midi.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_midi.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_midi.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_midi.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_msc.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_msc.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_msc.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_msc.su ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_standard.cyclo ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_standard.d ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_standard.o ./Drivers/stm32-ws2812b/libopencm3/lib/usb/usb_standard.su

.PHONY: clean-Drivers-2f-stm32-2d-ws2812b-2f-libopencm3-2f-lib-2f-usb

