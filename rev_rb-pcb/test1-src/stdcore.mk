STDCOREASM  = $(STDLIB)/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/startup/gcc_ride7/startup_stm32f10x_md.s

STDCORESRC  = $(STDLIB)/Libraries/CMSIS/CM3/CoreSupport/core_cm3.c \
              $(STDLIB)/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.c
	     
STDCOREINC  = $(STDLIB)/Libraries/CMSIS/CM3/CoreSupport/ \
              $(STDLIB)/Libraries/CMSIS/CM3/DeviceSupport/ST/STM32F10x/

STDCORELD   = $(STDLIB)/Project/STM32F10x_StdPeriph_Template/TrueSTUDIO/STM32100B-EVAL/stm32_flash.ld
