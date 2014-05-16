
_main:
	MOV SP+0, #128
;PiscaLed2.c,1 :: 		void main() {
;PiscaLed2.c,2 :: 		for(;;){
L_main0:
;PiscaLed2.c,3 :: 		if(P1_0_bit==0){
	JB P1_0_bit+0, L_main3
	NOP
;PiscaLed2.c,4 :: 		P0_0_bit = 0;
	CLR P0_0_bit+0
;PiscaLed2.c,5 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
;PiscaLed2.c,6 :: 		while(P1_0_bit==1){
L_main4:
	JNB P1_0_bit+0, L_main5
	NOP
;PiscaLed2.c,7 :: 		}
	SJMP L_main4
L_main5:
;PiscaLed2.c,8 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
;PiscaLed2.c,9 :: 		}else{
	SJMP L_main6
L_main3:
;PiscaLed2.c,10 :: 		P0_0_bit = 1;
	SETB P0_0_bit+0
;PiscaLed2.c,11 :: 		}
L_main6:
;PiscaLed2.c,12 :: 		}
	SJMP L_main0
;PiscaLed2.c,13 :: 		}
	SJMP #254
; end of _main
