
_main:
	MOV SP+0, #128
;atps_g1.c,31 :: 		void main(){
;atps_g1.c,32 :: 		Lcd_Init();
	LCALL _Lcd_Init+0
;atps_g1.c,33 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;atps_g1.c,34 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;atps_g1.c,37 :: 		for(;;)
L_main0:
;atps_g1.c,39 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;atps_g1.c,40 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;atps_g1.c,41 :: 		i=0;
	MOV _i+0, #0
	MOV _i+1, #0
;atps_g1.c,42 :: 		while(i<4)
L_main3:
	CLR C
	MOV A, _i+0
	SUBB A, #4
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _i+1
	XRL A, #128
	SUBB A, R0
	JC #3
	LJMP L_main4
;atps_g1.c,45 :: 		Lcd_Out(1,1,txt1);
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_txt1+0
	LCALL _LCD_Out+0
;atps_g1.c,47 :: 		while(P1_0_bit==0)
L_main5:
	JB P1_0_bit+0, L_main6
	NOP
;atps_g1.c,49 :: 		i=i+1;
	MOV A, #1
	ADD A, _i+0
	MOV _i+0, A
	MOV A, #0
	ADDC A, _i+1
	MOV _i+1, A
;atps_g1.c,50 :: 		bot0=i;                  // condição
	MOV _bot0+0, _i+0
	MOV _bot0+1, _i+1
;atps_g1.c,51 :: 		Delay_ms(350);
	MOV R5, 3
	MOV R6, 116
	MOV R7, 135
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,52 :: 		Lcd_Out(2,i,txt4);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, _i+0
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;atps_g1.c,54 :: 		}
	SJMP L_main5
L_main6:
;atps_g1.c,56 :: 		while(P1_1_bit==0)
L_main7:
	JB P1_1_bit+0, L_main8
	NOP
;atps_g1.c,58 :: 		i=i+1;
	MOV A, #1
	ADD A, _i+0
	MOV _i+0, A
	MOV A, #0
	ADDC A, _i+1
	MOV _i+1, A
;atps_g1.c,59 :: 		bot1=i;
	MOV _bot1+0, _i+0
	MOV _bot1+1, _i+1
;atps_g1.c,60 :: 		Delay_ms(350);
	MOV R5, 3
	MOV R6, 116
	MOV R7, 135
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,61 :: 		Lcd_Out(2,i,txt4);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, _i+0
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;atps_g1.c,62 :: 		}
	SJMP L_main7
L_main8:
;atps_g1.c,64 :: 		while(P1_2_bit==0)
L_main9:
	JB P1_2_bit+0, L_main10
	NOP
;atps_g1.c,66 :: 		i=i+1;
	MOV A, #1
	ADD A, _i+0
	MOV _i+0, A
	MOV A, #0
	ADDC A, _i+1
	MOV _i+1, A
;atps_g1.c,67 :: 		bot2=i;
	MOV _bot2+0, _i+0
	MOV _bot2+1, _i+1
;atps_g1.c,68 :: 		Delay_ms(350);
	MOV R5, 3
	MOV R6, 116
	MOV R7, 135
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,69 :: 		Lcd_Out(2,i,txt4);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, _i+0
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;atps_g1.c,70 :: 		}
	SJMP L_main9
L_main10:
;atps_g1.c,72 :: 		while(P1_3_bit==0)
L_main11:
	JB P1_3_bit+0, L_main12
	NOP
;atps_g1.c,74 :: 		i=i+1;
	MOV A, #1
	ADD A, _i+0
	MOV _i+0, A
	MOV A, #0
	ADDC A, _i+1
	MOV _i+1, A
;atps_g1.c,75 :: 		bot3=i;
	MOV _bot3+0, _i+0
	MOV _bot3+1, _i+1
;atps_g1.c,76 :: 		Delay_ms(350);
	MOV R5, 3
	MOV R6, 116
	MOV R7, 135
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,77 :: 		Lcd_Out(2,i,txt4);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, _i+0
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;atps_g1.c,78 :: 		}
	SJMP L_main11
L_main12:
;atps_g1.c,80 :: 		}
	LJMP L_main3
L_main4:
;atps_g1.c,81 :: 		while(bot2==1 && bot0==2 && bot1==3 && bot3==4)
L_main13:
	MOV A, #1
	XRL A, _bot2+0
	JNZ L__main20
	MOV A, #0
	XRL A, _bot2+1
L__main20:
	JZ #3
	LJMP L_main14
	MOV A, #2
	XRL A, _bot0+0
	JNZ L__main21
	MOV A, #0
	XRL A, _bot0+1
