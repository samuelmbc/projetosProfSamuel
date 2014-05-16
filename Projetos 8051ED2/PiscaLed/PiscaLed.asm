
_main:
	MOV SP+0, #128
;PiscaLed.c,1 :: 		void main() {
;PiscaLed.c,2 :: 		for(;;){
L_main0:
;PiscaLed.c,4 :: 		for(i=0;i<=10;i++){  // bit a bit pino a pino
	MOV main_i_L1+0, #0
	MOV main_i_L1+1, #0
L_main3:
	SETB C
	MOV A, main_i_L1+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L1+1
	XRL A, #128
	SUBB A, R0
	JNC L_main4
;PiscaLed.c,5 :: 		P0_0_bit = 0; // acende o led 1
	CLR P0_0_bit+0
;PiscaLed.c,6 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,7 :: 		P0_0_bit = 1; // acende o led 1
	SETB P0_0_bit+0
;PiscaLed.c,8 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,4 :: 		for(i=0;i<=10;i++){  // bit a bit pino a pino
	MOV A, #1
	ADD A, main_i_L1+0
	MOV main_i_L1+0, A
	MOV A, #0
	ADDC A, main_i_L1+1
	MOV main_i_L1+1, A
;PiscaLed.c,9 :: 		}
	SJMP L_main3
L_main4:
;PiscaLed.c,10 :: 		for(i=0;i<=10;i++){  //usando numeros decimais
	MOV main_i_L1+0, #0
	MOV main_i_L1+1, #0
L_main6:
	SETB C
	MOV A, main_i_L1+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L1+1
	XRL A, #128
	SUBB A, R0
	JNC L_main7
;PiscaLed.c,11 :: 		P0 = 0; // acende o led 1
	MOV P0+0, #0
;PiscaLed.c,12 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,13 :: 		P0 = 254; // acende o led 1
	MOV P0+0, #254
;PiscaLed.c,14 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,10 :: 		for(i=0;i<=10;i++){  //usando numeros decimais
	MOV A, #1
	ADD A, main_i_L1+0
	MOV main_i_L1+0, A
	MOV A, #0
	ADDC A, main_i_L1+1
	MOV main_i_L1+1, A
;PiscaLed.c,15 :: 		}
	SJMP L_main6
L_main7:
;PiscaLed.c,16 :: 		for(i=0;i<=10;i++){ //usando comandos com bits
	MOV main_i_L1+0, #0
	MOV main_i_L1+1, #0
L_main9:
	SETB C
	MOV A, main_i_L1+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L1+1
	XRL A, #128
	SUBB A, R0
	JNC L_main10
;PiscaLed.c,17 :: 		P0 = 0b00000000; // acende o led 1
	MOV P0+0, #0
;PiscaLed.c,18 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,19 :: 		P0 = 0b00011010; // acende o led 1
	MOV P0+0, #26
;PiscaLed.c,20 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,16 :: 		for(i=0;i<=10;i++){ //usando comandos com bits
	MOV A, #1
	ADD A, main_i_L1+0
	MOV main_i_L1+0, A
	MOV A, #0
	ADDC A, main_i_L1+1
	MOV main_i_L1+1, A
;PiscaLed.c,21 :: 		}
	SJMP L_main9
L_main10:
;PiscaLed.c,23 :: 		for(i=0;i<=10;i++){ //usando comandos com hexadecimal
	MOV main_i_L1+0, #0
	MOV main_i_L1+1, #0
L_main12:
	SETB C
	MOV A, main_i_L1+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L1+1
	XRL A, #128
	SUBB A, R0
	JNC L_main13
;PiscaLed.c,24 :: 		P0 = 0x00; // acende o led 1
	MOV P0+0, #0
;PiscaLed.c,25 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,26 :: 		P0 = 0xff; // acende o led 1
	MOV P0+0, #255
;PiscaLed.c,27 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;PiscaLed.c,23 :: 		for(i=0;i<=10;i++){ //usando comandos com hexadecimal
	MOV A, #1
	ADD A, main_i_L1+0
	MOV main_i_L1+0, A
	MOV A, #0
	ADDC A, main_i_L1+1
	MOV main_i_L1+1, A
;PiscaLed.c,28 :: 		}
	SJMP L_main12
L_main13:
;PiscaLed.c,29 :: 		P0 = 255; // acende o led 1
	MOV P0+0, #255
;PiscaLed.c,30 :: 		}
	LJMP L_main0
;PiscaLed.c,31 :: 		}
	SJMP #254
; end of _main
