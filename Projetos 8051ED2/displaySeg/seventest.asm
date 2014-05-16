
_main:
	MOV SP+0, #128
;seventest.c,1 :: 		void main() {
;seventest.c,7 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;seventest.c,8 :: 		P3_3_bit=1;  //desligado
	SETB P3_3_bit+0
;seventest.c,9 :: 		P0=0xFF; //zerado
	MOV P0+0, #255
;seventest.c,11 :: 		for(;;){
L_main0:
;seventest.c,12 :: 		P3_2_bit = 0; //ligando
	CLR P3_2_bit+0
;seventest.c,13 :: 		P3_3_bit = 1; //deseligado
	SETB P3_3_bit+0
;seventest.c,14 :: 		P0=0xFF; //zerado
	MOV P0+0, #255
;seventest.c,16 :: 		for(a=0; a<10;a++){
	MOV main_a_L0+0, #0
	MOV main_a_L0+1, #0
L_main3:
	CLR C
	MOV A, main_a_L0+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_a_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main4
;seventest.c,17 :: 		P0=setseg[a];
	MOV A, #main_setseg_L0+0
	ADD A, main_a_L0+0
	MOV R1, A
	MOV A, hi(#main_setseg_L0+0)
	ADDC A, main_a_L0+1
	MOV R2, A
	MOV 130, 1
	MOV 131, 2
	CLR A
	MOVC A, @A+DPTR
	MOV R0, A
	MOV P0+0, 0
;seventest.c,18 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;seventest.c,16 :: 		for(a=0; a<10;a++){
	MOV A, #1
	ADD A, main_a_L0+0
	MOV main_a_L0+0, A
	MOV A, #0
	ADDC A, main_a_L0+1
	MOV main_a_L0+1, A
;seventest.c,19 :: 		}
	SJMP L_main3
L_main4:
;seventest.c,20 :: 		P3_2_bit = 1; //Desligado
	SETB P3_2_bit+0
;seventest.c,21 :: 		P3_3_bit = 0; //ligando
	CLR P3_3_bit+0
;seventest.c,22 :: 		P0=0xFF; //zerado
	MOV P0+0, #255
;seventest.c,24 :: 		for(a=9;a>=0;a--){
	MOV main_a_L0+0, #9
	MOV main_a_L0+1, #0
L_main6:
	CLR C
	MOV A, main_a_L0+0
	SUBB A, #0
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_a_L0+1
	XRL A, #128
	SUBB A, R0
	JC L_main7
;seventest.c,25 :: 		P0=setseg[a];
	MOV A, #main_setseg_L0+0
	ADD A, main_a_L0+0
	MOV R1, A
	MOV A, hi(#main_setseg_L0+0)
	ADDC A, main_a_L0+1
	MOV R2, A
	MOV 130, 1
	MOV 131, 2
	CLR A
	MOVC A, @A+DPTR
	MOV R0, A
	MOV P0+0, 0
;seventest.c,26 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;seventest.c,24 :: 		for(a=9;a>=0;a--){
	CLR C
	MOV A, main_a_L0+0
	SUBB A, #1
	MOV main_a_L0+0, A
	MOV A, main_a_L0+1
	SUBB A, #0
	MOV main_a_L0+1, A
;seventest.c,27 :: 		}
	SJMP L_main6
L_main7:
;seventest.c,28 :: 		}
	LJMP L_main0
;seventest.c,29 :: 		}
	SJMP #254
; end of _main
