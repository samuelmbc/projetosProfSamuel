
_main:
	MOV SP+0, #128
;sevencont.c,10 :: 		void main(){
;sevencont.c,13 :: 		for(;;){
L_main0:
;sevencont.c,14 :: 		P3_2_bit=1;  //desligado - Ligacao do Display Decada
	SETB P3_2_bit+0
;sevencont.c,15 :: 		P3_3_bit=1;  //desligado Ligação Display Unidade
	SETB P3_3_bit+0
;sevencont.c,16 :: 		for(DecimalValor=0; DecimalValor<10; DecimalValor++){ //contagem unidade
	MOV main_DecimalValor_L0+0, #0
	MOV main_DecimalValor_L0+1, #0
L_main3:
	CLR C
	MOV A, main_DecimalValor_L0+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_DecimalValor_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main4
;sevencont.c,17 :: 		for(UnidadeValor=0; UnidadeValor<10; UnidadeValor++){ //contagem unidade
	MOV main_UnidadeValor_L0+0, #0
	MOV main_UnidadeValor_L0+1, #0
L_main6:
	CLR C
	MOV A, main_UnidadeValor_L0+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_UnidadeValor_L0+1
	XRL A, #128
	SUBB A, R0
	JNC L_main7
;sevencont.c,18 :: 		ImprimeDisp(DecimalValor, UnidadeValor);
	MOV FARG_ImprimeDisp_Decimal+0, main_DecimalValor_L0+0
	MOV FARG_ImprimeDisp_Decimal+1, main_DecimalValor_L0+1
	MOV FARG_ImprimeDisp_Unidade+0, main_UnidadeValor_L0+0
	MOV FARG_ImprimeDisp_Unidade+1, main_UnidadeValor_L0+1
	LCALL _ImprimeDisp+0
;sevencont.c,17 :: 		for(UnidadeValor=0; UnidadeValor<10; UnidadeValor++){ //contagem unidade
	MOV A, #1
	ADD A, main_UnidadeValor_L0+0
	MOV main_UnidadeValor_L0+0, A
	MOV A, #0
	ADDC A, main_UnidadeValor_L0+1
	MOV main_UnidadeValor_L0+1, A
;sevencont.c,19 :: 		} //fim contagem unidade
	SJMP L_main6
L_main7:
;sevencont.c,16 :: 		for(DecimalValor=0; DecimalValor<10; DecimalValor++){ //contagem unidade
	MOV A, #1
	ADD A, main_DecimalValor_L0+0
	MOV main_DecimalValor_L0+0, A
	MOV A, #0
	ADDC A, main_DecimalValor_L0+1
	MOV main_DecimalValor_L0+1, A
;sevencont.c,20 :: 		}  //fim contagem Decimal
	SJMP L_main3
L_main4:
;sevencont.c,21 :: 		}
	SJMP L_main0
;sevencont.c,22 :: 		}
	SJMP #254
; end of _main

_TempoEspera:
;sevencont.c,24 :: 		void TempoEspera(){
;sevencont.c,25 :: 		Delay_ms(5);
	MOV R6, 9
	MOV R7, 246
	DJNZ R7, 
	DJNZ R6, 
;sevencont.c,26 :: 		}
	RET
; end of _TempoEspera

_ImprimeDisp:
;sevencont.c,28 :: 		void ImprimeDisp(int Decimal, int Unidade){
;sevencont.c,29 :: 		for(contador=0; contador<10; contador++){ //25*(10+10) = 500 ms. ==> rodadas * espera 1 + espera 2
	MOV _contador+0, #0
	MOV _contador+1, #0
L_ImprimeDisp9:
	CLR C
	MOV A, _contador+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _contador+1
	XRL A, #128
	SUBB A, R0
	JNC L_ImprimeDisp10
;sevencont.c,30 :: 		P3_2_bit = 0;
	CLR P3_2_bit+0
;sevencont.c,31 :: 		P3_3_bit = 1;
	SETB P3_3_bit+0
;sevencont.c,32 :: 		P0=setseg[Decimal];
	MOV A, #_setseg+0
	ADD A, FARG_ImprimeDisp_Decimal+0
	MOV R0, A
	MOV P0+0, @R0
;sevencont.c,33 :: 		TempoEspera();
	LCALL _TempoEspera+0
;sevencont.c,34 :: 		P3_2_bit = 1;
	SETB P3_2_bit+0
;sevencont.c,35 :: 		P3_3_bit = 0;
	CLR P3_3_bit+0
;sevencont.c,36 :: 		P0=setseg[Unidade];
	MOV A, #_setseg+0
	ADD A, FARG_ImprimeDisp_Unidade+0
	MOV R0, A
	MOV P0+0, @R0
;sevencont.c,37 :: 		TempoEspera();
	LCALL _TempoEspera+0
;sevencont.c,29 :: 		for(contador=0; contador<10; contador++){ //25*(10+10) = 500 ms. ==> rodadas * espera 1 + espera 2
	MOV A, #1
	ADD A, _contador+0
	MOV _contador+0, A
	MOV A, #0
	ADDC A, _contador+1
	MOV _contador+1, A
;sevencont.c,38 :: 		}
	SJMP L_ImprimeDisp9
L_ImprimeDisp10:
;sevencont.c,39 :: 		}
	RET
; end of _ImprimeDisp
