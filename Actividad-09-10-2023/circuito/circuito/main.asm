;
; circuito.asm
;
; Created: 09/10/2023 03:02:08 p. m.
; Author : Victor
;


; Replace with your application code
		; Configuracion puertos
		LDI R16, 0XFF
		OUT DDRD, R16
		LDI R17, 0X20 ; Valor PB5
		LDI R21, 0X00 ; Valor apagado
		LDI R22, 0X00 ; valor anterior

SALIDA:	
		CPSE R22, R21
		RJMP ENCENDER
		RJMP APAGAR

ENCENDER: 
		LDI R22, 0X00
		OUT PORTD, R17
		CLR R18
		CLR R19
		CLR R20
		RJMP RETARDO

APAGAR:
		LDI R22, 0X20
		OUT PORTD, R21
		CLR R18
		CLR R19
		CLR R20
		RJMP RETARDO
		
RETARDO:
		INC R18
		CPSE R18, R20
			RJMP RETARDO
			INC R19
			CPSE R19, R20
				RJMP RETARDO
		RJMP SALIDA