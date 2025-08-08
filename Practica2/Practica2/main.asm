;
; Practica2.asm
;
; Created: 29/08/2023 05:25:33 p. m.
; Author : Alumno
;


; Replace with your application code
		LDI		R16, 0XFF    
		OUT		DDRD, R16	; Configura Puerto D como salida.
		LDI		R17, 0X00	
		OUT		DDRB, R17	; Configura Puerto B como entrada.
		OUT		PORTB, R17	; Activa pull-up en os pines del Puerto B.
valor:	IN		R18,  PINB	; Obtiene los valores logicos aplicados al Puerto B.
		OUT		PORTD,  R18	; Muestra el valor por los pines del Puerto D.
		RJMP	valor
