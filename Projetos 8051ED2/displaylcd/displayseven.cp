#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/displaylcd/displayseven.c"

sbit LCD_RS at P3_6_bit;
sbit LCD_EN at P3_7_bit;

sbit LCD_D0 at P2_0_bit;
sbit LCD_D1 at P2_1_bit;
sbit LCD_D2 at P2_2_bit;
sbit LCD_D3 at P2_3_bit;
sbit LCD_D4 at P2_4_bit;
sbit LCD_D5 at P2_5_bit;
sbit LCD_D6 at P2_6_bit;
sbit LCD_D7 at P2_7_bit;
char txt1[] = "microgenius EDITADO POR SAMUEL";
char txt2[] = "kit 851 study";
char txt3[] = "samuel";
char txt4[] = "cavalcante";
char txt5[] = "A";
char i;
void Move_Delay() {
 Delay_ms(500);
}
void main(){
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,6,txt3);
 Lcd_Out(2,6,txt4);
 Delay_ms(2000); Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,16,txt5);
 Lcd_Out(2,5,txt2);

 Delay_ms(2000);




 while(1) {
 for(i=0; i<16; i++) {
 Lcd_Cmd(_LCD_SHIFT_LEFT);
 Move_Delay();
 }
 Lcd_Cmd(_LCD_UNDERLINE_ON);
 for(i=0; i<16; i++) {
 Lcd_Cmd(_LCD_SHIFT_RIGHT);
 Move_Delay();
 }
 Lcd_Cmd(_LCD_CURSOR_OFF);

 }
}
