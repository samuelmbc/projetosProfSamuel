//void loopFuncao();

void main() {       //fun��o principal
   for(;;){         //inicio do la�o de repeti��o infinito
      if(P1_0_bit==0){    //inicio do teste condicional se o Bit 0 da porta 1 � igual a 0
         P0_4_bit=0;      //Pino 4 da porta 0 recebe 0 (acende o led)
         Delay_ms(500);   //Fun��o de espera, o MCU fica 250 milessegundos parado
         P0=240;          //envia 240 decimal para a porta 0
         Delay_ms(500);   //Fun��o de espera, o MCU fica 250 milessegundos parado
         P0= 0b00010001;
         Delay_ms(500);   //Fun��o de espera, o MCU fica 250 milessegundos parado
         P0= 0xAA;
         Delay_ms(500);   //
      }                   //fim do teste condicional
      if(!P1_1_bit){      //inicio do teste condicional se o Bit 1 da porta 1 � igual a 0
                          //a ! quer dizer N�O
         P0=255;          //envia 255 decimal para a porta 0
         Delay_ms(250);   //Fun��o de espera, o MCU fica 250 milessegundos parado
      }                   //fim do teste condicional
   }              //fim do la�o de repeti��o
}                 //fim do main




/*      if(P1_2_bit==0){
       loopFuncao();
      }
   }
} */

/*
void loopFuncao(){
   for(;;){
       int i;
       for(i=0;i<=10;i++){  //usando numeros decimais
         P0 = 0; // acende o led 1
         Delay_ms(500);
         P0 = 254; // acende o led 1
         Delay_ms(500);
         if(P1_3_bit==0){
              P0 = 255; // acende o led 1
              return;
         }
       }
       for(i=0;i<=10;i++){ //usando comandos com bits
         P0 = 0b00000000; // acende o led 1
         Delay_ms(500);
         P0 = 0b00011010; // acende o led 1
         Delay_ms(500);
         if(P1_3_bit==0){
              P0 = 255; // acende o led 1
              return;
         }
       }

       for(i=0;i<=10;i++){ //usando comandos com hexadecimal
         P0 = 0x00; // acende o led 1
         Delay_ms(500);
         P0 = 0xff; // acende o led 1
         Delay_ms(500);
         if(P1_3_bit==0){
              P0 = 255; // acende o led 1
              return;
         }
       }
       P0 = 255; // acende o led 1
   }
}*/
