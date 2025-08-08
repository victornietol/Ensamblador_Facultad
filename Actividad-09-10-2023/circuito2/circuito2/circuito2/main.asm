;
; circuito2.asm
;
; Created: 11/10/2023 09:41:59 p. m.
; Author : Victor
;


; Replace with your application code
		SBI DDRB, 5
PARPADEO:
		CBI PORTB, 5
		RCALL RETARDO
		RCALL RETARDO
		SBI PORTB, 5
		RCALL RETARDO
		RCALL RETARDO
		RJMP PARPADEO
RETARDO:
		CLR R0
		CLR R1
		CLR R2
B:
		INC R0
		CPSE R0, R2
		RJMP B
		INC R1
		CPSE R1, R2
		RJMP B
		RET
