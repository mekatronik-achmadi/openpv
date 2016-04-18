#include "inklusi.h"

static binary_semaphore_t alarm_sem;
static RTCDateTime timespec;
static RTCAlarm alarmspec;
static uint32_t tv_sec;

static void rtc_cb(RTCDriver *rtcp, rtcevent_t event) {

  (void)rtcp;

  switch (event) {
  case RTC_EVENT_OVERFLOW:
    break;
  case RTC_EVENT_SECOND:
    break;
  case RTC_EVENT_ALARM:
    blink_test();
    osalSysLockFromISR();
    chBSemSignalI(&alarm_sem);
    osalSysUnlockFromISR();
    break;
  }
}

//static void extcbwkup(EXTDriver *extp, expchannel_t channel) {

//    (void)extp;
//    (void)channel;

//    chSysLockFromISR();
//    stm32_clock_init();
//    chSysUnlockFromISR();

//}

//static const EXTConfig extcfg = {
//  {
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_DISABLED, NULL},
//    {EXT_CH_MODE_RISING_EDGE | EXT_CH_MODE_AUTOSTART, extcbwkup},
//  }
//};

void saver_init(void){
    chBSemObjectInit(&alarm_sem, TRUE);
    rtcGetTime(&RTCD1, &timespec);
    rtcSetCallback(&RTCD1, rtc_cb);
}

void alarm_init(void){
    chBSemWaitTimeout(&alarm_sem, S2ST(RTC_ALARMPERIOD + 1));
    rtcSTM32GetSecMsec(&RTCD1, &tv_sec, NULL);
    alarmspec.tv_sec = tv_sec + RTC_ALARMPERIOD;
    rtcSetAlarm(&RTCD1, 0, &alarmspec);
}

void sleep_init(void){
    chSysLock();
    wkup_pin_set(ENABLE);
    PWR->CR |= PWR_CR_CWUF;
    PWR->CR &= ~PWR_CR_CSBF;
    PWR->CR |= PWR_CR_LPDS;
    PWR->CR &= ~PWR_CR_PDDS;
    SCB->SCR |= SCB_SCR_SLEEPDEEP;
    __WFI();
    chSysUnlock();
}

void wkup_pin_set(FunctionalState NewState)
{
  *(__IO uint32_t *) CSR_EWUP_BB = (uint32_t)NewState;
}

void standby_init(void){

    if(!palReadPad(GPIOA, wkup_pin)){

        palSetPadMode(GPIOB, led_pv_pin, PAL_MODE_RESET);
        palSetPadMode(GPIOB, con_lamp_pin, PAL_MODE_RESET);
        palSetPadMode(GPIOB, con_pv_pin, PAL_MODE_RESET);
        palSetPadMode(GPIOA, wkup_pin, PAL_MODE_RESET);

        chSysLock();
        wkup_pin_set(ENABLE);
        PWR->CR |= PWR_CR_CWUF;
        PWR->CR |= PWR_CR_CSBF;
        PWR->CR |= PWR_CR_LPDS;
        PWR->CR |= PWR_CR_PDDS;
        SCB->SCR |= SCB_SCR_SLEEPDEEP;
        __WFI();
        chSysUnlock();
    }
}

