
_Move_Delay:
;testeLCD.c,11 :: 		void Move_Delay() {                  // Function used for text moving
;testeLCD.c,12 :: 		Delay_ms(500);                     // You can change the moving speed here}void main(){  Lcd_Init();                        // Initialize Lcd
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;testeLCD.c,13 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;testeLCD.c,14 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;testeLCD.c,15 :: 		Lcd_Out(1,6,txt3);                 // Write text in first row
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt3+0
	LCALL _LCD_Out+0
;testeLCD.c,16 :: 		Lcd_Out(2,6,txt4);                 // Write text in second row
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;testeLCD.c,17 :: 		Delay_ms(2000);
	MOV R5, 15
	MOV R6, 2
	MOV R7, 237
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;testeLCD.c,18 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;testeLCD.c,19 :: 		Lcd_Out(1,1,txt1);                 // Write text in first row
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_txt1+0
	LCALL _LCD_Out+0
;testeLCD.c,20 :: 		Lcd_Out(2,5,txt2);                 // Write text in second row
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #5
	MOV FARG_LCD_Out_text+0, #_txt2+0
	LCALL _LCD_Out+0
;testeLCD.c,21 :: 		Delay_ms(2000);  // Moving text
	MOV R5, 15
	MOV R6, 2
	MOV R7, 237
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;testeLCD.c,22 :: 		for(i=0;i<4;i++) {               // Move text to the right 4 times
	MOV _i+0, #0
L_Move_Delay0:
	CLR C
	MOV A, _i+0
	SUBB A, #4
	JNC L_Move_Delay1
;testeLCD.c,23 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOV FARG_Lcd_Cmd_out_char+0, #28
	LCALL _Lcd_Cmd+0
;testeLCD.c,24 :: 		Move_Delay();
	LCALL _Move_Delay+0
;testeLCD.c,22 :: 		for(i=0;i<4;i++) {               // Move text to the right 4 times
	INC _i+0
;testeLCD.c,25 :: 		}
	SJMP L_Move_Delay0
L_Move_Delay1:
;testeLCD.c,26 :: 		for(;;){                         // Endless loop
L_Move_Delay3:
;testeLCD.c,27 :: 		for(i=0;i<8;i++) {             // Move text to the left 7 times
	MOV _i+0, #0
L_Move_Delay6:
	CLR C
	MOV A, _i+0
	SUBB A, #8
	JNC L_Move_Delay7
;testeLCD.c,28 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOV FARG_Lcd_Cmd_out_char+0, #24
	LCALL _Lcd_Cmd+0
;testeLCD.c,29 :: 		Move_Delay();
	LCALL _Move_Delay+0
;testeLCD.c,27 :: 		for(i=0;i<8;i++) {             // Move text to the left 7 times
	INC _i+0
;testeLCD.c,30 :: 		}
	SJMP L_Move_Delay6
L_Move_Delay7:
;testeLCD.c,31 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	MOV _i+0, #0
L_Move_Delay9:
	CLR C
	MOV A, _i+0
	SUBB A, #8
	JNC L_Move_Delay10
;testeLCD.c,32 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOV FARG_Lcd_Cmd_out_char+0, #28
	LCALL _Lcd_Cmd+0
;testeLCD.c,33 :: 		Move_Delay();
	LCALL _Move_Delay+0
;testeLCD.c,31 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	INC _i+0
;testeLCD.c,34 :: 		}
	SJMP L_Move_Delay9
L_Move_Delay10:
;testeLCD.c,35 :: 		}
	SJMP L_Move_Delay3
;testeLCD.c,36 :: 		}
	RET
; end of _Move_Delay

_main:
	MOV SP+0, #128
;testeLCD.c,38 :: 		void main(){
;testeLCD.c,39 :: 		Move_Delay();
	LCALL _Move_Delay+0
;testeLCD.c,40 :: 		}
	SJMP #254
; end of _main
