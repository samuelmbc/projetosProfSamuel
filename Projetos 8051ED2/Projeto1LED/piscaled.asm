
_main:
	MOV SP+0, #128
;piscaled.c,1 :: 		void main() {
;piscaled.c,2 :: 		for(;;){
L_main0:
;piscaled.c,3 :: 		P0_1_bit = 0; // acende o led pino 1 port 0
	CLR P0_1_bit+0
;piscaled.c,4 :: 		P0_7_bit = 0; // acende o led pino 1 port 0
	CLR P0_7_bit+0
;piscaled.c,5 :: 		Delay_ms(1000);  //função para aguardar 500 milessegundos
	MOV R5, 8
	MOV R6, 1
	MOV R7, 245
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;piscaled.c,6 :: 		P0_1_bit = 1; // apaga o led pino 1 port 0
	SETB P0_1_bit+0
;piscaled.c,7 :: 		P0_7_bit = 1; // apaga o led pino 1 port 0
	SETB P0_7_bit+0
;piscaled.c,8 :: 		Delay_ms(500);  //função para aguardar 500 milessegundos
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;piscaled.c,9 :: 		}
	SJMP L_main0
;piscaled.c,10 :: 		}
	SJMP #254
; end of _main
