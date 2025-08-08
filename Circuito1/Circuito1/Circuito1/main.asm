;
; Circuito1.asm
;
; Created: 24/09/2023 02:11:33 p. m.
; Author : Victor
;


; Replace with your application code
		LDI R16, 0XFF
		OUT DDRB, R16

		LDI R17, 0X04
		OUT PORTB, R17

FIN:	RJMP FIN