L__main21:
	JZ #3
	LJMP L_main14
	MOV A, #3
	XRL A, _bot1+0
	JNZ L__main22
	MOV A, #0
	XRL A, _bot1+1
L__main22:
	JZ #3
	LJMP L_main14
	MOV A, #4
	XRL A, _bot3+0
	JNZ L__main23
	MOV A, #0
	XRL A, _bot3+1
L__main23:
	JZ #3
	LJMP L_main14
L__main19:
;atps_g1.c,83 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;atps_g1.c,84 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;atps_g1.c,85 :: 		Lcd_Out(1,6,txt6);
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt6+0
	LCALL _LCD_Out+0
;atps_g1.c,86 :: 		Lcd_Out(2,6,txt2);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt2+0
	LCALL _LCD_Out+0
;atps_g1.c,87 :: 		P1_5_bit=0;
	CLR P1_5_bit+0
;atps_g1.c,88 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,89 :: 		P1_5_bit=1;
	SETB P1_5_bit+0
;atps_g1.c,90 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,91 :: 		P1_5_bit=0;
	CLR P1_5_bit+0
;atps_g1.c,92 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,93 :: 		P1_5_bit=1;
	SETB P1_5_bit+0
;atps_g1.c,94 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,95 :: 		P1_5_bit=0;
	CLR P1_5_bit+0
;atps_g1.c,96 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,97 :: 		P1_5_bit=1;
	SETB P1_5_bit+0
;atps_g1.c,98 :: 		Delay_ms(1000);
	MOV R5, 8
	MOV R6, 1
	MOV R7, 245
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,100 :: 		i=0;
	MOV _i+0, #0
	MOV _i+1, #0
;atps_g1.c,101 :: 		bot0=0;
	MOV _bot0+0, #0
	MOV _bot0+1, #0
;atps_g1.c,102 :: 		bot1=0;
	MOV _bot1+0, #0
	MOV _bot1+1, #0
;atps_g1.c,103 :: 		bot2=0;
	MOV _bot2+0, #0
	MOV _bot2+1, #0
;atps_g1.c,104 :: 		bot3=0;
	MOV _bot3+0, #0
	MOV _bot3+1, #0
;atps_g1.c,105 :: 		}
	LJMP L_main13
L_main14:
;atps_g1.c,107 :: 		while(i>0)
L_main17:
	SETB C
	MOV A, _i+0
	SUBB A, #0
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _i+1
	XRL A, #128
	SUBB A, R0
	JNC #3
	LJMP L_main18
;atps_g1.c,109 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;atps_g1.c,110 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;atps_g1.c,111 :: 		Lcd_Out(1,6,txt6);
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt6+0
	LCALL _LCD_Out+0
;atps_g1.c,112 :: 		Lcd_Out(2,6,txt3);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt3+0
	LCALL _LCD_Out+0
;atps_g1.c,114 :: 		P1_4_bit=0;
	CLR P1_4_bit+0
;atps_g1.c,115 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,116 :: 		P1_4_bit=1;
	SETB P1_4_bit+0
;atps_g1.c,117 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,118 :: 		P1_4_bit=0;
	CLR P1_4_bit+0
;atps_g1.c,119 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,120 :: 		P1_4_bit=1;
	SETB P1_4_bit+0
;atps_g1.c,121 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,122 :: 		P1_4_bit=0;
	CLR P1_4_bit+0
;atps_g1.c,123 :: 		Delay_ms(250);
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,124 :: 		P1_4_bit=1;
	SETB P1_4_bit+0
;atps_g1.c,125 :: 		Delay_ms(1000);
	MOV R5, 8
	MOV R6, 1
	MOV R7, 245
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;atps_g1.c,127 :: 		i=0;
	MOV _i+0, #0
	MOV _i+1, #0
;atps_g1.c,128 :: 		bot0=0;
	MOV _bot0+0, #0
	MOV _bot0+1, #0
;atps_g1.c,129 :: 		bot1=0;
	MOV _bot1+0, #0
	MOV _bot1+1, #0
;atps_g1.c,130 :: 		bot2=0;
	MOV _bot2+0, #0
	MOV _bot2+1, #0
;atps_g1.c,131 :: 		bot3=0;
	MOV _bot3+0, #0
	MOV _bot3+1, #0
;atps_g1.c,132 :: 		}
	LJMP L_main17
L_main18:
;atps_g1.c,135 :: 		}
	LJMP L_main0
;atps_g1.c,136 :: 		}
	SJMP #254
; end of _main
