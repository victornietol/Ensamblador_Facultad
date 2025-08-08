;
; Tarea2.asm
;
; Created: 24/10/2023 12:02:58 a. m.
; Author : Victor
;


; Replace with your application code
		.ORG 0X00
		RJMP INICIO
		.ORG 0X002
		RJMP RSI_INT0
		.ORG 0X0004
		RJMP RSI_INT1

INICIO:
		; Habilitar interrupciones globales
		SEI

		; Inicializar el SP
		LDI R16, 0X08
		LDI R17, 0XFF
		OUT SPH, R16
		OUT SPL, R17

		; Configuracion de puertos
		CBI DDRD, 2		;PD2 -> entrada
		SBI PORTD, 2	;PD2 -> pull-up
		CBI DDRD, 3		;PD3 -> entrada
		SBI PORTD,3		;PD3 -> pull-up
		OUT DDRC, R17	;PC -> salida

		; Configuracion de interrupciones externas
		LDI R18, 0X03
		LDI R19, 0X0E  ; INT0 flanco bajada, INT1 flanco subida. EICRA = 1110
		LDI R20, 0X00  ; Bandera 

		OUT EIMSK, R18
		STS EICRA, R19
		OUT EIFR, R20

		; Mostrar valor inicial
		OUT PORTC, R20

FIN:	RJMP FIN
		
RSI_INT0:
		LDI R20, 0X00
		LDI R21, 0X10
		RJMP MOSTRAR_INCREMENTO

RSI_INT1:
		LDI R20, 0X00
		LDI R21, 0X10
		RJMP MOSTRAR_DECREMENTO

MOSTRAR_INCREMENTO: OUT PORTC, R20
		RCALL RETARDO

		CPSE R20, R21
		RJMP NO_INC
		RETI
NO_INC:		INC R20
		RJMP MOSTRAR_INCREMENTO

MOSTRAR_DECREMENTO: OUT PORTC, R21
		RCALL RETARDO
		CPSE R21, R20
		RJMP NO_DEC
		RETI
NO_DEC:		DEC R21
		RJMP MOSTRAR_DECREMENTO

RETARDO:
		CLR R0
		CLR R1
		CLR R2
A:		INC R0
		CPSE R0, R2
		RJMP A
		INC R1
		CPSE R1, R2
		RJMP A
		RET