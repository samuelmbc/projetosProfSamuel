
_main:
	MOV SP+0, #128
;interru_intZero.c,4 :: 		void main() {
;interru_intZero.c,9 :: 		*/
	SETB EA_bit+0
;interru_intZero.c,15 :: 		*/
	SETB EX0_bit+0
;interru_intZero.c,18 :: 		*/
	SETB IT0_bit+0
;interru_intZero.c,23 :: 		*/
	CLR PX0L_bit+0
;interru_intZero.c,29 :: 		*/
	SETB EX1_bit+0
;interru_intZero.c,30 :: 		IT1_bit = 0;               //nível=1 reiniciar o código, borda = 0 vai reiniciar o programa mas se segurar apertado fica onde esta
	CLR IT1_bit+0
;interru_intZero.c,31 :: 		PX1L_bit = 1;              //1 PRIORIDADE ALTA
	SETB PX1L_bit+0
;interru_intZero.c,33 :: 		for(;;){
L_main0:
;interru_intZero.c,34 :: 		P0=0b10001111;    //poderia usar o 0x0f
	MOV P0+0, #143
;interru_intZero.c,35 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
;interru_intZero.c,36 :: 		P0=0b11110000;
	MOV P0+0, #240
;interru_intZero.c,37 :: 		Delay_ms(1000);
	MOV R5, 8
	MOV R6, 1
	MOV R7, 245
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;interru_intZero.c,38 :: 		}
	SJMP L_main0
;interru_intZero.c,39 :: 		}
	SJMP #254
; end of _main

_funcex0:
	PUSH PSW+0
	PUSH 224
	PUSH B+0
	PUSH 130
	PUSH 131
;interru_intZero.c,41 :: 		void funcex0 (void)  org IVT_ADDR_EX0{
;interru_intZero.c,42 :: 		P0=0b0101010101;
	MOV P0+0, #85
;interru_intZero.c,43 :: 		}
	POP 131
	POP 130
	POP B+0
	POP 224
	POP PSW+0
	RETI
; end of _funcex0

_funcex1:
	PUSH PSW+0
	PUSH 224
	PUSH B+0
	PUSH 130
	PUSH 131
;interru_intZero.c,44 :: 		void funcex1 (void) org IVT_ADDR_EX1{
;interru_intZero.c,45 :: 		P0=0b00110011;
	MOV P0+0, #51
;interru_intZero.c,46 :: 		for(i=0; i<10; i++){
	MOV _i+0, #0
	MOV _i+1, #0
L_funcex13:
	CLR C
	MOV A, _i+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _i+1
	XRL A, #128
	SUBB A, R0
	JNC L_funcex14
;interru_intZero.c,47 :: 		P1_4_bit = 0;
	CLR P1_4_bit+0
;interru_intZero.c,48 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
;interru_intZero.c,49 :: 		P1_4_bit = 1;
	SETB P1_4_bit+0
;interru_intZero.c,50 :: 		Delay_ms(100);
	MOV R6, 180
	MOV R7, 75
	DJNZ R7, 
	DJNZ R6, 
;interru_intZero.c,46 :: 		for(i=0; i<10; i++){
	MOV A, #1
	ADD A, _i+0
	MOV _i+0, A
	MOV A, #0
	ADDC A, _i+1
	MOV _i+1, A
;interru_intZero.c,51 :: 		}
	SJMP L_funcex13
L_funcex14:
;interru_intZero.c,52 :: 		}
	POP 131
	POP 130
	POP B+0
	POP 224
	POP PSW+0
	RETI
; end of _funcex1
