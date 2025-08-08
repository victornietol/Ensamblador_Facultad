;
; circuito1.asm
;
; Created: 22/10/2023 09:44:39 p. m.
; Author : Victor
;


; Replace with your application code
		RJMP INICIO
		.ORG 0X0002
		RJMP RSI_INT0
INICIO:
		;Habilitar Interrupciones Externas
		SEI

		;Configura puertos
		SER R16
		OUT DDRB, R16
		LDI R17, 0X55
		OUT PORTB, R17
		SBI PORTD, 2

		;Configura Interrupciones externas
		SBI EIMSK, 0
		LDI R18, 0X03
		STS EICRA, R18
		CLR R19
		OUT EIFR, R19
FIN:
		RJMP FIN
RSI_INT0:
		INC R17
		OUT PORTB, R17
		RETI
