// Lcd module connections
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
// End Lcd module connections

char txt1[] = "DIGITE SENHA";
char txt2[] = "CORRETA";
char txt3[] = "INCORRETA";
char txt4[] = "*";
char txt6 [] = " SENHA";


int i=0;                              // Loop variable
 int bot0=0 ;                          // variaveis botoes
 int bot1=0  ;
 int bot2=0  ;                         // variaveis botoes
 int bot3=0 ;
 Lcd_Cmd(_LCD_CLEAR);               // Clear display
Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
Lcd_Init();

void main(){
      Lcd_Init();
     Lcd_Cmd(_LCD_CLEAR);               // Clear display
     Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
                             // Initialize Lcd

    for(;;)
    {
    Lcd_Cmd(_LCD_CLEAR);               // Clear display
    Lcd_Cmd(_LCD_CURSOR_OFF);
    i=0;
    while(i<4)
         {

    Lcd_Out(1,1,txt1);

          while(P1_0_bit==0)
          {
         i=i+1;
          bot0=i;                  // condição
          Delay_ms(350);
          Lcd_Out(2,i,txt4);

           }

         while(P1_1_bit==0)
        {
        i=i+1;
         bot1=i;
         Delay_ms(350);
         Lcd_Out(2,i,txt4);
         }

          while(P1_2_bit==0)
         {
         i=i+1;
        bot2=i;
        Delay_ms(350);
        Lcd_Out(2,i,txt4);
         }

       while(P1_3_bit==0)
       {
       i=i+1;
       bot3=i;
       Delay_ms(350);
       Lcd_Out(2,i,txt4);
          }

      }
    while(bot2==1 && bot0==2 && bot1==3 && bot3==4)
    {
                  Lcd_Cmd(_LCD_CLEAR);               // Clear display
                  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
                   Lcd_Out(1,6,txt6);
                    Lcd_Out(2,6,txt2);
                    P1_5_bit=0;
                    Delay_ms(250);
                    P1_5_bit=1;
                    Delay_ms(250);
                    P1_5_bit=0;
                    Delay_ms(250);
                    P1_5_bit=1;
                    Delay_ms(250);
                    P1_5_bit=0;
                    Delay_ms(250);
                    P1_5_bit=1;
                    Delay_ms(1000);

                    i=0;
                    bot0=0;
                    bot1=0;
                    bot2=0;
                    bot3=0;
    }

    while(i>0)
      {
                  Lcd_Cmd(_LCD_CLEAR);               // Clear display
                  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
                   Lcd_Out(1,6,txt6);
                    Lcd_Out(2,6,txt3);

                    P1_4_bit=0;
                    Delay_ms(250);
                    P1_4_bit=1;
                    Delay_ms(250);
                    P1_4_bit=0;
                    Delay_ms(250);
                    P1_4_bit=1;
                    Delay_ms(250);
                    P1_4_bit=0;
                    Delay_ms(250);
                    P1_4_bit=1;
                    Delay_ms(1000);

                    i=0;
                    bot0=0;
                    bot1=0;
                    bot2=0;
                    bot3=0;
                    }


}
 }
