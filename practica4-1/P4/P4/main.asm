;
; P4.asm
;
; Created: 12/09/2023 02:27:15 a. m.
; Author : Victor
;


; Replace with your application code
		LDI R16, 0XFF
		OUT DDRB, R16

		LDI R18, 0X00   ; valor incial
		;OUT PORTB, R18
		SALIDA:  ; Cada vez que llegue a FF R17 se sumará uno al conteo final (salida leds)
		OUT PORTB, R18
		INC R18
		CLR R17
		CONTEO:  ; Conteo para el retardo
		INC R17
		;OUT PORTB, R17
		CPSE R17, R16  ; R17 (conteo) = R16 (0xFF) , cuando llegue a 1
		RJMP CONTEO
		RJMP SALIDA