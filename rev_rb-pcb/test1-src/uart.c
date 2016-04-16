#include "inklusi.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdarg.h>

/*
 * Retarget
 */

//struct __FILE {
//  int handle;
//};

//int SendChar (int ch)  {

//  while (!(USART1->SR & USART_FLAG_TXE));
//  USART1->DR = (ch & 0x1FF);

//  return (ch);
//}

//int ReadChar (void)  {

//  while (!(USART1->SR & USART_FLAG_RXNE));

//  return ((int)(USART1->DR & 0x1FF));
//}

//int fputc (int ch, FILE *f)
//{

//  USART_SendData(USART1, (uint8_t) ch);

//  while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET)
//  {
//    }

//  return ch;
//}

//int fgetc(FILE *f) {
//    return (ReadChar());
//}

//void _ttywrch(int ch) {
// SendChar (ch);
//}

////int ferror(FILE *f) {
////  return EOF;
////}

//void _sys_exit(int return_code) {
//label:  goto label;
//}

//=====================================

void uart_init(void){
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1 | RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);

    GPIO_InitTypeDef GPIO_InitStructure;
    USART_InitTypeDef USART_InitStructure;
    USART_ClockInitTypeDef USART_ClockInitStructure;

    GPIO_InitStructure.GPIO_Pin   = GPIO_Pin_10;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    GPIO_InitStructure.GPIO_Pin   = GPIO_Pin_9;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    USART_ClockStructInit(&USART_ClockInitStructure);
    USART_ClockInit(USART1, &USART_ClockInitStructure);
    USART_InitStructure.USART_BaudRate            = 38400;
    USART_InitStructure.USART_WordLength          = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits            = USART_StopBits_1;
    USART_InitStructure.USART_Parity              = USART_Parity_No ;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode                = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART1, &USART_InitStructure);

//    USART_ITConfig(USART1, USART_IT_RXNE, DISABLE);

//    USART_Cmd(USART1, DISABLE);

}
