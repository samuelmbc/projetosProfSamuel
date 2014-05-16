
_main:
	MOV SP+0, #128
;Bortao.c,3 :: 		void main() {       //função principal
;Bortao.c,4 :: 		for(;;){         //inicio do laço de repetição infinito
L_main0:
;Bortao.c,5 :: 		if(P1_0_bit==0){    //inicio do teste condicional se o Bit 0 da porta 1 é igual a 0
	JB P1_0_bit+0, L_main3
	NOP
;Bortao.c,6 :: 		P0_4_bit=0;      //Pino 4 da porta 0 recebe 0 (acende o led)
	CLR P0_4_bit+0
;Bortao.c,7 :: 		Delay_ms(500);   //Função de espera, o MCU fica 250 milessegundos parado
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Bortao.c,8 :: 		P0=240;          //envia 240 decimal para a porta 0
	MOV P0+0, #240
;Bortao.c,9 :: 		Delay_ms(500);   //Função de espera, o MCU fica 250 milessegundos parado
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Bortao.c,10 :: 		P0= 0b00010001;
	MOV P0+0, #17
;Bortao.c,11 :: 		Delay_ms(500);   //Função de espera, o MCU fica 250 milessegundos parado
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Bortao.c,12 :: 		P0= 0xAA;
	MOV P0+0, #170
;Bortao.c,13 :: 		Delay_ms(500);   //
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Bortao.c,14 :: 		}                   //fim do teste condicional
L_main3:
;Bortao.c,15 :: 		if(!P1_1_bit){      //inicio do teste condicional se o Bit 1 da porta 1 é igual a 0
	JB P1_1_bit+0, L_main4
	NOP
;Bortao.c,17 :: 		P0=255;          //envia 255 decimal para a porta 0
	MOV P0+0, #255
;Bortao.c,18 :: 		Delay_ms(250);   //Função de espera, o MCU fica 250 milessegundos parado
	MOV R5, 2
	MOV R6, 193
	MOV R7, 59
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Bortao.c,19 :: 		}                   //fim do teste condicional
L_main4:
;Bortao.c,20 :: 		}              //fim do laço de repetição
	SJMP L_main0
;Bortao.c,21 :: 		}                 //fim do main
	SJMP #254
; end of _main
