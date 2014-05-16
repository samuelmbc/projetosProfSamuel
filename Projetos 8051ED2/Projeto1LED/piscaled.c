void main() {
   for(;;){
       P0_1_bit = 0; // acende o led pino 1 port 0
       P0_7_bit = 0; // acende o led pino 1 port 0
       Delay_ms(1000);  //função para aguardar 500 milessegundos
       P0_1_bit = 1; // apaga o led pino 1 port 0
       P0_7_bit = 1; // apaga o led pino 1 port 0
       Delay_ms(500);  //função para aguardar 500 milessegundos
   }
}
