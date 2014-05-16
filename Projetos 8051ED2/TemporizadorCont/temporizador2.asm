
_main:
	MOV SP+0, #128
;temporizador2.c,1 :: 		void main() {
;temporizador2.c,3 :: 		TR0_bit=0;
	CLR TR0_bit+0
;temporizador2.c,4 :: 		TF0_bit=0;
	CLR TF0_bit+0
;temporizador2.c,5 :: 		TR1_bit=0;
	CLR TR1_bit+0
;temporizador2.c,6 :: 		TF1_bit=0;
	CLR TF1_bit+0
;temporizador2.c,9 :: 		*/
	MOV TMOD+0, #102
;temporizador2.c,10 :: 		TL0 = (256-5);     //valor  inicial, quando for precionado 5 vezes ele ativa
	MOV TL0+0, #251
;temporizador2.c,11 :: 		TH0 = (256-5);     //valor recarga
	MOV TH0+0, #251
;temporizador2.c,12 :: 		TL1 = (256-10);     //valor  inicial, quando for precionado 5 vezes ele ativa
	MOV TL1+0, #246
;temporizador2.c,13 :: 		TH1 = (256-10);     //valor recarga
	MOV TH1+0, #246
;temporizador2.c,14 :: 		TR0_bit = 1;       //ligar o timer
	SETB TR0_bit+0
;temporizador2.c,15 :: 		TR1_bit = 1;       //ligar o timer
	SETB TR1_bit+0
;temporizador2.c,17 :: 		while(1){        //Loop infinito
L_main0:
;temporizador2.c,18 :: 		while(!TF0_bit);
L_main2:
	JB TF0_bit+0, L_main3
	NOP
	SJMP L_main2
L_main3:
;temporizador2.c,19 :: 		TF0_bit = 0;
	CLR TF0_bit+0
;temporizador2.c,20 :: 		P0 = 0b01010101; //ou
	MOV P0+0, #85
;temporizador2.c,22 :: 		while(!TF1_bit);
L_main4:
	JB TF1_bit+0, L_main5
	NOP
	SJMP L_main4
L_main5:
;temporizador2.c,23 :: 		TF1_bit = 0;
	CLR TF1_bit+0
;temporizador2.c,24 :: 		P0 = 0b01010101; //ou
	MOV P0+0, #85
;temporizador2.c,26 :: 		Delay_ms (1000);
	MOV R5, 8
	MOV R6, 1
	MOV R7, 245
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;temporizador2.c,27 :: 		P1_4_bit = 1; //liga o buzzer
	SETB P1_4_bit+0
;temporizador2.c,28 :: 		}
	SJMP L_main0
;temporizador2.c,29 :: 		}
	SJMP #254
; end of _main
