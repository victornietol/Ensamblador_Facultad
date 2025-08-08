;
; Codigo.asm
;
; Created: 28/09/2023 08:16:17 p. m.
; Author : Victor
;


; Replace with your application code
		; Enunciado
		; Inicio
		; Configuracion de puertos
		LDI R16, 0X00
		LDI R17, 0X0F
		LDI R18, 0XFF
		OUT DDRD, R16
		OUT PORTD, R17
		OUT DDRB, R18
		OUT PORTB, R16

LEER:
		; Leer valores
		IN R19, PIND
		SWAP R19
		COM R19

		; Mostrar valores
		OUT PORTB, R19

		; Fin
		RJMP LEER