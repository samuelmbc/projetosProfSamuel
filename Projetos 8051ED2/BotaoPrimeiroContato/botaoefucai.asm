
_main:
	MOV SP+0, #128
;botaoefucai.c,3 :: 		void main() {       //função principal
;botaoefucai.c,4 :: 		for(;;){         //inicio do laço de repetição infinito
L_main0:
;botaoefucai.c,5 :: 		if(P1_0_bit==0){    //inicio do teste condicional se o Bit 0 da porta 1 é igual a 0
	JB P1_0_bit+0, L_main3
	NOP
;botaoefucai.c,6 :: 		P0_4_bit=0;      //Pino 4 da porta 0 recebe 0 (acende o led)
	CLR P0_4_bit+0
;botaoefucai.c,7 :: 		Delay_ms(500);   //Função de espera, o MCU fica 250 milessegundos parado
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;botaoefucai.c,8 :: 		}                   //fim do teste condicional
L_main3:
;botaoefucai.c,9 :: 		if(!P1_1_bit){      //inicio do teste condicional se o Bit 1 da porta 1 é igual a 0
	JB P1_1_bit+0, L_main4
	NOP
;botaoefucai.c,11 :: 		P0=255;          //envia 255 decimal para a porta 0
	MOV P0+0, #255
;botaoefucai.c,12 :: 		Delay_ms(250);   //Função de espera, o MCU fica 250 milessegundos parado
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;botaoefucai.c,13 :: 		}
L_main4:
;botaoefucai.c,14 :: 		if(P1_2_bit==0){
	JB P1_2_bit+0, L_main5
	NOP
;botaoefucai.c,15 :: 		loopFuncao();
	LCALL _loopFuncao+0
;botaoefucai.c,16 :: 		}
L_main5:
;botaoefucai.c,17 :: 		}
	SJMP L_main0
;botaoefucai.c,18 :: 		}
	SJMP #254
; end of _main

_loopFuncao:
;botaoefucai.c,20 :: 		void loopFuncao(){
;botaoefucai.c,21 :: 		for(;;){
L_loopFuncao6:
;botaoefucai.c,22 :: 		P0 = 0; // acende o led 1
	MOV P0+0, #0
;botaoefucai.c,23 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;botaoefucai.c,24 :: 		P0 = 254; // acende o led 1
	MOV P0+0, #254
;botaoefucai.c,25 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;botaoefucai.c,26 :: 		if(P1_3_bit==0){
	JB P1_3_bit+0, L_loopFuncao9
	NOP
;botaoefucai.c,27 :: 		P0 = 255; // acende o led 1
	MOV P0+0, #255
;botaoefucai.c,28 :: 		return;
	RET
;botaoefucai.c,29 :: 		}
L_loopFuncao9:
;botaoefucai.c,30 :: 		}
	SJMP L_loopFuncao6
;botaoefucai.c,31 :: 		}
	RET
; end of _loopFuncao
