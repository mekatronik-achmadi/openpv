#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/eeprom.h>

#include <util/delay.h>

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

/*
 * Serial BaudRate
 */
 
#define UART_BAUDRATE 9600   

/*
 * RUN LED
 */

#define L_RUN 0
#define D_L_RUN DDRB
#define P_L_RUN PORTB

/*
 * Data to 4511 
 */

#define IA 0
#define IB 1
#define IC 2
#define ID 3
#define D_ID DDRA
#define P_ID PORTA

/*
 * Control to 7-Segment
 */
 
#define f_delay _delay_ms
#define n_delay 5


#define D5_A 7
#define D5_B 2
#define D5_C 7
#define D_D5_A DDRA
#define D_D5_B DDRG
#define D_D5_C DDRC
#define P_D5_A PORTA
#define P_D5_B PORTG
#define P_D5_C PORTC


/*
 * LED Control Functions
 */

static void LED_Init(void){
	//RUN LED
	D_L_RUN |= (1<<L_RUN); P_L_RUN |= (1<<L_RUN);

	//DATA 7 SEGMENT
	D_ID |= (1<< IA);
	D_ID |= (1<< IB);
	D_ID |= (1<< IC);
	D_ID |= (1<< ID);

	//CONTROL 7 SEGMENT
	D_D5_A |= (1<< D5_A);
	D_D5_B |= (1<< D5_B);
	D_D5_C |= (1<< D5_C);
}

static void PIN_0(unsigned char pin){
	P_ID &= ~(1 << pin);
}

static void PIN_1(unsigned char pin){
	P_ID |= (1 << pin);
}

/*
 * LED Control Callback
 */

volatile static void Run_Blink(void){
	P_L_RUN ^= (1<<L_RUN);
}

volatile static void Num_Set(unsigned char num){
	switch(num){
		case 0: PIN_0(ID);PIN_0(IC);PIN_0(IB);PIN_0(IA);break; //0000
		case 1: PIN_0(ID);PIN_0(IC);PIN_0(IB);PIN_1(IA);break; //0001
		case 2: PIN_0(ID);PIN_0(IC);PIN_1(IB);PIN_0(IA);break; //0010
		case 3: PIN_0(ID);PIN_0(IC);PIN_1(IB);PIN_1(IA);break; //0011
		case 4: PIN_0(ID);PIN_1(IC);PIN_0(IB);PIN_0(IA);break; //0100
		case 5: PIN_0(ID);PIN_1(IC);PIN_0(IB);PIN_1(IA);break; //0101
		case 6: PIN_0(ID);PIN_1(IC);PIN_1(IB);PIN_0(IA);break; //0110
		case 7: PIN_0(ID);PIN_1(IC);PIN_1(IB);PIN_1(IA);break; //0111
		case 8: PIN_1(ID);PIN_0(IC);PIN_0(IB);PIN_0(IA);break; //1000
		case 9: PIN_1(ID);PIN_0(IC);PIN_0(IB);PIN_1(IA);break; //1001
	}
}

static void Disp_Off_All(void){
	P_D5_A |= (1 << D5_A );
	P_D5_B |= (1 << D5_B );
	P_D5_C |= (1 << D5_C );
}

static void Display_Test(void){
	Num_Set(0);
	_delay_ms(255);
	Num_Set(1);
	_delay_ms(255);
	Num_Set(2);
	_delay_ms(255);
	Num_Set(3);
	_delay_ms(255);
	Num_Set(4);
	_delay_ms(255);
	Num_Set(5);
	_delay_ms(255);
	Num_Set(6);
	_delay_ms(255);
	Num_Set(7);
	_delay_ms(255);
	Num_Set(8);
	_delay_ms(255);
	Num_Set(9);
	_delay_ms(255);
}

/*
 * UART
 */
static int uart_putchar1(char ch,FILE*stream)
{
	if(ch=='\n'){uart_putchar1('\r',stream);}
	while ((UCSR1A & (1 << UDRE1)) == 0) {};
	UDR1=ch;
	return 0;
}

static int uart_getchar1(FILE*stream)
{
	char temp;
	while ((UCSR1A & (1 << RXC1)) == 0) {};
	temp=UDR1;
	uart_putchar1(temp,stream);
	return(temp);
}

static FILE uart_stdout1=FDEV_SETUP_STREAM(uart_putchar1,NULL,_FDEV_SETUP_WRITE);
static FILE uart_stdin1=FDEV_SETUP_STREAM(NULL,uart_getchar1,_FDEV_SETUP_READ);

static void UART_Init(void){
	
	UCSR1B|=(1<<RXEN1);
	UCSR1B|=(1<<TXEN1);
	UCSR1B|=(1<<RXCIE1);
	UCSR1C|=(1<<UCSZ11)|(1<<UCSZ10);
	
	UBRR1H=((((F_CPU / (UART_BAUDRATE * 16UL))) - 1)>>8);
	UBRR1L=(((F_CPU / (UART_BAUDRATE * 16UL))) - 1);	
}

/*
 * Timer
 */

static void TIM0_Init(void){
	TCCR0|=(1<<CS02)|(0<<CS01)|(1<<CS00);
	TCCR0|=(0<<WGM01)|(0<<WGM00);
	TCCR0|=(0<<COM01)|(0<<COM00);
	TIMSK|=1<<TOIE0;
	TCNT0=0x00;
}

/*
 * Main Function
 */

int main(void){
	LED_Init();

	TIM0_Init();
	
	UART_Init();
	stdout=&uart_stdout1;
	stdin=&uart_stdin1;

	//sei();
	
	while(1){
		//printf("ATMega128a Sialan!!\n");
		//Run_Blink();
		//_delay_ms(255);
		
		//Disp_Off_All();
		//Num_Set(3);
		//P_D5_A &= ~(1 << D5_A);
		//f_delay(n_delay);
		
		//Disp_Off_All();
		//Num_Set(5);
		//P_D5_B &= ~(1 << D5_B);
		//f_delay(n_delay);
		
		//Disp_Off_All();
		//Num_Set(7);
		//P_D5_C &= ~(1 << D5_C);
		//f_delay(n_delay);
		
	};
}

/*
 * Interrupt Vector Callback
 */

ISR(TIMER0_OVF_vect){
	Run_Blink();
	TCNT0=0x00;
	return;
}

ISR(USART0_RX_vect){
	return;
}

