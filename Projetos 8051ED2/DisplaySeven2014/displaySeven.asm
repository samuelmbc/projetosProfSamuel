
_main:
	MOV SP+0, #128
;displaySeven.c,1 :: 		void main(){
;displaySeven.c,3 :: 		char vetDisplay[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0x88,0x83,0xC6,0xA1,0x86,0x8E,0xBF};
	MOV 130, #?ICSmain_vetDisplay_L0+0
	MOV 131, hi(#?ICSmain_vetDisplay_L0+0)
	MOV R0, #main_vetDisplay_L0+0
	MOV R1, #17
	LCALL ___CC2D+0
;displaySeven.c,4 :: 		P3_2_bit=1;      //desligado   display 1 (escrito na Placa)
	SETB P3_2_bit+0
;displaySeven.c,5 :: 		P3_3_bit=1;      //desligado   display 2 (escrito na Placa)
	SETB P3_3_bit+0
;displaySeven.c,6 :: 		P0 = 0xFF;
	MOV P0+0, #255
;displaySeven.c,7 :: 		for(;;){
L_main0:
;displaySeven.c,8 :: 		P3_2_bit=0;      //desligado   display 1 (escrito na Placa)
	CLR P3_2_bit+0
;displaySeven.c,9 :: 		P3_3_bit=0;      //Ligado   display 2 (escrito na Placa)
	CLR P3_3_bit+0
;displaySeven.c,10 :: 		for(i=0;i<10;i++){
	MOV main_i_L0+0, #0
	MOV main_i_L0+1, #0
L_main3:
	CLR C
	MOV A, main_i_L0+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main4
;displaySeven.c,11 :: 		P0 = vetDisplay[i];     //a cada incremento de i passa traz uma posição do verto.
	MOV A, #main_vetDisplay_L0+0
	ADD A, main_i_L0+0
	MOV R0, A
	MOV P0+0, @R0
;displaySeven.c,12 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;displaySeven.c,10 :: 		for(i=0;i<10;i++){
	MOV A, #1
	ADD A, main_i_L0+0
	MOV main_i_L0+0, A
	MOV A, #0
	ADDC A, main_i_L0+1
	MOV main_i_L0+1, A
;displaySeven.c,13 :: 		}
	SJMP L_main3
L_main4:
;displaySeven.c,14 :: 		P0 = 0xBF;
	MOV P0+0, #191
;displaySeven.c,15 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;displaySeven.c,16 :: 		for(i=9;i>=0;i--){
	MOV main_i_L0+0, #9
	MOV main_i_L0+1, #0
L_main6:
	CLR C
	MOV A, main_i_L0+0
	SUBB A, #0
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L0+1
	XRL A, #128
	SUBB A, R0
	JC L_main7
;displaySeven.c,17 :: 		P0 = vetDisplay[i];     //a cada incremento de i passa traz uma posição do verto.
	MOV A, #main_vetDisplay_L0+0
	ADD A, main_i_L0+0
	MOV R0, A
	MOV P0+0, @R0
;displaySeven.c,18 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;displaySeven.c,16 :: 		for(i=9;i>=0;i--){
	CLR C
	MOV A, main_i_L0+0
	SUBB A, #1
	MOV main_i_L0+0, A
	MOV A, main_i_L0+1
	SUBB A, #0
	MOV main_i_L0+1, A
;displaySeven.c,19 :: 		}
	SJMP L_main6
L_main7:
;displaySeven.c,20 :: 		}
	LJMP L_main0
;displaySeven.c,21 :: 		}
	SJMP #254
; end of _main
