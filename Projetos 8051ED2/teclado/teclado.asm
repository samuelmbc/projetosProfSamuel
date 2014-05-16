
_main:
	MOV SP+0, #128
;teclado.c,1 :: 		void main() {
;teclado.c,4 :: 		char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
	MOV 130, #?ICSmain_setseg_L0+0
	MOV 131, hi(#?ICSmain_setseg_L0+0)
	MOV R0, #main_setseg_L0+0
	MOV R1, #10
	LCALL ___CC2D+0
;teclado.c,5 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,6 :: 		P3_3_bit=0;  //desligado
	CLR P3_3_bit+0
;teclado.c,8 :: 		for(;;)
L_main0:
;teclado.c,9 :: 		{      P1_1_bit = 0;
	CLR P1_1_bit+0
;teclado.c,10 :: 		while(P1_5_bit==0) //teste 0
L_main3:
	JB P1_5_bit+0, L_main4
	NOP
;teclado.c,11 :: 		{  P0 = setseg[1];
	MOV P0+0, main_setseg_L0+1
;teclado.c,12 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,13 :: 		}
	SJMP L_main3
L_main4:
;teclado.c,14 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,15 :: 		while(P1_6_bit==0) //teste 2
L_main5:
	JB P1_6_bit+0, L_main6
	NOP
;teclado.c,16 :: 		{   P0 = setseg[2];
	MOV P0+0, main_setseg_L0+2
;teclado.c,17 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,18 :: 		}
	SJMP L_main5
L_main6:
;teclado.c,19 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,20 :: 		while(P1_7_bit==0) //teste 3
L_main7:
	JB P1_7_bit+0, L_main8
	NOP
;teclado.c,21 :: 		{   P0 = setseg[3];
	MOV P0+0, main_setseg_L0+3
;teclado.c,22 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,23 :: 		}
	SJMP L_main7
L_main8:
;teclado.c,24 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,27 :: 		P1_1_bit = 1;
	SETB P1_1_bit+0
;teclado.c,28 :: 		P1_2_bit = 0;
	CLR P1_2_bit+0
;teclado.c,29 :: 		while(!P1_5_bit) //teste 4
L_main9:
	JB P1_5_bit+0, L_main10
	NOP
;teclado.c,30 :: 		{  P0 = setseg[4];
	MOV P0+0, main_setseg_L0+4
;teclado.c,31 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,32 :: 		}
	SJMP L_main9
L_main10:
;teclado.c,33 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,35 :: 		while(!P1_6_bit) //teste 5
L_main11:
	JB P1_6_bit+0, L_main12
	NOP
;teclado.c,36 :: 		{   P0 = setseg[5];
	MOV P0+0, main_setseg_L0+5
;teclado.c,37 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,38 :: 		}
	SJMP L_main11
L_main12:
;teclado.c,39 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,41 :: 		while(!P1_7_bit) //teste 6
L_main13:
	JB P1_7_bit+0, L_main14
	NOP
;teclado.c,42 :: 		{   P0 = setseg[6];
	MOV P0+0, main_setseg_L0+6
;teclado.c,43 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,44 :: 		}
	SJMP L_main13
L_main14:
;teclado.c,45 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,48 :: 		P1_2_bit = 1;
	SETB P1_2_bit+0
;teclado.c,49 :: 		P1_3_bit = 0;
	CLR P1_3_bit+0
;teclado.c,50 :: 		while(!P1_5_bit) //teste 7
L_main15:
	JB P1_5_bit+0, L_main16
	NOP
;teclado.c,51 :: 		{  P0 = setseg[7];
	MOV P0+0, main_setseg_L0+7
;teclado.c,52 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,53 :: 		}
	SJMP L_main15
L_main16:
;teclado.c,54 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,56 :: 		while(!P1_6_bit) //teste 8
L_main17:
	JB P1_6_bit+0, L_main18
	NOP
;teclado.c,57 :: 		{  P0 = setseg[8];
	MOV P0+0, main_setseg_L0+8
;teclado.c,58 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,59 :: 		}
	SJMP L_main17
L_main18:
;teclado.c,60 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,62 :: 		while(!P1_7_bit) //teste 9
L_main19:
	JB P1_7_bit+0, L_main20
	NOP
;teclado.c,63 :: 		{ P0 = setseg[9];
	MOV P0+0, main_setseg_L0+9
;teclado.c,64 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,65 :: 		}
	SJMP L_main19
L_main20:
;teclado.c,66 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,68 :: 		P1_3_bit = 1;
	SETB P1_3_bit+0
;teclado.c,69 :: 		P1_4_bit = 0;
	CLR P1_4_bit+0
;teclado.c,70 :: 		if(!P1_5_bit) //teste #
	JB P1_5_bit+0, L_main21
	NOP
;teclado.c,71 :: 		P0 = setseg[1];
	MOV P0+0, main_setseg_L0+1
L_main21:
;teclado.c,72 :: 		while(!P1_6_bit) //teste 0
L_main22:
	JB P1_6_bit+0, L_main23
	NOP
;teclado.c,73 :: 		{  P0 = setseg[0];
	MOV P0+0, main_setseg_L0+0
;teclado.c,74 :: 		P3_2_bit=0;  //desligado
	CLR P3_2_bit+0
;teclado.c,75 :: 		}
	SJMP L_main22
L_main23:
;teclado.c,76 :: 		P3_2_bit=1;  //desligado
	SETB P3_2_bit+0
;teclado.c,79 :: 		if(!P1_7_bit) //teste *
	JB P1_7_bit+0, L_main24
	NOP
;teclado.c,80 :: 		P0 = setseg[1];
	MOV P0+0, main_setseg_L0+1
L_main24:
;teclado.c,81 :: 		P1_4_bit = 1;
	SETB P1_4_bit+0
;teclado.c,83 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
;teclado.c,85 :: 		}
	LJMP L_main0
;teclado.c,86 :: 		}
	SJMP #254
; end of _main
