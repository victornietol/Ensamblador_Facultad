;
; circuito2.asm
;
; Created: 27/10/2023 02:36:05 a. m.
; Author : Victor
;


; Replace with your application code
		; Configuracion de puertos
		LDI R16, 0X00  ; entrada PB
		LDI R17, 0XFF  ; pull up PB
		OUT DDRB, R16
		OUT PORTB, R17
		OUT DDRD, R17 ; SALIDA PD
		
		;OUT PORTD, R16 ;VALOR INICIAL

		; Lectura
LEER:	IN R18, PINB
		COM R18
		OUT PORTD, R18
		RJMP LEER 
		

