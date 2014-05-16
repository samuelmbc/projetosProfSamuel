#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/TesteLCD/testeLCD.c"

sbit LCD_D4 at P2_2_bit;
sbit LCD_D5 at P2_3_bit;
sbit LCD_D6 at P2_4_bit;
sbit LCD_D7 at P2_5_bit;
char txt1[] = "mikroElektronika";
char txt2[] = "Easy8051B";
char txt3[] = "Lcd4bit";
char txt4[] = "example";
char i;
void Move_Delay() {
 Delay_ms(500);
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,6,txt3);
 Lcd_Out(2,6,txt4);
 Delay_ms(2000);
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,txt1);
 Lcd_Out(2,5,txt2);
 Delay_ms(2000);
 for(i=0;i<4;i++) {
 Lcd_Cmd(_LCD_SHIFT_RIGHT);
 Move_Delay();
 }
 for(;;){
 for(i=0;i<8;i++) {
 Lcd_Cmd(_LCD_SHIFT_LEFT);
 Move_Delay();
 }
 for(i=0; i<8; i++) {
 Lcd_Cmd(_LCD_SHIFT_RIGHT);
 Move_Delay();
 }
 }
}

void main(){
 Move_Delay();
}
