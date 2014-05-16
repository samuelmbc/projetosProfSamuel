sbit LCD_RS at P3_6_bit;// conexao com o modulo LCD
sbit LCD_EN at P3_7_bit;
sbit LCD_D0 at P2_0_bit;
sbit LCD_D1 at P2_1_bit;
sbit LCD_D2 at P2_2_bit;
sbit LCD_D3 at P2_3_bit;
sbit LCD_D4 at P2_4_bit;
sbit LCD_D5 at P2_5_bit;
sbit LCD_D6 at P2_6_bit;
sbit LCD_D7 at P2_7_bit;//Fim da conexao com o modulo LCD

char txt1[] = "ENTRE COM A";       //secao de declaracao de strings de
char txt3[] = "ENTRE COM A";       //secao de declaracao de strings de
char txt2[] = "SENHA CORRETA";     //mensagens de saida
char txt4[] = "SENHA ERRADA";      //fim da secao de mensagens

char senhaPadrao[5]="3214";        //senha correta a ser digitada
char senhaRecebida[]="";//char *senhaRecebida="";           //string vazia pra receber senha digitada

int tamanho=0;  //define quantos char a senha recebe antes de ser compararada

char botao1, botao2, botao3, botao4;//variaveis pra armazenar o que for digitado
int i;
char *strAddChar(char *s1, char c){    //funcao pra adicionar chars em strings
     char *s;
     s = s1;
     s = s + strlen(s1);
     *s = c;
     s++;
     *s = 0;
     return(s1);                            //fim da funcao pra adicionar chars
}


void main() {
Lcd_Init(); // Inicializa Lcd

Lcd_Cmd(_LCD_CLEAR);       //limpa LCD
Lcd_Cmd(_LCD_CURSOR_OFF);  //nao mostra mais o cursos no LCD
/*void lcd(){
Lcd_Out(1,1,txt1);          //escreve txt1 na primeira linha do LCD}
Lcd_Out(2,1,txt3);          //escreve txt2 na segunda linha do LCD
}*/

    for(;;){                     //inicia loop infinito
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out(1,1,txt3);          //escreve txt1 na primeira linha do LCD
          Lcd_Out(2,1,txt2);          //escreve txt2 na segunda linha do LCD
          while(tamanho<4) {             //verifica valor de tamanho. - Samuel Esse tava indo até 5
             if(!P1_0_bit){
                botao1='1';              //secao que recebe a entrada
                strAddChar(senhaRecebida, botao1);  //e adiciona elas na string
                tamanho=tamanho+1;                //indefinida senhaRecebida
                while(!P1_0_bit){Delay_ms(50);}   //Samuel - Coloquei para dar o tempo do botão
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
        // if(tamanho==4){
             if (strcmp(senhaPadrao,senhaRecebida)==0){
                  for(i=0;i<=5;i++){
                      Lcd_Cmd(_LCD_CLEAR);
                      Delay_ms(500);
                      Lcd_Out(1,1,txt2);        //senha incorreta
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
                      Lcd_Out(1,1,txt4);        //senha incorreta
                      Lcd_Out(2,1,senhaRecebida);
                      Delay_ms(500);
                      Lcd_Cmd(_LCD_CLEAR);
                      Delay_ms(500);
                  }


              }
              botao1=0;       //secao pra limpar os valores dos botoes
              botao2=0;
              botao3=0;
              botao4=0;       //fim da limpeza
              tamanho=0;      //limpa o valor de tamanho
         // }
   }
}
