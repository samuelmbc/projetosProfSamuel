
_main:
	MOV SP+0, #128
;TesteBotaoAsm.c,1 :: 		void main()
;TesteBotaoAsm.c,2 :: 		{  for(;;) //laço infinito
L_main0:
;TesteBotaoAsm.c,4 :: 		if(P1_0_bit==0) //teste tecla P1.0
	JB P1_0_bit+0, L_main3
	NOP
;TesteBotaoAsm.c,6 :: 		P0  = 0b00110011;
	MOV P0+0, #51
;TesteBotaoAsm.c,7 :: 		}
L_main3:
;TesteBotaoAsm.c,8 :: 		}
	SJMP L_main0
;TesteBotaoAsm.c,9 :: 		}
	SJMP #254
; end of _main
