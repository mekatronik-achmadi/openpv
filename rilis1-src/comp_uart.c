#include "inklusi.h"

static int uart_putchar(char ch,FILE*stream)
{
    if(ch=='\n'){uart_putchar('\r',stream);}
    while ((UCSRA & (1 << UDRE)) == 0) {};
    UDR=ch;
    return 0;
}

static int uart_getchar(FILE*stream)
{
    char temp;
    while ((UCSRA & (1 << RXC)) == 0) {};
    temp=UDR;
    uart_putchar(temp,stream);
    return(temp);
}
static FILE uart_stdout=FDEV_SETUP_STREAM(uart_putchar,NULL,_FDEV_SETUP_WRITE);
static FILE uart_stdin=FDEV_SETUP_STREAM(NULL,uart_getchar,_FDEV_SETUP_READ);

void UART_init(void){
    UCSRB|=1<<TXEN;
//    UCSRB|=1<<RXEN;
//    UCSRB|=1<<RXCIE;

    UBRRH=(((F_CPU / (BAUDRATE * 16UL))) - 1)>>8;
    UBRRL=(((F_CPU / (BAUDRATE * 16UL))) - 1);
    UCSRC|=(1<<URSEL)|(0<<UMSEL)|(0<<UPM1)|(0<<UPM0)|(0<<USBS)|(1<<UCSZ1)|(1<<UCSZ0);
}

void UART_stdin(void){
    stdin=&uart_stdin;
}

void UART_stdout(void){
    stdout=&uart_stdout;
}
