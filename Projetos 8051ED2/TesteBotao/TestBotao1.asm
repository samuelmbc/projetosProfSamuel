
_main:
	MOV SP+0, #128
;TestBotao1.c,1 :: 		void main()
;TestBotao1.c,2 :: 		{  for(;;) //laço infinito
L_main0:
;TestBotao1.c,4 :: 		if(P1_0_bit==0) //teste tecla P1.0
	JB P1_0_bit+0, L_main3
	NOP
;TestBotao1.c,6 :: 		P0  = 0b00110011;
	MOV P0+0, #51
;TestBotao1.c,8 :: 		}else{
	SJMP L_main4
L_main3:
;TestBotao1.c,9 :: 		if(!P1_1_bit) //teste tecla P1.0
	JB P1_1_bit+0, L_main5
	NOP
;TestBotao1.c,11 :: 		P0  = 0b11110000;
	MOV P0+0, #240
;TestBotao1.c,12 :: 		P1_4_bit = 0;
	CLR P1_4_bit+0
;TestBotao1.c,14 :: 		}else{
	SJMP L_main6
L_main5:
;TestBotao1.c,15 :: 		P0  = 0b11111111;
	MOV P0+0, #255
;TestBotao1.c,16 :: 		P1_4_bit = 1;
	SETB P1_4_bit+0
;TestBotao1.c,18 :: 		}
L_main6:
;TestBotao1.c,19 :: 		}
L_main4:
;TestBotao1.c,20 :: 		}
	SJMP L_main0
;TestBotao1.c,21 :: 		}
	SJMP #254
; end of _main
