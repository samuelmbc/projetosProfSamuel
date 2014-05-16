// Lcd module connectionssbit LCD_RS at P2_0_bit;sbit LCD_EN at P2_1_bit;
sbit LCD_RS at P3_6_bit;
sbit LCD_EN at P3_7_bit;

sbit LCD_D0 at P2_0_bit;
sbit LCD_D1 at P2_1_bit;
sbit LCD_D2 at P2_2_bit;
sbit LCD_D3 at P2_3_bit;
sbit LCD_D4 at P2_4_bit;
sbit LCD_D5 at P2_5_bit;
sbit LCD_D6 at P2_6_bit;
sbit LCD_D7 at P2_7_bit;// End Lcd module connections
char txt1[] = "microgenius EDITADO POR SAMUEL";
char txt2[] = "kit 851 study";
char txt3[] = "samuel";
char txt4[] = "cavalcante";
char txt5[] = "A";
char i;                              // Loop variable
void Move_Delay() {                  // Function used for text moving
  Delay_ms(500);                     // You can change the moving speed here
}
void main(){
  Lcd_Init();                        // Initialize Lcd
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
  Lcd_Out(1,6,txt3);                 // Write text in first row
  Lcd_Out(2,6,txt4);                 // Write text in second row
  Delay_ms(2000);
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Out(1,16,txt5);                 // Write text in first row
  Lcd_Out(2,5,txt2);                 // Write text in second row

  Delay_ms(2000);  // Moving text
//  for(i=0; i<4; i++){               // Move text to the right 4 times
  //  Lcd_Cmd(_LCD_SHIFT_RIGHT);
  //  Move_Delay();
 // }
  while(1) {                         // Endless loop
    for(i=0; i<16; i++) {             // Move text to the left 7 times
      Lcd_Cmd(_LCD_SHIFT_LEFT);
      Move_Delay();
    }
    Lcd_Cmd(_LCD_UNDERLINE_ON); // Cursor ON para demonstração
    for(i=0; i<16; i++) {             // Move text to the right 7 times
      Lcd_Cmd(_LCD_SHIFT_RIGHT);
      Move_Delay();
    }
    Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off

  }
}
