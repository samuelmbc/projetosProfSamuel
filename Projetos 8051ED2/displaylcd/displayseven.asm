
_Move_Delay:
;displayseven.c,19 :: 		void Move_Delay() {                  // Function used for text moving
;displayseven.c,20 :: 		Delay_ms(500);                     // You can change the moving speed here
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;displayseven.c,21 :: 		}
	RET
; end of _Move_Delay

_main:
	MOV SP+0, #128
;displayseven.c,22 :: 		void main(){
;displayseven.c,23 :: 		Lcd_Init();                        // Initialize Lcd
	LCALL _Lcd_Init+0
;displayseven.c,24 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;displayseven.c,25 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;displayseven.c,26 :: 		Lcd_Out(1,6,txt3);                 // Write text in first row
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt3+0
	LCALL _LCD_Out+0
;displayseven.c,27 :: 		Lcd_Out(2,6,txt4);                 // Write text in second row
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;displayseven.c,28 :: 		Delay_ms(2000);  Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV R5, 15
	MOV R6, 2
	MOV R7, 237
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;displayseven.c,29 :: 		Lcd_Out(1,16,txt5);                 // Write text in first row
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #16
	MOV FARG_LCD_Out_text+0, #_txt5+0
	LCALL _LCD_Out+0
;displayseven.c,30 :: 		Lcd_Out(2,5,txt2);                 // Write text in second row
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #5
	MOV FARG_LCD_Out_text+0, #_txt2+0
	LCALL _LCD_Out+0
;displayseven.c,32 :: 		Delay_ms(2000);  // Moving text
	MOV R5, 15
	MOV R6, 2
	MOV R7, 237
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;displayseven.c,37 :: 		while(1) {                         // Endless loop
L_main0:
;displayseven.c,38 :: 		for(i=0; i<16; i++) {             // Move text to the left 7 times
	MOV _i+0, #0
L_main2:
	CLR C
	MOV A, _i+0
	SUBB A, #16
	JNC L_main3
;displayseven.c,39 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOV FARG_Lcd_Cmd_out_char+0, #24
	LCALL _Lcd_Cmd+0
;displayseven.c,40 :: 		Move_Delay();
	LCALL _Move_Delay+0
;displayseven.c,38 :: 		for(i=0; i<16; i++) {             // Move text to the left 7 times
	INC _i+0
;displayseven.c,41 :: 		}
	SJMP L_main2
L_main3:
;displayseven.c,42 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON); // Cursor ON para demonstração
	MOV FARG_Lcd_Cmd_out_char+0, #14
	LCALL _Lcd_Cmd+0
;displayseven.c,43 :: 		for(i=0; i<16; i++) {             // Move text to the right 7 times
	MOV _i+0, #0
L_main5:
	CLR C
	MOV A, _i+0
	SUBB A, #16
	JNC L_main6
;displayseven.c,44 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOV FARG_Lcd_Cmd_out_char+0, #28
	LCALL _Lcd_Cmd+0
;displayseven.c,45 :: 		Move_Delay();
	LCALL _Move_Delay+0
;displayseven.c,43 :: 		for(i=0; i<16; i++) {             // Move text to the right 7 times
	INC _i+0
;displayseven.c,46 :: 		}
	SJMP L_main5
L_main6:
;displayseven.c,47 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;displayseven.c,49 :: 		}
	SJMP L_main0
;displayseven.c,50 :: 		}
	SJMP #254
; end of _main
