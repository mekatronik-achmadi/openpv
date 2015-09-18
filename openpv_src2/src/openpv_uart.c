#include "inklusi.h"

extern adcsample_t adc0;

#if USE_INTERFACE
static void cmd_data_adc(BaseSequentialStream *chp, int argc, char *argv[]) {

  (void)argv;
  if (argc > 0) {
    chprintf(chp, "Usage: adc\r\n");
    return;
  }

  //chprintf(chp, "adc0 = %i \n\r",adc0);
  chprintf(chp, "%i\n\r",adc0);
}

static void cmd_data_volt(BaseSequentialStream *chp, int argc, char *argv[]) {

  (void)argv;
  if (argc > 0) {
    chprintf(chp, "Usage: volt\r\n");
    return;
  }

  float volt = (float) adc0 * 0.0008;

  chprintf(chp, "volt = %f \n\r",volt);
}

static const ShellCommand commands[] = {
  {"adc", cmd_data_adc},
  {"volt", cmd_data_volt},
  {NULL, NULL}
};

static const ShellConfig shell_cfg1 = {
  (BaseSequentialStream *)&SD1,
  commands
};
#endif

Thread *shelltp = NULL;

void UART_Init(void){
#if USE_INTERFACE
  palSetPadMode(GPIOA,9,PAL_MODE_STM32_ALTERNATE_PUSHPULL);
  palSetPadMode(GPIOA,10,PAL_MODE_INPUT);
  sdStart(&SD1, NULL);
  shellInit();
#endif
}

void Shell_Init(void){
#if USE_INTERFACE
    if (!shelltp){
      shelltp = shellCreate(&shell_cfg1, SHELL_WA_SIZE, NORMALPRIO);}
    else if (chThdTerminated(shelltp)) {
      chThdRelease(shelltp);
      shelltp = NULL;
    }
#endif
}
