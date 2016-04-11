#include "inklusi.h"

void rtc_init(void){

  RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
  PWR_BackupAccessCmd(ENABLE);
  BKP_DeInit();

  RCC_LSICmd(ENABLE);
  while(RCC_GetFlagStatus(RCC_FLAG_LSIRDY) == RESET);

  RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);
  RCC_RTCCLKCmd(ENABLE);

  RTC_WaitForSynchro();

  RTC_SetPrescaler(32767);
  RTC_WaitForLastTask();

  RTC_ITConfig(RTC_IT_ALR, ENABLE);
  RTC_WaitForLastTask();
}

void alarm_init(void){

    RTC_ClearFlag(RTC_FLAG_SEC);
    while(RTC_GetFlagStatus(RTC_FLAG_SEC) == RESET);

    RTC_WaitForLastTask();

    RTC_SetAlarm(RTC_GetCounter()+ 5);
    RTC_WaitForLastTask();
}
