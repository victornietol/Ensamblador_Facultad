;
; circuito1.asm
;
; Created: 27/10/2023 01:03:24 a. m.
; Author : Victor
;


; Replace with your application code
		LDI R16, 0XFF
		OUT DDRB, R16

		LDI R17, 0XA5
		OUT PORTB, R17
FIN:	RJMP FIN