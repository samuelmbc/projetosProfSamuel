void loopFuncao();

void main() {       //função principal
   for(;;){         //inicio do laço de repetição infinito
      if(P1_0_bit==0){    //inicio do teste condicional se o Bit 0 da porta 1 é igual a 0
         P0_4_bit=0;      //Pino 4 da porta 0 recebe 0 (acende o led)
         Delay_ms(500);   //Função de espera, o MCU fica 250 milessegundos parado
      }                   //fim do teste condicional
      if(!P1_1_bit){      //inicio do teste condicional se o Bit 1 da porta 1 é igual a 0
                          //a ! quer dizer NÃO
         P0=255;          //envia 255 decimal para a porta 0
         Delay_ms(250);   //Função de espera, o MCU fica 250 milessegundos parado
      }
      if(P1_2_bit==0){
         loopFuncao();
      }
    }
}

void loopFuncao(){
   for(;;){
      P0 = 0; // acende o led 1
      Delay_ms(500);
      P0 = 254; // acende o led 1
      Delay_ms(500);
      if(P1_3_bit==0){
          P0 = 255; // acende o led 1
          return;
       }
   }
}
       
/*       for(i=0;i<=10;i++){ //usando comandos com bits
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
} */

