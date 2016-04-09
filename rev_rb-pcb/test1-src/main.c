#include "ch.h"
#include "hal.h"

#include "stm32f10x_conf.h"
#include "board.h"

#define wkup_pin GPIO_Pin_0
#define coba_pin GPIO_Pin_9

#define con_lamp_pin GPIO_Pin_12
#define con_pv_pin GPIO_Pin_14

void test_init(void);
void run_test(__IO uint32_t tunda);
void nvic_init(void);
void exti_init(void);
void timer_init(void);
void rtc_init(void);
void alarm_init(void);

int main(void) {

    test_init();
    nvic_init();
    timer_init();

    run_test(0xFFFFF);

    while (1){
    };
}

/*
 * Function references
 */

void test_init(void){
    GPIO_InitTypeDef GPIO_InitStructure;

    AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_DISABLE;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
    GPIO_InitStructure.GPIO_Pin = coba_pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    GPIOB->ODR &= ~(coba_pin);

    /*
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
    GPIO_InitStructure.GPIO_Pin = con_pv_pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    GPIOB->ODR |= (con_pv_pin);

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
    GPIO_InitStructure.GPIO_Pin = con_lamp_pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    GPIOB->ODR |= (con_lamp_pin);


    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    GPIO_InitStructure.GPIO_Pin = wkup_pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    */
}

/*
void standby_init(void){

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |RCC_APB2Periph_GPIOE, ENABLE);

    GPIO_InitTypeDef GPIO_InitStructure;

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_All;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    GPIO_Init(GPIOC, &GPIO_InitStructure);
    GPIO_Init(GPIOD, &GPIO_InitStructure);
    GPIO_Init(GPIOE, &GPIO_InitStructure);

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |RCC_APB2Periph_GPIOE, DISABLE);

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR, ENABLE);
    PWR_WakeUpPinCmd(ENABLE);

    PWR_EnterSTANDBYMode();
}

void stop_entry(void){

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |RCC_APB2Periph_GPIOE, ENABLE);

    GPIO_InitTypeDef GPIO_InitStructure;

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_All;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    GPIO_Init(GPIOC, &GPIO_InitStructure);
    GPIO_Init(GPIOD, &GPIO_InitStructure);
    GPIO_Init(GPIOE, &GPIO_InitStructure);

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |RCC_APB2Periph_GPIOE, DISABLE);

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR, ENABLE);
    PWR_WakeUpPinCmd(ENABLE);

    RTC_SetAlarm(RTC_GetCounter()+ 3);

    PWR_EnterSTOPMode(PWR_Regulator_LowPower,PWR_STOPEntry_WFI);
}
*/

void nvic_init(void){
    NVIC_InitTypeDef NVIC_InitStructure;

    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
    NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
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

    Delay(1500);

    RTC_ClearFlag(RTC_FLAG_SEC);
    while(RTC_GetFlagStatus(RTC_FLAG_SEC) == RESET);

    RTC_SetAlarm(RTC_GetCounter()+ 3);
    RTC_WaitForLastTask();

    run_test(0xAFFFF);
}

void run_test(__IO uint32_t tunda){

    GPIOB->ODR |= (coba_pin);
    Delay(tunda);

    GPIOB->ODR &= ~(coba_pin);
    Delay(tunda);
}

void timer_init(void){

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);

    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

    TIM_TimeBaseStructure.TIM_Period = 0xFFFF;
    TIM_TimeBaseStructure.TIM_Prescaler = 19;
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInit(TIM4, & TIM_TimeBaseStructure);

    TIM_ARRPreloadConfig(TIM4, ENABLE);
    TIM_UpdateRequestConfig(TIM4, TIM_UpdateSource_Regular);

    TIM_ITConfig(TIM4, TIM_IT_Update, ENABLE);
    TIM_Cmd(TIM4, ENABLE);
}

/*
 * Interrupt handler functions
 */

void TIM4_IRQHandler(void){
    if (TIM_GetITStatus(TIM4, TIM_IT_Update) != RESET){

        run_test(0xAFFF);

        TIM_ClearITPendingBit(TIM4, TIM_IT_Update);
    }
}


CH_IRQ_HANDLER(STM32_TIM4_HANDLER){
    CH_IRQ_PROLOGUE();
    chSysLockFromISR();

    run_test(0xAFFF);

    chSysUnlockFromISR();
    CH_IRQ_EPILOGUE();
}

