void main() {
   for(;;){
       int i;
       for(i=0;i<=10;i++){  // bit a bit pino a pino
         P0_0_bit = 0; // acende o led 1
         Delay_ms(500);
         P0_0_bit = 1; // acende o led 1
         Delay_ms(500);
       }
       for(i=0;i<=10;i++){  //usando numeros decimais
         P0 = 0; // acende o led 1
         Delay_ms(500);
         P0 = 254; // acende o led 1
         Delay_ms(500);
       }
       for(i=0;i<=10;i++){ //usando comandos com bits
         P0 = 0b00000000; // acende o led 1
         Delay_ms(500);
         P0 = 0b00011010; // acende o led 1
         Delay_ms(500);
       }

       for(i=0;i<=10;i++){ //usando comandos com hexadecimal
         P0 = 0x00; // acende o led 1
         Delay_ms(500);
         P0 = 0xff; // acende o led 1
         Delay_ms(500);
       }
       P0 = 255; // acende o led 1
   }
}
