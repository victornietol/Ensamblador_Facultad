;
; Practica3.asm
;
; Created: 05/09/2023 05:13:38 p. m.
; Author : Alumno
;


; Programa que realice una lectura por PD[0:3] y la muestre por PD[4:7]
		LDI R16, 0XF0
		OUT DDRD, R16

		LDI R17, 0X0F
		OUT PORTD, R17

FIN:	IN R18, PIND
		SWAP R18
		ORI	R18, 0X0F

		OUT PORTD, R18
		RJMP FIN
