
_strAddChar:
;prototipo1.c,24 :: 		char *strAddChar(char *s1, char c){    //funcao pra adicionar chars em strings
;prototipo1.c,26 :: 		s = s1;
	MOV strAddChar_s_L0+0, FARG_strAddChar_s1+0
;prototipo1.c,27 :: 		s = s + strlen(s1);
	MOV FARG_strlen_s+0, FARG_strAddChar_s1+0
	LCALL _strlen+0
	MOV FLOC__strAddChar+0, 0
	MOV FLOC__strAddChar+1, 1
	MOV A, strAddChar_s_L0+0
	ADD A, FLOC__strAddChar+0
	MOV R0, A
	MOV strAddChar_s_L0+0, 0
;prototipo1.c,28 :: 		*s = c;
	MOV @R0, FARG_strAddChar_c+0
;prototipo1.c,29 :: 		s++;
	INC strAddChar_s_L0+0
;prototipo1.c,30 :: 		*s = 0;
	MOV R0, strAddChar_s_L0+0
	MOV @R0, #0
;prototipo1.c,31 :: 		return(s1);                            //fim da funcao pra adicionar chars
	MOV R0, FARG_strAddChar_s1+0
;prototipo1.c,32 :: 		}
	RET
; end of _strAddChar

_main:
	MOV SP+0, #128
