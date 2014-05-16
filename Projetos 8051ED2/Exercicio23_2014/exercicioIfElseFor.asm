
_main:
	MOV SP+0, #128
;exercicioIfElseFor.c,7 :: 		void main() {
;exercicioIfElseFor.c,9 :: 		for(;;){
L_main0:
;exercicioIfElseFor.c,10 :: 		if(P1_0_bit == 0){
	JB P1_0_bit+0, L_main3
	NOP
;exercicioIfElseFor.c,11 :: 		ligaBuzzer();
	LCALL _ligaBuzzer+0
;exercicioIfElseFor.c,12 :: 		}else{
	SJMP L_main4
L_main3:
;exercicioIfElseFor.c,13 :: 		Leds(250,1);
	MOV FARG_Leds_valorLed+0, #250
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #1
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,14 :: 		Leds(255,3);
	MOV FARG_Leds_valorLed+0, #255
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #3
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,15 :: 		}
L_main4:
;exercicioIfElseFor.c,16 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;exercicioIfElseFor.c,17 :: 		if(P1_1_bit == 0){
	JB P1_1_bit+0, L_main5
	NOP
;exercicioIfElseFor.c,18 :: 		ligaRele();
	LCALL _ligaRele+0
;exercicioIfElseFor.c,19 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;exercicioIfElseFor.c,20 :: 		desligaRele();
	LCALL _desligaRele+0
;exercicioIfElseFor.c,21 :: 		}else{
	SJMP L_main6
L_main5:
;exercicioIfElseFor.c,22 :: 		Leds(213,2); //100 = 0, 500 = 1, 1000=2
	MOV FARG_Leds_valorLed+0, #213
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #2
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,23 :: 		Leds(255,3);
	MOV FARG_Leds_valorLed+0, #255
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #3
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,24 :: 		}
L_main6:
;exercicioIfElseFor.c,25 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;exercicioIfElseFor.c,26 :: 		if(P1_2_bit == 0){
	JB P1_2_bit+0, L_main7
	NOP
;exercicioIfElseFor.c,27 :: 		ligaRele();
	LCALL _ligaRele+0
;exercicioIfElseFor.c,28 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;exercicioIfElseFor.c,29 :: 		ligaBuzzer();
	LCALL _ligaBuzzer+0
;exercicioIfElseFor.c,30 :: 		desligaRele();
	LCALL _desligaRele+0
;exercicioIfElseFor.c,31 :: 		}else{
	SJMP L_main8
L_main7:
;exercicioIfElseFor.c,32 :: 		Leds(94,2); //100 = 0, 500 = 1, 1000=2
	MOV FARG_Leds_valorLed+0, #94
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #2
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,33 :: 		Leds(255,3);
	MOV FARG_Leds_valorLed+0, #255
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #3
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,34 :: 		}
L_main8:
;exercicioIfElseFor.c,35 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;exercicioIfElseFor.c,36 :: 		if(P1_3_bit == 0){
	JB P1_3_bit+0, L_main9
	NOP
;exercicioIfElseFor.c,37 :: 		for(i=0;i<=10;i++){
	MOV main_i_L0+0, #0
	MOV main_i_L0+1, #0
L_main10:
	SETB C
	MOV A, main_i_L0+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main11
;exercicioIfElseFor.c,38 :: 		Leds(0,1);
	MOV FARG_Leds_valorLed+0, #0
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #1
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,39 :: 		Leds(255,1);
	MOV FARG_Leds_valorLed+0, #255
	MOV FARG_Leds_valorLed+1, #0
	MOV FARG_Leds_condTempo+0, #1
	MOV FARG_Leds_condTempo+1, #0
	LCALL _Leds+0
;exercicioIfElseFor.c,37 :: 		for(i=0;i<=10;i++){
	MOV A, #1
	ADD A, main_i_L0+0
	MOV main_i_L0+0, A
	MOV A, #0
	ADDC A, main_i_L0+1
	MOV main_i_L0+1, A
;exercicioIfElseFor.c,40 :: 		}
	SJMP L_main10
L_main11:
;exercicioIfElseFor.c,41 :: 		}
L_main9:
;exercicioIfElseFor.c,42 :: 		}
	LJMP L_main0
;exercicioIfElseFor.c,43 :: 		}
	SJMP #254
; end of _main

_ligaBuzzer:
;exercicioIfElseFor.c,46 :: 		void ligaBuzzer(){
;exercicioIfElseFor.c,47 :: 		P1_4_bit = 0;
	CLR P1_4_bit+0
;exercicioIfElseFor.c,48 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
;exercicioIfElseFor.c,49 :: 		desligaBuzzer();
	LCALL _desligaBuzzer+0
;exercicioIfElseFor.c,50 :: 		}
	RET
; end of _ligaBuzzer

_desligaBuzzer:
;exercicioIfElseFor.c,51 :: 		void desligaBuzzer(){P1_4_bit = 1;}
	SETB P1_4_bit+0
	RET
; end of _desligaBuzzer

_ligaRele:
;exercicioIfElseFor.c,53 :: 		void ligaRele(){P1_5_bit = 0; }
	CLR P1_5_bit+0
	RET
; end of _ligaRele

_desligaRele:
;exercicioIfElseFor.c,54 :: 		void desligaRele(){P1_5_bit = 1; }
	SETB P1_5_bit+0
	RET
; end of _desligaRele

_Leds:
;exercicioIfElseFor.c,56 :: 		void Leds(int valorLed, int condTempo){
;exercicioIfElseFor.c,57 :: 		P0 = valorLed;
	MOV P0+0, FARG_Leds_valorLed+0
;exercicioIfElseFor.c,58 :: 		if(condTempo == 0)
	MOV A, FARG_Leds_condTempo+0
	ORL A, FARG_Leds_condTempo+1
	JNZ L_Leds13
;exercicioIfElseFor.c,59 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
L_Leds13:
;exercicioIfElseFor.c,60 :: 		if(condTempo == 1)
	MOV A, #1
	XRL A, FARG_Leds_condTempo+0
	JNZ L__Leds16
	MOV A, #0
	XRL A, FARG_Leds_condTempo+1
L__Leds16:
	JNZ L_Leds14
;exercicioIfElseFor.c,61 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
L_Leds14:
;exercicioIfElseFor.c,62 :: 		if(condTempo == 2)
	MOV A, #2
	XRL A, FARG_Leds_condTempo+0
	JNZ L__Leds17
	MOV A, #0
	XRL A, FARG_Leds_condTempo+1
L__Leds17:
	JNZ L_Leds15
;exercicioIfElseFor.c,63 :: 		Delay_ms(1000);
	MOV R5, 8
	MOV R6, 1
	MOV R7, 245
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
L_Leds15:
;exercicioIfElseFor.c,64 :: 		}
	RET
; end of _Leds
