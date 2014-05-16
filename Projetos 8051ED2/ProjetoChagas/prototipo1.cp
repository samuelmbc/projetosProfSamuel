#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/ProjetoChagas/prototipo1.c"
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

char txt1[] = "ENTRE COM A";
char txt3[] = "ENTRE COM A";
char txt2[] = "SENHA CORRETA";
char txt4[] = "SENHA ERRADA";

char senhaPadrao[5]="3214";
char senhaRecebida[]="";

int tamanho=0;

char botao1, botao2, botao3, botao4;
int i;
char *strAddChar(char *s1, char c){
 char *s;
 s = s1;
 s = s + strlen(s1);
 *s = c;
 s++;
 *s = 0;
 return(s1);
}


void main() {
Lcd_Init();

Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);
#line 45 "C:/Users/Samuel/Desktop/Projetos 8051ED2/ProjetoChagas/prototipo1.c"
 for(;;){
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,txt3);
 Lcd_Out(2,1,txt2);
 while(tamanho<4) {
 if(!P1_0_bit){
 botao1='1';
 strAddChar(senhaRecebida, botao1);
 tamanho=tamanho+1;
 while(!P1_0_bit){Delay_ms(50);}
 }
 if(!P1_1_bit){
 botao2='2';
 strAddChar(senhaRecebida, botao2) ;
 tamanho=tamanho+1;
 while(!P1_1_bit){Delay_ms(50);}
 }
 if(!P1_2_bit){
 botao3='3';
 strAddChar(senhaRecebida, botao3);
 tamanho=tamanho+1;
 while(!P1_2_bit){Delay_ms(50);}
 }
 if(!P1_3_bit){
 botao4='4';
 strAddChar(senhaRecebida, botao4);
 tamanho=tamanho+1;
 while(!P1_3_bit){Delay_ms(50);}
 }
 }

 if (strcmp(senhaPadrao,senhaRecebida)==0){
 for(i=0;i<=5;i++){
 Lcd_Cmd(_LCD_CLEAR);
 Delay_ms(500);
 Lcd_Out(1,1,txt2);
 Lcd_Out(2,1,senhaRecebida);
 Delay_ms(500);
 Lcd_Cmd(_LCD_CLEAR);
 Delay_ms(500);
 }

 }
 else{
 for(i=0;i<=5;i++){
 Lcd_Cmd(_LCD_CLEAR);
 Delay_ms(500);
 Lcd_Out(1,1,txt4);
 Lcd_Out(2,1,senhaRecebida);
 Delay_ms(500);
 Lcd_Cmd(_LCD_CLEAR);
 Delay_ms(500);
 }


 }
 botao1=0;
 botao2=0;
 botao3=0;
 botao4=0;
 tamanho=0;

 }
}
