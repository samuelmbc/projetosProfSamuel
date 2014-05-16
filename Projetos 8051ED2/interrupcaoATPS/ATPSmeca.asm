
_main:
	MOV SP+0, #128
;ATPSmeca.c,6 :: 		void main() {
;ATPSmeca.c,11 :: 		*/
	SETB EA_bit+0
;ATPSmeca.c,17 :: 		*/
	SETB EX0_bit+0
;ATPSmeca.c,20 :: 		*/
	SETB IT0_bit+0
;ATPSmeca.c,25 :: 		*/
	CLR PX0L_bit+0
;ATPSmeca.c,31 :: 		*/
	SETB EX1_bit+0
;ATPSmeca.c,32 :: 		IT1_bit = 0;               //nível=1 reiniciar o código, borda = 0 vai reiniciar o programa mas se segurar apertado fica onde esta
	CLR IT1_bit+0
;ATPSmeca.c,33 :: 		PX1L_bit = 1;              //1 PRIORIDADE ALTA
	SETB PX1L_bit+0
;ATPSmeca.c,35 :: 		for(;;){
L_main0:
;ATPSmeca.c,36 :: 		for(j=0; j<10;j++){
	MOV _j+0, #0
	MOV _j+1, #0
L_main3:
	CLR C
	MOV A, _j+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _j+1
	XRL A, #128
	SUBB A, R0
	JC #3
	LJMP L_main4
;ATPSmeca.c,37 :: 		for(k=0; k<10;k++){
	MOV _k+0, #0
	MOV _k+1, #0
L_main6:
	CLR C
	MOV A, _k+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _k+1
	XRL A, #128
	SUBB A, R0
	JNC L_main7
;ATPSmeca.c,38 :: 		for(l=0; l<50;l++){
	MOV _l+0, #0
	MOV _l+1, #0
L_main9:
	CLR C
	MOV A, _l+0
	SUBB A, #50
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _l+1
	XRL A, #128
	SUBB A, R0
	JNC L_main10
;ATPSmeca.c,39 :: 		P3_2_bit = 0;
	CLR P3_2_bit+0
;ATPSmeca.c,40 :: 		P3_3_bit = 1;
	SETB P3_3_bit+0
;ATPSmeca.c,41 :: 		P0=setseg[j];
	MOV A, #_setseg+0
	ADD A, _j+0
	MOV R0, A
	MOV P0+0, @R0
;ATPSmeca.c,42 :: 		Delay_ms(10);
	MOV R6, 18
	MOV R7, 237
	DJNZ R7, 
	DJNZ R6, 
;ATPSmeca.c,44 :: 		P3_2_bit = 1;
	SETB P3_2_bit+0
;ATPSmeca.c,45 :: 		P3_3_bit = 0;
	CLR P3_3_bit+0
;ATPSmeca.c,46 :: 		P0=setseg[k];
	MOV A, #_setseg+0
	ADD A, _k+0
	MOV R0, A
	MOV P0+0, @R0
;ATPSmeca.c,47 :: 		Delay_ms(10);
	MOV R6, 18
	MOV R7, 237
	DJNZ R7, 
	DJNZ R6, 
;ATPSmeca.c,48 :: 		num=setseg[k];
	MOV A, #_setseg+0
	ADD A, _k+0
	MOV R0, A
	MOV _num+0, @R0
	CLR A
	MOV _num+1, A
;ATPSmeca.c,38 :: 		for(l=0; l<50;l++){
	MOV A, #1
	ADD A, _l+0
	MOV _l+0, A
	MOV A, #0
	ADDC A, _l+1
	MOV _l+1, A
;ATPSmeca.c,49 :: 		}
	SJMP L_main9
L_main10:
;ATPSmeca.c,37 :: 		for(k=0; k<10;k++){
	MOV A, #1
	ADD A, _k+0
	MOV _k+0, A
	MOV A, #0
	ADDC A, _k+1
	MOV _k+1, A
;ATPSmeca.c,50 :: 		}
	LJMP L_main6
L_main7:
;ATPSmeca.c,36 :: 		for(j=0; j<10;j++){
	MOV A, #1
	ADD A, _j+0
	MOV _j+0, A
	MOV A, #0
	ADDC A, _j+1
	MOV _j+1, A
;ATPSmeca.c,51 :: 		}
	LJMP L_main3
L_main4:
;ATPSmeca.c,52 :: 		}
	LJMP L_main0
;ATPSmeca.c,53 :: 		}
	SJMP #254
; end of _main

_funcex0:
	PUSH PSW+0
	PUSH 224
	PUSH B+0
	PUSH 130
	PUSH 131
;ATPSmeca.c,55 :: 		void funcex0 (num)  org IVT_ADDR_EX0{
;ATPSmeca.c,56 :: 		P3_2_bit = 1;
	SETB P3_2_bit+0
;ATPSmeca.c,57 :: 		P3_3_bit = 1;
	SETB P3_3_bit+0
;ATPSmeca.c,58 :: 		P0=num;
	MOV P0+0, _num+0
;ATPSmeca.c,59 :: 		for(numero=0;numero<1000;numero++)
	MOV _numero+0, #0
	MOV _numero+1, #0
L_funcex012:
	CLR C
	MOV A, _numero+0
	SUBB A, #232
	MOV A, #3
	XRL A, #128
	MOV R0, A
	MOV A, _numero+1
	XRL A, #128
	SUBB A, R0
	JNC L_funcex013
;ATPSmeca.c,60 :: 		Delay_ms(10);
	MOV R6, 18
	MOV R7, 237
	DJNZ R7, 
	DJNZ R6, 
;ATPSmeca.c,59 :: 		for(numero=0;numero<1000;numero++)
	MOV A, #1
	ADD A, _numero+0
	MOV _numero+0, A
	MOV A, #0
	ADDC A, _numero+1
	MOV _numero+1, A
;ATPSmeca.c,60 :: 		Delay_ms(10);
	SJMP L_funcex012
L_funcex013:
;ATPSmeca.c,61 :: 		}
	POP 131
	POP 130
	POP B+0
	POP 224
	POP PSW+0
	RETI
; end of _funcex0
