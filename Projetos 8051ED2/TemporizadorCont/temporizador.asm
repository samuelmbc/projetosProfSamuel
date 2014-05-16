
_main:
	MOV SP+0, #128
;temporizador.c,1 :: 		void main() {
;temporizador.c,3 :: 		TR0_bit=0;
	CLR TR0_bit+0
;temporizador.c,4 :: 		TF0_bit=0;
	CLR TF0_bit+0
;temporizador.c,8 :: 		*/
	MOV TMOD+0, #6
;temporizador.c,9 :: 		TL0 = (256-5);     //valor  inicial, quando for precionado 5 vezes ele ativa
	MOV TL0+0, #251
;temporizador.c,10 :: 		TH0 = (256-5);     //valor recarga
	MOV TH0+0, #251
;temporizador.c,11 :: 		TR0_bit = 1;       //ligar o timer
	SETB TR0_bit+0
;temporizador.c,13 :: 		while(1){        //Loop infinito
L_main0:
;temporizador.c,14 :: 		while(!TF0_bit);
L_main2:
	JB TF0_bit+0, L_main3
	NOP
	SJMP L_main2
L_main3:
;temporizador.c,15 :: 		TF0_bit = 0;
	CLR TF0_bit+0
;temporizador.c,17 :: 		P0 = -P0;
	CLR C
	MOV A, #0
	SUBB A, P0+0
	MOV P0+0, A
;temporizador.c,19 :: 		}
	SJMP L_main0
;temporizador.c,21 :: 		}
	SJMP #254
; end of _main