;prototipo1.c,35 :: 		void main() {
;prototipo1.c,36 :: 		Lcd_Init(); // Inicializa Lcd
	LCALL _Lcd_Init+0
;prototipo1.c,38 :: 		Lcd_Cmd(_LCD_CLEAR);       //limpa LCD
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;prototipo1.c,39 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);  //nao mostra mais o cursos no LCD
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;prototipo1.c,45 :: 		for(;;){                     //inicia loop infinito
L_main0:
;prototipo1.c,46 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;prototipo1.c,47 :: 		Lcd_Out(1,1,txt3);          //escreve txt1 na primeira linha do LCD
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_txt3+0
	LCALL _LCD_Out+0
;prototipo1.c,48 :: 		Lcd_Out(2,1,txt2);          //escreve txt2 na segunda linha do LCD
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_txt2+0
	LCALL _LCD_Out+0
;prototipo1.c,49 :: 		while(tamanho<4) {             //verifica valor de tamanho. - Samuel Esse tava indo até 5
L_main3:
	CLR C
	MOV A, _tamanho+0
	SUBB A, #4
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _tamanho+1
	XRL A, #128
	SUBB A, R0
	JC #3
	LJMP L_main4
;prototipo1.c,50 :: 		if(!P1_0_bit){
	JB P1_0_bit+0, L_main5
	NOP
;prototipo1.c,51 :: 		botao1='1';              //secao que recebe a entrada
	MOV _botao1+0, #49
;prototipo1.c,52 :: 		strAddChar(senhaRecebida, botao1);  //e adiciona elas na string
	MOV FARG_strAddChar_s1+0, #_senhaRecebida+0
	MOV FARG_strAddChar_c+0, #49
	LCALL _strAddChar+0
;prototipo1.c,53 :: 		tamanho=tamanho+1;                //indefinida senhaRecebida
	MOV A, #1
	ADD A, _tamanho+0
	MOV _tamanho+0, A
	MOV A, #0
	ADDC A, _tamanho+1
	MOV _tamanho+1, A
;prototipo1.c,54 :: 		while(!P1_0_bit){Delay_ms(50);}   //Samuel - Coloquei para dar o tempo do botão
L_main6:
	JB P1_0_bit+0, L_main7
	NOP
	MOV R6, 90
	MOV R7, 165
	DJNZ R7, 
	DJNZ R6, 
	SJMP L_main6
L_main7:
;prototipo1.c,55 :: 		}
L_main5:
;prototipo1.c,56 :: 		if(!P1_1_bit){
	JB P1_1_bit+0, L_main8
	NOP
;prototipo1.c,57 :: 		botao2='2';
	MOV _botao2+0, #50
;prototipo1.c,58 :: 		strAddChar(senhaRecebida, botao2) ;
	MOV FARG_strAddChar_s1+0, #_senhaRecebida+0
	MOV FARG_strAddChar_c+0, #50
	LCALL _strAddChar+0
;prototipo1.c,59 :: 		tamanho=tamanho+1;
	MOV A, #1
	ADD A, _tamanho+0
	MOV _tamanho+0, A
	MOV A, #0
	ADDC A, _tamanho+1
	MOV _tamanho+1, A
;prototipo1.c,60 :: 		while(!P1_1_bit){Delay_ms(50);}
L_main9:
	JB P1_1_bit+0, L_main10
	NOP
	MOV R6, 90
	MOV R7, 165
	DJNZ R7, 
	DJNZ R6, 
	SJMP L_main9
L_main10:
;prototipo1.c,61 :: 		}
L_main8:
;prototipo1.c,62 :: 		if(!P1_2_bit){
	JB P1_2_bit+0, L_main11
	NOP
;prototipo1.c,63 :: 		botao3='3';
	MOV _botao3+0, #51
;prototipo1.c,64 :: 		strAddChar(senhaRecebida, botao3);
	MOV FARG_strAddChar_s1+0, #_senhaRecebida+0
	MOV FARG_strAddChar_c+0, #51
	LCALL _strAddChar+0
;prototipo1.c,65 :: 		tamanho=tamanho+1;
	MOV A, #1
	ADD A, _tamanho+0
	MOV _tamanho+0, A
	MOV A, #0
	ADDC A, _tamanho+1
	MOV _tamanho+1, A
;prototipo1.c,66 :: 		while(!P1_2_bit){Delay_ms(50);}
L_main12:
	JB P1_2_bit+0, L_main13
	NOP
	MOV R6, 90
	MOV R7, 165
	DJNZ R7, 
	DJNZ R6, 
	SJMP L_main12
L_main13:
;prototipo1.c,67 :: 		}
L_main11:
;prototipo1.c,68 :: 		if(!P1_3_bit){
	JB P1_3_bit+0, L_main14
	NOP
;prototipo1.c,69 :: 		botao4='4';
	MOV _botao4+0, #52
;prototipo1.c,70 :: 		strAddChar(senhaRecebida, botao4);
	MOV FARG_strAddChar_s1+0, #_senhaRecebida+0
	MOV FARG_strAddChar_c+0, #52
	LCALL _strAddChar+0
;prototipo1.c,71 :: 		tamanho=tamanho+1;
	MOV A, #1
	ADD A, _tamanho+0
	MOV _tamanho+0, A
	MOV A, #0
	ADDC A, _tamanho+1
	MOV _tamanho+1, A
;prototipo1.c,72 :: 		while(!P1_3_bit){Delay_ms(50);}
L_main15:
	JB P1_3_bit+0, L_main16
	NOP
	MOV R6, 90
	MOV R7, 165
	DJNZ R7, 
	DJNZ R6, 
	SJMP L_main15
L_main16:
;prototipo1.c,73 :: 		}
L_main14:
;prototipo1.c,74 :: 		}
	LJMP L_main3
L_main4:
;prototipo1.c,76 :: 		if (strcmp(senhaPadrao,senhaRecebida)==0){
	MOV FARG_strcmp_s1+0, #_senhaPadrao+0
	MOV FARG_strcmp_s2+0, #_senhaRecebida+0
	LCALL _strcmp+0
	MOV A, R0
	ORL A, R1
	JNZ L_main17
;prototipo1.c,77 :: 		for(i=0;i<=5;i++){
	MOV _i+0, #0
	MOV _i+1, #0
L_main18:
	SETB C
	MOV A, _i+0
	SUBB A, #5
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _i+1
	XRL A, #128
	SUBB A, R0
	JNC L_main19
;prototipo1.c,78 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;prototipo1.c,79 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;prototipo1.c,80 :: 		Lcd_Out(1,1,txt2);        //senha incorreta
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_txt2+0
	LCALL _LCD_Out+0
;prototipo1.c,81 :: 		Lcd_Out(2,1,senhaRecebida);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_senhaRecebida+0
	LCALL _LCD_Out+0
;prototipo1.c,82 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;prototipo1.c,83 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;prototipo1.c,84 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;prototipo1.c,77 :: 		for(i=0;i<=5;i++){
	MOV A, #1
	ADD A, _i+0
	MOV _i+0, A
	MOV A, #0
	ADDC A, _i+1
	MOV _i+1, A
;prototipo1.c,85 :: 		}
	SJMP L_main18
L_main19:
;prototipo1.c,87 :: 		}
	SJMP L_main21
L_main17:
;prototipo1.c,89 :: 		for(i=0;i<=5;i++){
	MOV _i+0, #0
	MOV _i+1, #0
L_main22:
	SETB C
	MOV A, _i+0
	SUBB A, #5
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _i+1
	XRL A, #128
	SUBB A, R0
	JNC L_main23
;prototipo1.c,90 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;prototipo1.c,91 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;prototipo1.c,92 :: 		Lcd_Out(1,1,txt4);        //senha incorreta
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;prototipo1.c,93 :: 		Lcd_Out(2,1,senhaRecebida);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_senhaRecebida+0
	LCALL _LCD_Out+0
;prototipo1.c,94 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;prototipo1.c,95 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;prototipo1.c,96 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;prototipo1.c,89 :: 		for(i=0;i<=5;i++){
	MOV A, #1
	ADD A, _i+0
	MOV _i+0, A
	MOV A, #0
	ADDC A, _i+1
	MOV _i+1, A
;prototipo1.c,97 :: 		}
	SJMP L_main22
L_main23:
;prototipo1.c,100 :: 		}
L_main21:
;prototipo1.c,101 :: 		botao1=0;       //secao pra limpar os valores dos botoes
	MOV _botao1+0, #0
;prototipo1.c,102 :: 		botao2=0;
	MOV _botao2+0, #0
;prototipo1.c,103 :: 		botao3=0;
	MOV _botao3+0, #0
;prototipo1.c,104 :: 		botao4=0;       //fim da limpeza
	MOV _botao4+0, #0
;prototipo1.c,105 :: 		tamanho=0;      //limpa o valor de tamanho
	MOV _tamanho+0, #0
	MOV _tamanho+1, #0
;prototipo1.c,107 :: 		}
	LJMP L_main0
;prototipo1.c,108 :: 		}
	SJMP #254
; end of _main
