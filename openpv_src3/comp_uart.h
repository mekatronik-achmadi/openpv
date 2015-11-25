#ifndef COMP_UART_H
#define COMP_UART_H

#define UART_RX 0 //D
#define UART_TX 1 //D

#define BAUDRATE 9600

#define RX_IRQ 		ISR(USART_RXC_vect)

void UART_init(void);
void UART_stdin(void);
void UART_stdout(void);

#endif // COMP_UART_H

