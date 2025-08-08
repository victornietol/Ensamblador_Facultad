;
; Practica4.asm
;
; Created: 12/09/2023 05:19:44 p. m.
; Author : Alumno
;


; Replace with your application code
		LDI R16, 0XFF
		OUT DDRD, R16
		LDI R17, 0X05

CUENTA:	OUT PORTD, R17
		CLR R18 ;R19, R20
		CLR R19
		CLR R20

A:		INC R18
		CPSE R18, R20
			RJMP A
			INC R19
			CPSE R19, R20
			RJMP A
		INC R17
			RJMP CUENTA