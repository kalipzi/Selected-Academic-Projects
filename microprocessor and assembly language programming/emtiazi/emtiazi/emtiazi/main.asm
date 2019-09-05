;
; emtiazi.asm
;
; Created: 04/11/1395 02:52:40 ب.ظ
; Author : Zahra
;

.INCLUDE"M32DEF.INC"
.ORG 0X00

LDI R16,0XFF
OUT DDRA,R16
OUT DDRB,R16

LDI R16,9
OUT PORTA,R16
OUT PORTB,R16

LDI R16,0X00
OUT DDRA,R16
OUT DDRB,R16

LDI R16,0XFF
OUT DDRC,R16
OUT DDRD,R16

IN R17,PINA
IN R18,PINB

LDI R16,0X00
LDI ZL,0X00
LDI ZH,0X00
LDI ZL,LOW(MYDATA<<1)
LDI ZH,HIGH(MYDATA<<1)
ADD ZL,R17
ADC ZH,R16
LPM R17,Z


LDI ZL,0X00
LDI ZH,0X00
LDI ZL,LOW(MYDATA<<1)
LDI ZH,HIGH(MYDATA<<1)

ADD ZL,R18
ADC ZH,R16
LPM R18,Z

OUT PORTD,R17
OUT PORTC,R18
RJMP DELAY


START:
IN R17,PINA
IN R18,PINB

ADD R17,R18
CPI R17,10
BRSH CONTINUE

LDI R18,0
RJMP END

CONTINUE:
SUBI R17,10
LDI R18,1
RJMP END


END:
LDI R16,0X00
LDI ZL,LOW(MYDATA<<1)
LDI ZH,HIGH(MYDATA<<1)
ADD ZL,R17
ADC ZH,R16
LPM R17,Z


LDI ZL,0X00
LDI ZH,0X00
LDI ZL,LOW(MYDATA<<1)
LDI ZH,HIGH(MYDATA<<1)

ADD ZL,R18
ADC ZH,R16
LPM R18,Z

OUT PORTD,R17
OUT PORTC,R18

RJMP FINISH


DELAY:
LDI R24,0X01
LOOP1:
LDI R23,0X01
LOOP2:
DEC R23
BRNE LOOP2
DEC R24
BRNE  LOOP1
RJMP START

FINISH: RJMP FINISH



.ORG 0X500
MYDATA: .DB  0X7E , 0X30 , 0X6D , 0X79 , 0X33 , 0X5B ,0X5F , 0X70 , 0X7F ,0X7B