;
; practica1.asm
;
; Created: 23/08/2023 01:36:54 a. m.
; Author : Victor
;


; Replace with your application code
		LDI		R16,		0XFF
		OUT		DDRB,		R16
		LDI		R17,		0X0F
		OUT		PORTB,		R17
Fin:	RJMP	Fin
