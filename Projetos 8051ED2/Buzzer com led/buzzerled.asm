
_main:
	MOV SP+0, #128
;buzzerled.c,1 :: 		void main()
;buzzerled.c,4 :: 		for(;;) //laço infinito
L_main0:
;buzzerled.c,6 :: 		if(!P1_0_bit) //teste tecla P1.0
	JNB P1_0_bit+0, #3
	NOP
	LJMP L_main3
;buzzerled.c,8 :: 		for(i=0;i<100;i++){
	MOV main_i_L0+0, #0
	MOV main_i_L0+1, #0
L_main4:
	CLR C
	MOV A, main_i_L0+0
	SUBB A, #100
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_i_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main5
;buzzerled.c,9 :: 		P1_4_bit = 0;
	CLR P1_4_bit+0
;buzzerled.c,10 :: 		P0_1_bit = 0;
	CLR P0_1_bit+0
;buzzerled.c,11 :: 		for(f=0;f<1000;f++){}
	MOV main_f_L0+0, #0
	MOV main_f_L0+1, #0
L_main7:
	CLR C
	MOV A, main_f_L0+0
	SUBB A, #232
	MOV A, #3
	XRL A, #128
	MOV R0, A
	MOV A, main_f_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main8
	MOV A, #1
	ADD A, main_f_L0+0
	MOV main_f_L0+0, A
	MOV A, #0
	ADDC A, main_f_L0+1
	MOV main_f_L0+1, A
	SJMP L_main7
L_main8:
;buzzerled.c,12 :: 		P1_4_bit = 1;
	SETB P1_4_bit+0
;buzzerled.c,13 :: 		P0_1_bit = 1;
	SETB P0_1_bit+0
;buzzerled.c,14 :: 		for(f=0;f<1000;f++){}
	MOV main_f_L0+0, #0
	MOV main_f_L0+1, #0
L_main10:
	CLR C
	MOV A, main_f_L0+0
	SUBB A, #232
	MOV A, #3
	XRL A, #128
	MOV R0, A
	MOV A, main_f_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main11
	MOV A, #1
	ADD A, main_f_L0+0
	MOV main_f_L0+0, A
	MOV A, #0
	ADDC A, main_f_L0+1
	MOV main_f_L0+1, A
	SJMP L_main10
L_main11:
;buzzerled.c,8 :: 		for(i=0;i<100;i++){
	MOV A, #1
	ADD A, main_i_L0+0
	MOV main_i_L0+0, A
	MOV A, #0
	ADDC A, main_i_L0+1
	MOV main_i_L0+1, A
;buzzerled.c,15 :: 		}
	LJMP L_main4
L_main5:
;buzzerled.c,16 :: 		}
L_main3:
;buzzerled.c,17 :: 		if(!P1_1_bit) //teste tecla P1.1
	JB P1_1_bit+0, L_main13
	NOP
;buzzerled.c,19 :: 		P1_4_bit = 1;
	SETB P1_4_bit+0
;buzzerled.c,20 :: 		P0_1_bit = 0;
	CLR P0_1_bit+0
;buzzerled.c,21 :: 		}
L_main13:
;buzzerled.c,22 :: 		if(!P1_2_bit) //teste tecla P1.2
	JB P1_2_bit+0, L_main14
	NOP
;buzzerled.c,24 :: 		P1_4_bit = 0;   //liga buzzer
	CLR P1_4_bit+0
;buzzerled.c,25 :: 		P0_1_bit = 1;  //deliga led 0
	SETB P0_1_bit+0
;buzzerled.c,26 :: 		}
L_main14:
;buzzerled.c,28 :: 		if(!P1_3_bit) //teste tecla P1.2
	JB P1_3_bit+0, L_main15
	NOP
;buzzerled.c,30 :: 		P1_4_bit = 1;   //liga buzzer
	SETB P1_4_bit+0
;buzzerled.c,31 :: 		P0_1_bit = 1;  //deliga led 0
	SETB P0_1_bit+0
;buzzerled.c,32 :: 		}
L_main15:
;buzzerled.c,34 :: 		}
	LJMP L_main0
;buzzerled.c,36 :: 		}
	SJMP #254
; end of _main
