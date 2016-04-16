#include "inklusi.h"

void Delay(__IO uint32_t nCount){
  for(; nCount != 0; nCount--);
}

void nvic_init(void){
    NVIC_InitTypeDef NVIC_InitStructure;

    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
    NVIC_InitStructure.NVIC_IRQChannel = RTCAlarm_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
    NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}

void exti_init(void){
    EXTI_InitTypeDef EXTI_InitStructure;

    EXTI_ClearITPendingBit(EXTI_Line17);
    EXTI_InitStructure.EXTI_Line = EXTI_Line17;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);
}

/*
 * Interrupt Handler Functions
 */


void RTCAlarm_IRQHandler(void)
{
  if(RTC_GetITStatus(RTC_IT_ALR) != RESET)
  {

    led_test(ntunda_wkup);

    if(PWR_GetFlagStatus(PWR_FLAG_WU) != RESET)
    {
      PWR_ClearFlag(PWR_FLAG_WU);
    }

    RTC_ClearITPendingBit(RTC_IT_ALR);
    RTC_WaitForLastTask();

    EXTI_ClearITPendingBit(EXTI_Line17);

    RTC_SetCounter(0);
  }
}

void USART1_IRQHandler (void)
{
  if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
  {
      USART_ClearITPendingBit(USART1, USART_IT_RXNE);
  }
}
